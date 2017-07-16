extends Node2D

onready var worst_output = get_node("worst/price")
onready var decent_output = get_node("decent/price")
onready var good_output = get_node("good/price")
onready var great_output = get_node("great/price")
onready var best_output = get_node("best/price")
onready var notifications = get_node("notifications")

var key_change
var select_price = 0
var decent_price
var good_price
var great_price
var best_price

func _ready():
	set_process(true)
	
func _process(delta):
	worst_output.clear()
	worst_output.add_text(upgrade_prices.worst_price)
	if (towns.town_select == "hollyhock"):
		if (hollyhock.hollyhock_arcade_decent_key == true):
			decent_output.clear()
			decent_output.add_text("Owned")
		elif (hollyhock.hollyhock_arcade_decent_key == false):
			decent_output.clear()
			decent_output.add_text(str(upgrade_prices.decent_price))
		if (hollyhock.hollyhock_arcade_good_key == true):
			good_output.clear()
			good_output.add_text("Owned")
		elif (hollyhock.hollyhock_arcade_good_key == false):
			good_output.clear()
			good_output.add_text(str(upgrade_prices.good_price))
		if (hollyhock.hollyhock_arcade_great_key == true):
			great_output.clear()
			great_output.add_text("Owned")
		elif (hollyhock.hollyhock_arcade_great_key == false):
			great_output.clear()
			great_output.add_text(str(upgrade_prices.great_price))
		if (hollyhock.hollyhock_arcade_best_key == true):
			best_output.clear()
			best_output.add_text("Owned")
		elif (hollyhock.hollyhock_arcade_best_key == false):
			best_output.clear()
			best_output.add_text(str(upgrade_prices.best_price))
	if (towns.town_select == "fiyork"):
		if (fiyork.fiyork_arcade_decent_key == true):
			decent_output.clear()
			decent_output.add_text("Owned")
		elif (fiyork.fiyork_arcade_decent_key == false):
			decent_output.clear()
			decent_output.add_text(str(upgrade_prices.decent_price))
		if (fiyork.fiyork_arcade_good_key == true):
			good_output.clear()
			good_output.add_text("Owned")
		elif (fiyork.fiyork_arcade_good_key == false):
			good_output.clear()
			good_output.add_text(str(upgrade_prices.good_price))
		if (fiyork.fiyork_arcade_great_key == true):
			great_output.clear()
			great_output.add_text("Owned")
		elif (fiyork.fiyork_arcade_great_key == false):
			great_output.clear()
			great_output.add_text(str(upgrade_prices.great_price))
		if (fiyork.fiyork_arcade_best_key == true):
			best_output.clear()
			best_output.add_text("Owned")
		elif (fiyork.fiyork_arcade_best_key == false):
			best_output.clear()
			best_output.add_text(str(upgrade_prices.best_price))
	if (towns.town_select == "fiyork"):
		if (fiyork.fiyork_arcade_decent_key == true):
			decent_output.clear()
			decent_output.add_text("Owned")
		elif (fiyork.fiyork_arcade_decent_key == false):
			decent_output.clear()
			decent_output.add_text(str(upgrade_prices.decent_price))
		if (fiyork.fiyork_arcade_good_key == true):
			good_output.clear()
			good_output.add_text("Owned")
		elif (fiyork.fiyork_arcade_good_key == false):
			good_output.clear()
			good_output.add_text(str(upgrade_prices.good_price))
		if (fiyork.fiyork_arcade_great_key == true):
			great_output.clear()
			great_output.add_text("Owned")
		elif (fiyork.fiyork_arcade_great_key == false):
			great_output.clear()
			great_output.add_text(str(upgrade_prices.great_price))
		if (fiyork.fiyork_arcade_best_key == true):
			best_output.clear()
			best_output.add_text("Owned")
		elif (fiyork.fiyork_arcade_best_key == false):
			best_output.clear()
			best_output.add_text(str(upgrade_prices.best_price))

func _on_worst_button_button_down():
	if (towns.town_select == "hollyhock"):
		if (hollyhock.hollyhock_arcade_worst_key == true):
			select_price = 0
			notifications.clear()
			notifications.add_text("You already own that!")
			notifications.show()
	if (towns.town_select == "fiyork"):
		if (fiyork.fiyork_arcade_worst_key == true):
			select_price = 0
			notifications.clear()
			notifications.add_text("You already own that!")
			notifications.show()
	if (towns.town_select == "plansey"):
		if (plansey.plansey_arcade_worst_key == true):
			select_price = 0
			notifications.clear()
			notifications.add_text("You already own that!")
			notifications.show()

