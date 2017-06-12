extends Node2D #most of this code deals with creating customers with the correct desires

var movement_load = load("res://movement_node.tscn") #instance load mover for customer
var customer_load = load("res://customer.tscn") #instance load customer

#loads the nodes for path, timers, and storefront supply displays
onready var queue_path = get_node("customer_queue")
onready var prediction_one_timer = get_node("prediction_one_timer")
onready var prediction_two_timer = get_node("prediction_two_timer")
onready var prediction_three_timer = get_node("prediction_three_timer")
onready var supply_one = get_tree().get_current_scene().get_node("supply_one")
onready var supply_two = get_tree().get_current_scene().get_node("supply_two")
onready var supply_three = get_tree().get_current_scene().get_node("supply_three")
onready var supply_four = get_tree().get_current_scene().get_node("supply_four")

# global variables that change based on town
var town_population
var advertising_max
var prediction_one_effect
var prediction_two_effect
var prediction_three_effect
var storefront_worst_key
var storefront_decent_key
var storefront_good_key
var storefront_great_key
var storefront_best_key

#base market share calculations
var player_marketshare_effect
var comp_one_marketshare_effect
var comp_two_marketshare_effect

#marketing marketshare adjustments
var marketshare_adjustment
var player_marketing_adjustment
var comp_one_adjusted_marketshare
var comp_two_adjusted_marketshare

#prediction customer adjustments
var player_prediction_one
var player_prediction_two
var player_prediction_three
var prediction_one_time
var prediction_two_time
var prediction_three_time

#storefront adjustment
var storefront_choice

#total customers after all calculations
var total_customers = 0

#wait time based on entertainment check
var wait_time

#required by godot for some reason to understand the variables
var new_prediction_one
var new_prediction_two
var new_prediction_three

func _ready():
	customer_math()
	set_process(true)


func _process(delta):
	if (global.town_select == "hollyhock"): 	#display supplies based on the town and keys
		supply_one.get_child(2).clear()
		supply_one.get_child(2).add_text(str(global.soda_count))
		supply_two.get_child(2).clear()
		supply_two.get_child(2).add_text(str(global.popcorn_count))
		if (global.pizza_key == true):
			supply_three.show()
			supply_three.get_child(2).clear()
			supply_three.get_child(2).add_text(str(global.pizza_count))
		else:
			supply_three.set_hidden(true)
		if (global.freezie_key == true):
			supply_four.show()
			supply_four.get_child(2).clear()
			supply_four.get_child(2).add_text(str(global.freezie_count))
		else:
			supply_four.set_hidden(true)

func customer_math():
	#performs the calculations to determine the number of customers that will enter the store
	if (global.town_select == "hollyhock"): 	#sets the population, advertising max, storefront keys, and predictions based on the town 
		town_population = global.hollyhock_town_population
		advertising_max = global.hollyhock_advertising_max
		prediction_one_effect = global.meta_prediction
		prediction_two_effect = global.classic_prediction
		prediction_three_effect = global.platformer_prediction
		storefront_worst_key = global.hollyhock_storefront_worst_key
		storefront_decent_key = global.hollyhock_storefront_decent_key
		storefront_good_key = global.hollyhock_storefront_good_key
		storefront_great_key = global.hollyhock_storefront_great_key
		storefront_best_key = global.hollyhock_storefront_best_key
	player_marketshare_effect = town_population * global.player_marketshare #determines base player marketshare
	comp_one_marketshare_effect = town_population * global.competitor_one_marketshare #determines base competitor one marketshare
	comp_two_marketshare_effect = town_population * global.competitor_two_marketshare #determines base competitor two marketshare
	marketshare_adjustment = .1 * town_population * float(global.advertising) / float(advertising_max) #creates the adjustment number for marketing
	player_marketing_adjustment = player_marketshare_effect + marketshare_adjustment #adjusts player marketshare up for marketing
	comp_one_adjusted_marketshare = comp_two_marketshare_effect - float(marketshare_adjustment) / 2 #adjusts competitor one marketshare down by half for marketing
	comp_two_adjusted_marketshare = comp_two_marketshare_effect - float(marketshare_adjustment) / 2 #adjusts competitor one marketshare down by half for marketing
	print("competitors sales made and sales lost")
	player_prediction_one = player_marketing_adjustment * prediction_one_effect #adjusts the number of customers that will enter the store based on the predicted percentage of the population that is interested in the first available genre
	#for each potential customer this for-loop will check if the lack of storefront upgrades turns any customers away
	for x in range(0, player_prediction_one + 1):
		storefront_check()
		if (storefront_choice == true): #if it doesn't they are added to the final count of customers
			total_customers = total_customers + 1 
		if (storefront_choice == false): #if it does they are added to the count of lost customers
			global.sales_lost = global.sales_lost + 1
			global.storefront_loss = global.storefront_loss + 1
	prediction_one_time = 180 / int(total_customers) #the total number of customers who want the first prediction genre are spread out across the total time for the day
	prediction_one_timer.set_wait_time(prediction_one_time)
	prediction_one_timer.start() #and the timer that will create the customers is started
	#then if the second genre is available it performs the actions from prediction forward for the second genre
	if (global.genre_two_key == true):
		player_prediction_two = player_marketing_adjustment * prediction_two_effect
		for x in range(0, player_prediction_two + 1):
			storefront_check()
			if (storefront_choice == true):
				total_customers = total_customers + 1
			if (storefront_choice == false):
				global.sales_lost = global.sales_lost + 1
				global.storefront_loss = global.storefront_loss + 1
		prediction_two_time = 180 / int(total_customers)
		prediction_two_timer.set_wait_time(prediction_two_time)
		prediction_two_timer.start()
	#and again for the third genre
	if (global.genre_three_key == true):
		player_prediction_three = player_marketing_adjustment * prediction_two_effect
		for x in range(0, player_prediction_three + 1):
			storefront_check()
			if (storefront_choice == true):
				total_customers = total_customers + 1
			if (storefront_choice == false):
				global.sales_lost = global.sales_lost + 1
				global.storefront_loss = global.storefront_loss + 1
		prediction_three_time = 180 / int(total_customers)
		prediction_three_timer.set_wait_time(prediction_three_time)
		prediction_three_timer.start()
	
