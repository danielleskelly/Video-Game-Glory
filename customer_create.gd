extends Node

var movement_load = load("res://movement_node.tscn") #instance load mover for customer
var customer_load = load("res://customer.tscn") #instance load customer

func _ready():
	pass

func prediction_one_customer_create():
	var customer = customer_load.instance()
	var mover = movement_load.instance()
	#in store entertainment upgrades effect on waiting
	entertainment_time_check.entertainment_time_check()
	customer.get_child(3).set_wait_time(entertainment_time_check.wait_time)
	customer.get_child(3).start()
	#sets the genre for the first prediction based on town
	if (towns.town_select == "hollyhock"):
		customer.get_child(1).get_child(0).show()
		customer.get_child(1).get_child(1).set_hidden(true)
		customer.get_child(1).get_child(2).set_hidden(true)
		customer.get_child(1).get_child(3).set_hidden(true)
		customer.get_child(1).get_child(4).set_hidden(true)
		customer.get_child(1).get_child(5).set_hidden(true)
		customer.add_to_group("meta")
	get_tree().get_current_scene().get_node("customer_queue").add_child(mover)
	mover.add_child(customer)
	
func prediction_two_customer_create():
	var customer = customer_load.instance()
	var mover = movement_load.instance()
	#in store entertainment upgrades effect on waiting
	entertainment_time_check.entertainment_time_check()
	customer.get_child(3).set_wait_time(entertainment_time_check.wait_time)
	customer.get_child(3).start()
	#sets the genre for the first prediction based on town
	if (global.town_select == "hollyhock"):
		customer.get_child(1).get_child(0).set_hidden(true)
		customer.get_child(1).get_child(1).show()
		customer.get_child(1).get_child(2).set_hidden(true)
		customer.get_child(1).get_child(3).set_hidden(true)
		customer.get_child(1).get_child(4).set_hidden(true)
		customer.get_child(1).get_child(5).set_hidden(true)
		customer.add_to_group("classic")
	get_tree().get_current_scene().get_node("customer_queue").add_child(mover)
	mover.add_child(customer)
	
func prediction_three_customer_create():
	var customer = customer_load.instance()
	var mover = movement_load.instance()
	#in store entertainment upgrades effect on waiting
	entertainment_time_check.entertainment_time_check()
	customer.get_child(3).set_wait_time(entertainment_time_check.wait_time)
	customer.get_child(3).start()
	#sets the genre for the first prediction based on town
	if (global.town_select == "hollyhock"):
		customer.get_child(1).get_child(0).set_hidden(true)
		customer.get_child(1).get_child(1).set_hidden(true)
		customer.get_child(1).get_child(2).show()
		customer.get_child(1).get_child(3).set_hidden(true)
		customer.get_child(1).get_child(4).set_hidden(true)
		customer.get_child(1).get_child(5).set_hidden(true)
		customer.add_to_group("platformer")
	get_tree().get_current_scene().get_node("customer_queue").add_child(mover)
	mover.add_child(customer)