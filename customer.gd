extends RigidBody2D

#get the timer nodes
onready var waiting_timer = get_node("waiting_timer")
onready var concessions_timer = get_node("concessions_timer")
onready var exit_timer = get_node("exit_timer")

#gets the move_node to go from old parent to new parent when changing paths
onready var old_parent
onready var new_parent
var move_node

var dragging = false
var where
var offset
var where_to
var timer

var all_genres

var wait_too_long = load("res://wait_too_long.png")
var price_fail = load("res://failed_sale.png")

var charge_price #allows the price to adjust with the arcade the customer moves from
var concession_choice #allows the concessions to pass a boolean of choice

var colliders #stores the colliding bodies

func _ready():
	set_process(true)
	
func _process(delta):
	#makes the customers move
	set_scale(Vector2(.2,.2))
	colliders = get_colliding_bodies()
	if (get_parent().is_in_group("path") == true):
		if (get_parent().get_parent().is_in_group("queue") == true):
			if ((colliders.size() == 0) or (colliders[0].is_greater_than(self) == true)):
				get_parent().set_offset(get_parent().get_offset() + (25*delta))
		if ((get_parent().get_parent().is_in_group("arcade") == true) or (get_parent().get_parent().is_in_group("concessions") == true) or (get_parent().get_parent().is_in_group("exit") == true)):
				get_parent().set_offset(get_parent().get_offset() + (25*delta))
	if (dragging == true):
		set_global_pos(get_global_mouse_pos())


#when the customer has waited in the queue for the timeout period
func _on_waiting_timer_timeout():
	#if the customer is in the arcade this moves them to concessions or the exit
	if (get_parent().get_parent().is_in_group("arcade") == true):
		var concession_chance = [true, true, true, false]
		randomize(concession_chance)
		concession_choice = concession_chance[randi() % concession_chance.size()]
		set_parents()
		old_parent.remove_child(old_parent.get_child(0))
		move_node.set_offset(0)
		new_parent.add_child(move_node)
		arcade_purchase()
		customer_globals.sales_made = customer_globals.sales_made + 1
	#if the customer is still in the queue this is a lost sale for waiting too long
	if (get_parent().get_parent().is_in_group("queue") == true):
		get_node("non_genre_pic").set_texture(wait_too_long)
		get_node("non_genre_pic").set_scale(Vector2(.5,.5))
		old_parent = get_parent().get_parent()
		new_parent = get_tree().get_current_scene().get_node("queue_to_exit")
		move_node = get_parent()
		old_parent.remove_child(move_node)
		move_node.set_offset(0)
		new_parent.add_child(move_node)
		customer_globals.sales_lost = customer_globals.sales_lost + 1
		customer_globals.waited_loss = customer_globals.waited_loss + 1


