extends Node2D

onready var balance = get_node("balance_amount")
onready var expenses = get_node("expenses_amount")
onready var cash = get_node("cash_amount")

func _ready():
	set_process(true)

func _process(delta):
	if (global.town_select == "hollyhock"):
		balance.clear()
		balance.add_text(str(global.hollyhock_balance))
		expenses.clear()
		expenses.add_text(str(global.hollyhock_expenses))
		cash.clear()
		cash.add_text(str(global.hollyhock_cash))