extends Node

var plansey_research_total_one = 400
var plansey_genre_two_key = false
var plansey_research_total_two = 700
var plansey_genre_three_key = false

var plansey_storefront_best_key = false
var plansey_storefront_great_key = false
var plansey_storefront_good_key = false
var plansey_storefront_decent_key = false
var plansey_storefront_worst_key = false

var plansey_arcade_worst_key = true
var plansey_arcade_decent_key = false
var plansey_arcade_good_key = false
var plansey_arcade_great_key = false
var plansey_arcade_best_key = false

var plansey_entertainment_worst_key = true
var plansey_entertainment_decent_key = false
var plansey_entertainment_good_key = false
var plansey_entertainment_great_key = false
var plansey_entertainment_best_key = false

var plansey_research_fund = 0
var plansey_days_left_research = plansey_research_total_one
var plansey_research_spending = 0
var plansey_research_input_key = false

var plansey_current_loan = 0

var plansey_station_three_key = false
var plansey_station_four_key = false
var plansey_station_five_key = false
var plansey_station_six_key = false
var plansey_loans_input_key = false

func _ready():
	add_to_group("Persist")
	

func save():
	var savedict = {
		filename=get_filename(),
		plansey_research_total_one = plansey_research_total_one,
		plansey_genre_two_key = plansey_genre_two_key,
		plansey_research_total_two = plansey_research_total_two,
		plansey_genre_three_key = plansey_genre_three_key,

		plansey_storefront_best_key = plansey_storefront_best_key,
		plansey_storefront_great_key = plansey_storefront_great_key,
		plansey_storefront_good_key = plansey_storefront_good_key,
		plansey_storefront_decent_key = plansey_storefront_decent_key,
		plansey_storefront_worst_key = plansey_storefront_worst_key,

		plansey_arcade_worst_key = plansey_arcade_worst_key,
		plansey_arcade_decent_key = plansey_arcade_decent_key,
		plansey_arcade_good_key = plansey_arcade_good_key,
		plansey_arcade_great_key = plansey_arcade_great_key,
		plansey_arcade_best_key = plansey_arcade_best_key,

		plansey_entertainment_worst_key = plansey_entertainment_worst_key,
		plansey_entertainment_decent_key = plansey_entertainment_decent_key,
		plansey_entertainment_good_key = plansey_entertainment_good_key,
		plansey_entertainment_great_key = plansey_entertainment_great_key,
		plansey_entertainment_best_key = plansey_entertainment_best_key,

		plansey_research_fund = plansey_research_fund,
		plansey_days_left_research = plansey_days_left_research,
		plansey_research_spending = plansey_research_spending,
		plansey_research_input_key = plansey_research_input_key,

		plansey_current_loan = plansey_current_loan,

		plansey_station_three_key = plansey_station_three_key,
		plansey_station_four_key = plansey_station_four_key,
		plansey_station_five_key = plansey_station_five_key,
		plansey_station_six_key = plansey_station_six_key,
		plansey_loans_input_key = plansey_loans_input_key
	}