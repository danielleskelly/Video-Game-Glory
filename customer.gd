extends RigidBody2D

var keep_old_parent
var keep_new_parent

#get the timer nodes
onready var concessions_timer = get_node("concessions_timer")
onready var exit_timer = get_node("exit_timer")

var pleasure_bubble
var wait_too_long = load("res://wait_too_long.png")
var price_fail = load("res://failed_sale.png")
var price_success = load("res://successful_sale.png")
var concessions_want = load("res://concessions_want.png")
var concessions_no_product = load("res://concessions_no_product.png")

var colliders #stores the colliding bodies
var concession_choice #allows the concessions to pass a boolean of choice
var charge_price #allows the price to adjust with the arcade the customer moves from

#gets the move_node to go from old parent to new parent when changing paths
var old_parent
var new_parent
var move_node

var concessions_desire
var where
var offset
var where_to
var timer

var all_genres
var concessions_price_check


func _ready():
	set_process(true)
	
func _process(delta):
	#makes the customers move
	colliders = get_colliding_bodies()
	for collider in colliders:
		if (collider.is_in_group("soda") == true):
			pleasure_bubble = get_node("pleasure_bubble")
			get_tree().get_current_scene().get_node("soda").set_hidden(true)
			all_genres = pleasure_bubble.get_children()
			for x in all_genres:
				x.set_hidden(true)
			pleasure_bubble.get_child(6).show()
			pleasure_bubble.get_child(7).set_texture(price_success)
			pleasure_bubble.get_child(7).set_scale(Vector2(.5, .5))
			
		if (collider.is_in_group("popcorn") == true):
			pleasure_bubble = get_node("pleasure_bubble")
			get_tree().get_current_scene().get_node("popcorn").set_hidden(true)
			all_genres = pleasure_bubble.get_children()
			for x in all_genres:
				x.set_hidden(true)
			pleasure_bubble.get_child(6).show()
			pleasure_bubble.get_child(7).show()
			pleasure_bubble.get_child(7).set_texture(price_success)
			pleasure_bubble.get_child(7).set_scale(Vector2(.5, .5))
	if (get_parent().is_in_group("path") == true):
		if (get_parent().get_parent().is_in_group("queue") == true):
			if ((colliders.size() == 0) or (colliders[0].is_greater_than(self) == true)):
				get_parent().set_offset(get_parent().get_offset() + (25*delta))
		if ((get_parent().get_parent().is_in_group("arcade") == true) or (get_parent().get_parent().is_in_group("concessions") == true) or (get_parent().get_parent().is_in_group("exit") == true)):
				get_parent().set_offset(get_parent().get_offset() + (25*delta))


#when the customer has waited in the queue for the timeout period
func _on_waiting_timer_timeout():
	#if the customer is in the arcade this moves them to concessions or the exit
	if (get_parent().get_parent().is_in_group("arcade") == true):
		randomize()
		var concession_chance = [true, true, true, false]
		concession_choice = concession_chance[randi() % concession_chance.size()]
		set_parents()
		old_parent.remove_child(old_parent.get_child(0))
		move_node.set_offset(0)
		new_parent.add_child(move_node)
		arcade_purchase()
		customer_globals.sales_made = customer_globals.sales_made + 1
	#if the customer is still in the queue this is a lost sale for waiting too long
	if (get_parent().get_parent().is_in_group("queue") == true):
		pleasure_bubble = get_node("pleasure_bubble")
		all_genres = pleasure_bubble.get_children()
		for x in all_genres:
			x.set_hidden(true)
		pleasure_bubble.get_child(6).show()
		pleasure_bubble.get_child(7).set_texture(wait_too_long)
		pleasure_bubble.get_child(7).set_scale(Vector2(.5, .5))
		old_parent = get_parent().get_parent()
		new_parent = get_tree().get_current_scene().get_node("queue_to_exit")
		move_node = get_parent()
		old_parent.remove_child(move_node)
		move_node.set_offset(0)
		new_parent.add_child(move_node)
		customer_globals.sales_lost = customer_globals.sales_lost + 1
		customer_globals.waited_loss = customer_globals.waited_loss + 1

