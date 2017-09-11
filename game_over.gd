extends Node

var game_over = false
var expenses_warning = false

func _ready():
	# Called every time the node is added to the scene.
	# Initialization here
	pass

func game_over_check():
	game_over = false
	expenses_warning = false
	if (towns.town_select == "hollyhock"):
		if (money.hollyhock_balance - money.hollyhock_expenses <= 0):
			if (money.hollyhock_expenses > 0) or (hollyhock.hollyhock_current_loan < 1000):
				expenses_warning = true
			elif (money.hollyhock_expenses == 0) or (hollyhock.hollyhock_current_loan < 1000):
				game_over = true
	elif (towns.town_select == "fiyork"):
		if (money.fiyork_balance - money.fiyork_expenses <= 0):
			if (money.fiyork_expenses > 0) or (fiyork.hollyhock_current_loan < 1000):
				expenses_warning = true
			elif (money.fiyork_expenses == 0) or (fiyork.hollyhock_current_loan < 1000):
				game_over = true
	elif (towns.town_select == "untilly"):
		if (money.untilly_balance - money.untilly_expenses <= 0):
			if (money.untilly_expenses > 0) or (untilly.hollyhock_current_loan < 1000):
				expenses_warning = true
			elif (money.untilly_expenses == 0) or (untilly.hollyhock_current_loan < 1000):
				game_over = true
	elif (towns.town_select == "plansey"):
		if (money.plansey_balance - money.plansey_expenses <= 0):
			if (money.plansey_expenses > 0) or (plansey.hollyhock_current_loan < 1000):
				expenses_warning = true
			elif (money.plansey_expenses == 0) or (plansey.hollyhock_current_loan < 1000):
				game_over = true
	elif (towns.town_select == "windrow"):
		if (money.windrow_balance - money.windrow_expenses <= 0):
			if (money.windrow_expenses > 0) or (windrow.hollyhock_current_loan < 1000):
				expenses_warning = true
			elif (money.windrow_expenses == 0) or (windrow.hollyhock_current_loan < 1000):
				game_over = true
	elif (towns.town_select == "banlon"):
		if (money.banlon_balance - money.banlon_expenses <= 0):
			if (money.banlon_expenses > 0) or (banlon.hollyhock_current_loan < 1000):
				expenses_warning = true
			elif (money.banlon_expenses == 0) or (banlon.hollyhock_current_loan < 1000):
				game_over = true
	elif (towns.town_select == "slatten"):
		if (money.slatten_balance - money.slatten_expenses <= 0):
			if (money.slatten_expenses > 0) or (slatten.hollyhock_current_loan < 1000):
				expenses_warning = true
			elif (money.slatten_expenses == 0) or (slatten.hollyhock_current_loan < 1000):
				game_over = true
		



func game_over_hollyhock():
	arcade_day.hollyhock_station_one_selection = 0
	arcade_day.hollyhock_station_two_selection = 0
	arcade_day.hollyhock_station_three_selection = 0
	arcade_day.hollyhock_station_four_selection = 0
	arcade_day.hollyhock_station_five_selection = 0
	arcade_day.hollyhock_station_six_selection = 0
	arcade_day.hollyhock_arcade_range_low = 10
	arcade_day.hollyhock_arcade_range_high = 20
	arcade_day.hollyhock_arcade_one_price = 0
	arcade_day.hollyhock_arcade_two_price = 0
	arcade_day.hollyhock_arcade_three_price = 0
	arcade_day.hollyhock_arcade_four_price = 0
	arcade_day.hollyhock_arcade_five_price = 0
	arcade_day.hollyhock_arcade_six_price = 0

	customer_math.hollyhock_advertising = 0
	customer_math.hollyhock_player_marketshare = .1
	hollyhock.hollyhock_research_total_one = 500
	hollyhock.hollyhock_genre_two_key = false
	hollyhock.hollyhock_research_total_two = 1000
	hollyhock.hollyhock_genre_three_key = false

	hollyhock.hollyhock_storefront_best_key = false
	hollyhock.hollyhock_storefront_great_key = false
	hollyhock.hollyhock_storefront_good_key = false
	hollyhock.hollyhock_storefront_decent_key = false
	hollyhock.hollyhock_storefront_worst_key = false

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

	hollyhock.hollyhock_research_fund = 0
	hollyhock.hollyhock_days_left_research = hollyhock.hollyhock_research_total_one
	hollyhock.hollyhock_research_spending = 0
	hollyhock.hollyhock_research_input_key = false

	hollyhock.hollyhock_current_loan = 0

	hollyhock.hollyhock_station_three_key = false
	hollyhock.hollyhock_station_four_key = false
	hollyhock.hollyhock_station_five_key = false
	hollyhock.hollyhock_station_six_key = false
	hollyhock.hollyhock_loans_input_key = false

	money.hollyhock_balance = 400
	money.hollyhock_expenses = 0

	supplies.hollyhock_soda_price = 0
	supplies.hollyhock_popcorn_price = 0

	supplies.hollyhock_popcorn_count = 0
	supplies.hollyhock_soda_count = 0
	get_tree().set_pause(false)
	get_tree().change_scene("res://strategy.tscn")




