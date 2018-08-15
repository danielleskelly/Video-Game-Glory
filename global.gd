extends Node

var hollyhock_tutorial = false
var fiyork_tutorial = false
var untilly_tutorial = false
var plansey_tutorial = false
var windrow_tutorial = false
var banlon_tutorial = false
var slatten_tutorial = false

var arcade_sabotage_key = true
var entertainment_sabotage_key = true
var storefront_sabotage_key = true

var game_over = false
var pre_game_over = false

#town
var town_select = "hollyhock"

#money
var hollyhock_cash = 400
var fiyork_cash = 400
var plansey_cash = 400
var untilly_cash = 200
var windrow_cash = 800
var banlon_cash = 200
var slatten_cash = 500

var cash
var current_loan
var overhead

#research
var genre_two_key = false
var genre_three_key = false

#upgrades
var arcade_best_key = false
var arcade_great_key = false
var arcade_good_key = false
var arcade_decent_key = false
var arcade_worst_key = true

var storefront_best_key = false
var storefront_great_key = false
var storefront_good_key = false
var storefront_decent_key = false
var storefront_worst_key = true

var entertainment_best_key = false
var entertainment_great_key = false
var entertainment_good_key = false
var entertainment_decent_key = false
var entertainment_worst_key = true

#customers
var sales_made = 0
var sales_lost = 0
var storefront_loss = 0
var price_loss = 0
var waited_loss = 0
var sabatoge_loss = 0
var income = 0

#endless mode
var endless_unlocked = false
var yellow_eating_dot = false
var shoot_that_rock = false
var falling_shapes_organization = false
var mathmatic_mastication = false
var tall_wall_fall_ball = false
var jump_and_dodge = false
var lights_off = false

func _ready():
	if town_select == "hollyhock":
		cash = hollyhock_cash
		current_loan = 0
		overhead = 20
	elif town_select == "fiyork":
		cash = fiyork_cash
		current_loan = 0
		overhead = 30
		arcade_sabotage_key = true
		entertainment_sabotage_key = true
		storefront_sabotage_key = true
	elif town_select == "untilly":
		cash = untilly_cash
		current_loan = 500
		overhead = 40
	elif town_select == "banlon":
		cash = banlon_cash
		current_loan = 500
		overhead = 50
	elif town_select == "windrow":
		cash = windrow_cash
		current_loan = 0
		overhead = 60
		arcade_sabotage_key = true
		entertainment_sabotage_key = true
		storefront_sabotage_key = true
	elif town_select == "plansey":
		cash = plansey_cash
		current_loan = 0
		overhead = 70
	elif town_select == "slatten":
		cash = slatten_cash
		current_loan = 500
		overhead = 80
		arcade_sabotage_key = true
		entertainment_sabotage_key = true
		storefront_sabotage_key = true
		set_process(true)


func game_over_check():
	game_over = false
	pre_game_over = false
	if (global.cash - global.overhead) < 0:
		if current_loan == 1000:
			game_over = true
		elif current_loan < 1000:
			pre_game_over = true


