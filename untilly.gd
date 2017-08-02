extends Node

var untilly_research_total_one = 400
var untilly_genre_two_key = false
var untilly_research_total_two = 700
var untilly_genre_three_key = false

var untilly_storefront_best_key = false
var untilly_storefront_great_key = false
var untilly_storefront_good_key = false
var untilly_storefront_decent_key = false
var untilly_storefront_worst_key = false

var untilly_arcade_worst_key = true
var untilly_arcade_decent_key = false
var untilly_arcade_good_key = false
var untilly_arcade_great_key = false
var untilly_arcade_best_key = false

var untilly_entertainment_worst_key = true
var untilly_entertainment_decent_key = false
var untilly_entertainment_good_key = false
var untilly_entertainment_great_key = false
var untilly_entertainment_best_key = false

var untilly_research_fund = 0
var untilly_days_left_research = untilly_research_total_one
var untilly_research_spending = 0
var untilly_research_input_key = false
var untilly_current_loan = 0

var untilly_station_three_key = false
var untilly_station_four_key = false
var untilly_station_five_key = false
var untilly_station_six_key = false
var untilly_loans_input_key = false

func _ready():
	add_to_group("Persist")
	
func save():
	var savedict = {
		filename=get_filename(),
		untilly_research_total_one = untilly_research_total_one,
		untilly_genre_two_key = untilly_genre_two_key,
		untilly_research_total_two = untilly_research_total_two,
		untilly_genre_three_key = untilly_genre_three_key,

		untilly_storefront_best_key = untilly_storefront_best_key,
		untilly_storefront_great_key = untilly_storefront_great_key,
		untilly_storefront_good_key = untilly_storefront_good_key,
		untilly_storefront_decent_key = untilly_storefront_decent_key,
		untilly_storefront_worst_key = untilly_storefront_worst_key,

		untilly_arcade_worst_key = untilly_arcade_worst_key,
		untilly_arcade_decent_key = untilly_arcade_decent_key,
		untilly_arcade_good_key = untilly_arcade_good_key,
		untilly_arcade_great_key = untilly_arcade_great_key,
		untilly_arcade_best_key = untilly_arcade_best_key,

		untilly_entertainment_worst_key = untilly_entertainment_worst_key,
		untilly_entertainment_decent_key = untilly_entertainment_decent_key,
		untilly_entertainment_good_key = untilly_entertainment_good_key,
		untilly_entertainment_great_key = untilly_entertainment_great_key,
		untilly_entertainment_best_key = untilly_entertainment_best_key,

		untilly_research_fund = untilly_research_fund,
		untilly_days_left_research = untilly_days_left_research,
		untilly_research_spending = untilly_research_spending,
		untilly_research_input_key = untilly_research_input_key,
		untilly_current_loan = untilly_current_loan,

		untilly_station_three_key = untilly_station_three_key,
		untilly_station_four_key = untilly_station_four_key,
		untilly_station_five_key = untilly_station_five_key,
		untilly_station_six_key = untilly_station_six_key,
		untilly_loans_input_key = untilly_loans_input_key
	}
	return savedict