func game_over_fiyork():
	arcade_day.fiyork_station_one_selection = 0
	arcade_day.fiyork_station_two_selection = 0
	arcade_day.fiyork_station_three_selection = 0
	arcade_day.fiyork_station_four_selection = 0
	arcade_day.fiyork_station_five_selection = 0
	arcade_day.fiyork_station_six_selection = 0
	arcade_day.fiyork_arcade_range_low = 8
	arcade_day.fiyork_arcade_range_high = 18
	arcade_day.fiyork_arcade_one_price = 0
	arcade_day.fiyork_arcade_two_price = 0
	arcade_day.fiyork_arcade_three_price = 0
	arcade_day.fiyork_arcade_four_price = 0
	arcade_day.fiyork_arcade_five_price = 0
	arcade_day.fiyork_arcade_six_price = 0

	customer_math.fiyork_advertising = 0
	customer_math.fiyork_player_marketshare = .1

	fiyork.fiyork_research_total_one = 400
	fiyork.fiyork_genre_two_key = false
	fiyork.fiyork_research_total_two = 700
	fiyork.fiyork_genre_three_key = false

	fiyork.fiyork_storefront_best_key = false
	fiyork.fiyork_storefront_great_key = false
	fiyork.fiyork_storefront_good_key = false
	fiyork.fiyork_storefront_decent_key = false
	fiyork.fiyork_storefront_worst_key = false

	fiyork.fiyork_arcade_worst_key = true
	fiyork.fiyork_arcade_decent_key = false
	fiyork.fiyork_arcade_good_key = false
	fiyork.fiyork_arcade_great_key = false
	fiyork.fiyork_arcade_best_key = false

	fiyork.fiyork_entertainment_worst_key = true
	fiyork.fiyork_entertainment_decent_key = false
	fiyork.fiyork_entertainment_good_key = false
	fiyork.fiyork_entertainment_great_key = false
	fiyork.fiyork_entertainment_best_key = false

	fiyork.fiyork_research_fund = 0
	fiyork.fiyork_days_left_research = fiyork.fiyork_research_total_one
	fiyork.fiyork_research_spending = 0
	fiyork.fiyork_research_input_key = false

	fiyork.fiyork_current_loan = 0

	fiyork.fiyork_station_three_key = false
	fiyork.fiyork_station_four_key = false
	fiyork.fiyork_station_five_key = false
	fiyork.fiyork_station_six_key = false
	fiyork.fiyork_loans_input_key = false

	fiyork.fiyork_advertising_sabatoge_key = true
	fiyork.fiyork_storefront_sabatoge_key = true
	fiyork.fiyork_entertainment_sabatoge_key = true
	fiyork.fiyork_arcade_sabatoge_key = true

	money.fiyork_balance = 200
	money.fiyork_expenses = 0
	
	supplies.fiyork_pizza_price = 0
	supplies.fiyork_freezie_price = 0

	supplies.fiyork_pizza_count = 0
	supplies.fiyork_freezie_count = 0
	get_tree().set_pause(false)
	get_tree().change_scene("res://strategy.tscn")


