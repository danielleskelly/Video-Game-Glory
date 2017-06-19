extends Node2D #most of this code deals with creating customers with the correct desires

#loads the nodes for path, timers, and storefront supply displays
onready var queue_path = get_node("customer_queue")
onready var prediction_one_timer = get_node("prediction_one_timer")
onready var prediction_two_timer = get_node("prediction_two_timer")
onready var prediction_three_timer = get_node("prediction_three_timer")
onready var supply_one = get_tree().get_current_scene().get_node("supply_one")
onready var supply_two = get_tree().get_current_scene().get_node("supply_two")
onready var countdown_timer = get_node("countdown_timer")

#total customer count start
var total_customers

#total customers for each prediction
var prediction_one_customers
var prediction_two_customers
var prediction_three_customers

#total customers divided by total day time
var prediction_one_time
var prediction_two_time
var prediction_three_time

func _ready():
	customer_math.customer_math()
	disperse_customers()
	set_process(true)

func disperse_customers():
	#prediction one customers
	total_customers = 1
	prediction_one_customers = customer_math.player_prediction_one
	#check for storefront upgrades
	for x in range(0, prediction_one_customers + 1):
		storefront_check.storefront_check()
		#if it doesn't they are added to the final count of customers
		if (storefront_check.storefront_choice == true):
			total_customers = total_customers + 1
		#if it does they are added to the count of lost customers
		if (storefront_check.storefront_choice == false):
			customer_globals.sales_lost = customer_globals.sales_lost + 1
			customer_globals.storefront_loss = customer_globals.storefront_loss + 1
	#spread the customers out evenly
	prediction_one_time = 60 / int(total_customers) 
	prediction_one_timer.set_wait_time(prediction_one_time)
	prediction_one_timer.start() #and the timer that will create the customers is started
	
	#prediction two customers
	total_customers = 1
	prediction_two_customers = customer_math.player_prediction_two
	#check for storefront upgrades
	if (prediction_two_customers > 0):
		for x in range(0, prediction_two_customers + 1):
			storefront_check.storefront_check()
			#if it doesn't they are added to the final count of customers
			if (storefront_check.storefront_choice == true):
				total_customers = total_customers + 1
			#if it does they are added to the count of lost customers
			if (storefront_check.storefront_choice == false):
				customer_globals.sales_lost = customer_globals.sales_lost + 1
				customer_globals.storefront_loss = customer_globals.storefront_loss + 1
		#spread the customers out evenly
		prediction_two_time = 60 / int(total_customers)
		prediction_two_timer.set_wait_time(prediction_two_time)
		prediction_two_timer.start()

	#prediction three customers
	total_customers = 1
	prediction_three_customers = customer_math.player_prediction_three
	#check for storefront upgrades
	if (prediction_three_customers > 0):
		for x in range(0, prediction_three_customers + 1):
			storefront_check.storefront_check()
			#if it doesn't they are added to the final count of customers
			if (storefront_check.storefront_choice == true):
				total_customers = total_customers + 1
			#if it does they are added to the count of lost customers
			if (storefront_check.storefront_choice == false):
				customer_globals.sales_lost = customer_globals.sales_lost + 1
				customer_globals.storefront_loss = customer_globals.storefront_loss + 1
		#spread the customers out evenly
		prediction_three_time = 60 / int(total_customers)
		prediction_three_timer.set_wait_time(prediction_three_time)
		prediction_three_timer.start()

func _process(delta):
	tutorial.tutorial_check()
	supplies.set_supply()
	var countdown_time = get_node("day_timer").get_time_left()
	countdown_timer.clear()
	countdown_timer.add_text(str(int(countdown_time)))

#request to create a prediction one customer
func _on_prediction_one_timer_timeout(): 
	customer_create.prediction_one_customer_create()

func _on_prediction_two_timer_timeout(): #request to create another prediction two customer
	customer_create.prediction_two_customer_create()
	
func _on_prediction_three_timer_timeout(): #request to create another prediction three customer
	customer_create.prediction_three_customer_create()

func _on_tutorial_button_button_down():
	tutorial.time_management_start = true
	get_tree().get_current_scene().get_node("tutorial").set_hidden(true)
	get_tree().set_pause(false)

func _on_day_timer_timeout(): #day is complete
	customer_math.new_predictions()
	supplies.new_supply_prices()
	customer_math.daily_marketshare_adjustment()
	customer_create.delete_children()
	get_tree().change_scene("res://strategy.tscn")