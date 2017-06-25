extends Node2D #deals with arcade zone three and moving the customer through it

var genre_type #sets the genre type we are trying to match based on the genre set in the strategy node
var timer #gets the proper timer node by child

#gets the move_node to go from old parent to new parent when changing paths
onready var old_parent = get_tree().get_current_scene().get_node("customer_queue")
onready var new_parent = get_tree().get_current_scene().get_node("zone_three_path")
var move_node

var all_genres

var price_fail = load("res://failed_sale.png")

func _ready():
	set_process(true)
	
func _process(delta):
	set_genre.set_genre_type()
	#if there is a customer waiting in line and arcade zone three is available
	if (old_parent.get_child_count() > 0):
		if (is_in_group("free") == true):
			price_check.check_three()
			if (towns.town_select == "hollyhock"):
				move_node = get_tree().get_current_scene().get_node("customer_queue").get_child(0)
				#check to see if the customer wants what the arcade is set to
				if (move_node.get_child(0).is_in_group("meta") == true) and (set_genre.genre_type_three == "meta") and (move_node.get_unit_offset() > 1): 
					move_along_first_in_line()
				#same story different genre
				if (move_node.get_child(0).is_in_group("classic") == true) and (set_genre.genre_type_three == "classic") and (move_node.get_unit_offset() > 1): #check to see if the customer wants what the arcade is set to
					move_along_first_in_line()
				#same story different genre
				if (move_node.get_child(0).is_in_group("platformer") == true) and (set_genre.genre_type_three == "platformer") and (move_node.get_unit_offset() > 1): #check to see if the customer wants what the arcade is set to
					move_along_first_in_line()
		
func move_along_first_in_line():
	#get the first customer in line
	if (price_check.price_check == true): #if the price is not too high
		timer = move_node.get_child(0).get_child(3)
		timer.set_wait_time(20) #get the timer and set it to the arcade play time (20 secs)
		move_node.get_child(0).get_child(3).start() #start it
		old_parent.remove_child(old_parent.get_child(0)) #and move the customer through the system
		move_node.set_offset(0) 
		new_parent.add_child(move_node)
		remove_from_group("free") #set arcade as occupied
	if (price_check.price_check == false): # if the price is too high
		all_genres = move_node.get_child(0).get_child(1).get_children()
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