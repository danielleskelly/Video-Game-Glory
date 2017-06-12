extends RigidBody2D

#get the timer nodes
onready var waiting_timer = get_node("waiting_timer")
onready var concessions_timer = get_node("concessions_timer")

#gets the move_node to go from old parent to new parent when changing paths
var old_parent
var new_parent
var move_node

var charge_price #allows the price to adjust with the arcade the customer moves from
var concession_choice #allows the concessions to pass a boolean of choice

var colliders #stores the colliding bodies

func _ready():
	set_process(true)
	
func _process(delta):
	#makes the customers move
	colliders = get_colliding_bodies()
	if (get_parent().is_in_group("path") == true):
		if (get_parent().get_parent().is_in_group("queue") == true):
			if ((colliders.size() == 0) or (colliders[0].is_greater_than(self) == true)):
				get_parent().set_offset(get_parent().get_offset() + (20*delta))
		if ((get_parent().get_parent().is_in_group("arcade") == true) or (get_parent().get_parent().is_in_group("concessions") == true) or (get_parent().get_parent().is_in_group("exit") == true)):
				get_parent().set_offset(get_parent().get_offset() + (20*delta))


#when the customer has waited in the queue for the timeout period
func _on_waiting_timer_timeout():
	#if the customer is in the arcade this moves them to concessions or the exit
	if (get_parent().get_parent().is_in_group("arcade") == true):
		var concession_chance = [true, false, false, false]
		randomize(concession_chance)
		concession_choice = concession_chance[randi() % concession_chance.size()]
		set_parents()
		old_parent.remove_child(old_parent.get_child(0))
		move_node.set_offset(0)
		new_parent.add_child(move_node)
		arcade_purchase()
		global.sales_made = global.sales_made + 1
	#if the customer is still in the queue this is a lost sale for waiting too long
	if (get_parent().get_parent().is_in_group("queue") == true):
		old_parent = get_tree().get_current_scene().get_node("customer_queue")
		new_parent = get_tree().get_current_scene().get_node("queue_to_exit")
		move_node = get_tree().get_current_scene().get_node("customer_queue").get_child(1)
		old_parent.remove_child(old_parent.get_child(1))
		move_node.set_offset(0)
		new_parent.add_child(move_node)
		global.sales_lost = global.sales_lost + 1
		global.waited_loss = global.waited_loss + 1
	#if the customer is at an exit free them from the game
	if (get_parent().get_parent().is_in_group("exit") == true):
		get_parent().queue_free()

