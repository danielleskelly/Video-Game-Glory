extends Node2D

onready var research_fund_output = get_node("research_output")
onready var days_left_output = get_node("days_left_output")
onready var research_goal_output = get_node("research_goal_output")
onready var research_spending_output = get_node("research_spending_output")

var block = false
var research_spending

func _ready():
	research_spending_output.clear()
	if (towns.town_select == "hollyhock"):
		research_spending_output.set_text(str(hollyhock.hollyhock_research_spending))
	if (towns.town_select == "fiyork"):
		research_spending_output.set_text(str(fiyork.fiyork_research_spending))
	if (towns.town_select == "plansey"):
		research_spending_output.set_text(str(plansey.plansey_research_spending))
	set_process(true)

func _process(delta):
	if (towns.town_select == "hollyhock"):
		research_fund_output.clear()
		research_fund_output.add_text(str(hollyhock.hollyhock_research_fund))
		if (hollyhock.hollyhock_genre_two_key == false):
			research_goal_output.clear()
			research_goal_output.add_text("Genre Two -- Classic")
			if (hollyhock.hollyhock_research_spending == 0):
				var spending_stand_in = 1
				hollyhock.hollyhock_days_left_research = hollyhock.hollyhock_research_total_one / (spending_stand_in + hollyhock.hollyhock_research_fund)
			if (hollyhock.hollyhock_research_spending > 0):
				hollyhock.hollyhock_days_left_research = hollyhock.hollyhock_research_total_one / (hollyhock.hollyhock_research_spending + hollyhock.hollyhock_research_fund)
		if ((hollyhock.hollyhock_genre_three_key == true) and (hollyhock.hollyhock_genre_two_key == false)):
			research_goal_output.clear()
			research_goal_output.add_text("Genre Three -- Platformer")
			if (hollyhock.hollyhock_research_spending == 0):
				var spending_stand_in = 1
				hollyhock.hollyhock_days_left_research = hollyhock.hollyhock_research_total_two / (spending_stand_in + hollyhock.hollyhock_research_fund)
			if (hollyhock.hollyhock_research_spending > 0):
				hollyhock.hollyhock_days_left_research = hollyhock.hollyhock_research_total_two / (hollyhock.hollyhock_research_spending + hollyhock.hollyhock_research_fund)
		if ((hollyhock.hollyhock_genre_two_key == true) and (hollyhock.hollyhock_genre_three_key == true)):
			research_goal_output.clear()
			research_goal_output.add_text("All Genres Available")
			block = true
		days_left_output.clear()
		days_left_output.add_text(str(hollyhock.hollyhock_days_left_research))
	if (towns.town_select == "fiyork"):
		research_fund_output.clear()
		research_fund_output.add_text(str(fiyork.fiyork_research_fund))
		if (fiyork.fiyork_genre_two_key == false):
			research_goal_output.clear()
			research_goal_output.add_text("Genre Two -- Adventure")
			if (fiyork.fiyork_research_spending == 0):
				var spending_stand_in = 1
				fiyork.fiyork_days_left_research = fiyork.fiyork_research_total_one / (spending_stand_in + fiyork.fiyork_research_fund)
			if (fiyork.fiyork_research_spending > 0):
				fiyork.fiyork_days_left_research = fiyork.fiyork_research_total_one / (fiyork.fiyork_research_spending + fiyork.fiyork_research_fund)
		if ((fiyork.fiyork_genre_two_key == true) and (fiyork.fiyork_genre_three_key == false)):
			research_goal_output.clear()
			research_goal_output.add_text("Genre Three -- Casual")
			if (fiyork.fiyork_research_spending == 0):
				var spending_stand_in = 1
				fiyork.fiyork_days_left_research = fiyork.fiyork_research_total_two / (spending_stand_in + fiyork.fiyork_research_fund)
			if (fiyork.fiyork_research_spending > 0):
				fiyork.fiyork_days_left_research = fiyork.fiyork_research_total_two / (fiyork.fiyork_research_spending + fiyork.fiyork_research_fund)
		if ((fiyork.fiyork_genre_three_key == true) and (fiyork.fiyork_genre_two_key == true)):
			research_goal_output.clear()
			research_goal_output.add_text("All Genres Available")
			block = true
		days_left_output.clear()
		days_left_output.add_text(str(fiyork.fiyork_days_left_research))
	if (towns.town_select == "plansey"):
		research_fund_output.clear()
		research_fund_output.add_text(str(plansey.plansey_research_fund))
		if (plansey.plansey_genre_two_key == false):
			research_goal_output.clear()
			research_goal_output.add_text("Genre Two -- Strategy")
			if (plansey.plansey_research_spending == 0):
				var spending_stand_in = 1
				plansey.plansey_days_left_research = plansey.plansey_research_total_one / (spending_stand_in + plansey.plansey_research_fund)
			if (plansey.plansey_research_spending > 0):
				plansey.plansey_days_left_research = plansey.plansey_research_total_one / (plansey.plansey_research_spending + plansey.plansey_research_fund)
		if ((plansey.plansey_genre_two_key == true) and (plansey.plansey_genre_three_key == false)):
			research_goal_output.clear()
			research_goal_output.add_text("Genre Three -- Platformer")
			if (plansey.plansey_research_spending == 0):
				var spending_stand_in = 1
				plansey.plansey_days_left_research = plansey.plansey_research_total_two / (spending_stand_in + plansey.plansey_research_fund)
			if (plansey.plansey_research_spending > 0):
				plansey.plansey_days_left_research = plansey.plansey_research_total_two / (plansey.plansey_research_spending + plansey.plansey_research_fund)
		if ((plansey.plansey_genre_three_key == true) and (plansey.plansey_genre_two_key == true)):
			research_goal_output.clear()
			research_goal_output.add_text("All Genres Available")
			block = true
		days_left_output.clear()
		days_left_output.add_text(str(plansey.plansey_days_left_research))

