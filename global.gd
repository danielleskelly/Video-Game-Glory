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
var energy_count = 0
var popcorn_count = 0
var candy_count = 0
var pizza_count = 0
var soda_count = 50
var nachos_count = 0

var energy_open = false
var candy_open = false
var pizza_open = false
var nachos_open = false

func _ready():
	# Called every time the node is added to the scene.
	# Initialization here
	pass