func set_parents():
	if ((get_parent().get_parent().get_name() == "zone_one_path") and (concession_choice == true)):
		concessions_timer.start()
		old_parent = get_tree().get_current_scene().get_node("zone_one_path")
		new_parent = get_tree().get_current_scene().get_node("zone_one_to_conc")
		move_node = get_tree().get_current_scene().get_node("zone_one_path").get_child(0)
		get_tree().get_current_scene().get_node("arcade_zone_one").add_to_group("free")
	if ((get_parent().get_parent().get_name() == "zone_one_path") and (concession_choice == false)):
		exit_timer.start()
		old_parent = get_tree().get_current_scene().get_node("zone_one_path")
		new_parent = get_tree().get_current_scene().get_node("zone_one_to_exit")
		move_node = get_tree().get_current_scene().get_node("zone_one_path").get_child(0)
		get_tree().get_current_scene().get_node("arcade_zone_one").add_to_group("free")
	if ((get_parent().get_parent().get_name() == "zone_two_path") and (concession_choice == true)):
		concessions_timer.start()
		old_parent = get_tree().get_current_scene().get_node("zone_two_path")
		new_parent = get_tree().get_current_scene().get_node("zone_two_to_conc")
		move_node = get_tree().get_current_scene().get_node("zone_two_path").get_child(0)
		get_tree().get_current_scene().get_node("arcade_zone_two").add_to_group("free")
	if ((get_parent().get_parent().get_name() == "zone_two_path") and (concession_choice == false)):
		exit_timer.start()
		old_parent = get_tree().get_current_scene().get_node("zone_two_path")
		new_parent = get_tree().get_current_scene().get_node("zone_two_to_exit")
		move_node = get_tree().get_current_scene().get_node("zone_two_path").get_child(0)
		get_tree().get_current_scene().get_node("arcade_zone_two").add_to_group("free")
	if ((get_parent().get_parent().get_name() == "zone_three_path") and (concession_choice == true)):
		concessions_timer.start()
		old_parent = get_tree().get_current_scene().get_node("zone_three_path")
		new_parent = get_tree().get_current_scene().get_node("zone_three_to_conc")
		move_node = get_tree().get_current_scene().get_node("zone_three_path").get_child(0)
		get_tree().get_current_scene().get_node("arcade_zone_three").add_to_group("free")
	if ((get_parent().get_parent().get_name() == "zone_three_path") and (concession_choice == false)):
		exit_timer.start()
		old_parent = get_tree().get_current_scene().get_node("zone_three_path")
		new_parent = get_tree().get_current_scene().get_node("zone_three_to_exit")
		move_node = get_tree().get_current_scene().get_node("zone_three_path").get_child(0)
		get_tree().get_current_scene().get_node("arcade_zone_three").add_to_group("free")
	if ((get_parent().get_parent().get_name() == "zone_four_path") and (concession_choice == true)):
		concessions_timer.start()
		old_parent = get_tree().get_current_scene().get_node("zone_four_path")
		new_parent = get_tree().get_current_scene().get_node("zone_four_to_conc")
		move_node = get_tree().get_current_scene().get_node("zone_four_path").get_child(0)
		get_tree().get_current_scene().get_node("arcade_zone_four").add_to_group("free")
	if ((get_parent().get_parent().get_name() == "zone_four_path") and (concession_choice == false)):
		exit_timer.start()
		old_parent = get_tree().get_current_scene().get_node("zone_four_path")
		new_parent = get_tree().get_current_scene().get_node("zone_four_to_exit")
		move_node = get_tree().get_current_scene().get_node("zone_four_path").get_child(0)
		get_tree().get_current_scene().get_node("arcade_zone_four").add_to_group("free")
	if ((get_parent().get_parent().get_name() == "zone_five_path") and (concession_choice == true)):
		concessions_timer.start()
		old_parent = get_tree().get_current_scene().get_node("zone_five_path")
		new_parent = get_tree().get_current_scene().get_node("zone_five_to_conc")
		move_node = get_tree().get_current_scene().get_node("zone_five_path").get_child(0)
		get_tree().get_current_scene().get_node("arcade_zone_five").add_to_group("free")
	if ((get_parent().get_parent().get_name() == "zone_five_path") and (concession_choice == false)):
		exit_timer.start()
		old_parent = get_tree().get_current_scene().get_node("zone_five_path")
		new_parent = get_tree().get_current_scene().get_node("zone_five_to_exit")
		move_node = get_tree().get_current_scene().get_node("zone_five_path").get_child(0)
		get_tree().get_current_scene().get_node("arcade_zone_five").add_to_group("free")
	if ((get_parent().get_parent().get_name() == "zone_six_path") and (concession_choice == true)):
		concessions_timer.start()
		old_parent = get_tree().get_current_scene().get_node("zone_six_path")
		new_parent = get_tree().get_current_scene().get_node("zone_six_to_conc")
		move_node = get_tree().get_current_scene().get_node("zone_six_path").get_child(0)
		get_tree().get_current_scene().get_node("arcade_zone_six").add_to_group("free")
	if ((get_parent().get_parent().get_name() == "zone_six_path") and (concession_choice == false)):
		exit_timer.start()
		old_parent = get_tree().get_current_scene().get_node("zone_six_path")
		new_parent = get_tree().get_current_scene().get_node("zone_six_to_exit")
		move_node = get_tree().get_current_scene().get_node("zone_six_path").get_child(0)
		get_tree().get_current_scene().get_node("arcade_zone_six").add_to_group("free")

#charges the player when they are done playing the game
func arcade_purchase():
	if (global.town_select == "hollyhock"):
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
		global.hollyhock_balance = global.hollyhock_balance + charge_price
		customer_globals.sales_made = customer_globals.sales_made + 1
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
		exit_timer.start()
		old_parent.remove_child(old_parent.get_child(0))
		move_node.set_offset(0)
		new_parent.add_child(move_node)
		concessions_purchase.concessions_purchase()
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
		concessions_purchase.concessions_purchase()

