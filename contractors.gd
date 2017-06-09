extends Node2D


var sabatoge_fund_output
var sabatoge_fund
var days_left_sabatoge
var days_left_output
var sabatoge_spending
var sabatoge_spending_output
var cash

func _ready():
	sabatoge_fund_output = get_node("sabatoge_output")
	days_left_output = get_node("days_left_output")
	sabatoge_spending_output = get_node("daily_sabatoge_output")
	set_process(true)

func _process(delta):
	get_globals()
	sabatoge_fund_output.clear()
	sabatoge_fund_output.add_text(str(sabatoge_fund))
	days_left_output.clear()
	days_left_output.add_text(str(days_left_sabatoge))
	sabatoge_spending_output.clear()
	sabatoge_spending_output.add_text(str(sabatoge_spending))
	
func get_globals():
	sabatoge_fund = global.sabatoge_fund
	days_left_sabatoge = global.days_left_sabatoge
	sabatoge_spending = global.sabatoge_spending
	cash = global.balance - global.expenses

func _on_sabatoge_lower_button_down():
	if (sabatoge_spending > 0):
		sabatoge_spending = sabatoge_spending - 1
		global.sabatoge_spending = sabatoge_spending
		global.expenses = global.expenses - 1


func _on_sabatoge_raise_button_down():
	get_globals()
	if (sabatoge_spending <= cash):
		sabatoge_spending = sabatoge_spending + 1
		global.sabatoge_spending = sabatoge_spending
		global.expenses = global.expenses + 1
	