func _on_decent_button_button_down():
	if (towns.town_select == "hollyhock"):
		if (hollyhock.hollyhock_arcade_decent_key == true):
			select_price = 0
			notifications.clear()
			notifications.add_text("You already own that!")
			notifications.show()
		if (hollyhock.hollyhock_arcade_decent_key == false):
			if (money.hollyhock_cash >= upgrade_prices.decent_price):
				notifications.clear()
				notifications.add_text("Available for purchase.")
				notifications.show()
				select_price = upgrade_prices.decent_price
				key_change = "hollyhock decent"
			if (money.hollyhock_cash < upgrade_prices.decent_price):
				notifications.clear()
				notifications.add_text("You cannot afford that!")
				notifications.show()
	if (towns.town_select == "fiyork"):
		if (fiyork.fiyork_arcade_decent_key == true):
			select_price = 0
			notifications.clear()
			notifications.add_text("You already own that!")
			notifications.show()
		if (fiyork.fiyork_arcade_decent_key == false):
			if (money.fiyork_cash >= upgrade_prices.decent_price):
				notifications.clear()
				notifications.add_text("Available for purchase.")
				notifications.show()
				select_price = upgrade_prices.decent_price
				key_change = "fiyork decent"
			if (money.fiyork_cash < upgrade_prices.decent_price):
				notifications.clear()
				notifications.add_text("You cannot afford that!")
				notifications.show()
	if (towns.town_select == "plansey"):
		if (plansey.plansey_arcade_decent_key == true):
			select_price = 0
			notifications.clear()
			notifications.add_text("You already own that!")
			notifications.show()
		if (plansey.plansey_arcade_decent_key == false):
			if (money.plansey_cash >= upgrade_prices.decent_price):
				notifications.clear()
				notifications.add_text("Available for purchase.")
				notifications.show()
				select_price = upgrade_prices.decent_price
				key_change = "plansey decent"
			if (money.plansey_cash < upgrade_prices.decent_price):
				notifications.clear()
				notifications.add_text("You cannot afford that!")
				notifications.show()

func _on_good_button_button_down():
	if (towns.town_select == "hollyhock"):
		if (hollyhock.hollyhock_arcade_good_key == true):
			select_price = 0
			notifications.clear()
			notifications.add_text("You already own that!")
			notifications.show()
		if (hollyhock.hollyhock_arcade_good_key == false):
			if (money.hollyhock_cash >= upgrade_prices.good_price):
				notifications.clear()
				notifications.add_text("Available for purchase.")
				notifications.show()
				select_price = upgrade_prices.good_price
				key_change = "hollyhock good"
			if (money.hollyhock_cash < upgrade_prices.good_price):
				notifications.clear()
				notifications.add_text("You cannot afford that!")
				notifications.show()
	if (towns.town_select == "fiyork"):
		if (fiyork.fiyork_arcade_good_key == true):
			select_price = 0
			notifications.clear()
			notifications.add_text("You already own that!")
			notifications.show()
		if (fiyork.fiyork_arcade_good_key == false):
			if (money.fiyork_cash >= upgrade_prices.good_price):
				notifications.clear()
				notifications.add_text("Available for purchase.")
				notifications.show()
				select_price = upgrade_prices.good_price
				key_change = "fiyork good"
			if (money.fiyork_cash < upgrade_prices.good_price):
				notifications.clear()
				notifications.add_text("You cannot afford that!")
				notifications.show()
	if (towns.town_select == "plansey"):
		if (plansey.plansey_arcade_good_key == true):
			select_price = 0
			notifications.clear()
			notifications.add_text("You already own that!")
			notifications.show()
		if (plansey.plansey_arcade_good_key == false):
			if (money.plansey_cash >= upgrade_prices.good_price):
				notifications.clear()
				notifications.add_text("Available for purchase.")
				notifications.show()
				select_price = upgrade_prices.good_price
				key_change = "plansey good"
			if (money.plansey_cash < upgrade_prices.good_price):
				notifications.clear()
				notifications.add_text("You cannot afford that!")
				notifications.show()

