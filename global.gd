extends Node

#player
var player_name = "dutchess"

#towns
var town_select = "hollyhock"

#hollyhock
var hollyhock_research_total_one = 500
var hollyhock_research_one_key = false
var hollyhock_research_total_two = 1000
var hollyhock_research_two_key = false
var hollyhock_storefront_best_key = false
var hollyhock_arcade_worst_key = true
var hollyhock_arcade_decent_key = false
var hollyhock_arcade_good_key = false
var hollyhock_arcade_great_key = false
var hollyhock_arcade_best_key = false

#customers
var price_loss = 0
var waited_loss = 0
var sabatoge_loss = 0

#selling
var hollyhock_soda_price = 8
var hollyhock_popcorn_price = 8
var pizza_price = 0
var freezie_price = 0
var energy_price = 0
var candy_price = 0

#keys
var hollyhock_station_three_key = false
var hollyhock_station_four_key = false
var hollyhock_station_five_key = false
var hollyhock_station_six_key = false
var hollyhock_plumber_key = false
var hollyhock_yellowdot_key = false
var hollyhock_vgg_key = true

#competitors
var competitor_one = "Blickblasters"
var competitor_two = "Limestop"

#buying/supplies
var purchase_total = 0
var soda_total = 0
var popcorn_total = 0
var pizza_total = 0
var freezie_total = 0
var energy_total = 0
var candy_total = 0

var daily_candy_price = 0
var soda_yesterday_used = 0
var popcorn_yesterday_used = 0
var pizza_yesterday_used = 0
var freezie_yesterday_used = 0
var energy_yesterday_used = 0
var candy_yesterday_used = 0

#loans
var credit_limit = 3000
var hollyhock_current_loan = 0
var daily_interest = .05
var hollyhock_loans_input_key = false

#upgrades
var worst_price = "Owned"
var decent_price = 200
var good_price = 500
var great_price = 750
var best_price = 1000

#research
var hollyhock_research_fund = 0
var hollyhock_days_left_research = hollyhock_research_total_one
var hollyhock_research_spending = 0
var hollyhock_research_input_key = false

#tutorial
var tutorial_start = false
var tutorial_title_box = false
var tutorial_prediction_box = false
var tutorial_supplies_box = false
var tutorial_finances_box = false
