extends Node2D

var customer_load = load("res://customer.tscn")
var follow_load
var follow_parent

var supply_one
var supply_two
var supply_three
var supply_four

var pizza_key
var freezie_key
var energy_key
var candy_key

var soda_count
var popcorn_count
var pizza_count
var freezie_count
var energy_count
var candy_count

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

var entertainment_worst_key
var entertainment_decent_key
var entertainment_good_key
var entertainment_great_key
var entertainment_best_key

func _ready():
	predic_one_timer = get_node("predic_one_timer")
	predic_two_timer = get_node("predic_two_timer")
	predic_three_timer = get_node("predic_three_timer")
	follow_load = get_node("customer_queue/customer_follow")
	follow_parent = get_node("customer_queue")
	supply_one = get_tree().get_current_scene().get_node("supply_one")
	supply_two = get_tree().get_current_scene().get_node("supply_two")
	supply_three = get_tree().get_current_scene().get_node("supply_three")
	supply_four = get_tree().get_current_scene().get_node("supply_four")
	do_the_math()
	set_process(true)


func _process(delta):
	get_globals()
	hide()
	if (town_select == "hollyhock"):
		supply_one.get_child(2).clear()
		supply_one.get_child(2).add_text(soda_count)
		supply_two.get_child(2).clear()
		supply_two.get_child(2).add_text(popcorn_count)
		if (pizza_key == true):
			supply_three.show()
			supply_three.get_child(2).clear()
			supply_three.get_child(2).add_text(pizza_count)
		if (freezie_key == true):
			supply_four.show()
			supply_four.get_child(2).clear()
			supply_four.get_child(2).add_text(freezie_count)

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
	
func hide():
	supply_three.set_hidden(true)
	supply_four.set_hidden(true)

func get_globals():
	soda_count = str(global.soda_count)
	popcorn_count = str(global.popcorn_count)
	pizza_count = str(global.pizza_count)
	freezie_count = str(global.freezie_count)
	energy_count = str(global.energy_count)
	candy_count = str(global.candy_count)
	pizza_key = global.pizza_key
	freezie_key = global.freezie_key
	energy_key = global.energy_key
	candy_key = global.candy_key
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
	entertainment_worst_key = global.entertainment_worst_key
	entertainment_decent_key = global.entertainment_decent_key
	entertainment_good_key = global.entertainment_good_key
	entertainment_great_key = global.entertainment_great_key
	entertainment_best_key = global.entertainment_best_key

func _on_day_timer_timeout():
	randomize()
	new_prediction_one = rand_range(0, 1)
	randomize()
	new_prediction_two = rand_range(0, 1 - new_prediction_one)
	randomize()
	new_prediction_three = rand_range(0, 1 - (new_prediction_one + new_prediction_two))
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

func _on_predic_one_timer_timeout():
	var customer = customer_load.instance()
	var path = follow_load.duplicate()
	if (entertainment_best_key == true):
		customer.get_child(3).set_wait_time(100)
	elif (entertainment_great_key == true):
		customer.get_child(3).set_wait_time(80)
	elif (entertainment_good_key == true):
		customer.get_child(3).set_wait_time(60)
	elif (entertainment_decent_key == true):
		customer.get_child(3).set_wait_time(40)
	elif (entertainment_worst_key == true):
		customer.get_child(3).set_wait_time(20)
	if (town_select == "hollyhock"):
		customer.get_child(1).get_child(0).show()
		customer.get_child(1).get_child(1).set_hidden(true)
		customer.get_child(1).get_child(2).set_hidden(true)
		customer.get_child(1).get_child(3).set_hidden(true)
		customer.get_child(1).get_child(4).set_hidden(true)
		customer.get_child(1).get_child(5).set_hidden(true)
		customer.add_to_group("meta")
	follow_parent.add_child(path)
	path.add_child(customer)

func _on_predic_two_timer_timeout():
	var customer = customer_load.instance()
	var path = follow_load.duplicate()
	if (town_select == "hollyhock"):
		customer.get_child(1).get_child(0).set_hidden(true)
		customer.get_child(1).get_child(1).show()
		customer.get_child(1).get_child(2).set_hidden(true)
		customer.get_child(1).get_child(3).set_hidden(true)
		customer.get_child(1).get_child(4).set_hidden(true)
		customer.get_child(1).get_child(5).set_hidden(true)
		customer.add_to_group("classic")
	follow_parent.add_child(path)
	path.add_child(customer)


func _on_predic_three_timer_timeout():
	var customer = customer_load.instance()
	var path = follow_load.duplicate()
	if (town_select == "hollyhock"):
		customer.get_child(1).get_child(0).set_hidden(true)
		customer.get_child(1).get_child(1).set_hidden(true)
		customer.get_child(1).get_child(2).show()
		customer.get_child(1).get_child(3).set_hidden(true)
		customer.get_child(1).get_child(4).set_hidden(true)
		customer.get_child(1).get_child(5).set_hidden(true)
		customer.add_to_group("platformer")
	follow_parent.add_child(path)
	path.add_child(customer)