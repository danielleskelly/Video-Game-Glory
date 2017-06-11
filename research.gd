extends Node2D


var research_fund_output
var research_fund
var days_left_research
var days_left_output
var research_spending
var research_spending_output
var cash

var town_select
var hollyhock_research_total_one
var hollyhock_research_total_one_key


func _ready():
	research_fund_output = get_node("research_output")
	days_left_output = get_node("days_left_output")
	research_spending_output = get_node("daily_research_output")
	set_process(true)

func _process(delta):
	get_globals()
	research_fund_output.clear()
	research_fund_output.add_text(str(research_fund))
	days_left_output.clear()
	days_left_output.add_text(str(days_left_research))
	research_spending_output.clear()
	research_spending_output.add_text(str(research_spending))
	
func get_globals():
	research_fund = global.research_fund
	days_left_research = global.days_left_research
	research_spending = global.research_spending
	cash = global.balance - global.expenses
	town_select = global.town_select
	hollyhock_research_total_one  = global.hollyhock_research_total_one
	hollyhock_research_total_one_key = global.hollyhock_research_total_one_key

func _on_research_lower_button_down():
	if (research_spending > 1):
		research_spending = research_spending - 1
		global.research_spending = research_spending
		global.expenses = global.expenses - 1
		if (town_select == "hollyhock"):
			if (hollyhock_research_total_one_key == false):
				global.days_left_research = hollyhock_research_total_one / research_spending

func _on_research_raise_button_down():
	get_globals()
	if (research_spending + 1 <= cash):
		research_spending = research_spending + 1
		global.research_spending = research_spending
		global.expenses = global.expenses + 1
		if (town_select == "hollyhock"):
			if (hollyhock_research_total_one_key == false):
				global.days_left_research = hollyhock_research_total_one / research_spending
