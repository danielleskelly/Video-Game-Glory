extends Node

var movement_load = load("res://movement_node.tscn") #instance load mover for customer
var customer_load = load("res://customer.tscn") #instance load customer
var pleasure_load = load("res://pleasure_bubble.tscn")

var cust_one = load("res://customer_one.png")
var cust_two = load("res://customer_two.png")
var cust_three = load("res://customer_four.png")
var cust_four = load("res://customer_five.png")
var cust_five = load("res://customer_six.png")

var pleasures

var avatar = ["one", "two", "three", "four", "five"]

func _ready():
	pass

func prediction_one_customer_create():
	var customer = customer_load.instance()
	randomize()
	var customer_avatar = avatar[randi() % avatar.size()]
	if (customer_avatar == "one"):
		customer.get_child(0).set_normal_texture(cust_one)
	elif (customer_avatar == "two"):
		customer.get_child(0).set_normal_texture(cust_two)
	elif (customer_avatar == "three"):
		customer.get_child(0).set_normal_texture(cust_three)
	elif (customer_avatar == "four"):
		customer.get_child(0).set_normal_texture(cust_four)
	elif (customer_avatar == "five"):
		customer.get_child(0).set_normal_texture(cust_five)
		customer.get_child(0).set_scale(Vector2(2,2))
	var pleasure_bubble = pleasure_load.instance()
	pleasures = pleasure_bubble.get_children()
	for pleasure in pleasures:
		pleasure.set_hidden(true)
	pleasure_bubble.get_child(6).show()
	var mover = movement_load.instance()
	#in store entertainment upgrades effect on waiting
	entertainment_time_check.entertainment_time_check()
	customer.get_child(2).set_wait_time(entertainment_time_check.wait_time)
	customer.get_child(2).start()
	#sets the genre for the first prediction based on town
	if (towns.town_select == "hollyhock"):
		pleasure_bubble.get_child(0).show()
		customer.add_to_group("meta")
	get_tree().get_current_scene().get_node("customer_queue").add_child(mover)
	mover.add_child(customer)
	customer.add_child(pleasure_bubble)
	
func prediction_two_customer_create():
	var customer = customer_load.instance()
	randomize()
	var customer_avatar = avatar[randi() % avatar.size()]
	if (customer_avatar == "one"):
		customer.get_child(0).set_normal_texture(cust_one)
	elif (customer_avatar == "two"):
		customer.get_child(0).set_normal_texture(cust_two)
	elif (customer_avatar == "three"):
		customer.get_child(0).set_normal_texture(cust_three)
	elif (customer_avatar == "four"):
		customer.get_child(0).set_normal_texture(cust_four)
	elif (customer_avatar == "five"):
		customer.get_child(0).set_normal_texture(cust_five)
		customer.get_child(0).set_scale(Vector2(2,2))
	var pleasure_bubble = pleasure_load.instance()
	pleasures = pleasure_bubble.get_children()
	for pleasure in pleasures:
		pleasure.set_hidden(true)
	pleasure_bubble.get_child(6).show()
	var mover = movement_load.instance()
	#in store entertainment upgrades effect on waiting
	entertainment_time_check.entertainment_time_check()
	customer.get_child(2).set_wait_time(entertainment_time_check.wait_time)
	customer.get_child(2).start()
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
	customer.add_child(pleasure_bubble)
	
func prediction_three_customer_create():
	var customer = customer_load.instance()
	randomize()
	var customer_avatar = avatar[randi() % avatar.size()]
	if (customer_avatar == "one"):
		customer.get_child(0).set_normal_texture(cust_one)
	elif (customer_avatar == "two"):
		customer.get_child(0).set_normal_texture(cust_two)
	elif (customer_avatar == "three"):
		customer.get_child(0).set_normal_texture(cust_three)
	elif (customer_avatar == "four"):
		customer.get_child(0).set_normal_texture(cust_four)
	elif (customer_avatar == "five"):
		customer.get_child(0).set_normal_texture(cust_five)
		customer.get_child(0).set_scale(Vector2(2,2))
	var pleasure_bubble = pleasure_load.instance()
	pleasures = pleasure_bubble.get_children()
	for pleasure in pleasures:
		pleasure.set_hidden(true)
	pleasure_bubble.get_child(6).show()
	var mover = movement_load.instance()
	#in store entertainment upgrades effect on waiting
	entertainment_time_check.entertainment_time_check()
	customer.get_child(2).set_wait_time(entertainment_time_check.wait_time)
	customer.get_child(2).start()
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
	customer.add_child(pleasure_bubble)