func storefront_check(): #checks for upgrades on the storefront and creates an array of success or failure to test against
	if (storefront_best_key == true):
		var storefront_chance = [true, true, true, true, true]
		randomize(storefront_chance)
		storefront_choice = storefront_chance[randi() % storefront_chance.size()]
	elif (storefront_great_key == true):
		var storefront_chance = [true, true, true, true, false]
		randomize(storefront_chance)
		storefront_choice = storefront_chance[randi() % storefront_chance.size()]
	elif (storefront_good_key == true):
		var storefront_chance = [true, true, true, false, false]
		randomize(storefront_chance)
		storefront_choice = storefront_chance[randi() % storefront_chance.size()]
	elif (storefront_decent_key == true):
		var storefront_chance = [true, true, false, false, false]
		randomize(storefront_chance)
		storefront_choice = storefront_chance[randi() % storefront_chance.size()]
	elif (storefront_worst_key == true):
		var storefront_chance = [true, false, false, false, false]
		randomize(storefront_chance)
		storefront_choice = storefront_chance[randi() % storefront_chance.size()]

func _on_prediction_one_timer_timeout(): #request to create another prediction one customer
	var customer = customer_load.instance()
	var mover = movement_load.instance()
	entertainment_time_check() #sets the amount of time a customer is willing to wait based on in store entertainment upgrades
	customer.get_child(3).set_wait_time(wait_time)
	#sets the genre for the first prediction based on town
	if (global.town_select == "hollyhock"):
		customer.get_child(1).get_child(0).show()
		customer.get_child(1).get_child(1).set_hidden(true)
		customer.get_child(1).get_child(2).set_hidden(true)
		customer.get_child(1).get_child(3).set_hidden(true)
		customer.get_child(1).get_child(4).set_hidden(true)
		customer.get_child(1).get_child(5).set_hidden(true)
		customer.add_to_group("meta")
	queue_path.add_child(mover)
	mover.add_child(customer)

func _on_prediction_two_timer_timeout(): #request to create another prediction two customer
	var customer = customer_load.instance()
	var mover = movement_load.instance()
	entertainment_time_check() #sets the amount of time a customer is willing to wait based on in store entertainment upgrades
	customer.get_child(3).set_wait_time(wait_time)
	#sets the genre for the second prediction based on town
	if (global.town_select == "hollyhock"):
		customer.get_child(1).get_child(0).set_hidden(true)
		customer.get_child(1).get_child(1).show()
		customer.get_child(1).get_child(2).set_hidden(true)
		customer.get_child(1).get_child(3).set_hidden(true)
		customer.get_child(1).get_child(4).set_hidden(true)
		customer.get_child(1).get_child(5).set_hidden(true)
		customer.add_to_group("classic")
	queue_path.add_child(mover)
	mover.add_child(customer)
	
func _on_prediction_three_timer_timeout(): #request to create another prediction three customer
	var customer = customer_load.instance()
	var mover = movement_load.instance()
	entertainment_time_check() #sets the amount of time a customer is willing to wait based on in store entertainment upgrades
	customer.get_child(3).set_wait_time(wait_time)
	#sets the genre for the third prediction based on town
	if (global.town_select == "hollyhock"):
		customer.get_child(1).get_child(0).set_hidden(true)
		customer.get_child(1).get_child(1).set_hidden(true)
		customer.get_child(1).get_child(2).show()
		customer.get_child(1).get_child(3).set_hidden(true)
		customer.get_child(1).get_child(4).set_hidden(true)
		customer.get_child(1).get_child(5).set_hidden(true)
		customer.add_to_group("platformer")
	queue_path.add_child(mover)
	mover.add_child(customer)
	
func entertainment_time_check(): #sets how long a customer is willing to wait in line based on in store entertainment upgrades
	if (global.town_select == "hollyhock"):
		if (global.hollyhock_entertainment_great_key == true):
			wait_time == 100
		elif (global.hollyhock_entertainment_great_key == true):
			wait_time = 80
		elif (global.hollyhock_entertainment_good_key == true):
			wait_time = 60
		elif (global.hollyhock_entertainment_decent_key == true):
			wait_time = 40
		elif (global.hollyhock_entertainment_worst_key == true):
			wait_time = 20

func _on_day_timer_timeout(): #day is complete
	new_prediction_one = randomize(rand_range(0, 1))
	new_prediction_two = randomize(rand_range(0, 1 - new_prediction_one))
	new_prediction_three = randomize(rand_range(0, 1 - (new_prediction_one + new_prediction_two)))
	if (global.town_select == "hollyhock"):
		global.meta_prediction = new_prediction_one
		global.classic_prediction = new_prediction_two
		global.platformer_prediction = new_prediction_three
	if (global.days_left_research - 1 > 0):
		global.days_left_research = global.days_left_research - 1
		global.research_fund = global.research_fund + global.research_spending
	if (global.days_left_research - 1 == 0):
		print("research open success")
	if (global.days_left_sabatoge - 1 > 0):
		global.days_left_sabatoge = global.days_left_sabatoge - 1
		global.sabatoge_fund = global.sabatoge_fund + global.sabatoge_spending
	if (global.days_left_sabatoge - 1 == 0):
		print("sabatoge open success")
	get_tree().change_scene("res://strategy.tscn")