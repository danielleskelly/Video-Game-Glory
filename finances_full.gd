extends Node2D

onready var goal_output = get_node("level_goal_output")
onready var income_output = get_node("income_output")
onready var expenses_output = get_node("expenses_output")
onready var cash_output = get_node("cash_output")
onready var marketshare_output = get_node("marketshare_output")
onready var sales_made_output = get_node("sales_made_output")
onready var sales_lost_output = get_node("sales_lost_output")

func _ready():
	set_process(true)

func _process(delta):
	hollyhock_cash = hollyhock_balance - hollyhock_expenses
	if (global.town_select == "hollyhock"):
		goal_output.clear()
		goal_output.add_text("Market Share of 75%")
		income_output.clear()
		income_output.add_text(str(income))
		expenses_output.clear()
		expenses_output.add_text(str(hollyhock_expenses))
		cash_output.clear()
		cash_output.add_text(str(hollyhock_cash))
		if (customer_math.hollyhock_player_marketshare > 1):
			marketshare_output.clear()
			marketshare_output.add_text("%100")
		else:
			marketshare_output.clear()
			marketshare_output.add_text("%" + str(int(customer_math.hollyhock_player_marketshare * 100)))
		sales_made_output.clear()
		sales_made_output.add_text(str(customer_globals.sales_made))
		sales_lost_output.clear()
		sales_lost_output.add_text(str(customer_globals.sales_lost))