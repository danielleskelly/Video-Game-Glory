extends Node2D

onready var research_fund_output = get_node("research_output")
onready var days_left_output = get_node("days_left_output")
onready var research_goal_output = get_node("research_goal_output")
onready var research_spending_output = get_node("research_spending_output")

var block = false
var research_spending

func _ready():
	research_spending_output.clear()
	research_spending_output.set_text(str(hollyhock.hollyhock_research_spending))
	set_process(true)

func _process(delta):
	if (towns.town_select == "hollyhock"):
		research_fund_output.clear()
		research_fund_output.add_text(str(hollyhock.hollyhock_research_fund))
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
	if (towns.town_select == "hollyhock"):
		var temp_spending = research_spending_output.get_text()
		if (hollyhock.hollyhock_research_one_key == false):
			if (int(temp_spending) > hollyhock.hollyhock_research_total_one):
				temp_spending = hollyhock.hollyhock_research_total_one
			if (money.hollyhock_cash < (money.hollyhock_expenses + int(temp_spending))):
				temp_spending = money.hollyhock_cash
			hollyhock.hollyhock_research_spending = int(temp_spending)
			research_spending_output.clear()
			research_spending_output.set_text(str(hollyhock.hollyhock_research_spending))
			if ((hollyhock.hollyhock_research_one_key == true) and (hollyhock.hollyhock_research_two_key == false)):
				if (int(temp_spending) > hollyhock.hollyhock_research_total_two):
					temp_spending = hollyhock.hollyhock_research_total_two
				if (money.hollyhock_cash < (money.hollyhock_expenses + int(temp_spending))):
					temp_spending = money.hollyhock_cash
				hollyhock.hollyhock_research_spending = int(temp_spending)
				research_spending_output.clear()
				research_spending_output.set_text(str(hollyhock.hollyhock_research_spending))
			if ((hollyhock.hollyhock_research_one_key == true) and (hollyhock.hollyhock_research_two_key == true)):
				hollyhock.hollyhock_research_spending = 0
				research_spending_output.clear()
				research_spending_output.set_text(str(hollyhock.hollyhock_research_spending))

func _on_research_spending_output_focus_enter():
	print("focus enter true")

func _on_research_spending_output_input_event( ev ):
	#print("input_event true")
	pass

func _on_research_spending_output_mouse_enter():
	#print("mouse enter true")
	pass
