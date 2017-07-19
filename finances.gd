extends Node2D

onready var balance = get_node("balance_amount")
onready var expenses = get_node("expenses_amount")
onready var cash = get_node("cash_amount")

func _ready():
	set_process(true)

func _process(delta):
	if (towns.town_select == "hollyhock"):
		balance.clear()
		balance.add_text(str(money.hollyhock_balance))
		expenses.clear()
		expenses.add_text(str(money.hollyhock_expenses))
		cash.clear()
		cash.add_text(str(money.hollyhock_cash))
	if (towns.town_select == "fiyork"):
		balance.clear()
		balance.add_text(str(money.fiyork_balance))
		expenses.clear()
		expenses.add_text(str(money.fiyork_expenses))
		cash.clear()
		cash.add_text(str(money.fiyork_cash))
	if (towns.town_select == "plansey"):
		balance.clear()
		balance.add_text(str(money.plansey_balance))
		expenses.clear()
		expenses.add_text(str(money.plansey_expenses))
		cash.clear()
		cash.add_text(str(money.plansey_cash))
	if (towns.town_select == "windrow"):
		balance.clear()
		balance.add_text(str(money.windrow_balance))
		expenses.clear()
		expenses.add_text(str(money.windrow_expenses))
		cash.clear()
		cash.add_text(str(money.windrow_cash))
	if (towns.town_select == "banlon"):
		balance.clear()
		balance.add_text(str(money.banlon_balance))
		expenses.clear()
		expenses.add_text(str(money.banlon_expenses))
		cash.clear()
		cash.add_text(str(money.banlon_cash))
	if (towns.town_select == "slatten"):
		balance.clear()
		balance.add_text(str(money.slatten_balance))
		expenses.clear()
		expenses.add_text(str(money.slatten_expenses))
		cash.clear()
		cash.add_text(str(money.slatten_cash))
	if (towns.town_select == "untilly"):
		balance.clear()
		balance.add_text(str(money.untilly_balance))
		expenses.clear()
		expenses.add_text(str(money.untilly_expenses))
		cash.clear()
		cash.add_text(str(money.untilly_cash))