func _on_research_lower_button_down():
	if (towns.town_select == "hollyhock"):
		if (block == false):
			if (hollyhock.hollyhock_research_spending > 1):
				hollyhock.hollyhock_research_spending = hollyhock.hollyhock_research_spending - 1
				research_spending_output.clear()
				research_spending_output.set_text(str(hollyhock.hollyhock_research_spending))
		if (block == true):
			pass
	if (towns.town_select == "fiyork"):
		if (block == false):
			if (fiyork.fiyork_research_spending > 1):
				fiyork.fiyork_research_spending = fiyork.fiyork_research_spending - 1
				research_spending_output.clear()
				research_spending_output.set_text(str(fiyork.fiyork_research_spending))
		if (block == true):
			pass
	if (towns.town_select == "plansey"):
		if (block == false):
			if (plansey.plansey_research_spending > 1):
				plansey.plansey_research_spending = plansey.plansey_research_spending - 1
				research_spending_output.clear()
				research_spending_output.set_text(str(plansey.plansey_research_spending))
		if (block == true):
			pass

func _on_research_raise_button_down():
	if (towns.town_select == "hollyhock"):
		if (block == false):
			if (hollyhock.hollyhock_research_spending + 1 <= money.hollyhock_cash):
				hollyhock.hollyhock_research_spending = hollyhock.hollyhock_research_spending + 1
				research_spending_output.clear()
				research_spending_output.set_text(str(hollyhock.hollyhock_research_spending))
		if (block == true):
			pass
	if (towns.town_select == "fiyork"):
		if (block == false):
			if (fiyork.fiyork_research_spending + 1 <= money.fiyork_cash):
				fiyork.fiyork_research_spending = fiyork.fiyork_research_spending + 1
				research_spending_output.clear()
				research_spending_output.set_text(str(fiyork.fiyork_research_spending))
		if (block == true):
			pass
	if (towns.town_select == "plansey"):
		if (block == false):
			if (plansey.plansey_research_spending + 1 <= money.plansey_cash):
				plansey.plansey_research_spending = plansey.plansey_research_spending + 1
				research_spending_output.clear()
				research_spending_output.set_text(str(plansey.plansey_research_spending))
		if (block == true):
			pass

