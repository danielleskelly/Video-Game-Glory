extends Node2D

onready var sabatoge_fund_output = get_node("sabatoge_output")
onready var days_left_output = get_node("days_left_output")
onready var sabatoge_spending_output = get_node("daily_sabatoge_output")

func _ready():
	set_process(true)

func _process(delta):
	if (global.town_select == "hollyhock"):
		sabatoge_fund_output.clear()
		sabatoge_fund_output.add_text(str(global.hollyhock_sabatoge_fund))
		days_left_output.clear()
		days_left_output.add_text(str(global.hollyhock_days_left_sabatoge))
		sabatoge_spending_output.clear()
		sabatoge_spending_output.add_text(str(global.hollyhock_sabatoge_spending))

func _on_sabatoge_lower_button_down():
	if (global.town_select == "hollyhock"):
		if (global.hollyhock_sabatoge_spending > 1):
			global.hollyhock_sabatoge_spending = global.hollyhock_sabatoge_spending - 1
			global.hollyhock_expenses = global.hollyhock_expenses - 1
			if (global.hollyhock_sabatoge_spending == 0):
				var spending_stand_in = 1
				global.hollyhock_days_left_sabatoge = global.sabatoge_total / spending_stand_in
			if (global.hollyhock_sabatoge_spending > 0):
				global.hollyhock_days_left_sabatoge = global.sabatoge_total / global.hollyhock_sabatoge_spending
			
func _on_sabatoge_raise_button_down():
	if (global.town_select == "hollyhock"):
		if (global.hollyhock_sabatoge_spending + 1 <= global.hollyhock_cash):
			global.hollyhock_sabatoge_spending = global.hollyhock_sabatoge_spending + 1
			global.hollyhock_expenses = global.hollyhock_expenses + 1
			if (global.hollyhock_sabatoge_spending == 0):
				var spending_stand_in = 1
				global.hollyhock_days_left_sabatoge = global.sabatoge_total / spending_stand_in
			if (global.hollyhock_sabatoge_spending > 0):
				global.hollyhock_days_left_sabatoge = global.sabatoge_total / global.hollyhock_sabatoge_spending
	