func game_over_plansey():
	arcade_day.plansey_station_one_selection = 0
	arcade_day.plansey_station_two_selection = 0
	arcade_day.plansey_station_three_selection = 0
	arcade_day.plansey_station_four_selection = 0
	arcade_day.plansey_station_five_selection = 0
	arcade_day.plansey_station_six_selection = 0
	arcade_day.plansey_arcade_range_low = 15
	arcade_day.plansey_arcade_range_high = 20
	arcade_day.plansey_arcade_one_price = 0
	arcade_day.plansey_arcade_two_price = 0
	arcade_day.plansey_arcade_three_price = 0
	arcade_day.plansey_arcade_four_price = 0
	arcade_day.plansey_arcade_five_price = 0
	arcade_day.plansey_arcade_six_price = 0

	customer_math.plansey_advertising = 0
	customer_math.plansey_player_marketshare = .1

	money.plansey_balance = 200
	money.plansey_expenses = 0

	plansey.plansey_research_total_one = 400
	plansey.plansey_genre_two_key = false
	plansey.plansey_research_total_two = 700
	plansey.plansey_genre_three_key = false

	plansey.plansey_storefront_best_key = false
	plansey.plansey_storefront_great_key = false
	plansey.plansey_storefront_good_key = false
	plansey.plansey_storefront_decent_key = false
	plansey.plansey_storefront_worst_key = false

	plansey.plansey_arcade_worst_key = true
	plansey.plansey_arcade_decent_key = false
	plansey.plansey_arcade_good_key = false
	plansey.plansey_arcade_great_key = false
	plansey.plansey_arcade_best_key = false

	plansey.plansey_entertainment_worst_key = true
	plansey.plansey_entertainment_decent_key = false
	plansey.plansey_entertainment_good_key = false
	plansey.plansey_entertainment_great_key = false
	plansey.plansey_entertainment_best_key = false

	plansey.plansey_research_fund = 0
	plansey.plansey_days_left_research = plansey.plansey_research_total_one
	plansey.plansey_research_spending = 0
	plansey.plansey_research_input_key = false

	plansey.plansey_current_loan = 0

	plansey.plansey_station_three_key = false
	plansey.plansey_station_four_key = false
	plansey.plansey_station_five_key = false
	plansey.plansey_station_six_key = false
	plansey.plansey_loans_input_key = false

	supplies.plansey_energy_price = 0
	supplies.plansey_nachos_price = 0
	supplies.plansey_nachos_count = 0
	supplies.plansey_energy_count = 0
	get_tree().set_pause(false)
	get_tree().change_scene("res://strategy.tscn")

func game_over_untilly():
	arcade_day.untilly_station_one_selection = 0
	arcade_day.untilly_station_two_selection = 0
	arcade_day.untilly_station_three_selection = 0
	arcade_day.untilly_station_four_selection = 0
	arcade_day.untilly_station_five_selection = 0
	arcade_day.untilly_station_six_selection = 0
	arcade_day.untilly_arcade_range_low = 10
	arcade_day.untilly_arcade_range_high = 25
	arcade_day.untilly_arcade_one_price = 0
	arcade_day.untilly_arcade_two_price = 0
	arcade_day.untilly_arcade_three_price = 0
	arcade_day.untilly_arcade_four_price = 0
	arcade_day.untilly_arcade_five_price = 0
	arcade_day.untilly_arcade_six_price = 0
	customer_math.untilly_advertising = 0
	customer_math.untilly_player_marketshare = .1
	money.untilly_balance = 200
	money.untilly_expenses = 0
	untilly.untilly_research_total_one = 400
	untilly.untilly_genre_two_key = false
	untilly.untilly_research_total_two = 700
	untilly.untilly_genre_three_key = false

	untilly.untilly_storefront_best_key = false
	untilly.untilly_storefront_great_key = false
	untilly.untilly_storefront_good_key = false
	untilly.untilly_storefront_decent_key = false
	untilly.untilly_storefront_worst_key = false

	untilly.untilly_arcade_worst_key = true
	untilly.untilly_arcade_decent_key = false
	untilly.untilly_arcade_good_key = false
	untilly.untilly_arcade_great_key = false
	untilly.untilly_arcade_best_key = false

	untilly.untilly_entertainment_worst_key = true
	untilly.untilly_entertainment_decent_key = false
	untilly.untilly_entertainment_good_key = false
	untilly.untilly_entertainment_great_key = false
	untilly.untilly_entertainment_best_key = false

	untilly.untilly_research_fund = 0
	untilly.untilly_days_left_research = untilly.untilly_research_total_one
	untilly.untilly_research_spending = 0
	untilly.untilly_research_input_key = false
	untilly.untilly_current_loan = 0

	untilly.untilly_station_three_key = false
	untilly.untilly_station_four_key = false
	untilly.untilly_station_five_key = false
	untilly.untilly_station_six_key = false
	untilly.untilly_loans_input_key = false

	supplies.untilly_soda_price = 0
	supplies.untilly_popcorn_price = 0

	supplies.untilly_soda_count = 0
	supplies.untilly_popcorn_count = 0
	get_tree().set_pause(false)
	get_tree().change_scene("res://strategy.tscn")




