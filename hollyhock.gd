extends Node

var hollyhock_research_total_one = 500
var hollyhock_genre_two_key = false
var hollyhock_research_total_two = 1000
var hollyhock_genre_three_key = false

var hollyhock_storefront_best_key = false
var hollyhock_storefront_great_key = false
var hollyhock_storefront_good_key = false
var hollyhock_storefront_decent_key = false
var hollyhock_storefront_worst_key = false

var hollyhock_arcade_worst_key = true
var hollyhock_arcade_decent_key = false
var hollyhock_arcade_good_key = false
var hollyhock_arcade_great_key = false
var hollyhock_arcade_best_key = false

var hollyhock_entertainment_worst_key = true
var hollyhock_entertainment_decent_key = false
var hollyhock_entertainment_good_key = false
var hollyhock_entertainment_great_key = false
var hollyhock_entertainment_best_key = false

var hollyhock_research_fund = 0
var hollyhock_days_left_research = hollyhock_research_total_one
var hollyhock_research_spending = 0
var hollyhock_research_input_key = false

var hollyhock_current_loan = 0

var hollyhock_station_three_key = false
var hollyhock_station_four_key = false
var hollyhock_station_five_key = false
var hollyhock_station_six_key = false
var hollyhock_loans_input_key = false

func _ready():
	add_to_group("Persist")
	
func save():
	var savedict = {
		filename=get_filename(),
		hollyhock_research_total_one = hollyhock_research_total_one,
		hollyhock_genre_two_key = hollyhock_genre_two_key,
		hollyhock_research_total_two = hollyhock_research_total_two,
		hollyhock_genre_three_key = hollyhock_genre_three_key,

		hollyhock_storefront_best_key = hollyhock_storefront_best_key,
		hollyhock_storefront_great_key = hollyhock_storefront_great_key,
		hollyhock_storefront_good_key = hollyhock_storefront_good_key,
		hollyhock_storefront_decent_key = hollyhock_storefront_decent_key,
		hollyhock_storefront_worst_key = hollyhock_storefront_worst_key,

		hollyhock_arcade_worst_key = hollyhock_arcade_worst_key,
		hollyhock_arcade_decent_key = hollyhock_arcade_decent_key,
		hollyhock_arcade_good_key = hollyhock_arcade_good_key,
		hollyhock_arcade_great_key = hollyhock_arcade_great_key,
		hollyhock_arcade_best_key = hollyhock_arcade_best_key,

		hollyhock_entertainment_worst_key = hollyhock_entertainment_worst_key,
		hollyhock_entertainment_decent_key = hollyhock_entertainment_decent_key,
		hollyhock_entertainment_good_key = hollyhock_entertainment_good_key,
		hollyhock_entertainment_great_key = hollyhock_entertainment_great_key,
		hollyhock_entertainment_best_key = hollyhock_entertainment_best_key,

		hollyhock_research_fund = hollyhock_research_fund,
		hollyhock_days_left_research = hollyhock_days_left_research,
		hollyhock_research_spending = hollyhock_research_spending,
		hollyhock_research_input_key = hollyhock_research_input_key,

		hollyhock_current_loan = hollyhock_current_loan,

		hollyhock_station_three_key = hollyhock_station_three_key,
		hollyhock_station_four_key = hollyhock_station_four_key,
		hollyhock_station_five_key = hollyhock_station_five_key,
		hollyhock_station_six_key = hollyhock_station_six_key,
		hollyhock_loans_input_key = hollyhock_loans_input_key,
	}