func _on_exit_timer_timeout():
	get_parent().queue_free()

func _on_customer_pics_button_down():
	where = get_global_pos()
	offset = get_parent().get_offset()
	dragging = true

func _on_customer_pics_button_up():
	was_click_good.where_to = get_global_mouse_pos()
	get_parent().set_offset(offset)
	dragging = false
	set_global_pos(where)
	was_click_good.figure_out_where_to()
	if (was_click_good.in_arcade_one == true):
		customer_test_one()
	if (was_click_good.in_arcade_two == true):
		customer_test_two()
	if (was_click_good.in_arcade_three == true):
		customer_test_three()
	if (was_click_good.in_arcade_four == true):
		customer_test_four()
	if (was_click_good.in_arcade_five == true):
		customer_test_five()
	if (was_click_good.in_arcade_six == true):
		customer_test_six()

func customer_test_one():
	set_genre.set_genre_type()
	if (get_tree().get_current_scene().get_node("arcade_zone_one").is_in_group("free") == true):
		get_tree().get_current_scene().get_node("arcade_zone_one").remove_from_group("free")
		add_to_group("arcade_one")
		price_check.check_one()
		if (global.town_select == "hollyhock"):
			old_parent = get_parent().get_parent()
			move_node = get_parent()
			#check to see if the customer wants what the arcade is set to
			if ((is_in_group("meta") == true) and (set_genre.genre_type_one == "meta")):
				new_parent = get_tree().get_current_scene().get_node("zone_one_path")
				if (get_parent().get_offset() < 1):
					get_node("check_timer").start()
				if (get_parent().get_offset() > 1):
					move_along_clicked()
			#same story different genre
			if ((is_in_group("classic") == true) and (set_genre.genre_type_one == "classic")): #check to see if the customer wants what the arcade is set to
				new_parent = get_tree().get_current_scene().get_node("zone_one_path")
				if (get_parent().get_offset() < 1):
					get_node("check_timer").start()
				if (get_parent().get_offset() > 1):
					move_along_clicked()
			#same story different genre
			if ((is_in_group("platformer") == true) and (set_genre.genre_type_one == "platformer")): #check to see if the customer wants what the arcade is set to
				new_parent = get_tree().get_current_scene().get_node("zone_one_path")
				if (get_parent().get_offset() < 1):
					get_node("check_timer").start()
				if (get_parent().get_offset() > 1):
					move_along_clicked()

func customer_test_two():
	set_genre.set_genre_type()
	if (get_tree().get_current_scene().get_node("arcade_zone_two").is_in_group("free") == true):
		get_tree().get_current_scene().get_node("arcade_zone_two").remove_from_group("free")
		add_to_group("arcade_two")
		price_check.check_two()
		if (global.town_select == "hollyhock"):
			old_parent = get_parent().get_parent()
			move_node = get_parent()
			#check to see if the customer wants what the arcade is set to
			if ((is_in_group("meta") == true) and (set_genre.genre_type_two == "meta")):
				new_parent = get_tree().get_current_scene().get_node("zone_two_path")
				if (get_parent().get_offset() < 1):
					get_node("check_timer").start()
				if (get_parent().get_offset() > 1):
					move_along_clicked()
			#same story different genre
			if ((is_in_group("classic") == true) and (set_genre.genre_type_two == "classic")): #check to see if the customer wants what the arcade is set to
				new_parent = get_tree().get_current_scene().get_node("zone_two_path")
				if (get_parent().get_offset() < 1):
					get_node("check_timer").start()
				if (get_parent().get_offset() > 1):
					move_along_clicked()
			#same story different genre
			if ((is_in_group("platformer") == true) and (set_genre.genre_type_two == "platformer")): #check to see if the customer wants what the arcade is set to
				new_parent = get_tree().get_current_scene().get_node("zone_two_path")
				if (get_parent().get_offset() < 1):
					get_node("check_timer").start()
				if (get_parent().get_offset() > 1):
					move_along_clicked()

