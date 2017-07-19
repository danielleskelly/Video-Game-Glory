extends Node2D

onready var ad_output = get_node("ad_output")
onready var spending_output = get_node("container/spending_output")

var advertising

func _ready():
	spending()
	set_process(true)

func _process(delta):
	if (towns.town_select == "hollyhock"):
		advertising = customer_math.hollyhock_advertising
	if (towns.town_select == "fiyork"):
		advertising = customer_math.fiyork_advertising
	if (towns.town_select == "plansey"):
		advertising = customer_math.plansey_advertising
	if (towns.town_select == "untilly"):
		advertising = customer_math.untilly_advertising
	if (towns.town_select == "windrow"):
		advertising = customer_math.windrow_advertising
	if (towns.town_select == "banlon"):
		advertising = customer_math.banlon_advertising
	if (towns.town_select == "slatten"):
		advertising = customer_math.slatten_advertising
	if (int(advertising) == 0):
		ad_output.clear()
		ad_output.add_text("None")
	if ((int(advertising) >= 0) and (int(advertising) < 10)):
		ad_output.clear()
		ad_output.add_text("Windshield Love Notes")
	if ((int(advertising) >= 10) and (int(advertising) < 20)):
		ad_output.clear()
		ad_output.add_text("Decent Word of Mouth")
	if ((int(advertising) >= 20) and (int(advertising) < 30)):
		ad_output.clear()
		ad_output.add_text("Agressive Street Team")
	if ((int(advertising) >= 30) and (int(advertising) < 40)):
		ad_output.clear()
		ad_output.add_text("Dancing Penguin Hand Outs")
	if ((int(advertising) >= 40) and (int(advertising) < 50)):
		ad_output.clear()
		ad_output.add_text("Top 40 DJ Shout Out")
	if ((int(advertising) >= 50) and (int(advertising) < 60)):
		ad_output.clear()
		ad_output.add_text("Cheap Celebrity Endorsement Tweet")
	if ((int(advertising) >= 60) and (int(advertising) < 70)):
		ad_output.clear()
		ad_output.add_text("Kindly Grandma Commercial")
	if ((int(advertising) >= 70) and (int(advertising) < 80)):
		ad_output.clear()
		ad_output.add_text("Forcible Store Delivery")
	if ((int(advertising) >= 80) and (int(advertising) < 90)):
		ad_output.clear()
		ad_output.add_text("Big Brother 24 Hour Broadcast")
	if ((int(advertising) >= 90) and (int(advertising) <= 100)):
		ad_output.clear()
		ad_output.add_text("Sandman Endorsement Bribe")

func _on_lower_button_down():
	if (towns.town_select == "hollyhock"):
		if (int(customer_math.hollyhock_advertising) > 0):
			customer_math.hollyhock_advertising = int(customer_math.hollyhock_advertising) - 1
			money.hollyhock_expenses = int(money.hollyhock_expenses) - 1
			spending()
	if (towns.town_select == "fiyork"):
		if (int(customer_math.fiyork_advertising) > 0):
			customer_math.fiyork_advertising = int(customer_math.fiyork_advertising) - 1
			money.fiyork_expenses = int(money.fiyork_expenses) - 1
			spending()
	if (towns.town_select == "plansey"):
		if (int(customer_math.plansey_advertising) > 0):
			customer_math.plansey_advertising = int(customer_math.plansey_advertising) - 1
			money.plansey_expenses = int(money.plansey_expenses) - 1
			spending()
	if (towns.town_select == "untilly"):
		if (int(customer_math.untilly_advertising) > 0):
			customer_math.untilly_advertising = int(customer_math.untilly_advertising) - 1
			money.untilly_expenses = int(money.untilly_expenses) - 1
			spending()
	if (towns.town_select == "windrow"):
		if (int(customer_math.windrow_advertising) > 0):
			customer_math.windrow_advertising = int(customer_math.windrow_advertising) - 1
			money.windrow_expenses = int(money.windrow_expenses) - 1
			spending()
	if (towns.town_select == "banlon"):
		if (int(customer_math.banlon_advertising) > 0):
			customer_math.banlon_advertising = int(customer_math.banlon_advertising) - 1
			money.banlon_expenses = int(money.banlon_expenses) - 1
			spending()
	if (towns.town_select == "slatten"):
		if (int(customer_math.slatten_advertising) > 0):
			customer_math.slatten_advertising = int(customer_math.slatten_advertising) - 1
			money.slatten_expenses = int(money.slatten_expenses) - 1
			spending()