func save_game():
	var savegame = File.new()
	savegame.open(str("user://savegame.save"), File.WRITE)
	savegame.store_line(str(global.town_select))
	savegame.store_line(str(global.endless_unlocked))
	savegame.store_line(str(rewards_globals.complete_hollyhock))
	savegame.store_line(str(rewards_globals.complete_fiyork))
	savegame.store_line(str(rewards_globals.complete_untilly))
	savegame.store_line(str(rewards_globals.complete_plansey))
	savegame.store_line(str(rewards_globals.complete_windrow))
	savegame.store_line(str(rewards_globals.complete_banlon))
	savegame.store_line(str(rewards_globals.complete_slatten))
	savegame.store_line(str(rewards_globals.minigames_played))
	savegame.store_line(str(rewards_globals.points_in_one_minigame))
	savegame.store_line(str(rewards_globals.million_total_minigame_points))
	savegame.store_line(str(rewards_globals.fifty_business_days))
	savegame.store_line(str(rewards_globals.hundred_per_hollyhock))
	savegame.store_line(str(rewards_globals.hundred_per_fiyork))
	savegame.store_line(str(rewards_globals.hundred_per_untilly))
	savegame.store_line(str(rewards_globals.hundred_per_plansey))
	savegame.store_line(str(rewards_globals.hundred_per_windrow))
	savegame.store_line(str(rewards_globals.hundred_per_banlon))
	savegame.store_line(str(rewards_globals.hundred_per_slatten))
	savegame.store_line(str(rewards_globals.find_saboteur))
	savegame.store_line(str(rewards_globals.complete_all_levels))
	savegame.store_line(str(rewards_globals.earn_thousand))
	savegame.store_line(str(rewards_globals.earn_thousand_unlocked))
	savegame.store_line(str(rewards_globals.three_min_yed))
	savegame.store_line(str(rewards_globals.three_min_str))
	savegame.store_line(str(rewards_globals.three_min_fso))
	savegame.store_line(str(rewards_globals.three_min_math_mast))
	savegame.store_line(str(rewards_globals.three_min_twfb))
	savegame.store_line(str(rewards_globals.three_min_jad))
	savegame.store_line(str(rewards_globals.three_min_lo))
	savegame.store_line(str(global.yellow_eating_dot))
	savegame.store_line(str(global.shoot_that_rock))
	savegame.store_line(str(global.falling_shapes_organization))
	savegame.store_line(str(global.mathmatic_mastication))
	savegame.store_line(str(global.tall_wall_fall_ball))
	savegame.store_line(str(global.jump_and_dodge))
	savegame.store_line(str(global.lights_off))
	savegame.close()

func daily_reset():
	sales_made = 0
	sales_lost = 0
	storefront_loss = 0
	price_loss = 0
	waited_loss = 0
	sabatoge_loss = 0
	global.income = 0

func level_reset():
	arcade_sabotage_key = true
	entertainment_sabotage_key = true
	storefront_sabotage_key = true
	
	arcade_day.playershare = .1
	
	genre_two_key = false
	genre_three_key = false
	
	arcade_best_key = false
	arcade_great_key = false
	arcade_good_key = false
	arcade_decent_key = false
	arcade_worst_key = true

	storefront_best_key = false
	storefront_great_key = false
	storefront_good_key = false
	storefront_decent_key = false
	storefront_worst_key = true

	entertainment_best_key = false
	entertainment_great_key = false
	entertainment_good_key = false
	entertainment_decent_key = false
	entertainment_worst_key = true
	cash_update()
	get_tree().set_pause(false)
	get_tree().change_scene("res://strategy.tscn")


func cash_update():
	if town_select == "hollyhock":
		cash = hollyhock_cash
		current_loan = 0
		overhead = 20
	elif town_select == "fiyork":
		cash = fiyork_cash
		current_loan = 0
		overhead = 30
	elif town_select == "untilly":
		cash = untilly_cash
		current_loan = 500
		overhead = 40
	elif town_select == "banlon":
		cash = banlon_cash
		current_loan = 500
		overhead = 50
	elif town_select == "windrow":
		cash = windrow_cash
		current_loan = 0
		overhead = 60
	elif town_select == "plansey":
		cash = plansey_cash
		current_loan = 0
		overhead = 70
	elif town_select == "slatten":
		cash = slatten_cash
		current_loan = 500
		overhead = 80
	
	
func game_reset():
	arcade_sabotage_key = true
	entertainment_sabotage_key = true
	storefront_sabotage_key = true
	hollyhock_cash = 400
	fiyork_cash = 400
	plansey_cash = 400
	untilly_cash = 200
	windrow_cash = 800
	banlon_cash = 200
	slatten_cash = 500
	town_select = "hollyhock"
	endless_unlocked = false
	yellow_eating_dot = false
	shoot_that_rock = false
	falling_shapes_organization = false
	mathmatic_mastication = false
	tall_wall_fall_ball = false
	jump_and_dodge = false
	lights_off = false