func game_over_windrow():
	arcade_day.windrow_station_one_selection = 0
	arcade_day.windrow_station_two_selection = 0
	arcade_day.windrow_station_three_selection = 0
	arcade_day.windrow_station_four_selection = 0
	arcade_day.windrow_station_five_selection = 0
	arcade_day.windrow_station_six_selection = 0
	arcade_day.windrow_arcade_range_low = 15
	arcade_day.windrow_arcade_range_high = 20
	arcade_day.windrow_arcade_one_price = 0
	arcade_day.windrow_arcade_two_price = 0
	arcade_day.windrow_arcade_three_price = 0
	arcade_day.windrow_arcade_four_price = 0
	arcade_day.windrow_arcade_five_price = 0
	arcade_day.windrow_arcade_six_price = 0
	customer_math.windrow_advertising = 0
	customer_math.windrow_player_marketshare = .1
	money.windrow_balance = 200
	money.windrow_expenses = 0
	windrow.windrow_research_total_one = 400
	windrow.windrow_genre_two_key = false
	windrow.windrow_research_total_two = 700
	windrow.windrow_genre_three_key = false

	windrow.windrow_storefront_best_key = false
	windrow.windrow_storefront_great_key = false
	windrow.windrow_storefront_good_key = false
	windrow.windrow_storefront_decent_key = false
	windrow.windrow_storefront_worst_key = false

	windrow.windrow_arcade_worst_key = true
	windrow.windrow_arcade_decent_key = false
	windrow.windrow_arcade_good_key = false
	windrow.windrow_arcade_great_key = false
	windrow.windrow_arcade_best_key = false

	windrow.windrow_entertainment_worst_key = true
	windrow.windrow_entertainment_decent_key = false
	windrow.windrow_entertainment_good_key = false
	windrow.windrow_entertainment_great_key = false
	windrow.windrow_entertainment_best_key = false

	windrow.windrow_research_fund = 0
	windrow.windrow_days_left_research = windrow.windrow_research_total_one
	windrow.windrow_research_spending = 0
	windrow.windrow_research_input_key = false
	windrow.windrow_current_loan = 0

	windrow.windrow_station_three_key = false
	windrow.windrow_station_four_key = false
	windrow.windrow_station_five_key = false
	windrow.windrow_station_six_key = false
	windrow.windrow_loans_input_key = false

	windrow.windrow_advertising_sabatoge_key = true
	windrow.windrow_storefront_sabatoge_key = true
	windrow.windrow_entertainment_sabatoge_key = true
	windrow.windrow_arcade_sabatoge_key = true

	supplies.windrow_freezie_price = 0
	supplies.windrow_pizza_price = 0

	supplies.windrow_freezie_count = 0
	supplies.windrow_pizza_count = 0
	get_tree().set_pause(false)
	get_tree().change_scene("res://strategy.tscn")

