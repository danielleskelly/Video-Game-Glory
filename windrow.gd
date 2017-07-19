extends Node

var windrow_research_total_one = 400
var windrow_genre_two_key = false
var windrow_research_total_two = 700
var windrow_genre_three_key = false

var windrow_storefront_best_key = false
var windrow_storefront_great_key = false
var windrow_storefront_good_key = false
var windrow_storefront_decent_key = false
var windrow_storefront_worst_key = false

var windrow_arcade_worst_key = true
var windrow_arcade_decent_key = false
var windrow_arcade_good_key = false
var windrow_arcade_great_key = false
var windrow_arcade_best_key = false

var windrow_entertainment_worst_key = true
var windrow_entertainment_decent_key = false
var windrow_entertainment_good_key = false
var windrow_entertainment_great_key = false
var windrow_entertainment_best_key = false

var windrow_research_fund = 0
var windrow_days_left_research = windrow_research_total_one
var windrow_research_spending = 0
var windrow_research_input_key = false
var windrow_current_loan = 0

var windrow_station_three_key = false
var windrow_station_four_key = false
var windrow_station_five_key = false
var windrow_station_six_key = false
var windrow_loans_input_key = false



#special to just windrow
var windrow_advertising_sabatoge_key = true
var windrow_storefront_sabatoge_key = true
var windrow_entertainment_sabatoge_key = true
var windrow_arcade_sabatoge_key = true

func _ready():
	add_to_group("Persist")

func save():
	var savedict = {
		filename=get_filename(),
		windrow_research_total_one = windrow_research_total_one,
		windrow_genre_two_key = windrow_genre_two_key,
		windrow_research_total_two = windrow_research_total_two,
		windrow_genre_three_key = windrow_genre_three_key,

		windrow_storefront_best_key = windrow_storefront_best_key,
		windrow_storefront_great_key = windrow_storefront_great_key,
		windrow_storefront_good_key = windrow_storefront_good_key,
		windrow_storefront_decent_key = windrow_storefront_decent_key,
		windrow_storefront_worst_key = windrow_storefront_worst_key,

		windrow_arcade_worst_key = windrow_arcade_worst_key,
		windrow_arcade_decent_key = windrow_arcade_decent_key,
		windrow_arcade_good_key = windrow_arcade_good_key,
		windrow_arcade_great_key = windrow_arcade_great_key,
		windrow_arcade_best_key = windrow_arcade_best_key,

		windrow_entertainment_worst_key = windrow_entertainment_worst_key,
		windrow_entertainment_decent_key = windrow_entertainment_decent_key,
		windrow_entertainment_good_key = windrow_entertainment_good_key,
		windrow_entertainment_great_key = windrow_entertainment_great_key,
		windrow_entertainment_best_key = windrow_entertainment_best_key,

		windrow_research_fund = windrow_research_fund,
		windrow_days_left_research = windrow_days_left_research,
		windrow_research_spending = windrow_research_spending,
		windrow_research_input_key = windrow_research_input_key,
		windrow_current_loan = windrow_current_loan,

		windrow_station_three_key = windrow_station_three_key,
		windrow_station_four_key = windrow_station_four_key,
		windrow_station_five_key = windrow_station_five_key,
		windrow_station_six_key = windrow_station_six_key,
		windrow_loans_input_key = windrow_loans_input_key,

		windrow_advertising_sabatoge_key = windrow_advertising_sabatoge_key,
		windrow_storefront_sabatoge_key = windrow_storefront_sabatoge_key,
		windrow_entertainment_sabatoge_key = windrow_entertainment_sabatoge_key,
		windrow_arcade_sabatoge_key = windrow_arcade_sabatoge_key
	}
	return savedict