func _on_raise_button_down():
	if (towns.town_select == "hollyhock"):
		if ((int(customer_math.hollyhock_advertising) + 1 <= int(money.hollyhock_cash)) and (int(customer_math.hollyhock_advertising) + 1 <= int(customer_math.hollyhock_advertising_max))):
			customer_math.hollyhock_advertising = int(customer_math.hollyhock_advertising) + 1
			spending()
			money.hollyhock_expenses = int(money.hollyhock_expenses) + 1
	if (towns.town_select == "fiyork"):
		if ((int(customer_math.fiyork_advertising) + 1 <= int(money.fiyork_cash)) and (int(customer_math.fiyork_advertising) + 1 <= int(customer_math.fiyork_advertising_max))):
			customer_math.fiyork_advertising = int(customer_math.fiyork_advertising) + 1
			spending()
			money.fiyork_expenses = int(money.fiyork_expenses) + 1
	if (towns.town_select == "plansey"):
		if ((int(customer_math.plansey_advertising) + 1 <= int(money.plansey_cash)) and (int(customer_math.plansey_advertising) + 1 <= int(customer_math.plansey_advertising_max))):
			customer_math.plansey_advertising = int(customer_math.plansey_advertising) + 1
			spending()
			money.plansey_expenses = int(money.plansey_expenses) + 1
	if (towns.town_select == "untilly"):
		if ((int(customer_math.untilly_advertising) + 1 <= int(money.untilly_cash)) and (int(customer_math.untilly_advertising) + 1 <= int(customer_math.untilly_advertising_max))):
			customer_math.untilly_advertising = int(customer_math.untilly_advertising) + 1
			spending()
			money.untilly_expenses = int(money.untilly_expenses) + 1
	if (towns.town_select == "windrow"):
		if ((int(customer_math.windrow_advertising) + 1 <= int(money.windrow_cash)) and (int(customer_math.windrow_advertising) + 1 <= int(customer_math.windrow_advertising_max))):
			customer_math.windrow_advertising = int(customer_math.windrow_advertising) + 1
			spending()
			money.windrow_expenses = int(money.windrow_expenses) + 1
	if (towns.town_select == "banlon"):
		if ((int(customer_math.banlon_advertising) + 1 <= int(money.banlon_cash)) and (int(customer_math.banlon_advertising) + 1 <= int(customer_math.banlon_advertising_max))):
			customer_math.banlon_advertising = int(customer_math.banlon_advertising) + 1
			spending()
			money.banlon_expenses = int(money.banlon_expenses) + 1
	if (towns.town_select == "slatten"):
		if ((int(customer_math.slatten_advertising) + 1 <= int(money.slatten_cash)) and (int(customer_math.slatten_advertising) + 1 <= int(customer_math.slatten_advertising_max))):
			customer_math.slatten_advertising = int(customer_math.slatten_advertising) + 1
			spending()
			money.slatten_expenses = int(money.slatten_expenses) + 1
			