func set_parents():
	pleasure_bubble = get_node("pleasure_bubble")
	if ((get_parent().get_parent().get_name() == "zone_one_path") and (concession_choice == true)):
		old_parent = get_tree().get_current_scene().get_node("zone_one_path")
		new_parent = get_tree().get_current_scene().get_node("zone_one_to_conc")
		move_node = get_tree().get_current_scene().get_node("zone_one_path").get_child(0)
		get_tree().get_current_scene().get_node("arcade_zone_one").add_to_group("free")
		all_genres = pleasure_bubble.get_children()
		for x in all_genres:
			x.set_hidden(true)
		pleasure_bubble.get_child(6).show()
		pleasure_bubble.get_child(7).show()
		pleasure_bubble.get_child(7).set_texture(concessions_want)
		pleasure_bubble.get_child(7).set_scale(Vector2(.35, .35))
		get_node("concessions_timer").set_wait_time(1)
		get_node("concessions_timer").start()
	if ((get_parent().get_parent().get_name() == "zone_one_path") and (concession_choice == false)):
		old_parent = get_tree().get_current_scene().get_node("zone_one_path")
		new_parent = get_tree().get_current_scene().get_node("zone_one_to_exit")
		move_node = get_tree().get_current_scene().get_node("zone_one_path").get_child(0)
		get_tree().get_current_scene().get_node("arcade_zone_one").add_to_group("free")
		all_genres = get_node("pleasure_bubble").get_children()
		for x in all_genres:
			x.set_hidden(true)
		pleasure_bubble.get_child(6).show()
		pleasure_bubble.get_child(7).show()
		pleasure_bubble.get_child(7).set_texture(price_success)
		pleasure_bubble.get_child(7).set_scale(Vector2(.5, .5))
		exit_timer.start()
	if ((get_parent().get_parent().get_name() == "zone_two_path") and (concession_choice == true)):
		old_parent = get_tree().get_current_scene().get_node("zone_two_path")
		new_parent = get_tree().get_current_scene().get_node("zone_two_to_conc")
		move_node = get_tree().get_current_scene().get_node("zone_two_path").get_child(0)
		get_tree().get_current_scene().get_node("arcade_zone_two").add_to_group("free")
		all_genres = pleasure_bubble.get_children()
		for x in all_genres:
			x.set_hidden(true)
		pleasure_bubble.get_child(6).show()
		pleasure_bubble.get_child(7).show()
		pleasure_bubble.get_child(7).set_texture(concessions_want)
		pleasure_bubble.get_child(7).set_scale(Vector2(.35, .35))
		get_node("concessions_timer").set_wait_time(1)
		get_node("concessions_timer").start()
	if ((get_parent().get_parent().get_name() == "zone_two_path") and (concession_choice == false)):
		old_parent = get_tree().get_current_scene().get_node("zone_two_path")
		new_parent = get_tree().get_current_scene().get_node("zone_two_to_exit")
		move_node = get_tree().get_current_scene().get_node("zone_two_path").get_child(0)
		get_tree().get_current_scene().get_node("arcade_zone_two").add_to_group("free")
		all_genres = get_node("pleasure_bubble").get_children()
		for x in all_genres:
			x.set_hidden(true)
		pleasure_bubble.get_child(6).show()
		pleasure_bubble.get_child(7).show()
		pleasure_bubble.get_child(7).set_texture(price_success)
		pleasure_bubble.get_child(7).set_scale(Vector2(.5, .5))
		exit_timer.start()
	if ((get_parent().get_parent().get_name() == "zone_three_path") and (concession_choice == true)):
		old_parent = get_tree().get_current_scene().get_node("zone_three_path")
		new_parent = get_tree().get_current_scene().get_node("zone_three_to_conc")
		move_node = get_tree().get_current_scene().get_node("zone_three_path").get_child(0)
		get_tree().get_current_scene().get_node("arcade_zone_three").add_to_group("free")
		all_genres = pleasure_bubble.get_children()
		for x in all_genres:
			x.set_hidden(true)
		pleasure_bubble.get_child(6).show()
		pleasure_bubble.get_child(7).show()
		pleasure_bubble.get_child(7).set_texture(concessions_want)
		pleasure_bubble.get_child(7).set_scale(Vector2(.35, .35))
		get_node("concessions_timer").set_wait_time(1)
		get_node("concessions_timer").start()
	if ((get_parent().get_parent().get_name() == "zone_three_path") and (concession_choice == false)):
		old_parent = get_tree().get_current_scene().get_node("zone_three_path")
		new_parent = get_tree().get_current_scene().get_node("zone_three_to_exit")
		move_node = get_tree().get_current_scene().get_node("zone_three_path").get_child(0)
		get_tree().get_current_scene().get_node("arcade_zone_three").add_to_group("free")
		all_genres = get_node("pleasure_bubble").get_children()
		for x in all_genres:
			x.set_hidden(true)
		pleasure_bubble.get_child(6).show()
		pleasure_bubble.get_child(7).show()
		pleasure_bubble.get_child(7).set_texture(price_success)
		pleasure_bubble.get_child(7).set_scale(Vector2(.5, .5))
		exit_timer.start()
	if ((get_parent().get_parent().get_name() == "zone_four_path") and (concession_choice == true)):
		old_parent = get_tree().get_current_scene().get_node("zone_four_path")
		new_parent = get_tree().get_current_scene().get_node("zone_four_to_conc")
		move_node = get_tree().get_current_scene().get_node("zone_four_path").get_child(0)
		get_tree().get_current_scene().get_node("arcade_zone_four").add_to_group("free")
		all_genres = pleasure_bubble.get_children()
		for x in all_genres:
			x.set_hidden(true)
		pleasure_bubble.get_child(6).show()
		pleasure_bubble.get_child(7).show()
		pleasure_bubble.get_child(7).set_texture(concessions_want)
		pleasure_bubble.get_child(7).set_scale(Vector2(.35, .35))
		get_node("concessions_timer").set_wait_time(1)
		get_node("concessions_timer").start()
	if ((get_parent().get_parent().get_name() == "zone_four_path") and (concession_choice == false)):
		old_parent = get_tree().get_current_scene().get_node("zone_four_path")
		new_parent = get_tree().get_current_scene().get_node("zone_four_to_exit")
		move_node = get_tree().get_current_scene().get_node("zone_four_path").get_child(0)
		get_tree().get_current_scene().get_node("arcade_zone_four").add_to_group("free")
		all_genres = get_node("pleasure_bubble").get_children()
		for x in all_genres:
			x.set_hidden(true)
		pleasure_bubble.get_child(6).show()
		pleasure_bubble.get_child(7).show()
		pleasure_bubble.get_child(7).set_texture(price_success)
		pleasure_bubble.get_child(7).set_scale(Vector2(.5, .5))
		exit_timer.start()
	if ((get_parent().get_parent().get_name() == "zone_five_path") and (concession_choice == true)):
		old_parent = get_tree().get_current_scene().get_node("zone_five_path")
		new_parent = get_tree().get_current_scene().get_node("zone_five_to_conc")
		move_node = get_tree().get_current_scene().get_node("zone_five_path").get_child(0)
		get_tree().get_current_scene().get_node("arcade_zone_five").add_to_group("free")
		all_genres = pleasure_bubble.get_children()
		for x in all_genres:
			x.set_hidden(true)
		pleasure_bubble.get_child(6).show()
		pleasure_bubble.get_child(7).show()
		pleasure_bubble.get_child(7).set_texture(concessions_want)
		pleasure_bubble.get_child(7).set_scale(Vector2(.35, .35))
		get_node("concessions_timer").set_wait_time(1)
		get_node("concessions_timer").start()
	if ((get_parent().get_parent().get_name() == "zone_five_path") and (concession_choice == false)):
		old_parent = get_tree().get_current_scene().get_node("zone_five_path")
		new_parent = get_tree().get_current_scene().get_node("zone_five_to_exit")
		move_node = get_tree().get_current_scene().get_node("zone_five_path").get_child(0)
		get_tree().get_current_scene().get_node("arcade_zone_five").add_to_group("free")
		all_genres = get_node("pleasure_bubble").get_children()
		for x in all_genres:
			x.set_hidden(true)
		pleasure_bubble.get_child(6).show()
		pleasure_bubble.get_child(7).show()
		pleasure_bubble.get_child(7).set_texture(price_success)
		pleasure_bubble.get_child(7).set_scale(Vector2(.5, .5))
		exit_timer.start()
	if ((get_parent().get_parent().get_name() == "zone_six_path") and (concession_choice == true)):
		old_parent = get_tree().get_current_scene().get_node("zone_six_path")
		new_parent = get_tree().get_current_scene().get_node("zone_six_to_conc")
		move_node = get_tree().get_current_scene().get_node("zone_six_path").get_child(0)
		get_tree().get_current_scene().get_node("arcade_zone_six").add_to_group("free")
		all_genres = pleasure_bubble.get_children()
		for x in all_genres:
			x.set_hidden(true)
		pleasure_bubble.get_child(6).show()
		pleasure_bubble.get_child(7).show()
		pleasure_bubble.get_child(7).set_texture(concessions_want)
		pleasure_bubble.get_child(7).set_scale(Vector2(.35, .35))
		get_node("concessions_timer").set_wait_time(1)
		get_node("concessions_timer").start()
	if ((get_parent().get_parent().get_name() == "zone_six_path") and (concession_choice == false)):
		old_parent = get_tree().get_current_scene().get_node("zone_six_path")
		new_parent = get_tree().get_current_scene().get_node("zone_six_to_exit")
		move_node = get_tree().get_current_scene().get_node("zone_six_path").get_child(0)
		get_tree().get_current_scene().get_node("arcade_zone_six").add_to_group("free")
		all_genres = get_node("pleasure_bubble").get_children()
		for x in all_genres:
			x.set_hidden(true)
		pleasure_bubble.get_child(6).show()
		pleasure_bubble.get_child(7).show()
		pleasure_bubble.get_child(7).set_texture(price_success)
		pleasure_bubble.get_child(7).set_scale(Vector2(.5, .5))
		exit_timer.start()

