extends Node

#player
var player_name = "dutchess"

#towns
var town_select = "hollyhock"
var hollyhock_town_population = 100
var hollyhock_advertising_max = 100

#finance info
var balance = 1000
var expenses = 10
var income = 0
var net_worth = 0
var sales_made = 0
var sales_lost = 0

#pricing/selling
var arcade_one_price = 0
var arcade_two_price = 0
var arcade_three_price = 0
var arcade_four_price = 0
var arcade_five_price = 0
var arcade_six_price = 0
var arcade_one_range = "10-20"
var arcade_two_range = "10-20"
var arcade_three_range = "10-20"
var arcade_four_range = "10-20"
var arcade_five_range = "10-20"
var arcade_six_range = "10-20"
var soda_price = 0
var popcorn_price = 0
var pizza_price = 0
var nachos_price = 0
var energy_price = 0
var candy_price = 0
var arcade_range = "10-20"
var soda_range = "10-20"
var popcorn_range = "10-20"
var pizza_range = "10-20"
var nachos_range = "10-20"
var energy_range = "10-20"
var candy_range = "10-20"

#keys
var pizza_key = false
var nachos_key = false
var energy_key = false
var candy_key = false
var station_three_key = false
var station_four_key = false
var station_five_key = false
var station_six_key = false
var plumber_key = false
var yellowdot_key = false
var vgg_key = true
var storefront_worst_key = true
var storefront_decent_key = false
var storefront_good_key = false
var storefront_great_key = false
var storefront_best_key = false
var repairman_worst_key = true
var repairman_decent_key = false
var repairman_good_key = false
var repairman_great_key = false
var repairman_best_key = false
var entertainment_worst_key = true
var entertainment_decent_key = false
var entertainment_good_key = false
var entertainment_great_key = false
var entertainment_best_key = false
var deus_worst_key = true
var deus_decent_key = false
var deus_good_key = false
var deus_great_key = false
var deus_best_key = false

#customers
var happy = 0
var neutral = 0
var waited = 0
var supplies_loss = 0
var sabatoge = 0
var shabby = 0
var wrong_game = 0

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
var player_marketshare = .02
var one_market_share = .73
var two_market_share = .25

#buying/supplies
var purchase_total = 0
var soda_total = 0
var popcorn_total = 0
var pizza_total = 0
var nachos_total = 0
var energy_total = 0
var candy_total = 0
var energy_count = 0
var popcorn_count = 0
var candy_count = 0
var pizza_count = 0
var soda_count = 50
var nachos_count = 0
var daily_soda_price = 10
var daily_popcorn_price = 5
var daily_pizza_price = 0
var daily_nachos_price = 0
var daily_energy_price = 30
var daily_candy_price = 0
var soda_yesterday_used = 0
var popcorn_yesterday_used = 0
var pizza_yesterday_used = 0
var nachos_yesterday_used = 0
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
var days_left_sabatoge = 10
var sabatoge_spending = 0

#research
var research_fund = 0
var days_left_research = 10
var research_spending = 0


func _ready():
	set_process(true)
	pass
