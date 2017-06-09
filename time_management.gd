extends Node2D

var player_marketshare
var competitor_one_marketshare
var competitor_two_marketshare
var town_population
var marketshare_adjustment
var player_marketing_adjustment
var comp_one_adjusted_marketshare
var comp_two_adjusted_marketshare
var advertising
var advertising_max
var player_marketshare_effect
var comp_one_marketshare_effect
var comp_two_marketshare_effect



func _ready():
	do_the_math()
	set_process(true)


func _process(delta):
	get_globals()

func do_the_math():
	get_globals()
	if (global.town_select == "hollyhock"):
		town_population = global.hollyhock_town_population
		advertising_max = global.hollyhock_advertising_max
	player_marketshare_effect = town_population * player_marketshare
	comp_one_marketshare_effect = town_population * competitor_one_marketshare
	comp_two_marketshare_effect = town_population * competitor_two_marketshare
	marketshare_adjustment = .1 * town_population * float(advertising) / float(advertising_max)
	player_marketing_adjustment = player_marketshare_effect + marketshare_adjustment
	comp_one_adjusted_marketshare = comp_two_marketshare_effect - float(marketshare_adjustment) / 2
	comp_two_adjusted_marketshare = comp_two_marketshare_effect - float(marketshare_adjustment) / 2
	

func get_globals():
	player_marketshare = global.player_marketshare
	competitor_one_marketshare = global.one_market_share
	competitor_two_marketshare = global.two_market_share
	advertising = global.advertising