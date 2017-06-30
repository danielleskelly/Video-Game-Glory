extends Node2D

onready var research_fund_output = get_node("research_output")
onready var days_left_output = get_node("days_left_output")
onready var research_spending_output_gray = get_node("daily_research_output_gray")
onready var research_goal_output = get_node("research_goal_output")

var block = false
var research_spending

func _ready():
	set_process(true)

func _process(delta):
	if (towns.town_select == "hollyhock"):
		research_fund_output.clear()
		research_fund_output.add_text(str(hollyhock.hollyhock_research_fund))
		research_spending_output_gray.clear()
		research_spending_output_gray.add_text(str(hollyhock.hollyhock_research_spending))
		if (hollyhock.hollyhock_research_one_key == false):
			research_goal_output.clear()
			research_goal_output.add_text("Genre Two -- Classic")
			if (hollyhock.hollyhock_research_spending == 0):
				var spending_stand_in = 1
				hollyhock.hollyhock_days_left_research = hollyhock.hollyhock_research_total_one / (spending_stand_in + hollyhock.hollyhock_research_fund)
			if (hollyhock.hollyhock_research_spending > 0):
				hollyhock.hollyhock_days_left_research = hollyhock.hollyhock_research_total_one / (hollyhock.hollyhock_research_spending + hollyhock.hollyhock_research_fund)
		if ((hollyhock.hollyhock_research_one_key == true) and (hollyhock.hollyhock_research_two_key == false)):
			research_goal_output.clear()
			research_goal_output.add_text("Genre Three -- Platformer")
			if (hollyhock.hollyhock_research_spending == 0):
				var spending_stand_in = 1
				hollyhock.hollyhock_days_left_research = hollyhock.hollyhock_research_total_two / (spending_stand_in + hollyhock.hollyhock_research_fund)
			if (hollyhock.hollyhock_research_spending > 0):
				hollyhock.hollyhock_days_left_research = hollyhock.hollyhock_research_total_two / (hollyhock.hollyhock_research_spending + hollyhock.hollyhock_research_fund)
		if ((hollyhock.hollyhock_research_one_key == true) and (hollyhock.hollyhock_research_two_key == true)):
			research_goal_output.clear()
			research_goal_output.add_text("All Genres Available")
			block = true
	days_left_output.clear()
	days_left_output.add_text(str(hollyhock.hollyhock_days_left_research))

func _on_research_lower_button_down():
	if (towns.town_select == "hollyhock"):
		if (block == false):
			if (hollyhock.hollyhock_research_spending > 1):
				hollyhock.hollyhock_research_spending = hollyhock.hollyhock_research_spending - 1
		if (block == true):
			pass

func _on_research_raise_button_down():
	if (towns.town_select == "hollyhock"):
		if (block == false):
			if (hollyhock.hollyhock_research_spending + 1 <= money.hollyhock_cash):
				hollyhock.hollyhock_research_spending = hollyhock.hollyhock_research_spending + 1
		if (block == true):
			pass

func _on_confirm_button_down():
	hollyhock.hollyhock_research_input_key = true
	if (towns.town_select == "hollyhock"):
		research_spending = int(get_node("daily_research_output_gray").get_text())
		money.hollyhock_expenses = money.hollyhock_expenses + research_spending
		if (hollyhock.hollyhock_research_one_key == false):
			if (hollyhock.hollyhock_research_spending > hollyhock.hollyhock_research_total_one):
				hollyhock.hollyhock_research_spending = hollyhock.hollyhock_research_total_one
			if ((hollyhock.hollyhock_research_one_key == true) and (hollyhock.hollyhock_research_two_key == false)):
				if (hollyhock.hollyhock_research_spending > hollyhock.hollyhock_research_total_two):
					hollyhock.hollyhock_research_spending = hollyhock.hollyhock_research_total_two
				if ((hollyhock.hollyhock_research_one_key == true) and (hollyhock.hollyhock_research_two_key == true)):
					hollyhock.hollyhock_research_spending = 0
