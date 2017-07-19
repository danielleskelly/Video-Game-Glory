extends Node

var banlon_research_total_one = 400
var banlon_genre_two_key = false
var banlon_research_total_two = 700
var banlon_genre_three_key = false

var banlon_storefront_best_key = false
var banlon_storefront_great_key = false
var banlon_storefront_good_key = false
var banlon_storefront_decent_key = false
var banlon_storefront_worst_key = false

var banlon_arcade_worst_key = true
var banlon_arcade_decent_key = false
var banlon_arcade_good_key = false
var banlon_arcade_great_key = false
var banlon_arcade_best_key = false

var banlon_entertainment_worst_key = true
var banlon_entertainment_decent_key = false
var banlon_entertainment_good_key = false
var banlon_entertainment_great_key = false
var banlon_entertainment_best_key = false

var banlon_research_fund = 0
var banlon_days_left_research = banlon_research_total_one
var banlon_research_spending = 0
var banlon_research_input_key = false
var banlon_current_loan = 0

var banlon_station_three_key = false
var banlon_station_four_key = false
var banlon_station_five_key = false
var banlon_station_six_key = false
var banlon_loans_input_key = false


func _ready():
	add_to_group("Persist")

func save():
	var savedict = {
		filename=get_filename(),
		banlon_research_total_one = banlon_research_total_one,
		banlon_genre_two_key = banlon_genre_two_key,
		banlon_research_total_two = banlon_research_total_two,
		banlon_genre_three_key = banlon_genre_three_key,

		banlon_storefront_best_key = banlon_storefront_best_key,
		banlon_storefront_great_key = banlon_storefront_great_key,
		banlon_storefront_good_key = banlon_storefront_good_key,
		banlon_storefront_decent_key = banlon_storefront_decent_key,
		banlon_storefront_worst_key = banlon_storefront_worst_key,

		banlon_arcade_worst_key = banlon_arcade_worst_key,
		banlon_arcade_decent_key = banlon_arcade_decent_key,
		banlon_arcade_good_key = banlon_arcade_good_key,
		banlon_arcade_great_key = banlon_arcade_great_key,
		banlon_arcade_best_key = banlon_arcade_best_key,

		banlon_entertainment_worst_key = banlon_entertainment_worst_key,
		banlon_entertainment_decent_key = banlon_entertainment_decent_key,
		banlon_entertainment_good_key = banlon_entertainment_good_key,
		banlon_entertainment_great_key = banlon_entertainment_great_key,
		banlon_entertainment_best_key = banlon_entertainment_best_key,

		banlon_research_fund = banlon_research_fund,
		banlon_days_left_research = banlon_days_left_research,
		banlon_research_spending = banlon_research_spending,
		banlon_research_input_key = banlon_research_input_key,
		banlon_current_loan = banlon_current_loan,

		banlon_station_three_key = banlon_station_three_key,
		banlon_station_four_key = banlon_station_four_key,
		banlon_station_five_key = banlon_station_five_key,
		banlon_station_six_key = banlon_station_six_key,
		banlon_loans_input_key = banlon_loans_input_key
	}
	return savedict