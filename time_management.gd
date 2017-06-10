extends Node2D

var customer_load
var follow_load
var follow_parent

var player_marketshare
var competitor_one_marketshare
var competitor_two_marketshare
var town_population
var marketshare_adjustment
var player_marketing_adjustment
var comp_one_adjusted_marketshare
var comp_two_adjusted_marketshare
var advertising
var advertising_max
var player_marketshare_effect
var comp_one_marketshare_effect
var comp_two_marketshare_effect

var new_prediction_one
var new_prediction_two
var new_prediction_three

var prediction_one_effect
var prediction_two_effect
var prediction_three_effect

var genre_two_key
var genre_three_key

var town_select

var player_prediction_one
var player_prediction_two
var player_prediction_three

var predic_one_timer
var predic_two_timer
var predic_three_timer

var predic_one_time
var predic_two_time
var predic_three_time

func _ready():
	predic_one_timer = get_node("predic_one_timer")
	predic_two_timer = get_node("predic_two_timer")
	predic_three_timer = get_node("predic_three_timer")
	customer_load = get_node("customer")
	follow_load = get_node("customer_queue/customer_follow")
	follow_parent = get_node("customer_queue")
	do_the_math()
	set_process(true)


func _process(delta):
	get_globals()

func do_the_math():
	get_globals()
	if (global.town_select == "hollyhock"):
		town_population = global.hollyhock_town_population
		advertising_max = global.hollyhock_advertising_max
	player_marketshare_effect = town_population * player_marketshare
	comp_one_marketshare_effect = town_population * competitor_one_marketshare
	comp_two_marketshare_effect = town_population * competitor_two_marketshare
	marketshare_adjustment = .1 * town_population * float(advertising) / float(advertising_max)
	player_marketing_adjustment = player_marketshare_effect + marketshare_adjustment
	comp_one_adjusted_marketshare = comp_two_marketshare_effect - float(marketshare_adjustment) / 2
	comp_two_adjusted_marketshare = comp_two_marketshare_effect - float(marketshare_adjustment) / 2
	player_prediction_one = player_marketing_adjustment * prediction_one_effect
	predic_one_time = 180 / int(player_prediction_one)
	predic_one_timer.set_wait_time(predic_one_time)
	predic_one_timer.start()
	if (genre_two_key == true):
		player_prediction_two = player_marketing_adjustment * prediction_two_effect
		predic_two_time = 180 / int(player_prediction_two)
		predic_two_timer.set_wait_time(predic_two_time)
		predic_two_timer.start()
	if (genre_three_key == true):
		player_prediction_three = player_marketing_adjustment * prediction_two_effect
		predic_three_time = 180 / int(player_prediction_three)
		predic_three_timer.set_wait_time(predic_three_time)
		predic_three_timer.start()
	
	



func get_globals():
	player_marketshare = global.player_marketshare
	competitor_one_marketshare = global.one_market_share
	competitor_two_marketshare = global.two_market_share
	advertising = global.advertising
	genre_two_key = global.genre_two_key
	genre_three_key = global.genre_three_key
	town_select = global.town_select
	if (town_select == "hollyhock"):
		prediction_one_effect = global.meta_prediction
		prediction_two_effect = global.classic_prediction
		prediction_three_effect = global.platformer_prediction

func _on_day_timer_timeout():
	randomize()
	new_prediction_one = rand_range(0, 1)
	randomize()
	new_prediction_two = rand_range(0, 1 - new_prediction_one)
	randomize()
	new_prediction_three = rand_rand(0, 1 - (new_prediction_one + new_prediction_two))
	

func _on_predic_one_timer_timeout():
	var customer = customer_load.duplicate()
	var path = follow_load.duplicate()
	if (town_select == "hollyhock"):
		customer.get_child(1).get_child(0).show()
		customer.get_child(1).get_child(1).set_hidden(true)
		customer.get_child(1).get_child(2).set_hidden(true)
		customer.get_child(1).get_child(3).set_hidden(true)
		customer.get_child(1).get_child(4).set_hidden(true)
		customer.get_child(1).get_child(5).set_hidden(true)
		customer.add_to_group("meta")
	customer.show()
	follow_parent.add_child(path)
	path.add_child(customer)

func _on_predic_two_timer_timeout():
	var customer = customer_load.duplicate()
	var path = follow_load.duplicate()
	if (town_select == "hollyhock"):
		customer.get_child(1).get_child(0).set_hidden(true)
		customer.get_child(1).get_child(1).show()
		customer.get_child(1).get_child(2).set_hidden(true)
		customer.get_child(1).get_child(3).set_hidden(true)
		customer.get_child(1).get_child(4).set_hidden(true)
		customer.get_child(1).get_child(5).set_hidden(true)
		customer.add_to_group("classic")
	customer.show()
	follow_parent.add_child(path)
	path.add_child(customer)


func _on_predic_three_timer_timeout():
	var customer = customer_load.duplicate()
	var path = follow_load.duplicate()
	if (town_select == "hollyhock"):
		customer.get_child(1).get_child(0).set_hidden(true)
		customer.get_child(1).get_child(1).set_hidden(true)
		customer.get_child(1).get_child(2).show()
		customer.get_child(1).get_child(3).set_hidden(true)
		customer.get_child(1).get_child(4).set_hidden(true)
		customer.get_child(1).get_child(5).set_hidden(true)
		customer.add_to_group("platformer")
	customer.show()
	follow_parent.add_child(path)
	path.add_child(customer)