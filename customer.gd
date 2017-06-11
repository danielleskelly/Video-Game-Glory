extends RigidBody2D

var colliders
var collider_id

var waiting_timer
var concessions_timer

var old_parent
var new_parent
var prime

var charge_price

var arcade_one_price
var arcade_two_price
var arcade_three_price
var arcade_four_price
var arcade_five_price
var arcade_six_price

var soda_price
var popcorn_price

var soda_count
var popcorn_count

func _ready():
	waiting_timer = get_node("waiting_timer")
	concessions_timer = get_node("concessions_timer")
	set_process(true)
	
func _process(delta):
	get_globals()
	colliders = get_colliding_bodies()
	if ((get_parent().is_in_group("path") == true) and (get_parent().get_parent().is_in_group("queue") == true)):
		if ((colliders.size() == 0) or (colliders[0].is_greater_than(self) == true)):
				get_parent().set_offset(get_parent().get_offset() + (20*delta))
		if ((waiting_timer.get_time_left() == 0) and (get_parent().get_offset() > 1)):
			waiting_timer.start()
	if ((get_parent().is_in_group("path") == true) and (get_parent().get_parent().is_in_group("arcade") == true)):
		get_parent().set_offset(get_parent().get_offset() + (20*delta))
	if ((get_parent().is_in_group("path") == true) and (get_parent().get_parent().is_in_group("concessions") == true)):
		get_parent().set_offset(get_parent().get_offset() + (20*delta))
	if ((get_parent().is_in_group("path") == true) and (get_parent().get_parent().is_in_group("exit") == true)):
		get_parent().set_offset(get_parent().get_offset() + (20*delta))
		
		
func get_globals():
	arcade_one_price = global.arcade_one_price
	arcade_two_price = global.arcade_two_price
	arcade_three_price = global.arcade_three_price
	arcade_four_price = global.arcade_four_price
	arcade_five_price = global.arcade_five_price
	arcade_six_price = global.arcade_six_price
	soda_price = global.soda_price
	popcorn_price = global.popcorn_price
	soda_count = global.soda_count
	popcorn_count = global.popcorn_count
	
		
func arcade_purchase():
	var parent_name = get_parent().get_parent().get_name()
	if ((parent_name == "zone_one_to_exit") or (parent_name == "zone_one_to_conc")):
		charge_price = arcade_one_price
	if ((parent_name == "zone_two_to_exit") or (parent_name == "zone_two_to_conc")):
		charge_price = arcade_two_price
	if ((parent_name == "zone_three_to_exit") or (parent_name == "zone_three_to_conc")):
		charge_price = arcade_three_price
	if ((parent_name == "zone_four_to_exit") or (parent_name == "zone_four_to_conc")):
		charge_price = arcade_four_price
	if ((parent_name == "zone_five_to_exit") or (parent_name == "zone_five_to_conc")):
		charge_price = arcade_five_price
	if ((parent_name == "zone_six_to_exit") or (parent_name == "zone_six_to_conc")):
		charge_price = arcade_six_price
	global.balance = global.balance + charge_price
	global.sales_made = global.sales_made + 1
	global.income = global.income + charge_price


func concessions_purchase():
	if ((soda_count > 0) and (popcorn_count > 0)):
		charge_price = soda_price + popcorn_price
		global.balance = global.balance + charge_price
		global.soda_count = global.soda_count - 1
		global.popcorn_count = global.popcorn_count - 1
		global.income = global.income + charge_price
		global.happy = global.happy + 1
	if ((soda_count == 0) or (popcorn_count == 0)):
		global.neutral = global.neutral + 1

