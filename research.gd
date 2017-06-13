extends Node2D


onready var research_fund_output = get_node("research_output")
onready var days_left_output = get_node("days_left_output")
onready var research_spending_output = get_node("daily_research_output")

func _ready():
	set_process(true)

func _process(delta):
	if (global.town_select == "hollyhock"):
		research_fund_output.clear()
		research_fund_output.add_text(str(global.hollyhock_research_fund))
		research_spending_output.clear()
		research_spending_output.add_text(str(global.hollyhock_research_spending))
		if (global.hollyhock_research_one_key == false):
			global.hollyhock_days_left_research = global.hollyhock_research_total_one / global.hollyhock_research_spending
		if ((global.hollyhock_research_one_key == true) and (global.hollyhock_research_two_key == false)):
			global.hollyhock_days_left_research = global.hollyhock_research_total_two / global.hollyhock_research_spending
	days_left_output.clear()
	days_left_output.add_text(str(global.hollyhock_days_left_research))

func _on_research_lower_button_down():
	if (global.town_select == "hollyhock"):
		if (global.hollyhock_research_spending > 1):
			global.hollyhock_research_spending = global.hollyhock_research_spending - 1
			global.hollyhock_expenses = global.hollyhock_expenses - 1

func _on_research_raise_button_down():
	if (global.town_select == "hollyhock"):
		if (global.hollyhock_research_spending + 1 <= global.hollyhock_cash):
			global.hollyhock_research_spending = global.hollyhock_research_spending + 1
			global.hollyhock_expenses = global.hollyhock_expenses + 1