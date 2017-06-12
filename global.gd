extends Node

#player
var player_name = "dutchess"

#financials
var balance = 1000
var expenses = 10
var cash = balance - expenses
var income = 0
var net_worth = 0

#towns
var town_select = "hollyhock"

#hollyhock
var hollyhock_town_population = 100
var hollyhock_advertising_max = 100
var hollyhock_research_total_one = 500
var hollyhock_research_one_key = false
var hollyhock_research_total_two = 1000
var hollyhock_research_two_key = false
var hollyhock_storefront_worst_key = true
var hollyhock_storefront_decent_key = false
var hollyhock_storefront_good_key = false
var hollyhock_storefront_great_key = false
var hollyhock_storefront_best_key = false
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
var hollyhock_deus_worst_key = true
var hollyhock_deus_decent_key = false
var hollyhock_deus_good_key = false
var hollyhock_deus_great_key = false
var hollyhock_deus_best_key = false

#customers
var sales_lost = 0
var sales_made = 0
var storefront_loss = 0
var price_loss = 0
var waited_loss = 0

#pricing
var arcade_one_price = 10
var arcade_two_price = 10
var arcade_three_price = 10
var arcade_four_price = 10
var arcade_five_price = 10
var arcade_six_price = 10
var arcade_one_range_high = 20
var arcade_two_range_high = 20
var arcade_three_range_high = 20
var arcade_four_range_high = 20
var arcade_five_range_high = 20
var arcade_six_range_high = 20


#sabatoge
var sabatoge_total = 100

#predictions
var meta_prediction = .55
var classic_prediction = .45
var strategy_prediction = .30
var time_management_prediction = .58
var platformer_prediction = .58
var adventure_prediction = .58


#selling
var arcade_one_range_low = 10
var arcade_two_range_low = 10
var arcade_three_range_low = 10
var arcade_four_range_low = 10
var arcade_five_range_low = 10
var arcade_six_range_low = 10
var soda_price = 20
var popcorn_price = 20
var pizza_price = 0
var freezie_price = 0
var energy_price = 0
var candy_price = 0
var soda_range = "10-20"
var popcorn_range = "10-20"
var pizza_range = "10-20"
var freezie_range = "10-20"
var energy_range = "10-20"
var candy_range = "10-20"

#keys
var pizza_key = false
var freezie_key = false
var energy_key = false
var candy_key = false
var station_three_key = true
var station_four_key = true
var station_five_key = true
var station_six_key = true
var plumber_key = false
var yellowdot_key = true
var vgg_key = true

var genre_two_key = true
var genre_three_key = false

#customers

var sabatoge = 0

#competitors
var competitor_one = "Blickblasters"
var competitor_two = "Limestop"
var one_cash = 0
var two_cash = 0
var one_networth = 0
var two_networth = 0
var one_sales_made = 0
var two_sales_made = 0
var one_sales_lost = 0
var two_sales_lost = 0
var player_marketshare = .73
var competitor_one_marketshare = .02
var competitor_two_marketshare = .25

#buying/supplies
var purchase_total = 0
var soda_total = 0
var popcorn_total = 0
var pizza_total = 0
var freezie_total = 0
var energy_total = 0
var candy_total = 0
var energy_count = 0
var popcorn_count = 50
var candy_count = 0
var pizza_count = 0
var soda_count = 50
var freezie_count = 0
var daily_soda_price = 10
var daily_popcorn_price = 5
var daily_pizza_price = 0
var daily_freezie_price = 0
var daily_energy_price = 30
var daily_candy_price = 0
var soda_yesterday_used = 0
var popcorn_yesterday_used = 0
var pizza_yesterday_used = 0
var freezie_yesterday_used = 0
var energy_yesterday_used = 0
var candy_yesterday_used = 0

#advertising
var advertising = 20

#loans
var credit_limit = 3000
var current_loan = 0
var daily_interest = .05

#upgrades
var worst_price = "Owned"
var decent_price = 200
var good_price = 500
var great_price = 750
var best_price = 1000

#sabatoge
var sabatoge_fund = 0
var days_left_sabatoge = sabatoge_total
var sabatoge_spending = 1

#research
var research_fund = 0
var days_left_research = hollyhock_research_total_one
var research_spending = 0

#arcades
var station_one_selection = 1
var station_two_selection = 2
var station_three_selection = 1
var station_four_selection = 2
var station_five_selection = 1
var station_six_selection = 2


func _ready():
	set_process(true)
	pass
