extends Node2D

var balance
var expenses
var cash_loc
var cash

var glob_balance
var glob_expenses

func _ready():
	balance = get_node("balance_amount")
	expenses = get_node("expenses_amount")
	cash_loc = get_node("cash_amount")
	glob_expenses = str(global.expenses)
	glob_balance = str(global.balance)
	cash = str(global.balance - global.expenses)
	set_process(true)
	pass

func _process(delta):
	money()
	
func money():
	balance.clear()
	expenses.clear()
	cash_loc.clear()
	balance.add_text(glob_balance)
	expenses.add_text(glob_expenses)
	cash_loc.add_text(cash)