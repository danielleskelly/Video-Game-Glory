extends Node

var fiyork_research_total_one = 400
var fiyork_genre_two_key = false
var fiyork_research_total_two = 700
var fiyork_genre_three_key = false

var fiyork_storefront_best_key = false
var fiyork_storefront_great_key = false
var fiyork_storefront_good_key = false
var fiyork_storefront_decent_key = false
var fiyork_storefront_worst_key = false

var fiyork_arcade_worst_key = true
var fiyork_arcade_decent_key = false
var fiyork_arcade_good_key = false
var fiyork_arcade_great_key = false
var fiyork_arcade_best_key = false

var fiyork_entertainment_worst_key = true
var fiyork_entertainment_decent_key = false
var fiyork_entertainment_good_key = false
var fiyork_entertainment_great_key = false
var fiyork_entertainment_best_key = false

var fiyork_research_fund = 0
var fiyork_days_left_research = fiyork_research_total_one
var fiyork_research_spending = 0
var fiyork_research_input_key = false

var fiyork_current_loan = 0

var fiyork_station_three_key = false
var fiyork_station_four_key = false
var fiyork_station_five_key = false
var fiyork_station_six_key = false
var fiyork_loans_input_key = false

#special to just Fiyork
var fiyork_advertising_sabatoge_key = true
var fiyork_storefront_sabatoge_key = true
var fiyork_entertainment_sabatoge_key = true
var fiyork_arcade_sabatoge_key = true

func _ready():
	add_to_group("Persist")

func save():
	var savedict = {
		filename=get_filename(),
		fiyork_research_total_one = fiyork_research_total_one,
		fiyork_genre_two_key = fiyork_genre_two_key,
		fiyork_research_total_two = fiyork_research_total_two,
		fiyork_genre_three_key = fiyork_genre_three_key,

		fiyork_storefront_best_key = fiyork_storefront_best_key,
		fiyork_storefront_great_key = fiyork_storefront_great_key,
		fiyork_storefront_good_key = fiyork_storefront_good_key,
		fiyork_storefront_decent_key = fiyork_storefront_decent_key,
		fiyork_storefront_worst_key = fiyork_storefront_worst_key,

		fiyork_arcade_worst_key = fiyork_arcade_worst_key,
		fiyork_arcade_decent_key = fiyork_arcade_decent_key,
		fiyork_arcade_good_key = fiyork_arcade_good_key,
		fiyork_arcade_great_key = fiyork_arcade_great_key,
		fiyork_arcade_best_key = fiyork_arcade_best_key,

		fiyork_entertainment_worst_key = fiyork_entertainment_worst_key,
		fiyork_entertainment_decent_key = fiyork_entertainment_decent_key,
		fiyork_entertainment_good_key = fiyork_entertainment_good_key,
		fiyork_entertainment_great_key = fiyork_entertainment_great_key,
		fiyork_entertainment_best_key = fiyork_entertainment_best_key,

		fiyork_research_fund = fiyork_research_fund,
		fiyork_days_left_research = fiyork_days_left_research,
		fiyork_research_spending = fiyork_research_spending,
		fiyork_research_input_key = fiyork_research_input_key,

		fiyork_current_loan = fiyork_current_loan,

		fiyork_station_three_key = fiyork_station_three_key,
		fiyork_station_four_key = fiyork_station_four_key,
		fiyork_station_five_key = fiyork_station_five_key,
		fiyork_station_six_key = fiyork_station_six_key,
		fiyork_loans_input_key = fiyork_loans_input_key,

		fiyork_advertising_sabatoge_key = fiyork_advertising_sabatoge_key,
		fiyork_storefront_sabatoge_key = fiyork_storefront_sabatoge_key,
		fiyork_entertainment_sabatoge_key = fiyork_entertainment_sabatoge_key,
		fiyork_arcade_sabatoge_key = fiyork_arcade_sabatoge_key
	}