func game_over_banlon():
	arcade_day.banlon_station_one_selection = 0
	arcade_day.banlon_station_two_selection = 0
	arcade_day.banlon_station_three_selection = 0
	arcade_day.banlon_station_four_selection = 0
	arcade_day.banlon_station_five_selection = 0
	arcade_day.banlon_station_six_selection = 0
	arcade_day.banlon_arcade_range_low = 15
	arcade_day.banlon_arcade_range_high = 20
	arcade_day.banlon_arcade_one_price = 0
	arcade_day.banlon_arcade_two_price = 0
	arcade_day.banlon_arcade_three_price = 0
	arcade_day.banlon_arcade_four_price = 0
	arcade_day.banlon_arcade_five_price = 0
	arcade_day.banlon_arcade_six_price = 0
	banlon.banlon_research_total_one = 400
	banlon.banlon_genre_two_key = false
	banlon.banlon_research_total_two = 700
	banlon.banlon_genre_three_key = false

	banlon.banlon_storefront_best_key = false
	banlon.banlon_storefront_great_key = false
	banlon.banlon_storefront_good_key = false
	banlon.banlon_storefront_decent_key = false
	banlon.banlon_storefront_worst_key = false

	banlon.banlon_arcade_worst_key = true
	banlon.banlon_arcade_decent_key = false
	banlon.banlon_arcade_good_key = false
	banlon.banlon_arcade_great_key = false
	banlon.banlon_arcade_best_key = false

	banlon.banlon_entertainment_worst_key = true
	banlon.banlon_entertainment_decent_key = false
	banlon.banlon_entertainment_good_key = false
	banlon.banlon_entertainment_great_key = false
	banlon.banlon_entertainment_best_key = false

	banlon.banlon_research_fund = 0
	banlon.banlon_days_left_research = banlon.banlon_research_total_one
	banlon.banlon_research_spending = 0
	banlon.banlon_research_input_key = false
	banlon.banlon_current_loan = 0

	banlon.banlon_station_three_key = false
	banlon.banlon_station_four_key = false
	banlon.banlon_station_five_key = false
	banlon.banlon_station_six_key = false
	banlon.banlon_loans_input_key = false
	money.banlon_balance = 200
	money.banlon_expenses = 0

	supplies.banlon_energy_price = 0
	supplies.banlon_nachos_price = 0

	supplies.banlon_energy_count = 0
	supplies.banlon_nachos_count = 0
	get_tree().set_pause(false)
	get_tree().change_scene("res://strategy.tscn")



func game_over_slatten():
	arcade_day.slatten_station_one_selection = 0
	arcade_day.slatten_station_two_selection = 0
	arcade_day.slatten_station_three_selection = 0
	arcade_day.slatten_station_four_selection = 0
	arcade_day.slatten_station_five_selection = 0
	arcade_day.slatten_station_six_selection = 0
	arcade_day.slatten_arcade_range_low = 15
	arcade_day.slatten_arcade_range_high = 20
	arcade_day.slatten_arcade_one_price = 0
	arcade_day.slatten_arcade_two_price = 0
	arcade_day.slatten_arcade_three_price = 0
	arcade_day.slatten_arcade_four_price = 0
	arcade_day.slatten_arcade_five_price = 0
	arcade_day.slatten_arcade_six_price = 0
	customer_math.slatten_advertising = 0
	customer_math.slatten_player_marketshare = .1
	money.slatten_balance = 200
	money.slatten_expenses = 0
	slatten.slatten_research_total_one = 400
	slatten.slatten_genre_two_key = false
	slatten.slatten_research_total_two = 700
	slatten.slatten_genre_three_key = false

	slatten.slatten_storefront_best_key = false
	slatten.slatten_storefront_great_key = false
	slatten.slatten_storefront_good_key = false
	slatten.slatten_storefront_decent_key = false
	slatten.slatten_storefront_worst_key = false

	slatten.slatten_arcade_worst_key = true
	slatten.slatten_arcade_decent_key = false
	slatten.slatten_arcade_good_key = false
	slatten.slatten_arcade_great_key = false
	slatten.slatten_arcade_best_key = false

	slatten.slatten_entertainment_worst_key = true
	slatten.slatten_entertainment_decent_key = false
	slatten.slatten_entertainment_good_key = false
	slatten.slatten_entertainment_great_key = false
	slatten.slatten_entertainment_best_key = false

	slatten.slatten_research_fund = 0
	slatten.slatten_days_left_research = slatten.slatten_research_total_one
	slatten.slatten_research_spending = 0
	slatten.slatten_research_input_key = false
	slatten.slatten_current_loan = 0

	slatten.slatten_station_three_key = false
	slatten.slatten_station_four_key = false
	slatten.slatten_station_five_key = false
	slatten.slatten_station_six_key = false
	slatten.slatten_loans_input_key = false

	slatten.slatten_advertising_sabatoge_key = true
	slatten.slatten_storefront_sabatoge_key = true
	slatten.slatten_entertainment_sabatoge_key = true
	slatten.slatten_arcade_sabatoge_key = true
	
	supplies.slatten_freezie_price = 0
	supplies.slatten_popcorn_price = 0

	supplies.slatten_freezie_count = 0
	supplies.slatten_popcorn_count = 0
	get_tree().set_pause(false)
	get_tree().change_scene("res://strategy.tscn")
