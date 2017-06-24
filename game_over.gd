extends Node

# class member variables go here, for example:
# var a = 2
# var b = "textvar"

func _ready():
	# Called every time the node is added to the scene.
	# Initialization here
	pass

func game_over_hollyhock():
	global.hollyhock_balance = 500
	global.hollyhock_expenses = 0
	global.income = 0
	global.hollyhock_cash
	global.hollyhock_research_one_key = false
	global.hollyhock_research_two_key = false
	global.hollyhock_storefront_worst_key = true
	global.hollyhock_storefront_decent_key = false
	global.hollyhock_storefront_good_key = false
	global.hollyhock_storefront_great_key = false
	global.hollyhock_storefront_best_key = false
	global.hollyhock_arcade_worst_key = true
	global.hollyhock_arcade_decent_key = false
	global.hollyhock_arcade_good_key = false
	global.hollyhock_arcade_great_key = false
	global.hollyhock_arcade_best_key = false
	global.hollyhock_entertainment_worst_key = true
	global.hollyhock_entertainment_decent_key = false
	global.hollyhock_entertainment_good_key = false
	global.hollyhock_entertainment_great_key = false
	global.hollyhock_entertainment_best_key = false
	global.sales_lost = 0
	global.sales_made = 0
	global.storefront_loss = 0
	global.price_loss = 0
	global.waited_loss = 0
	global.sabatoge_loss = 0
	global.hollyhock_arcade_one_price = 0
	global.hollyhock_arcade_two_price = 0
	global.hollyhock_arcade_three_price = 0
	global.hollyhock_arcade_four_price = 0
	global.hollyhock_arcade_five_price = 0
	global.hollyhock_arcade_six_price = 0
	global.hollyhock_soda_price = 0
	global.hollyhock_popcorn_price = 0
	global.hollyhock_station_three_key = false
	global.hollyhock_station_four_key = false
	global.hollyhock_station_five_key = false
	global.hollyhock_station_six_key = false
	global.hollyhock_plumber_key = false
	global.hollyhock_yellowdot_key = false
	global.hollyhock_vgg_key = true
	global.hollyhock_genre_two_key = false
	global.hollyhock_genre_three_key = false
	global.meta_prediction = .55
	global.classic_prediction = .45
	global.strategy_prediction = .30
	global.time_management_prediction = .58
	global.platformer_prediction = .58
	global.adventure_prediction = .58
	global.one_cash = 0
	global.two_cash = 0
	global.one_sales_made = 0
	global.two_sales_made = 0
	global.one_sales_lost = 0
	global.two_sales_lost = 0
	global.hollyhock_player_marketshare = .1
	global.hollyhock_competitor_one_marketshare = .63
	global.hollyhock_competitor_two_marketshare = .46
	global.purchase_total = 0
	global.soda_total = 0
	global.popcorn_total = 0
	global.hollyhock_popcorn_count = 0
	global.hollyhock_soda_count = 0
	global.daily_soda_price = 4
	global.daily_popcorn_price = 4
	global.soda_yesterday_used = 0
	global.popcorn_yesterday_used = 0
	global.hollyhock_current_loan = 0
	global.hollyhock_research_fund = 0
	global.hollyhock_days_left_research = global.hollyhock_research_total_one
	global.hollyhock_research_spending = 0
	global.hollyhock_advertising = 0
	global.hollyhock_station_one_selection = 1
	global.hollyhock_station_two_selection = 2
	global.hollyhock_station_three_selection = 1
	global.hollyhock_station_four_selection = 2
	global.hollyhock_station_five_selection = 1
	global.hollyhock_station_six_selection = 2
	get_tree().set_pause(false)
	get_tree().change_scene("res://strategy.tscn")