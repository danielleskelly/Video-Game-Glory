extends Node2D


onready var research_fund_output = get_node("research_output")
onready var days_left_output = get_node("days_left_output")
onready var research_spending_output = get_node("daily_research_output")

var research_fund
var days_left_research

var research_spending

var town_select
var hollyhock_research_total_one
var hollyhock_research_total_one_key


func _ready():
	set_process(true)

func _process(delta):
	research_fund_output.clear()
	research_fund_output.add_text(str(global.research_fund))
	research_spending_output.clear()
	research_spending_output.add_text(str(global.research_spending))
	if (global.town_select == "hollyhock"):
		if (global.hollyhock_research_one_key == false):
			global.days_left_research = global.hollyhock_research_total_one / global.research_spending
		if ((global.hollyhock_research_one_key == true) and (global.hollyhock_research_two_key == false)):
			global.days_left_research = global.hollyhock_research_total_two / global.research_spending
	days_left_output.clear()
	days_left_output.add_text(str(global.days_left_research))

func _on_research_lower_button_down():
	if (global.research_spending > 1):
		global.research_spending = global.research_spending - 1
		global.expenses = global.expenses - 1

func _on_research_raise_button_down():
	if (global.research_spending + 1 <= global.cash):
		global.research_spending = global.research_spending + 1
		global.expenses = global.expenses + 1