func set_parents():
	if ((get_parent().get_parent().get_name() == "zone_one_path") and (concession_choice == true)):
		concessions_timer.start()
		old_parent = get_tree().get_current_scene().get_node("zone_one_path")
		new_parent = get_tree().get_current_scene().get_node("zone_one_to_conc")
		move_node = get_tree().get_current_scene().get_node("zone_one_path").get_child(0)
		get_tree().get_current_scene().get_node("arcade_zone_one").add_to_group("free")
	if ((get_parent().get_parent().get_name() == "zone_one_path") and (concession_choice == false)):
		waiting_timer.start()
		old_parent = get_tree().get_current_scene().get_node("zone_one_path")
		new_parent = get_tree().get_current_scene().get_node("zone_one_to_exit")
		move_node = get_tree().get_current_scene().get_node("zone_one_path").get_child(0)
		get_tree().get_current_scene().get_node("arcade_zone_one").add_to_group("free")
		print(old_parent.get_name())
		print(new_parent.get_name())
		print(move_node.get_name())
	if ((get_parent().get_parent().get_name() == "zone_two_path") and (concession_choice == true)):
		concessions_timer.start()
		old_parent = get_tree().get_current_scene().get_node("zone_two_path")
		new_parent = get_tree().get_current_scene().get_node("zone_two_to_conc")
		move_node = get_tree().get_current_scene().get_node("zone_two_path").get_child(0)
		get_tree().get_current_scene().get_node("arcade_zone_two").add_to_group("free")
	if ((get_parent().get_parent().get_name() == "zone_two_path") and (concession_choice == false)):
		waiting_timer.start()
		old_parent = get_tree().get_current_scene().get_node("zone_two_path")
		new_parent = get_tree().get_current_scene().get_node("zone_two_to_exit")
		move_node = get_tree().get_current_scene().get_node("zone_two_path").get_child(0)
		get_tree().get_current_scene().get_node("arcade_zone_two").add_to_group("free")
		print(old_parent.get_name())
		print(new_parent.get_name())
		print(move_node.get_name())
	if ((get_parent().get_parent().get_name() == "zone_three_path") and (concession_choice == true)):
		concessions_timer.start()
		old_parent = get_tree().get_current_scene().get_node("zone_three_path")
		new_parent = get_tree().get_current_scene().get_node("zone_three_to_conc")
		move_node = get_tree().get_current_scene().get_node("zone_three_path").get_child(0)
		get_tree().get_current_scene().get_node("arcade_zone_three").add_to_group("free")
	if ((get_parent().get_parent().get_name() == "zone_three_path") and (concession_choice == false)):
		waiting_timer.start()
		old_parent = get_tree().get_current_scene().get_node("zone_three_path")
		new_parent = get_tree().get_current_scene().get_node("zone_three_to_exit")
		move_node = get_tree().get_current_scene().get_node("zone_three_path").get_child(0)
		get_tree().get_current_scene().get_node("arcade_zone_three").add_to_group("free")
		print(old_parent.get_name())
		print(new_parent.get_name())
		print(move_node.get_name())
	if ((get_parent().get_parent().get_name() == "zone_four_path") and (concession_choice == true)):
		concessions_timer.start()
		old_parent = get_tree().get_current_scene().get_node("zone_four_path")
		new_parent = get_tree().get_current_scene().get_node("zone_four_to_conc")
		move_node = get_tree().get_current_scene().get_node("zone_four_path").get_child(0)
		get_tree().get_current_scene().get_node("arcade_zone_four").add_to_group("free")
	if ((get_parent().get_parent().get_name() == "zone_four_path") and (concession_choice == false)):
		waiting_timer.start()
		old_parent = get_tree().get_current_scene().get_node("zone_four_path")
		new_parent = get_tree().get_current_scene().get_node("zone_four_to_exit")
		move_node = get_tree().get_current_scene().get_node("zone_four_path").get_child(0)
		get_tree().get_current_scene().get_node("arcade_zone_four").add_to_group("free")
		print(old_parent.get_name())
		print(new_parent.get_name())
		print(move_node.get_name())
	if ((get_parent().get_parent().get_name() == "zone_five_path") and (concession_choice == true)):
		concessions_timer.start()
		old_parent = get_tree().get_current_scene().get_node("zone_five_path")
		new_parent = get_tree().get_current_scene().get_node("zone_five_to_conc")
		move_node = get_tree().get_current_scene().get_node("zone_five_path").get_child(0)
		get_tree().get_current_scene().get_node("arcade_zone_five").add_to_group("free")
	if ((get_parent().get_parent().get_name() == "zone_five_path") and (concession_choice == false)):
		waiting_timer.start()
		old_parent = get_tree().get_current_scene().get_node("zone_five_path")
		new_parent = get_tree().get_current_scene().get_node("zone_five_to_exit")
		move_node = get_tree().get_current_scene().get_node("zone_five_path").get_child(0)
		get_tree().get_current_scene().get_node("arcade_zone_five").add_to_group("free")
		print(old_parent.get_name())
		print(new_parent.get_name())
		print(move_node.get_name())
	if ((get_parent().get_parent().get_name() == "zone_six_path") and (concession_choice == true)):
		concessions_timer.start()
		old_parent = get_tree().get_current_scene().get_node("zone_six_path")
		new_parent = get_tree().get_current_scene().get_node("zone_six_to_conc")
		move_node = get_tree().get_current_scene().get_node("zone_six_path").get_child(0)
		get_tree().get_current_scene().get_node("arcade_zone_six").add_to_group("free")
	if ((get_parent().get_parent().get_name() == "zone_six_path") and (concession_choice == false)):
		waiting_timer.start()
		old_parent = get_tree().get_current_scene().get_node("zone_six_path")
		new_parent = get_tree().get_current_scene().get_node("zone_six_to_exit")
		move_node = get_tree().get_current_scene().get_node("zone_six_path").get_child(0)
		get_tree().get_current_scene().get_node("arcade_zone_six").add_to_group("free")
		print(old_parent.get_name())
		print(new_parent.get_name())
		print(move_node.get_name())

