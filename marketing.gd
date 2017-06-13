extends Node2D

onready var ad_output = get_node("ad_output")
onready var spending_output = get_node("container/spending_output")


func _ready():
	set_process(true)

func _process(delta):
	if (global.advertising == 0):
		ad_output.clear()
		ad_output.add_text("None")
	if ((global.advertising > 0) and (global.advertising < 10)):
		ad_output.clear()
		ad_output.add_text("Windshield Love Notes")
	if ((global.advertising > 10) and (global.advertising < 20)):
		ad_output.clear()
		ad_output.add_text("Decent Word of Mouth")
	if ((global.advertising > 20) and (global.advertising < 30)):
		ad_output.clear()
		ad_output.add_text("Agressive Street Team")
	if ((global.advertising > 30) and (global.advertising < 40)):
		ad_output.clear()
		ad_output.add_text("Dancing Penguin Hand Outs")
	if ((global.advertising > 40) and (global.advertising < 50)):
		ad_output.clear()
		ad_output.add_text("Top 40 DJ Shout Out")
	if ((global.advertising > 50) and (global.advertising < 60)):
		ad_output.clear()
		ad_output.add_text("Cheap Celebrity Endorsement Tweet")
	if ((global.advertising > 60) and (global.advertising < 70)):
		ad_output.clear()
		ad_output.add_text("Kindly Grandma Commercial")
	if ((global.advertising > 70) and (global.advertising < 80)):
		ad_output.clear()
		ad_output.add_text("Forcible Store Delivery")
	if ((global.advertising > 80) and (global.advertising < 90)):
		ad_output.clear()
		ad_output.add_text("Big Brother 24 Hour Broadcast")
	if ((global.advertising > 90) and (global.advertising < 100)):
		ad_output.clear()
		ad_output.add_text("Sandman Endorsement Bribe")
	spending_output.clear()
	spending_output.add_text(str(global.advertising))

func _on_lower_button_down():
	if (global.advertising > 0):
		global.advertising = global.advertising - 1
		spending_output.clear()
		spending_output.add_text(str(global.advertising))
		global.expenses = global.expenses - 1


func _on_raise_button_down():
	if (global.town_select == "hollyhock"):
		if ((global.advertising + 1 <= global.cash) and (global.advertising + 1 <= global.hollyhock_advertising_max)):
			global.advertising = global.advertising + 1
			spending_output.clear()
			spending_output.add_text(str(global.advertising))
			global.expenses = global.expenses + 1