extends RigidBody2D

#get the timer nodes
onready var waiting_timer = get_node("waiting_timer")
onready var concessions_timer = get_node("concessions_timer")
onready var exit_timer = get_node("exit_timer")
onready var arcade_one = get_tree().get_current_scene().get_node("arcade_zone_one/arcade_button")
onready var arcade_two = get_tree().get_current_scene().get_node("arcade_zone_two/arcade_button")
onready var arcade_three = get_tree().get_current_scene().get_node("arcade_zone_three/arcade_button")
onready var arcade_four = get_tree().get_current_scene().get_node("arcade_zone_four/arcade_button")
onready var arcade_five = get_tree().get_current_scene().get_node("arcade_zone_five/arcade_button")
onready var arcade_six = get_tree().get_current_scene().get_node("arcade_zone_six/arcade_button")
onready var concessions = get_tree().get_current_scene().get_node("concessions/button")

var in_arcade_one = false
var in_arcade_two = false
var in_arcade_three = false
var in_arcade_four = false
var in_arcade_five = false
var in_arcade_six = false
var in_concessions = false


var where
var where_from
var check
var prediction_one
var prediction_two
var prediction_three
var genre_type
var ready_to_move = false

#gets the move_node to go from old parent to new parent when changing paths
var old_parent
var new_parent
var move_node

var charge_price #allows the price to adjust with the arcade the customer moves from
var concession_choice #allows the concessions to pass a boolean of choice

var colliders #stores the colliding bodies
var price_check #variable to store whether the price is too high

var dragging = false


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
			if (ready_to_move == true):
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
		global.sales_made = global.sales_made + 1
		ready_to_move = true
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
		ready_to_move = true


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
			charge_price = global.hollyhock_arcade_one_price
		if ((parent_name == "zone_two_to_exit") or (parent_name == "zone_two_to_conc")):
			charge_price = global.hollyhock_arcade_two_price
		if ((parent_name == "zone_three_to_exit") or (parent_name == "zone_three_to_conc")):
			charge_price = global.hollyhock_arcade_three_price
		if ((parent_name == "zone_four_to_exit") or (parent_name == "zone_four_to_conc")):
			charge_price = global.hollyhock_arcade_four_price
		if ((parent_name == "zone_five_to_exit") or (parent_name == "zone_five_to_conc")):
			charge_price = global.hollyhock_arcade_five_price
		if ((parent_name == "zone_six_to_exit") or (parent_name == "zone_six_to_conc")):
			charge_price = global.hollyhock_arcade_six_price
		global.hollyhock_balance = global.hollyhock_balance + charge_price
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
		exit_timer.start()
		old_parent.remove_child(old_parent.get_child(0))
		move_node.set_offset(0)
		new_parent.add_child(move_node)
		ready_to_move = true
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
		ready_to_move = true
		concessions_purchase()
		
#charges the customer for concessions if they go to concessions
func concessions_purchase():
	if (global.town_select == "hollyhock"):
		if ((global.hollyhock_soda_count > 0) and (global.hollyhock_popcorn_count > 0)):
			var check_soda = global.soda_range_high - global.hollyhock_soda_price #check if the soda price is too high
			var check_popcorn = global.popcorn_range_high - global.hollyhock_popcorn_price #check if the popcorn price is too high
			if ((check_soda <= 0) or (check_popcorn <= 0)):
				price_check = false
			else:
				price_check = true
			if (price_check == true): #if the price is not too high
				charge_price = global.hollyhock_soda_price + global.hollyhock_popcorn_price
				global.hollyhock_balance = global.hollyhock_balance + charge_price
				global.hollyhock_soda_count = global.hollyhock_soda_count - 1
				global.hollyhock_popcorn_count = global.hollyhock_popcorn_count - 1
				global.soda_yesterday_used = global.soda_yesterday_used + 1
				global.popcorn_yesterday_used = global.popcorn_yesterday_used + 1
				global.income = global.income + charge_price

func _on_exit_timer_timeout():
	get_parent().queue_free()

func _on_customer_pics_button_down():
	dragging = true
	if (get_parent().get_parent().is_in_group("queue")):
		where_from = "queue"
	if (get_parent().get_parent().is_in_group("arcade")):
		where_from = "arcade"