#charges the player when they are done playing the game
func arcade_purchase():
	if (towns.town_select == "hollyhock"):
		var parent_name = get_parent().get_parent().get_name()
		if ((parent_name == "zone_one_to_exit") or (parent_name == "zone_one_to_conc")):
			charge_price = price_check.hollyhock_arcade_one_price
		if ((parent_name == "zone_two_to_exit") or (parent_name == "zone_two_to_conc")):
			charge_price = price_check.hollyhock_arcade_two_price
		if ((parent_name == "zone_three_to_exit") or (parent_name == "zone_three_to_conc")):
			charge_price = price_check.hollyhock_arcade_three_price
		if ((parent_name == "zone_four_to_exit") or (parent_name == "zone_four_to_conc")):
			charge_price = price_check.hollyhock_arcade_four_price
		if ((parent_name == "zone_five_to_exit") or (parent_name == "zone_five_to_conc")):
			charge_price = price_check.hollyhock_arcade_five_price
		if ((parent_name == "zone_six_to_exit") or (parent_name == "zone_six_to_conc")):
			charge_price = price_check.hollyhock_arcade_six_price
		money.hollyhock_balance = money.hollyhock_balance + charge_price
		customer_globals.sales_made = customer_globals.sales_made + 1
		money.income = money.income + charge_price

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
		exit_timer.start()
		old_parent.remove_child(old_parent.get_child(0))
		move_node.set_offset(0)
		new_parent.add_child(move_node)
		concessions_purchase()
	if (get_parent().get_parent().is_in_group("arcade") == true):
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
		exit_timer.start()
		old_parent.remove_child(old_parent.get_child(0))
		move_node.set_offset(0)
		new_parent.add_child(move_node)
		concessions_purchase()