func customer_test_three():
	set_genre.set_genre_type()
	if (get_tree().get_current_scene().get_node("arcade_zone_three").is_in_group("free") == true):
		get_tree().get_current_scene().get_node("arcade_zone_three").remove_from_group("free")
		add_to_group("arcade_three")
		price_check.check_three()
		if (global.town_select == "hollyhock"):
			old_parent = get_parent().get_parent()
			move_node = get_parent()
			#check to see if the customer wants what the arcade is set to
			if ((is_in_group("meta") == true) and (set_genre.genre_type_three == "meta")):
				new_parent = get_tree().get_current_scene().get_node("zone_three_path")
				if (get_parent().get_offset() < 1):
					get_node("check_timer").start()
				if (get_parent().get_offset() > 1):
					move_along_clicked()
			#same story different genre
			if ((is_in_group("classic") == true) and (set_genre.genre_type_three == "classic")): #check to see if the customer wants what the arcade is set to
				new_parent = get_tree().get_current_scene().get_node("zone_three_path")
				if (get_parent().get_offset() < 1):
					get_node("check_timer").start()
				if (get_parent().get_offset() > 1):
					move_along_clicked()
			#same story different genre
			if ((is_in_group("platformer") == true) and (set_genre.genre_type_three == "platformer")): #check to see if the customer wants what the arcade is set to
				new_parent = get_tree().get_current_scene().get_node("zone_three_path")
				if (get_parent().get_offset() < 1):
					get_node("check_timer").start()
				if (get_parent().get_offset() > 1):
					move_along_clicked()

func customer_test_four():
	set_genre.set_genre_type()
	if (get_tree().get_current_scene().get_node("arcade_zone_four").is_in_group("free") == true):
		get_tree().get_current_scene().get_node("arcade_zone_four").remove_from_group("free")
		add_to_group("arcade_four")
		price_check.check_four()
		if (global.town_select == "hollyhock"):
			old_parent = get_parent().get_parent()
			move_node = get_parent()
			#check to see if the customer wants what the arcade is set to
			if ((is_in_group("meta") == true) and (set_genre.genre_type_four == "meta")):
				new_parent = get_tree().get_current_scene().get_node("zone_four_path")
				if (get_parent().get_offset() < 1):
					get_node("check_timer").start()
				if (get_parent().get_offset() > 1):
					move_along_clicked()
			#same story different genre
			if ((is_in_group("classic") == true) and (set_genre.genre_type_four == "classic")): #check to see if the customer wants what the arcade is set to
				new_parent = get_tree().get_current_scene().get_node("zone_four_path")
				if (get_parent().get_offset() < 1):
					get_node("check_timer").start()
				if (get_parent().get_offset() > 1):
					move_along_clicked()
			#same story different genre
			if ((is_in_group("platformer") == true) and (set_genre.genre_type_four == "platformer")): #check to see if the customer wants what the arcade is set to
				new_parent = get_tree().get_current_scene().get_node("zone_four_path")
				if (get_parent().get_offset() < 1):
					get_node("check_timer").start()
				if (get_parent().get_offset() > 1):
					move_along_clicked()

func customer_test_five():
	set_genre.set_genre_type()
	if (get_tree().get_current_scene().get_node("arcade_zone_five").is_in_group("free") == true):
		get_tree().get_current_scene().get_node("arcade_zone_five").remove_from_group("free")
		add_to_group("arcade_five")
		price_check.check_five()
		if (global.town_select == "hollyhock"):
			old_parent = get_parent().get_parent()
			move_node = get_parent()
			#check to see if the customer wants what the arcade is set to
			if ((is_in_group("meta") == true) and (set_genre.genre_type_five == "meta")):
				new_parent = get_tree().get_current_scene().get_node("zone_five_path")
				if (get_parent().get_offset() < 1):
					get_node("check_timer").start()
				if (get_parent().get_offset() > 1):
					move_along_clicked()
			#same story different genre
			if ((is_in_group("classic") == true) and (set_genre.genre_type_five == "classic")): #check to see if the customer wants what the arcade is set to
				new_parent = get_tree().get_current_scene().get_node("zone_five_path")
				if (get_parent().get_offset() < 1):
					get_node("check_timer").start()
				if (get_parent().get_offset() > 1):
					move_along_clicked()
			#same story different genre
			if ((is_in_group("platformer") == true) and (set_genre.genre_type_five == "platformer")): #check to see if the customer wants what the arcade is set to
				new_parent = get_tree().get_current_scene().get_node("zone_five_path")
				if (get_parent().get_offset() < 1):
					get_node("check_timer").start()
				if (get_parent().get_offset() > 1):
					move_along_clicked()