func _on_customer_pics_button_up():
	set_genre_type()
	figure_out_where()
	if (global.town_select == "hollyhock"):
		if (where_from == "queue"):
			if (in_arcade_one == true):
				if ((is_in_group("meta") == true) and (get_tree().get_current_scene().get_node("arcade_zone_one").get_child(1).get_child(0).is_visible() == true) and (get_tree().get_current_scene().get_node("arcade_zone_one").is_in_group("free") == true)):
					check = global.arcade_one_range_high - global.hollyhock_arcade_one_price #check if the arcade price is too high
					if ((check <= 0) and (prediction_one < .75)):
						price_check = false
					else:
						price_check = true
					if (price_check == true): #if the price is not too high
						dragging = false
						get_node("concessions_timer").start()
						set_global_pos(where)
						new_parent = get_tree().get_current_scene().get_node("zone_one_to_conc")
						old_parent = get_tree().get_current_scene().get_node("customer_queue")
						move_node = get_parent()
						old_parent.remove_child(move_node) #and move the customer through the system
						new_parent.add_child(move_node)
						get_parent().set_offset(0)
						ready_to_move = true
						get_tree().get_current_scene().get_node("arcade_zone_one").remove_from_group("free") #set arcade as occupied
					if (price_check == false): # if the price is too high
						print("failure")
						get_node("exit_timer").start()
						new_parent = get_tree().get_current_scene().get_node("queue_to_exit") #customer leaves
						old_parent.remove_child(old_parent.get_child(0))
						move_node.set_offset(0)
						new_parent.add_child(move_node)
						global.sales_lost = global.sales_lost + 1 #and it is counted as a lost sale
						global.price_loss = global.price_loss + 1
			if (in_arcade_two == true):
				print("true_two")
			if (in_arcade_three == true):
				print("true_three")
			if (in_arcade_four == true):
				print("true_four")
			if (in_arcade_five == true):
				print("true_five")
			if (in_arcade_six == true):
				print("true_six")
		if (where_from == "arcade"):
			if (in_concessions == true):
				print("true_conc")
	
	
	
func figure_out_where():
	var arcade_one_pos = arcade_one.get_global_pos()
	var arcade_one_size = arcade_one.get_size()
	var arcade_two_pos = arcade_two.get_global_pos()
	var arcade_two_size = arcade_two.get_size()
	var arcade_three_pos = arcade_three.get_global_pos()
	var arcade_three_size = arcade_three.get_size()
	var arcade_four_pos = arcade_four.get_global_pos()
	var arcade_four_size = arcade_four.get_size()
	var arcade_five_pos = arcade_five.get_global_pos()
	var arcade_five_size = arcade_five.get_size()
	var arcade_six_pos = arcade_six.get_global_pos()
	var arcade_six_size = arcade_six.get_size()
	var concessions_pos = concessions.get_global_pos()
	var concessions_size = concessions.get_size()
	where = get_global_mouse_pos()
	var in_x_one = where.x > arcade_one_pos.x and where.x < (arcade_one_pos.x + (arcade_one_size.x *2))
	var in_y_one = where.y > arcade_one_pos.y and where.y < (arcade_one_pos.y + (arcade_one_size.y *2))
	var in_x_two = where.x > arcade_two_pos.x and where.x < (arcade_two_pos.x + (arcade_two_size.x *2))
	var in_y_two = where.y > arcade_two_pos.y and where.y < (arcade_two_pos.y + (arcade_two_size.y *2))
	var in_x_three = where.x > arcade_three_pos.x and where.x < (arcade_three_pos.x + (arcade_three_size.x *2))
	var in_y_three = where.y > arcade_three_pos.y and where.y < (arcade_three_pos.y + (arcade_three_size.y *2))
	var in_x_four = where.x > arcade_four_pos.x and where.x < (arcade_four_pos.x + (arcade_four_size.x *2))
	var in_y_four = where.y > arcade_four_pos.y and where.y < (arcade_four_pos.y + (arcade_four_size.y *2))
	var in_x_five = where.x > arcade_five_pos.x and where.x < (arcade_five_pos.x + (arcade_five_size.x *2))
	var in_y_five = where.y > arcade_five_pos.y and where.y < (arcade_five_pos.y + (arcade_five_size.y *2))
	var in_x_six = where.x > arcade_six_pos.x and where.x < (arcade_six_pos.x + (arcade_six_size.x *2))
	var in_y_six = where.y > arcade_six_pos.y and where.y < (arcade_six_pos.y + (arcade_six_size.y *2))
	var in_x_conc = where.x > concessions_pos.x and where.x < (concessions_pos.x + (concessions_size.x *2))
	var in_y_conc = where.y > concessions_pos.y and where.y < (concessions_pos.y + (concessions_size.y *2))
	in_arcade_one = in_x_one and in_y_one
	in_arcade_two = in_x_two and in_y_two
	in_arcade_three = in_x_three and in_y_three
	in_arcade_four = in_x_four and in_y_four
	in_arcade_five = in_x_five and in_y_five
	in_arcade_six = in_x_six and in_y_six
	in_concessions = in_x_conc and in_y_conc
	
func set_genre_type(): #sets the genre of the games based on the town
	if global.town_select == "hollyhock":
		if (global.hollyhock_station_one_selection == 0):
			genre_type = "none"
		if (global.hollyhock_station_one_selection == 1):
			genre_type = "meta"
			prediction_one = global.meta_prediction
		if (global.hollyhock_station_one_selection == 2):
			genre_type = "classic"
			prediction_two = global.classic_prediction
		if (global.hollyhock_station_one_selection == 3):
			genre_type = "platformer"
			prediction_three = global.platformer_prediction