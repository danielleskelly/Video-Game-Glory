extends Node2D #deals with arcade zone two and moving the customer through it

var genre_type #sets the genre type we are trying to match based on the genre set in the strategy node
var timer #gets the proper timer node by child

#gets the move_node to go from old parent to new parent when changing paths
onready var old_parent = get_tree().get_current_scene().get_node("customer_queue")
onready var new_parent = get_tree().get_current_scene().get_node("zone_two_path")
var move_node

var price_check #used to pass a boolean for the price_check

#used as placeholders so the genres may change with the town
var prediction_one
var prediction_two
var prediction_three


func _ready():
	set_genre_type() #sets the prediction based on the town
	set_process(true)
	
func _process(delta):
	if (old_parent.get_child_count() > 0) and (is_in_group("free") == true): #if there is a customer waiting in line and arcade zone two is available
		move_node = get_tree().get_current_scene().get_node("customer_queue").get_child(0) #get the first customer in line
		if (move_node.get_child(0).is_in_group("meta") == true) and (genre_type == "meta") and (move_node.get_unit_offset() > 1): #check to see if the customer wants what the arcade is set to
			var check = global.arcade_two_range_high - global.arcade_two_price #check if the arcade price is too high
			if ((check <= 0) and (prediction_one < .75)):
				price_check = false
			else:
				price_check = true
			if (price_check == true): #if the price is not too high
				timer = move_node.get_child(0).get_child(3)
				timer.set_wait_time(20) #get the timer and set it to the arcade play time (20 secs)
				move_node.get_child(0).get_child(3).start() #start it
				old_parent.remove_child(old_parent.get_child(0)) #and move the customer through the system
				move_node.set_offset(0) 
				new_parent.add_child(move_node)
				remove_from_group("free") #set arcade as occupied
			if (price_check == false): # if the price is too high
				new_parent = get_tree().get_current_scene().get_node("queue_to_exit") #customer leaves
				old_parent.remove_child(old_parent.get_child(0))
				move_node.set_offset(0)
				new_parent.add_child(move_node)
				global.sales_lost = global.sales_lost + 1 #and it is counted as a lost sale
				global.price_loss = global.price_loss + 1
		#same story different genre
		if (move_node.get_child(0).is_in_group("classic") == true) and (genre_type == "classic") and (move_node.get_unit_offset() > 1): #check to see if the customer wants what the arcade is set to
			var check = global.arcade_two_range_high - global.arcade_two_price #check if the arcade price is too high
			if ((check <= 0) and (prediction_two < .75)):
				price_check = false
			else:
				price_check = true
			if (price_check == true): #if the price is not too high
				timer = move_node.get_child(0).get_child(3)
				timer.set_wait_time(20) #get the timer and set it to the arcade play time (20 secs)
				move_node.get_child(0).get_child(3).start() #start it
				old_parent.remove_child(old_parent.get_child(0)) #and move the customer through the system
				move_node.set_offset(0) 
				new_parent.add_child(move_node)
				remove_from_group("free") #set arcade as occupied
			if (price_check == false): # if the price is too high
				new_parent = get_tree().get_current_scene().get_node("queue_to_exit") #customer leaves
				old_parent.remove_child(old_parent.get_child(0))
				move_node.set_offset(0)
				new_parent.add_child(move_node)
				global.sales_lost = global.sales_lost + 1 #and it is counted as a lost sale
				global.price_loss = global.price_loss + 1
		#same story different genre
		if (move_node.get_child(0).is_in_group("platformer") == true) and (genre_type == "platformer") and (move_node.get_unit_offset() > 1): #check to see if the customer wants what the arcade is set to
			var check = global.arcade_two_range_high - global.arcade_two_price #check if the arcade price is too high
			if ((check <= 0) and (prediction_three < .75)):
				price_check = false
			else:
				price_check = true
			if (price_check == true): #if the price is not too high
				timer = move_node.get_child(0).get_child(3)
				timer.set_wait_time(20) #get the timer and set it to the arcade play time (20 secs)
				move_node.get_child(0).get_child(3).start() #start it
				old_parent.remove_child(old_parent.get_child(0)) #and move the customer through the system
				move_node.set_offset(0) 
				new_parent.add_child(move_node)
				remove_from_group("free") #set arcade as occupied
			if (price_check == false): # if the price is too high
				new_parent = get_tree().get_current_scene().get_node("queue_to_exit") #customer leaves
				old_parent.remove_child(old_parent.get_child(0))
				move_node.set_offset(0)
				new_parent.add_child(move_node)
				global.sales_lost = global.sales_lost + 1 #and it is counted as a lost sale
				global.price_loss = global.price_loss + 1
		

func set_genre_type(): #sets the genre of the games based on the town
	if global.town_select == "hollyhock":
		if (global.station_two_selection == 0):
			genre_type = "none"
		if (global.station_two_selection == 1):
			genre_type = "meta"
			prediction_one = global.meta_prediction
		if (global.station_two_selection == 2):
			genre_type = "classic"
			prediction_two = global.classic_prediction
		if (global.station_two_selection == 3):
			genre_type = "platformer"
			prediction_three = global.platformer_prediction