func _on_exit_timer_timeout():
	get_parent().queue_free()


func concessions_purchase():
	pleasure_bubble = get_node("pleasure_bubble")
	if (towns.town_select == "hollyhock"):
		randomize()
		var concession_options = ["soda", "popcorn", "both"]
		concessions_desire = concession_options[randi() % concession_options.size()]
		if (concessions_desire == "soda"):
			if (supplies.hollyhock_soda_count > 0):
				var check_soda = supplies.soda_range_high - supplies.hollyhock_soda_price #check if the soda price is too high
				if (check_soda <= 0):
					concessions_price_check = false
				else:
					concessions_price_check = true
				if (concessions_price_check == true): #if the price is not too high
					get_tree().get_current_scene().get_node("soda").show()
					buy_soda()
				if (concessions_price_check == false):
					all_genres = pleasure_bubble.get_children()
					for x in all_genres:
						x.set_hidden(true)
					pleasure_bubble.get_child(6).show()
					pleasure_bubble.get_child(7).set_texture(price_fail)
					pleasure_bubble.get_child(7).set_scale(Vector2(.5, .5))
			elif (supplies.hollyhock_soda_count <= 0):
				all_genres = pleasure_bubble.get_children()
				for x in all_genres:
					x.set_hidden(true)
				pleasure_bubble.get_child(7).set_texture(concessions_no_product)
				pleasure_bubble.get_child(7).set_scale(Vector2(.3, .3))
		if (concessions_desire == "popcorn"):
			if (supplies.hollyhock_popcorn_count > 0):
				var check_popcorn = supplies.popcorn_range_high - supplies.hollyhock_popcorn_price #check if the soda price is too high
				if (check_popcorn <= 0):
					concessions_price_check = false
				else:
					concessions_price_check = true
				if (concessions_price_check == true): #if the price is not too high
					get_tree().get_current_scene().get_node("popcorn").show()
					buy_popcorn()
				if (concessions_price_check == false):
					all_genres = pleasure_bubble.get_children()
					for x in all_genres:
						x.set_hidden(true)
					pleasure_bubble.get_child(6).show()
					pleasure_bubble.get_child(7).set_texture(price_fail)
					pleasure_bubble.get_child(7).set_scale(Vector2(.5, .5))
			elif (supplies.hollyhock_soda_count <= 0):
				all_genres = pleasure_bubble.get_children()
				for x in all_genres:
					x.set_hidden(true)
				pleasure_bubble.get_child(7).set_texture(concessions_no_product)
				pleasure_bubble.get_child(7).set_scale(Vector2(.3, .3))
		if (concessions_desire == "both"):
			if ((supplies.hollyhock_soda_count > 0) and (supplies.hollyhock_popcorn_count > 0)):
				var check_soda = supplies.soda_range_high - supplies.hollyhock_soda_price #check if the soda price is too high
				var check_popcorn = supplies.popcorn_range_high - supplies.hollyhock_popcorn_price #check if the popcorn price is too high
				if ((check_soda <= 0) or (check_popcorn <= 0)):
					concessions_price_check = false
				else:
					concessions_price_check = true
				if (concessions_price_check == true): #if the price is not too high
					get_tree().get_current_scene().get_node("soda").show()
					buy_soda()
					get_tree().get_current_scene().get_node("popcorn").show()
					buy_popcorn()
				if (concessions_price_check == false):
					all_genres = pleasure_bubble.get_children()
					for x in all_genres:
						x.set_hidden(true)
					pleasure_bubble.get_child(6).show()
					pleasure_bubble.get_child(7).set_texture(price_fail)
					pleasure_bubble.get_child(7).set_scale(Vector2(.5, .5))
			elif ((supplies.hollyhock_soda_count <= 0) or (supplies.hollyhock_popcorn_count <= 0)):
				all_genres = pleasure_bubble.get_children()
				for x in all_genres:
					x.set_hidden(true)
				pleasure_bubble.get_child(7).set_texture(concessions_no_product)
				pleasure_bubble.get_child(7).set_scale(Vector2(.3, .3))
				
func buy_soda():
	var charge_price = supplies.hollyhock_soda_price
	money.hollyhock_balance = money.hollyhock_balance + charge_price
	supplies.hollyhock_soda_count = supplies.hollyhock_soda_count - 1
	supplies.soda_yesterday_used = supplies.soda_yesterday_used + 1
	money.income = money.income + charge_price
	
func buy_popcorn():
	var charge_price = supplies.hollyhock_popcorn_price
	money.hollyhock_balance = money.hollyhock_balance + charge_price
	supplies.hollyhock_popcorn_count = supplies.hollyhock_popcorn_count - 1
	supplies.popcorn_yesterday_used = supplies.popcorn_yesterday_used + 1
	money.income = money.income + charge_price