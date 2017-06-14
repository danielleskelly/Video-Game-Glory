extends Node2D


onready var research_fund_output = get_node("research_output")
onready var days_left_output = get_node("days_left_output")
onready var research_spending_output = get_node("daily_research_output")

var block = false

func _ready():
	set_process(true)

func _process(delta):
	if (global.town_select == "hollyhock"):
		research_fund_output.clear()
		research_fund_output.add_text(str(global.hollyhock_research_fund))
		research_spending_output.clear()
		research_spending_output.add_text(str(global.hollyhock_research_spending))
		if (global.hollyhock_research_one_key == false):
			if (global.hollyhock_research_spending == 0):
				var spending_stand_in = 1
				global.hollyhock_days_left_research = global.hollyhock_research_total_one / (spending_stand_in + global.hollyhock_research_fund)
			if (global.hollyhock_research_spending > 0):
				global.hollyhock_days_left_research = global.hollyhock_research_total_one / (global.hollyhock_research_spending + global.hollyhock_research_fund)
		if ((global.hollyhock_research_one_key == true) and (global.hollyhock_research_two_key == false)):
			if (global.hollyhock_research_spending == 0):
				var spending_stand_in = 1
				global.hollyhock_days_left_research = global.hollyhock_research_total_two / (spending_stand_in + global.hollyhock_research_fund)
			if (global.hollyhock_research_spending > 0):
				global.hollyhock_days_left_research = global.hollyhock_research_total_two / (global.hollyhock_research_spending + global.hollyhock_research_fund)
		if ((global.hollyhock_research_one_key == true) and (global.hollyhock_research_two_key == true)):
			block = true
	days_left_output.clear()
	days_left_output.add_text(str(global.hollyhock_days_left_research))

func _on_research_lower_button_down():
	if (global.town_select == "hollyhock"):
		if (block == false):
			if (global.hollyhock_research_spending > 1):
				global.hollyhock_research_spending = global.hollyhock_research_spending - 1
				global.hollyhock_expenses = global.hollyhock_expenses - 1
		if (block == true):
			pass

func _on_research_raise_button_down():
	if (global.town_select == "hollyhock"):
		if (block == false):
			if (global.hollyhock_research_spending + 1 <= global.hollyhock_cash):
				global.hollyhock_research_spending = global.hollyhock_research_spending + 1
				global.hollyhock_expenses = global.hollyhock_expenses + 1
		if (block == true):
			pass