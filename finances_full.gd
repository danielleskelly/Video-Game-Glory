extends Node2D

var level_goal
var level_check
var goal_output

var income
var income_output

var expenses
var expenses_output

var cash
var cash_output

var net_worth
var net_worth_output

var sales_made
var sales_made_output

var sales_lost
var sales_lost_output

func _ready():
	goal_output = get_node("level_goal_output")
	income_output = get_node("income_output")
	expenses_output = get_node("expenses_output")
	cash_output = get_node("cash_output")
	net_worth_output = get_node("net_worth_output")
	sales_made_output = get_node("sales_made_output")
	sales_lost_output = get_node("sales_lost_output")
	set_process(true)
	pass

func _process(delta):
	level_check = global.town_select
	check_level()
	money()
	goal_output.clear()
	goal_output.add_text(level_goal)
	income_output.clear()
	income_output.add_text(income)
	expenses_output.clear()
	expenses_output.add_text(expenses)
	cash_output.clear()
	cash_output.add_text(cash)
	net_worth_output.clear()
	net_worth_output.add_text(net_worth)
	sales_made_output.clear()
	sales_made_output.add_text(sales_made)
	sales_lost_output.clear()
	sales_lost_output.add_text(sales_lost)
	
func money():
	income = str(global.income)
	expenses = str(global.expenses)
	cash = str(global.balance - global.expenses)
	net_worth = str(global.net_worth)
	sales_made = str(global.sales_made)
	sales_lost = str(global.sales_lost)

func check_level():
	if (level_check == "hollyhock"):
		level_goal = "Random string representing a reasonable level goal."
	if (level_check == "plansey"):
		level_goal = "a different random string"
	if (level_check == "windrow"):
		print("success")
	if (level_check == "slatten"):
		print("success")
	if (level_check == "fiyork"):
		print("success")
	if (level_check == "banlon"):
		print("success")