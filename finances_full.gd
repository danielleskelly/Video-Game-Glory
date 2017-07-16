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
	if (towns.town_select == "hollyhock"):
		goal_output.clear()
		goal_output.add_text("Hollyhock Player Satisfaction of 75%")
		income_output.clear()
		income_output.add_text(str(money.income))
		expenses_output.clear()
		expenses_output.add_text(str(money.hollyhock_expenses))
		cash_output.clear()
		cash_output.add_text(str(money.hollyhock_cash))
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
	if (towns.town_select == "fiyork"):
		goal_output.clear()
		goal_output.add_text("Undo all Sabatoges \n Unlock all Genres")
		income_output.clear()
		income_output.add_text(str(money.income))
		expenses_output.clear()
		expenses_output.add_text(str(money.fiyork_expenses))
		cash_output.clear()
		cash_output.add_text(str(money.fiyork_cash))
		if (customer_math.fiyork_player_marketshare > 1):
			marketshare_output.clear()
			marketshare_output.add_text("%100")
		else:
			marketshare_output.clear()
			marketshare_output.add_text("%" + str(int(customer_math.fiyork_player_marketshare * 100)))
		sales_made_output.clear()
		sales_made_output.add_text(str(customer_globals.sales_made))
		sales_lost_output.clear()
		sales_lost_output.add_text(str(customer_globals.sales_lost))
	if (towns.town_select == "plansey"):
		goal_output.clear()
		goal_output.add_text("Player Satisfaction of 90% with NO Loans")
		income_output.clear()
		income_output.add_text(str(money.income))
		expenses_output.clear()
		expenses_output.add_text(str(money.plansey_expenses))
		cash_output.clear()
		cash_output.add_text(str(money.plansey_cash))
		if (customer_math.plansey_player_marketshare > 1):
			marketshare_output.clear()
			marketshare_output.add_text("%100")
		else:
			marketshare_output.clear()
			marketshare_output.add_text("%" + str(int(customer_math.plansey_player_marketshare * 100)))
		sales_made_output.clear()
		sales_made_output.add_text(str(customer_globals.sales_made))
		sales_lost_output.clear()
		sales_lost_output.add_text(str(customer_globals.sales_lost))