func _on_confirm_button_down():
	if (towns.town_select == "hollyhock"):
		var temp_spending = research_spending_output.get_text()
		if (hollyhock.hollyhock_research_one_key == false):
			if (int(temp_spending) > hollyhock.hollyhock_research_total_one):
				temp_spending = hollyhock.hollyhock_research_total_one
			if (money.hollyhock_cash < int(temp_spending)):
				temp_spending = money.hollyhock_cash
			hollyhock.hollyhock_research_spending = int(temp_spending)
			research_spending_output.clear()
			research_spending_output.set_text(str(hollyhock.hollyhock_research_spending))
		elif ((hollyhock.hollyhock_research_one_key == true) and (hollyhock.hollyhock_research_two_key == false)):
			if (int(temp_spending) > hollyhock.hollyhock_research_total_two):
				temp_spending = hollyhock.hollyhock_research_total_two
			if (money.hollyhock_cash < int(temp_spending)):
				temp_spending = money.hollyhock_cash
			hollyhock.hollyhock_research_spending = int(temp_spending)
			research_spending_output.clear()
			research_spending_output.set_text(str(hollyhock.hollyhock_research_spending))
		elif ((hollyhock.hollyhock_research_one_key == true) and (hollyhock.hollyhock_research_two_key == true)):
			hollyhock.hollyhock_research_spending = 0
			research_spending_output.clear()
			research_spending_output.set_text(str(hollyhock.hollyhock_research_spending))
	if (towns.town_select == "fiyork"):
		var temp_spending = research_spending_output.get_text()
		if (fiyork.fiyork_research_one_key == false):
			if (int(temp_spending) > fiyork.fiyork_research_total_one):
				temp_spending = fiyork.fiyork_research_total_one
			if (money.fiyork_cash < int(temp_spending)):
				temp_spending = money.fiyork_cash
			fiyork.fiyork_research_spending = int(temp_spending)
			research_spending_output.clear()
			research_spending_output.set_text(str(fiyork.fiyork_research_spending))
		elif ((fiyork.fiyork_research_one_key == true) and (fiyork.fiyork_research_two_key == false)):
			if (int(temp_spending) > fiyork.fiyork_research_total_two):
				temp_spending = fiyork.fiyork_research_total_two
			if (money.fiyork_cash < int(temp_spending)):
				temp_spending = money.fiyork_cash
			fiyork.fiyork_research_spending = int(temp_spending)
			research_spending_output.clear()
			research_spending_output.set_text(str(fiyork.fiyork_research_spending))
		elif ((fiyork.fiyork_research_one_key == true) and (fiyork.fiyork_research_two_key == true)):
			fiyork.fiyork_research_spending = 0
			research_spending_output.clear()
			research_spending_output.set_text(str(fiyork.fiyork_research_spending))
	if (towns.town_select == "plansey"):
		var temp_spending = research_spending_output.get_text()
		if (plansey.plansey_research_one_key == false):
			if (int(temp_spending) > plansey.plansey_research_total_one):
				temp_spending = plansey.plansey_research_total_one
			if (money.plansey_cash < int(temp_spending)):
				temp_spending = money.plansey_cash
			plansey.plansey_research_spending = int(temp_spending)
			research_spending_output.clear()
			research_spending_output.set_text(str(plansey.plansey_research_spending))
		elif ((plansey.plansey_research_one_key == true) and (plansey.plansey_research_two_key == false)):
			if (int(temp_spending) > plansey.plansey_research_total_two):
				temp_spending = plansey.plansey_research_total_two
			if (money.plansey_cash < int(temp_spending)):
				temp_spending = money.plansey_cash
			plansey.plansey_research_spending = int(temp_spending)
			research_spending_output.clear()
			research_spending_output.set_text(str(plansey.plansey_research_spending))
		elif ((plansey.plansey_research_one_key == true) and (plansey.plansey_research_two_key == true)):
			plansey.plansey_research_spending = 0
			research_spending_output.clear()
			research_spending_output.set_text(str(plansey.plansey_research_spending))
