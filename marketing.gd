extends Node2D

onready var ad_output = get_node("ad_output")
onready var spending_output = get_node("container/spending_output")

var advertising

func _ready():
	set_process(true)

func _process(delta):
	if (towns.town_select == "hollyhock"):
		advertising = customer_math.hollyhock_advertising
	if (advertising == 0):
		ad_output.clear()
		ad_output.add_text("None")
	if ((advertising >= 0) and (advertising < 10)):
		ad_output.clear()
		ad_output.add_text("Windshield Love Notes")
	if ((advertising >= 10) and (advertising < 20)):
		ad_output.clear()
		ad_output.add_text("Decent Word of Mouth")
	if ((advertising >= 20) and (advertising < 30)):
		ad_output.clear()
		ad_output.add_text("Agressive Street Team")
	if ((advertising >= 30) and (advertising < 40)):
		ad_output.clear()
		ad_output.add_text("Dancing Penguin Hand Outs")
	if ((advertising >= 40) and (advertising < 50)):
		ad_output.clear()
		ad_output.add_text("Top 40 DJ Shout Out")
	if ((advertising >= 50) and (advertising < 60)):
		ad_output.clear()
		ad_output.add_text("Cheap Celebrity Endorsement Tweet")
	if ((advertising >= 60) and (advertising < 70)):
		ad_output.clear()
		ad_output.add_text("Kindly Grandma Commercial")
	if ((advertising >= 70) and (advertising < 80)):
		ad_output.clear()
		ad_output.add_text("Forcible Store Delivery")
	if ((advertising >= 80) and (advertising < 90)):
		ad_output.clear()
		ad_output.add_text("Big Brother 24 Hour Broadcast")
	if ((advertising >= 90) and (advertising < 100)):
		ad_output.clear()
		ad_output.add_text("Sandman Endorsement Bribe")
	spending_output.clear()
	spending_output.add_text(str(advertising))

func _on_lower_button_down():
	if (towns.town_select == "hollyhock"):
		if (customer_math.hollyhock_advertising > 0):
			customer_math.hollyhock_advertising = customer_math.hollyhock_advertising - 1
			spending_output.clear()
			spending_output.add_text(str(customer_math.hollyhock_advertising))
			money.hollyhock_expenses = money.hollyhock_expenses - 1


func _on_raise_button_down():
	if (towns.town_select == "hollyhock"):
		if ((customer_math.hollyhock_advertising + 1 <= money.hollyhock_cash) and (customer_math.hollyhock_advertising + 1 <= customer_math.hollyhock_advertising_max)):
			customer_math.hollyhock_advertising = customer_math.hollyhock_advertising + 1
			spending_output.clear()
			spending_output.add_text(str(customer_math.hollyhock_advertising))
			money.hollyhock_expenses = money.hollyhock_expenses + 1