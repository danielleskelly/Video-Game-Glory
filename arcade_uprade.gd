extends Node2D

onready var worst_output = get_node("worst/price")
onready var decent_output = get_node("decent/price")
onready var good_output = get_node("good/price")
onready var great_output = get_node("great/price")
onready var best_output = get_node("best/price")
onready var notifications = get_node("notifications")

var key_change
var select_price
var decent_price
var good_price
var great_price
var best_price

func _ready():
	set_process(true)
	
func _process(delta):
	worst_output.clear()
	worst_output.add_text(global.worst_price)
	decent_output.clear()
	decent_output.add_text(str(global.decent_price))
	good_output.clear()
	good_output.add_text(str(global.good_price))
	great_output.clear()
	great_output.add_text(str(global.great_price))
	best_output.clear()
	best_output.add_text(str(global.best_price))

func _on_worst_button_button_down():
	if (global.town_select == "hollyhock"):
		if (global.hollyhock_arcade_worst_key == true):
			select_price = 0
			notifications.clear()
			notifications.add_text("You already own that!")
			notifications.show()

func _on_decent_button_button_down():
	if (global.town_select == "hollyhock"):
		if (global.hollyhock_arcade_decent_key == true):
			select_price = 0
			notifications.clear()
			notifications.add_text("You already own that!")
			notifications.show()
		if (global.hollyhock_arcade_decent_key == false):
			if (global.hollyhock_cash >= global.decent_price):
				notifications.clear()
				notifications.add_text("Available for purchase.")
				notifications.show()
				select_price = global.decent_price
				key_change = "hollyhock decent"
			if (global.hollyhock_cash < global.decent_price):
				notifications.clear()
				notifications.add_text("You can't afford that!")
				notifications.show()

func _on_good_button_button_down():
	if (global.town_select == "hollyhock"):
		if (global.hollyhock_arcade_good_key == true):
			select_price = 0
			notifications.clear()
			notifications.add_text("You already own that!")
			notifications.show()
		if (global.hollyhock_arcade_good_key == false):
			if (global.hollyhock_cash >= global.good_price):
				notifications.clear()
				notifications.add_text("Available for purchase.")
				notifications.show()
				select_price = global.good_price
				print(select_price)
				key_change = "hollyhock good"
			if (global.hollyhock_cash < global.good_price):
				notifications.clear()
				notifications.add_text("You can't afford that!")
				notifications.show()

func _on_great_button_button_down():
	if (global.town_select == "hollyhock"):
		if (global.hollyhock_arcade_great_key == true):
			select_price = 0
			notifications.clear()
			notifications.add_text("You already own that!")
			notifications.show()
		if (global.hollyhock_arcade_great_key == false):
			if (global.hollyhock_cash >= global.great_price):
				notifications.clear()
				notifications.add_text("Available for purchase.")
				notifications.show()
				select_price = global.great_price
				key_change = "hollyhock great"
			if (global.hollyhock_cash < global.great_price):
				notifications.clear()
				notifications.add_text("You can't afford that!")
				notifications.show()


func _on_best_button_button_down():
	if (global.town_select == "hollyhock"):
		if (global.hollyhock_arcade_best_key == true):
			select_price = 0
			notifications.clear()
			notifications.add_text("You already own that!")
			notifications.show()
		if (global.hollyhock_arcade_best_key == false):
			if (global.hollyhock_cash >= global.best_price):
				notifications.clear()
				notifications.add_text("Available for purchase.")
				notifications.show()
				select_price = global.best_price
				key_change = "hollyhock best"
			if (global.hollyhock_cash < global.best_price):
				notifications.clear()
				notifications.add_text("You can't afford that!")
				notifications.show()

func _on_confirm_button_down():
	if (global.town_select == "hollyhock"):
		global.hollyhock_balance = global.hollyhock_balance - select_price
	if (key_change == "hollyhock decent"):
		global.hollyhock_arcade_decent_key = true
		global.hollyhock_station_three_key= true
	if (key_change == "hollyhock good"):
		global.hollyhock_arcade_good_key = true
		global.hollyhock_station_four_key= true
	if (key_change == "hollyhock great"):
		global.hollyhock_arcade_great_key = true
		global.hollyhock_station_five_key= true
	if (key_change == "hollyhock best"):
		global.hollyhock_arcade_best_key = true
		global.hollyhock_station_six_key= true
	notifications.clear()