func _on_confirm_button_down():
	if (towns.town_select == "hollyhock"):
		if (get_tree().get_current_scene().get_node("AnimationPlayer").get_current_animation() == "tutorial_pt5"):
			if (int(customer_math.hollyhock_advertising) >= 20):
				get_tree().get_current_scene().get_node("AnimationPlayer").play("tutorial_pt6")
		var temp_spending = get_node("container/spending_output").get_text()
		if (int(temp_spending) > int(money.hollyhock_cash)):
			temp_spending = money.hollyhock_cash
		if (int(temp_spending) > int(customer_math.hollyhock_advertising_max)):
			temp_spending = int(customer_math.hollyhock_advertising_max)
		customer_math.hollyhock_advertising = temp_spending
		spending()
	if (towns.town_select == "fiyork"):
		var temp_spending = get_node("container/spending_output").get_text()
		if (int(temp_spending) > int(money.fiyork_cash)):
			temp_spending = money.fiyork_cash
		if (int(temp_spending) > int(customer_math.fiyork_advertising_max)):
			temp_spending = int(customer_math.fiyork_advertising_max)
		customer_math.fiyork_advertising = temp_spending
		spending()
	if (towns.town_select == "plansey"):
		var temp_spending = get_node("container/spending_output").get_text()
		if (int(temp_spending) > int(money.plansey_cash)):
			temp_spending = money.plansey_cash
		if (int(temp_spending) > int(customer_math.plansey_advertising_max)):
			temp_spending = int(customer_math.plansey_advertising_max)
		customer_math.plansey_advertising = temp_spending
		spending()
	if (towns.town_select == "untilly"):
		var temp_spending = get_node("container/spending_output").get_text()
		if (int(temp_spending) > int(money.untilly_cash)):
			temp_spending = money.untilly_cash
		if (int(temp_spending) > int(customer_math.untilly_advertising_max)):
			temp_spending = int(customer_math.untilly_advertising_max)
		customer_math.untilly_advertising = temp_spending
		spending()
	if (towns.town_select == "windrow"):
		var temp_spending = get_node("container/spending_output").get_text()
		if (int(temp_spending) > int(money.windrow_cash)):
			temp_spending = money.windrow_cash
		if (int(temp_spending) > int(customer_math.windrow_advertising_max)):
			temp_spending = int(customer_math.windrow_advertising_max)
		customer_math.windrow_advertising = temp_spending
		spending()
	if (towns.town_select == "banlon"):
		var temp_spending = get_node("container/spending_output").get_text()
		if (int(temp_spending) > int(money.banlon_cash)):
			temp_spending = money.banlon_cash
		if (int(temp_spending) > int(customer_math.banlon_advertising_max)):
			temp_spending = int(customer_math.banlon_advertising_max)
		customer_math.banlon_advertising = temp_spending
		spending()
	if (towns.town_select == "slatten"):
		var temp_spending = get_node("container/spending_output").get_text()
		if (int(temp_spending) > int(money.slatten_cash)):
			temp_spending = money.slatten_cash
		if (int(temp_spending) > int(customer_math.slatten_advertising_max)):
			temp_spending = int(customer_math.slatten_advertising_max)
		customer_math.slatten_advertising = temp_spending
		spending()
		
func spending():
	if (towns.town_select == "hollyhock"):
		spending_output.clear()
		spending_output.set_text(str(customer_math.hollyhock_advertising))
	if (towns.town_select == "fiyork"):
		spending_output.clear()
		spending_output.set_text(str(customer_math.fiyork_advertising))
	if (towns.town_select == "plansey"):
		spending_output.clear()
		spending_output.set_text(str(customer_math.plansey_advertising))
	if (towns.town_select == "untilly"):
		spending_output.clear()
		spending_output.set_text(str(customer_math.untilly_advertising))
	if (towns.town_select == "windrow"):
		spending_output.clear()
		spending_output.set_text(str(customer_math.windrow_advertising))
	if (towns.town_select == "banlon"):
		spending_output.clear()
		spending_output.set_text(str(customer_math.banlon_advertising))
	if (towns.town_select == "slatten"):
		spending_output.clear()
		spending_output.set_text(str(customer_math.slatten_advertising))