func _on_waiting_timer_timeout():
	if (get_parent().get_parent().is_in_group("arcade") == true):
		var concession_chance = [true, true, true, false]
		randomize(concession_chance)
		var concession_choice = concession_chance[randi() % concession_chance.size()]
		if ((get_parent().get_parent().get_name() == "zone_one_path") and (concession_choice == true)):
			old_parent = get_tree().get_current_scene().get_node("zone_one_path")
			new_parent = get_tree().get_current_scene().get_node("zone_one_to_conc")
			prime = get_tree().get_current_scene().get_node("zone_one_path").get_child(0)
			if (prime.get_unit_offset() > 1):
				concessions_timer.start()
				old_parent.remove_child(old_parent.get_child(0))
				prime.set_offset(0)
				new_parent.add_child(prime)
				arcade_purchase()
				get_tree().get_current_scene().get_node("arcade_zone_one").add_to_group("free")
		if ((get_parent().get_parent().get_name() == "zone_one_path") and (concession_choice == false)):
			old_parent = get_tree().get_current_scene().get_node("zone_one_path")
			new_parent = get_tree().get_current_scene().get_node("zone_one_to_exit")
			prime = get_tree().get_current_scene().get_node("zone_one_path").get_child(0)
			if (prime.get_unit_offset() > 1):
				old_parent.remove_child(old_parent.get_child(0))
				prime.set_offset(0)
				new_parent.add_child(prime)
				arcade_purchase()
				global.neutral = global.neutral + 1
				get_tree().get_current_scene().get_node("arcade_zone_one").add_to_group("free")
		if ((get_parent().get_parent().get_name() == "zone_two_path") and (concession_choice == true)):
			old_parent = get_tree().get_current_scene().get_node("zone_two_path")
			new_parent = get_tree().get_current_scene().get_node("zone_two_to_conc")
			prime = get_tree().get_current_scene().get_node("zone_two_path").get_child(0)
			if (prime.get_unit_offset() > 1):
				concessions_timer.start()
				old_parent.remove_child(old_parent.get_child(0))
				prime.set_offset(0)
				new_parent.add_child(prime)
				arcade_purchase()
				get_tree().get_current_scene().get_node("arcade_zone_two").add_to_group("free")
		if ((get_parent().get_parent().get_name() == "zone_two_path") and (concession_choice == false)):
			old_parent = get_tree().get_current_scene().get_node("zone_two_path")
			new_parent = get_tree().get_current_scene().get_node("zone_two_to_exit")
			prime = get_tree().get_current_scene().get_node("zone_two_path").get_child(0)
			if (prime.get_unit_offset() > 1):
				old_parent.remove_child(old_parent.get_child(0))
				prime.set_offset(0)
				new_parent.add_child(prime)
				arcade_purchase()
				global.neutral = global.neutral + 1
				get_tree().get_current_scene().get_node("arcade_zone_two").add_to_group("free")
		if ((get_parent().get_parent().get_name() == "zone_three_path") and (concession_choice == true)):
			old_parent = get_tree().get_current_scene().get_node("zone_three_path")
			new_parent = get_tree().get_current_scene().get_node("zone_three_to_conc")
			prime = get_tree().get_current_scene().get_node("zone_three_path").get_child(0)
			if (prime.get_unit_offset() > 1):
				concessions_timer.start()
				old_parent.remove_child(old_parent.get_child(0))
				prime.set_offset(0)
				new_parent.add_child(prime)
				arcade_purchase()
				get_tree().get_current_scene().get_node("arcade_zone_three").add_to_group("free")
		if ((get_parent().get_parent().get_name() == "zone_three_path") and (concession_choice == false)):
			old_parent = get_tree().get_current_scene().get_node("zone_three_path")
			new_parent = get_tree().get_current_scene().get_node("zone_three_to_exit")
			prime = get_tree().get_current_scene().get_node("zone_three_path").get_child(0)
			if (prime.get_unit_offset() > 1):
				old_parent.remove_child(old_parent.get_child(0))
				prime.set_offset(0)
				new_parent.add_child(prime)
				arcade_purchase()
				global.neutral = global.neutral + 1
				get_tree().get_current_scene().get_node("arcade_zone_three").add_to_group("free")
		if ((get_parent().get_parent().get_name() == "zone_four_path") and (concession_choice == true)):
			old_parent = get_tree().get_current_scene().get_node("zone_four_path")
			new_parent = get_tree().get_current_scene().get_node("zone_four_to_conc")
			prime = get_tree().get_current_scene().get_node("zone_four_path").get_child(0)
			if (prime.get_unit_offset() > 1):
				concessions_timer.start()
				old_parent.remove_child(old_parent.get_child(0))
				prime.set_offset(0)
				new_parent.add_child(prime)
				arcade_purchase()
				get_tree().get_current_scene().get_node("arcade_zone_four").add_to_group("free")
		if ((get_parent().get_parent().get_name() == "zone_four_path") and (concession_choice == false)):
			old_parent = get_tree().get_current_scene().get_node("zone_four_path")
			new_parent = get_tree().get_current_scene().get_node("zone_four_to_exit")
			prime = get_tree().get_current_scene().get_node("zone_four_path").get_child(0)
			if (prime.get_unit_offset() > 1):
				old_parent.remove_child(old_parent.get_child(0))
				prime.set_offset(0)
				new_parent.add_child(prime)
				arcade_purchase()
				global.neutral = global.neutral + 1
				get_tree().get_current_scene().get_node("arcade_zone_four").add_to_group("free")
		if ((get_parent().get_parent().get_name() == "zone_five_path") and (concession_choice == true)):
			old_parent = get_tree().get_current_scene().get_node("zone_five_path")
			new_parent = get_tree().get_current_scene().get_node("zone_five_to_conc")
			prime = get_tree().get_current_scene().get_node("zone_five_path").get_child(0)
			if (prime.get_unit_offset() > 1):
				concessions_timer.start()
				old_parent.remove_child(old_parent.get_child(0))
				prime.set_offset(0)
				new_parent.add_child(prime)
				arcade_purchase()
				get_tree().get_current_scene().get_node("arcade_zone_five").add_to_group("free")
		if ((get_parent().get_parent().get_name() == "zone_five_path") and (concession_choice == false)):
			old_parent = get_tree().get_current_scene().get_node("zone_five_path")
			new_parent = get_tree().get_current_scene().get_node("zone_five_to_exit")
			prime = get_tree().get_current_scene().get_node("zone_five_path").get_child(0)
			if (prime.get_unit_offset() > 1):
				old_parent.remove_child(old_parent.get_child(0))
				prime.set_offset(0)
				new_parent.add_child(prime)
				arcade_purchase()
				global.neutral = global.neutral + 1
				get_tree().get_current_scene().get_node("arcade_zone_five").add_to_group("free")
		if ((get_parent().get_parent().get_name() == "zone_six_path") and (concession_choice == true)):
			old_parent = get_tree().get_current_scene().get_node("zone_six_path")
			new_parent = get_tree().get_current_scene().get_node("zone_six_to_conc")
			prime = get_tree().get_current_scene().get_node("zone_six_path").get_child(0)
			if (prime.get_unit_offset() > 1):
				concessions_timer.start()
				old_parent.remove_child(old_parent.get_child(0))
				prime.set_offset(0)
				new_parent.add_child(prime)
				arcade_purchase()
				get_tree().get_current_scene().get_node("arcade_zone_six").add_to_group("free")
		if ((get_parent().get_parent().get_name() == "zone_six_path") and (concession_choice == false)):
			old_parent = get_tree().get_current_scene().get_node("zone_six_path")
			new_parent = get_tree().get_current_scene().get_node("zone_six_to_exit")
			prime = get_tree().get_current_scene().get_node("zone_six_path").get_child(0)
			if (prime.get_unit_offset() > 1):
				old_parent.remove_child(old_parent.get_child(0))
				prime.set_offset(0)
				new_parent.add_child(prime)
				arcade_purchase()
				global.neutral = global.neutral + 1
				get_tree().get_current_scene().get_node("arcade_zone_six").add_to_group("free")
	if (get_parent().get_parent().is_in_group("queue") == true):
		old_parent = get_tree().get_current_scene().get_node("customer_queue")
		new_parent = get_tree().get_current_scene().get_node("queue_to_exit")
		prime = get_tree().get_current_scene().get_node("customer_queue").get_child(1)
		if (prime.get_unit_offset() > 1):
			print("queue fail")
			old_parent.remove_child(old_parent.get_child(1))
			prime.set_offset(0)
			new_parent.add_child(prime)
			global.sales_lost = global.sales_lost + 1
			global.waited = global.waited + 1
	if (get_parent().get_parent().is_in_group("exit") == true):
		if (get_parent().get_offset() > 1):
			get_parent().queue_free()