func customer_test_six():
	set_genre.set_genre_type()
	if (get_tree().get_current_scene().get_node("arcade_zone_six").is_in_group("free") == true):
		get_tree().get_current_scene().get_node("arcade_zone_six").remove_from_group("free")
		add_to_group("arcade_six")
		price_check.check_six()
		if (global.town_select == "hollyhock"):
			old_parent = get_parent().get_parent()
			move_node = get_parent()
			#check to see if the customer wants what the arcade is set to
			if ((is_in_group("meta") == true) and (set_genre.genre_type_six == "meta")):
				new_parent = get_tree().get_current_scene().get_node("zone_six_path")
				if (get_parent().get_offset() < 1):
					get_node("check_timer").start()
				if (get_parent().get_offset() > 1):
					move_along_clicked()
			#same story different genre
			if ((is_in_group("classic") == true) and (set_genre.genre_type_six == "classic")): #check to see if the customer wants what the arcade is set to
				new_parent = get_tree().get_current_scene().get_node("zone_six_path")
				if (get_parent().get_offset() < 1):
					get_node("check_timer").start()
				if (get_parent().get_offset() > 1):
					move_along_clicked()
			#same story different genre
			if ((is_in_group("platformer") == true) and (set_genre.genre_type_six == "platformer")): #check to see if the customer wants what the arcade is set to
				new_parent = get_tree().get_current_scene().get_node("zone_six_path")
				if (get_parent().get_offset() < 1):
					get_node("check_timer").start()
				if (get_parent().get_offset() > 1):
					move_along_clicked()

func _on_check_timer_timeout():
	if (get_parent().get_offset() < 1):
		get_node("check_timer").start()
	if (get_parent().get_offset() > 1):
		move_along_clicked()

func move_along_clicked():
	old_parent = get_tree().get_current_scene().get_node("customer_queue")
	if (price_check.price_check == true): #if the price is not too high
		timer = move_node.get_child(0).get_child(3)
		timer.set_wait_time(20) #get the timer and set it to the arcade play time (20 secs)
		move_node.get_child(0).get_child(3).start() #start it
		old_parent.remove_child(move_node) #and move the customer through the system
		move_node.set_offset(0)
		new_parent.add_child(move_node)
	if (price_check.price_check == false): # if the price is too high
		refree_arcade()
		all_genres = get_node("genre_pic").get_children()
		for x in all_genres:
			x.set_hidden(true)
		move_node.get_child(0).get_child(7).set_texture(price_fail)
		move_node.get_child(0).get_child(7).set_scale(Vector2(.3, .3))
		new_parent = get_tree().get_current_scene().get_node("queue_to_exit") #customer leaves
		old_parent.remove_child(old_parent.get_child(0))
		move_node.set_offset(0)
		new_parent.add_child(move_node)
		customer_globals.sales_lost = customer_globals.sales_lost + 1 #and it is counted as a lost sale
		customer_globals.price_loss = customer_globals.price_loss + 1
		
func refree_arcade():
	if (is_in_group("arcade_one") == true):
		get_tree().get_current_scene().get_node("arcade_zone_one").add_to_group("free")
		remove_from_group("arcade_one")
	if (is_in_group("arcade_two") == true):
		get_tree().get_current_scene().get_node("arcade_zone_two").add_to_group("free")
		remove_from_group("arcade_two")
	if (is_in_group("arcade_three") == true):
		get_tree().get_current_scene().get_node("arcade_zone_three").add_to_group("free")
		remove_from_group("arcade_three")
	if (is_in_group("arcade_four") == true):
		get_tree().get_current_scene().get_node("arcade_zone_four").add_to_group("free")
		remove_from_group("arcade_four")
	if (is_in_group("arcade_five") == true):
		get_tree().get_current_scene().get_node("arcade_zone_five").add_to_group("free")
		remove_from_group("arcade_five")
	if (is_in_group("arcade_six") == true):
		get_tree().get_current_scene().get_node("arcade_zone_six").add_to_group("free")
		remove_from_group("arcade_six")