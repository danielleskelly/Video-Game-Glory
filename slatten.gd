extends Node

var slatten_research_total_one = 400
var slatten_genre_two_key = false
var slatten_research_total_two = 700
var slatten_genre_three_key = false

var slatten_storefront_best_key = false
var slatten_storefront_great_key = false
var slatten_storefront_good_key = false
var slatten_storefront_decent_key = false
var slatten_storefront_worst_key = false

var slatten_arcade_worst_key = true
var slatten_arcade_decent_key = false
var slatten_arcade_good_key = false
var slatten_arcade_great_key = false
var slatten_arcade_best_key = false

var slatten_entertainment_worst_key = true
var slatten_entertainment_decent_key = false
var slatten_entertainment_good_key = false
var slatten_entertainment_great_key = false
var slatten_entertainment_best_key = false

var slatten_research_fund = 0
var slatten_days_left_research = slatten_research_total_one
var slatten_research_spending = 0
var slatten_research_input_key = false
var slatten_current_loan = 0

var slatten_station_three_key = false
var slatten_station_four_key = false
var slatten_station_five_key = false
var slatten_station_six_key = false
var slatten_loans_input_key = false


#special to just slatten
var slatten_advertising_sabatoge_key = true
var slatten_storefront_sabatoge_key = true
var slatten_entertainment_sabatoge_key = true
var slatten_arcade_sabatoge_key = true

func _ready():
	add_to_group("Persist")
	
func save():
	var savedict = {
		filename=get_filename(),
		slatten_research_total_one = slatten_research_total_one,
		slatten_genre_two_key = slatten_genre_two_key,
		slatten_research_total_two = slatten_research_total_two,
		slatten_genre_three_key = slatten_genre_three_key,

		slatten_storefront_best_key = slatten_storefront_best_key,
		slatten_storefront_great_key = slatten_storefront_great_key,
		slatten_storefront_good_key = slatten_storefront_good_key,
		slatten_storefront_decent_key = slatten_storefront_decent_key,
		slatten_storefront_worst_key = slatten_storefront_worst_key,

		slatten_arcade_worst_key = slatten_arcade_worst_key,
		slatten_arcade_decent_key = slatten_arcade_decent_key,
		slatten_arcade_good_key = slatten_arcade_good_key,
		slatten_arcade_great_key = slatten_arcade_great_key,
		slatten_arcade_best_key = slatten_arcade_best_key,

		slatten_entertainment_worst_key = slatten_entertainment_worst_key,
		slatten_entertainment_decent_key = slatten_entertainment_decent_key,
		slatten_entertainment_good_key = slatten_entertainment_good_key,
		slatten_entertainment_great_key = slatten_entertainment_great_key,
		slatten_entertainment_best_key = slatten_entertainment_best_key,

		slatten_research_fund = slatten_research_fund,
		slatten_days_left_research = slatten_days_left_research,
		slatten_research_spending = slatten_research_spending,
		slatten_research_input_key = slatten_research_input_key,
		slatten_current_loan = slatten_current_loan,

		slatten_station_three_key = slatten_station_three_key,
		slatten_station_four_key = slatten_station_four_key,
		slatten_station_five_key = slatten_station_five_key,
		slatten_station_six_key = slatten_station_six_key,
		slatten_loans_input_key = slatten_loans_input_key,

		slatten_advertising_sabatoge_key = slatten_advertising_sabatoge_key,
		slatten_storefront_sabatoge_key = slatten_storefront_sabatoge_key,
		slatten_entertainment_sabatoge_key = slatten_entertainment_sabatoge_key,
		slatten_arcade_sabatoge_key = slatten_arcade_sabatoge_key
	}
	return savedict