func _on_great_button_button_down():
	if (towns.town_select == "hollyhock"):
		if (hollyhock.hollyhock_arcade_great_key == true):
			select_price = 0
			notifications.clear()
			notifications.add_text("You already own that!")
			notifications.show()
		if (hollyhock.hollyhock_arcade_great_key == false):
			if (money.hollyhock_cash >= upgrade_prices.great_price):
				notifications.clear()
				notifications.add_text("Available for purchase.")
				notifications.show()
				select_price = upgrade_prices.great_price
				key_change = "hollyhock great"
			if (money.hollyhock_cash < upgrade_prices.great_price):
				notifications.clear()
				notifications.add_text("You cannot afford that!")
				notifications.show()
	if (towns.town_select == "fiyork"):
		if (fiyork.fiyork_arcade_great_key == true):
			select_price = 0
			notifications.clear()
			notifications.add_text("You already own that!")
			notifications.show()
		if (fiyork.fiyork_arcade_great_key == false):
			if (money.fiyork_cash >= upgrade_prices.great_price):
				notifications.clear()
				notifications.add_text("Available for purchase.")
				notifications.show()
				select_price = upgrade_prices.great_price
				key_change = "fiyork great"
			if (money.fiyork_cash < upgrade_prices.great_price):
				notifications.clear()
				notifications.add_text("You cannot afford that!")
				notifications.show()
	if (towns.town_select == "plansey"):
		if (plansey.plansey_arcade_great_key == true):
			select_price = 0
			notifications.clear()
			notifications.add_text("You already own that!")
			notifications.show()
		if (plansey.plansey_arcade_great_key == false):
			if (money.plansey_cash >= upgrade_prices.great_price):
				notifications.clear()
				notifications.add_text("Available for purchase.")
				notifications.show()
				select_price = upgrade_prices.great_price
				key_change = "plansey great"
			if (money.plansey_cash < upgrade_prices.great_price):
				notifications.clear()
				notifications.add_text("You cannot afford that!")
				notifications.show()

func _on_best_button_button_down():
	if (towns.town_select == "hollyhock"):
		if (hollyhock.hollyhock_arcade_best_key == true):
			select_price = 0
			notifications.clear()
			notifications.add_text("You already own that!")
			notifications.show()
		if (hollyhock.hollyhock_arcade_best_key == false):
			if (money.hollyhock_cash >= upgrade_prices.best_price):
				notifications.clear()
				notifications.add_text("Available for purchase.")
				notifications.show()
				select_price = best_price
				key_change = "hollyhock best"
			if (money.hollyhock_cash < upgrade_prices.best_price):
				notifications.clear()
				notifications.add_text("You cannot afford that!")
				notifications.show()
	if (towns.town_select == "fiyork"):
		if (fiyork.fiyork_arcade_best_key == true):
			select_price = 0
			notifications.clear()
			notifications.add_text("You already own that!")
			notifications.show()
		if (fiyork.fiyork_arcade_best_key == false):
			if (money.fiyork_cash >= upgrade_prices.best_price):
				notifications.clear()
				notifications.add_text("Available for purchase.")
				notifications.show()
				select_price = best_price
				key_change = "fiyork best"
			if (money.fiyork_cash < upgrade_prices.best_price):
				notifications.clear()
				notifications.add_text("You cannot afford that!")
				notifications.show()
	if (towns.town_select == "plansey"):
		if (plansey.plansey_arcade_best_key == true):
			select_price = 0
			notifications.clear()
			notifications.add_text("You already own that!")
			notifications.show()
		if (plansey.plansey_arcade_best_key == false):
			if (money.plansey_cash >= upgrade_prices.best_price):
				notifications.clear()
				notifications.add_text("Available for purchase.")
				notifications.show()
				select_price = best_price
				key_change = "plansey best"
			if (money.plansey_cash < upgrade_prices.best_price):
				notifications.clear()
				notifications.add_text("You cannot afford that!")
				notifications.show()

func _on_confirm_button_down():
	get_node("notifications").set_hidden(true)
	if (select_price != 0):
		if (towns.town_select == "hollyhock"):
			money.hollyhock_balance = money.hollyhock_balance - select_price
			if (key_change == "hollyhock decent"):
				hollyhock.hollyhock_arcade_decent_key = true
			if (key_change == "hollyhock good"):
				hollyhock.hollyhock_arcade_good_key = true
			if (key_change == "hollyhock great"):
				hollyhock.hollyhock_arcade_great_key = true
			if (key_change == "hollyhock best"):
				hollyhock.hollyhock_arcade_best_key = true
		if (towns.town_select == "fiyork"):
			money.fiyork_balance = money.fiyork_balance - select_price
			if (key_change == "fiyork decent"):
				fiyork.fiyork_arcade_decent_key = true
			if (key_change == "fiyork good"):
				fiyork.fiyork_arcade_good_key = true
			if (key_change == "fiyork great"):
				fiyork.fiyork_arcade_great_key = true
			if (key_change == "fiyork best"):
				fiyork.fiyork_arcade_best_key = true
		if (towns.town_select == "plansey"):
			money.plansey_balance = money.plansey_balance - select_price
			if (key_change == "plansey decent"):
				plansey.plansey_arcade_decent_key = true
			if (key_change == "plansey good"):
				plansey.plansey_arcade_good_key = true
			if (key_change == "plansey great"):
				plansey.plansey_arcade_great_key = true
			if (key_change == "plansey best"):
				plansey.plansey_arcade_best_key = true
		notifications.clear()