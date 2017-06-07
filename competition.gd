extends Node2D

var player
var player_output

var competitor_one
var comp_one_output
var competitor_two
var comp_two_output

var player_cash
var player_cash_output
var comp_one_cash
var comp_one_cash_output
var comp_two_cash
var comp_two_cash_output

var player_networth
var player_networth_output
var comp_one_networth
var comp_one_networth_output
var comp_two_networth
var comp_two_networth_output

var player_sales_made
var player_sales_made_output
var comp_one_sales_made
var comp_one_sales_made_output
var comp_two_sales_made
var comp_two_sales_made_output

var player_sales_lost
var player_sales_lost_output
var comp_one_sales_lost
var comp_one_sales_lost_output
var comp_two_sales_lost
var comp_two_sales_lost_output

var player_marketshare
var player_marketshare_output
var comp_one_marketshare
var comp_one_marketshare_output
var comp_two_marketshare
var comp_two_marketshare_output

func _ready():
	player_output = get_node("player_name")
	comp_one_output = get_node("competition_one")
	comp_two_output = get_node("competition_two")
	player_cash_output = get_node("player_cash_output")
	comp_one_cash_output = get_node("comp_1_cash_output")
	comp_two_cash_output = get_node("comp_2_cash_output")
	player_networth_output = get_node("player_net_worth_output")
	comp_one_networth_output = get_node("comp_1_net_wort_output")
	comp_two_networth_output = get_node("comp_2_net_worth_output")
	player_sales_made_output = get_node("player_sales_made_output")
	comp_one_sales_made_output = get_node("comp_1_sales_made_output")
	comp_two_sales_made_output = get_node("comp_2_sales_made_output")
	player_sales_lost_output = get_node("player_sales_lost_output")
	comp_one_sales_lost_output = get_node("comp_1_sales_lost_output")
	comp_two_sales_lost_output = get_node("comp_2_sales_lost_output")
	player_marketshare_output = get_node("player_market_share_output")
	comp_one_marketshare_output = get_node("comp_1_market_share_output")
	comp_two_marketshare_output = get_node("comp_2_market_share_output")
	set_process(true)
	pass

func _process(delta):
	get_globals()
	player_output.clear()
	player_output.add_text(player)
	comp_one_output.clear()
	comp_one_output.add_text(competitor_one)
	comp_two_output.clear()
	comp_two_output.add_text(competitor_two)
	player_cash_output.clear()
	player_cash_output.add_text(player_cash)
	comp_one_cash_output.clear()
	comp_one_cash_output.add_text(comp_one_cash)
	comp_two_cash_output.clear()
	comp_two_cash_output.add_text(comp_two_cash)
	player_networth_output.clear()
	player_networth_output.add_text(player_networth)
	comp_one_networth_output.clear()
	comp_one_networth_output.add_text(comp_one_networth)
	comp_two_networth_output.clear()
	comp_two_networth_output.add_text(comp_two_networth)
	player_sales_made_output.clear()
	player_sales_made_output.add_text(player_sales_made)
	comp_one_sales_made_output.clear()
	comp_one_sales_made_output.add_text(comp_one_sales_made)
	comp_two_sales_made_output.clear()
	comp_two_sales_made_output.add_text(comp_two_sales_made)
	player_sales_lost_output.clear()
	player_sales_lost_output.add_text(player_sales_lost)
	comp_one_sales_lost_output.clear()
	comp_one_sales_lost_output.add_text(comp_one_sales_lost)
	comp_two_sales_lost_output.clear()
	comp_two_sales_lost_output.add_text(comp_two_sales_lost)
	player_marketshare_output.clear()
	player_marketshare_output.add_text(player_marketshare)
	comp_one_marketshare_output.clear()
	comp_one_marketshare_output.add_text(comp_one_marketshare)
	comp_two_marketshare_output.clear()
	comp_two_marketshare_output.add_text(comp_two_marketshare)
	
	
func get_globals():
	player = global.player_name
	competitor_one = global.competitor_one
	competitor_two = global.competitor_two
	player_cash = str(global.balance - global.expenses)
	comp_one_cash = str(global.one_cash)
	comp_two_cash = str(global.two_cash)
	player_networth = str(global.net_worth)
	comp_one_networth = str(global.one_networth)
	comp_two_networth = str(global.two_networth)
	player_sales_made = str(global.sales_made)
	comp_one_sales_made = str(global.one_sales_made)
	comp_two_sales_made = str(global.two_sales_made)
	player_sales_lost = str(global.sales_lost)
	comp_one_sales_lost = str(global.one_sales_lost)
	comp_two_sales_lost = str(global.two_sales_lost)
	player_marketshare = str(global.player_marketshare)
	comp_one_marketshare = str(global.one_market_share)
	comp_two_marketshare = str(global.two_market_share)
	