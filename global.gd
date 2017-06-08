extends Node

#player
var player_name = "dutchess"

#towns
var town_select = "hollyhock"
var town_population = 100

#finance info
var balance = 100
var expenses = 10
var income = 0
var net_worth = 0
var sales_made = 0
var sales_lost = 0


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


#customers
var happy = 0
var neutral = 0
var waited = 0
var supplies_loss = 0
var sabatoge = 0
var shabby = 0

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
var player_marketshare = 0
var one_market_share = 0
var two_market_share = 0


#supplies
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


func _ready():
	set_process(true)
	pass