#charges the player when they are done playing the game
func arcade_purchase():
	var parent_name = get_parent().get_parent().get_name()
	if ((parent_name == "zone_one_to_exit") or (parent_name == "zone_one_to_conc")):
		charge_price = global.arcade_one_price
	if ((parent_name == "zone_two_to_exit") or (parent_name == "zone_two_to_conc")):
		charge_price = global.arcade_two_price
	if ((parent_name == "zone_three_to_exit") or (parent_name == "zone_three_to_conc")):
		charge_price = global.arcade_three_price
	if ((parent_name == "zone_four_to_exit") or (parent_name == "zone_four_to_conc")):
		charge_price = global.arcade_four_price
	if ((parent_name == "zone_five_to_exit") or (parent_name == "zone_five_to_conc")):
		charge_price = global.arcade_five_price
	if ((parent_name == "zone_six_to_exit") or (parent_name == "zone_six_to_conc")):
		charge_price = global.arcade_six_price
	global.balance = global.balance + charge_price
	global.sales_made = global.sales_made + 1
	global.income = global.income + charge_price

func _on_concessions_timer_timeout():
	if (get_parent().get_parent().is_in_group("concessions") == true):
		if (get_parent().get_parent().get_name() == "zone_one_to_conc"):
			old_parent = get_tree().get_current_scene().get_node("zone_one_to_conc")
			move_node = get_tree().get_current_scene().get_node("zone_one_to_conc").get_child(0)
		if (get_parent().get_parent().get_name() == "zone_two_to_conc"):
			old_parent = get_tree().get_current_scene().get_node("zone_two_to_conc")
			move_node = get_tree().get_current_scene().get_node("zone_two_to_conc").get_child(0)
		if (get_parent().get_parent().get_name() == "zone_three_to_conc"):
			old_parent = get_tree().get_current_scene().get_node("zone_three_to_conc")
			move_node = get_tree().get_current_scene().get_node("zone_three_to_conc").get_child(0)
		if (get_parent().get_parent().get_name() == "zone_four_to_conc"):
			old_parent = get_tree().get_current_scene().get_node("zone_four_to_conc")
			move_node = get_tree().get_current_scene().get_node("zone_four_to_conc").get_child(0)
		if (get_parent().get_parent().get_name() == "zone_five_to_conc"):
			old_parent = get_tree().get_current_scene().get_node("zone_five_to_conc")
			move_node = get_tree().get_current_scene().get_node("zone_five_to_conc").get_child(0)
		if (get_parent().get_parent().get_name() == "zone_six_to_conc"):
			old_parent = get_tree().get_current_scene().get_node("zone_six_to_conc")
			move_node = get_tree().get_current_scene().get_node("zone_six_to_conc").get_child(0)
		new_parent = get_tree().get_current_scene().get_node("concessions_to_exit")
		old_parent.remove_child(old_parent.get_child(0))
		move_node.set_offset(0)
		new_parent.add_child(move_node)
		concessions_purchase()
	if ((get_parent().get_parent().is_in_group("exit") == true) and (get_parent().get_offset() > 1)):
		get_parent().queue_free()

#charges the customer for concessions if they go to concessions
func concessions_purchase():
	if (global.town_select == "hollyhock"):
		if ((global.soda_count > 0) and (global.popcorn_count > 0)):
			charge_price = global.soda_price + global.popcorn_price
			global.balance = global.balance + charge_price
			global.soda_count = global.soda_count - 1
			global.popcorn_count = global.popcorn_count - 1
			global.income = global.income + charge_price
		if ((global.soda_count == 0) or (global.popcorn_count == 0)):
			global.neutral = global.neutral + 1