func _on_concessions_timer_timeout():
	if (get_parent().get_parent().is_in_group("concessions") == true):
		if (get_parent().get_parent().get_name() == "zone_one_to_conc"):
			old_parent = get_tree().get_current_scene().get_node("zone_one_to_conc")
			prime = get_tree().get_current_scene().get_node("zone_one_to_conc").get_child(0)
		if (get_parent().get_parent().get_name() == "zone_two_to_conc"):
			old_parent = get_tree().get_current_scene().get_node("zone_two_to_conc")
			prime = get_tree().get_current_scene().get_node("zone_two_to_conc").get_child(0)
		if (get_parent().get_parent().get_name() == "zone_three_to_conc"):
			old_parent = get_tree().get_current_scene().get_node("zone_three_to_conc")
			prime = get_tree().get_current_scene().get_node("zone_three_to_conc").get_child(0)
		if (get_parent().get_parent().get_name() == "zone_four_to_conc"):
			old_parent = get_tree().get_current_scene().get_node("zone_four_to_conc")
			prime = get_tree().get_current_scene().get_node("zone_four_to_conc").get_child(0)
		if (get_parent().get_parent().get_name() == "zone_five_to_conc"):
			old_parent = get_tree().get_current_scene().get_node("zone_five_to_conc")
			prime = get_tree().get_current_scene().get_node("zone_five_to_conc").get_child(0)
		if (get_parent().get_parent().get_name() == "zone_six_to_conc"):
			old_parent = get_tree().get_current_scene().get_node("zone_six_to_conc")
			prime = get_tree().get_current_scene().get_node("zone_six_to_conc").get_child(0)
		new_parent = get_tree().get_current_scene().get_node("concessions_to_exit")
		if (prime.get_unit_offset() > 1):
			old_parent.remove_child(old_parent.get_child(0))
			prime.set_offset(0)
			new_parent.add_child(prime)
			concessions_purchase()
		if (prime.get_unit_offset() < 1):
			concessions_timer.start()
	if (get_parent().get_parent().is_in_group("exit") == true):
		if (get_parent().get_offset() > 1):
			get_parent().queue_free()