extends Node2D

var worst_price
var decent_price
var good_price
var great_price
var best_price

var worst_output
var decent_output
var good_output
var great_output
var best_output

var cash
var select_price

var worst_key
var decent_key
var good_key
var great_key
var best_key

var notifications
var key_change


func _ready():
	worst_output = get_node("worst/price")
	decent_output = get_node("decent/price")
	good_output = get_node("good/price")
	great_output = get_node("great/price")
	best_output = get_node("best/price")
	notifications = get_node("notifications")
	set_process(true)
	
func _process(delta):
	get_globals()
	worst_output.clear()
	worst_output.add_text(worst_price)
	decent_output.clear()
	decent_output.add_text(str(decent_price))
	good_output.clear()
	good_output.add_text(str(good_price))
	great_output.clear()
	great_output.add_text(str(great_price))
	best_output.clear()
	best_output.add_text(str(best_price))
	

func get_globals():
	worst_price = global.worst_price
	decent_price = global.decent_price
	good_price = global.good_price
	great_price = global.great_price
	best_price = global.best_price
	cash = global.balance - global.expenses
	worst_key = global.repairman_worst_key
	decent_key = global.repairman_decent_key
	good_key = global.repairman_good_key
	great_key = global.repairman_great_key
	best_key = global.repairman_best_key

func _on_worst_button_button_down():
	if (worst_key == true):
		select_price = 0
		notifications.clear()
		notifications.add_text("You already own that!")
		notifications.show()

func _on_decent_button_button_down():
	if (decent_key == true):
		select_price = 0
		notifications.clear()
		notifications.add_text("You already own that!")
		notifications.show()
	if (decent_key == false):
		if (cash >= decent_price):
			notifications.clear()
			notifications.add_text("Available for purchase.")
			notifications.show()
			select_price = decent_price
			key_change = "decent"
		if (cash < decent_price):
			notifications.clear()
			notifications.add_text("You can't afford that!")
			notifications.show()

func _on_confirm_button_down():
	global.balance = global.balance - select_price
	if (key_change == "decent"):
		global.repairman_decent_key = true
	if (key_change == "good"):
		global.repairman_good_key = true
	if (key_change == "great"):
		global.repairman_great_key = true
	if (key_change == "best"):
		global.repairman_best_key = true


func _on_good_button_button_down():
	if (good_key == true):
		select_price = 0
		notifications.clear()
		notifications.add_text("You already own that!")
		notifications.show()
	if (good_key == false):
		if (cash >= good_price):
			notifications.clear()
			notifications.add_text("Available for purchase.")
			notifications.show()
			select_price = good_price
			key_change = "good"
		if (cash < good_price):
			notifications.clear()
			notifications.add_text("You can't afford that!")
			notifications.show()


func _on_great_button_button_down():
	if (great_key == true):
		select_price = 0
		notifications.clear()
		notifications.add_text("You already own that!")
		notifications.show()
	if (great_key == false):
		if (cash >= great_price):
			notifications.clear()
			notifications.add_text("Available for purchase.")
			notifications.show()
			select_price = great_price
			key_change = "great"
		if (cash < great_price):
			notifications.clear()
			notifications.add_text("You can't afford that!")
			notifications.show()


func _on_best_button_button_down():
	if (best_key == true):
		select_price = 0
		notifications.clear()
		notifications.add_text("You already own that!")
		notifications.show()
	if (best_key == false):
		if (cash >= best_price):
			notifications.clear()
			notifications.add_text("Available for purchase.")
			notifications.show()
			select_price = best_price
			key_change = "best"
		if (cash < best_price):
			notifications.clear()
			notifications.add_text("You can't afford that!")
			notifications.show()
