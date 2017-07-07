extends Node

# class member variables go here, for example:
# var a = 2
# var b = "textvar"

func _ready():
	# Called every time the node is added to the scene.
	# Initialization here
	pass

func game_over_hollyhock():
	money.hollyhock_balance = 500
	money.hollyhock_expenses = 0
	money.income = 0
	money.hollyhock_cash
	hollyhock.hollyhock_research_one_key = false
	hollyhock.hollyhock_research_two_key = false
	hollyhock.hollyhock_storefront_worst_key = true
	hollyhock.hollyhock_storefront_decent_key = false
	hollyhock.hollyhock_storefront_good_key = false
	hollyhock.hollyhock_storefront_great_key = false
	hollyhock.hollyhock_storefront_best_key = false
	hollyhock.hollyhock_arcade_worst_key = true
	hollyhock.hollyhock_arcade_decent_key = false
	hollyhock.hollyhock_arcade_good_key = false
	hollyhock.hollyhock_arcade_great_key = false
	hollyhock.hollyhock_arcade_best_key = false
	hollyhock.hollyhock_entertainment_worst_key = true
	hollyhock.hollyhock_entertainment_decent_key = false
	hollyhock.hollyhock_entertainment_good_key = false
	hollyhock.hollyhock_entertainment_great_key = false
	hollyhock.hollyhock_entertainment_best_key = false
	customer_globals.sales_lost = 0
	customer_globals.sales_made = 0
	customer_globals.storefront_loss = 0
	customer_globals.price_loss = 0
	customer_globals.waited_loss = 0
	customer_globals.sabatoge_loss = 0
	price_check.hollyhock_arcade_one_price = 0
	price_check.hollyhock_arcade_two_price = 0
	price_check.hollyhock_arcade_three_price = 0
	price_check.hollyhock_arcade_four_price = 0
	price_check.hollyhock_arcade_five_price = 0
	price_check.hollyhock_arcade_six_price = 0
	supplies.hollyhock_soda_price = 0
	supplies.hollyhock_popcorn_price = 0
	keys.hollyhock_station_three_key = false
	keys.hollyhock_station_four_key = false
	keys.hollyhock_station_five_key = false
	keys.hollyhock_station_six_key = false
	keys.hollyhock_plumber_key = false
	keys.hollyhock_yellowdot_key = false
	keys.hollyhock_vgg_key = true
	customer_math.hollyhock_genre_two_key = false
	customer_math.hollyhock_genre_three_key = false
	customer_math.meta_prediction = .55
	customer_math.classic_prediction = .45
	customer_math.strategy_prediction = .30
	customer_math.time_management_prediction = .58
	customer_math.platformer_prediction = .58
	customer_math.adventure_prediction = .58
	customer_math.one_cash = 0
	customer_math.two_cash = 0
	customer_math.one_sales_made = 0
	customer_math.two_sales_made = 0
	customer_math.one_sales_lost = 0
	customer_math.two_sales_lost = 0
	customer_math.hollyhock_player_marketshare = .1
	customer_math.hollyhock_competitor_one_marketshare = .63
	customer_math.hollyhock_competitor_two_marketshare = .46
	supplies.purchase_total = 0
	supplies.soda_total = 0
	supplies.popcorn_total = 0
	supplies.hollyhock_popcorn_count = 0
	supplies.hollyhock_soda_count = 0
	supplies.daily_soda_purchase_price = 4
	supplies.daily_popcorn_purchase_price = 4
	supplies.soda_yesterday_used = 0
	supplies.popcorn_yesterday_used = 0
	hollyhock.hollyhock_current_loan = 0
	hollyhock.hollyhock_research_fund = 0
	hollyhock.hollyhock_days_left_research = hollyhock.hollyhock_research_total_one
	hollyhock.hollyhock_research_spending = 0
	customer_math.hollyhock_advertising = 0
	set_genre.hollyhock_station_one_selection = 1
	set_genre.hollyhock_station_two_selection = 1
	set_genre.hollyhock_station_three_selection = 0
	set_genre.hollyhock_station_four_selection = 0
	set_genre.hollyhock_station_five_selection = 0
	set_genre.hollyhock_station_six_selection = 0
	get_tree().set_pause(false)
	get_tree().change_scene("res://strategy.tscn")