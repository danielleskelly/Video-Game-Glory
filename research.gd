extends Node2D

onready var research_fund_output = get_node("research_output")
onready var days_left_output = get_node("days_left_output")
onready var research_goal_output = get_node("research_goal_output")
onready var research_spending_output = get_node("research_spending_output")

var block = false

func _ready():
	research_spending_output.clear()
	if (towns.town_select == "hollyhock"):
		research_spending_output.set_text(str(hollyhock.hollyhock_research_spending))
	if (towns.town_select == "fiyork"):
		research_spending_output.set_text(str(fiyork.fiyork_research_spending))
	if (towns.town_select == "plansey"):
		research_spending_output.set_text(str(plansey.plansey_research_spending))
	if (towns.town_select == "untilly"):
		research_spending_output.set_text(str(untilly.untilly_research_spending))
	if (towns.town_select == "windrow"):
		research_spending_output.set_text(str(windrow.windrow_research_spending))
	if (towns.town_select == "banlon"):
		research_spending_output.set_text(str(banlon.banlon_research_spending))
	if (towns.town_select == "slatten"):
		research_spending_output.set_text(str(slatten.slatten_research_spending))
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
			elif (hollyhock.hollyhock_research_spending > 0):
				hollyhock.hollyhock_days_left_research = hollyhock.hollyhock_research_total_one / (hollyhock.hollyhock_research_spending + hollyhock.hollyhock_research_fund)
		elif ((hollyhock.hollyhock_genre_three_key == true) and (hollyhock.hollyhock_genre_two_key == false)):
			research_goal_output.clear()
			research_goal_output.add_text("Genre Three -- Platformer")
			if (hollyhock.hollyhock_research_spending == 0):
				var spending_stand_in = 1
				hollyhock.hollyhock_days_left_research = hollyhock.hollyhock_research_total_two / (spending_stand_in + hollyhock.hollyhock_research_fund)
			elif (hollyhock.hollyhock_research_spending > 0):
				hollyhock.hollyhock_days_left_research = hollyhock.hollyhock_research_total_two / (hollyhock.hollyhock_research_spending + hollyhock.hollyhock_research_fund)
		elif ((hollyhock.hollyhock_genre_two_key == true) and (hollyhock.hollyhock_genre_three_key == true)):
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
			elif (fiyork.fiyork_research_spending > 0):
				fiyork.fiyork_days_left_research = fiyork.fiyork_research_total_one / (fiyork.fiyork_research_spending + fiyork.fiyork_research_fund)
		elif ((fiyork.fiyork_genre_two_key == true) and (fiyork.fiyork_genre_three_key == false)):
			research_goal_output.clear()
			research_goal_output.add_text("Genre Three -- Casual")
			if (fiyork.fiyork_research_spending == 0):
				var spending_stand_in = 1
				fiyork.fiyork_days_left_research = fiyork.fiyork_research_total_two / (spending_stand_in + fiyork.fiyork_research_fund)
			elif (fiyork.fiyork_research_spending > 0):
				fiyork.fiyork_days_left_research = fiyork.fiyork_research_total_two / (fiyork.fiyork_research_spending + fiyork.fiyork_research_fund)
		elif ((fiyork.fiyork_genre_three_key == true) and (fiyork.fiyork_genre_two_key == true)):
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
			elif (plansey.plansey_research_spending > 0):
				plansey.plansey_days_left_research = plansey.plansey_research_total_one / (plansey.plansey_research_spending + plansey.plansey_research_fund)
		elif ((plansey.plansey_genre_two_key == true) and (plansey.plansey_genre_three_key == false)):
			research_goal_output.clear()
			research_goal_output.add_text("Genre Three -- Platformer")
			if (plansey.plansey_research_spending == 0):
				var spending_stand_in = 1
				plansey.plansey_days_left_research = plansey.plansey_research_total_two / (spending_stand_in + plansey.plansey_research_fund)
			elif (plansey.plansey_research_spending > 0):
				plansey.plansey_days_left_research = plansey.plansey_research_total_two / (plansey.plansey_research_spending + plansey.plansey_research_fund)
		elif ((plansey.plansey_genre_three_key == true) and (plansey.plansey_genre_two_key == true)):
			research_goal_output.clear()
			research_goal_output.add_text("All Genres Available")
			block = true
		days_left_output.clear()
		days_left_output.add_text(str(plansey.plansey_days_left_research))
	if (towns.town_select == "untilly"):
		research_fund_output.clear()
		research_fund_output.add_text(str(untilly.untilly_research_fund))
		if (untilly.untilly_genre_two_key == false):
			research_goal_output.clear()
			research_goal_output.add_text("Genre Two -- Shooter")
			if (untilly.untilly_research_spending == 0):
				var spending_stand_in = 1
				untilly.untilly_days_left_research = untilly.untilly_research_total_one / (spending_stand_in + untilly.untilly_research_fund)
			elif (untilly.untilly_research_spending > 0):
				untilly.untilly_days_left_research = untilly.untilly_research_total_one / (untilly.untilly_research_spending + untilly.untilly_research_fund)
		elif ((untilly.untilly_genre_two_key == true) and (untilly.untilly_genre_three_key == false)):
			research_goal_output.clear()
			research_goal_output.add_text("Genre Three -- Time Management")
			if (untilly.untilly_research_spending == 0):
				var spending_stand_in = 1
				untilly.untilly_days_left_research = untilly.untilly_research_total_two / (spending_stand_in + untilly.untilly_research_fund)
			elif (untilly.untilly_research_spending > 0):
				untilly.untilly_days_left_research = untilly.untilly_research_total_two / (untilly.untilly_research_spending + untilly.untilly_research_fund)
		elif ((untilly.untilly_genre_three_key == true) and (untilly.untilly_genre_two_key == true)):
			research_goal_output.clear()
			research_goal_output.add_text("All Genres Available")
			block = true
		days_left_output.clear()
		days_left_output.add_text(str(untilly.untilly_days_left_research))
	if (towns.town_select == "banlon"):
		research_fund_output.clear()
		research_fund_output.add_text(str(banlon.banlon_research_fund))
		if (banlon.banlon_genre_two_key == false):
			research_goal_output.clear()
			research_goal_output.add_text("Genre Two -- Shooter")
			if (banlon.banlon_research_spending == 0):
				var spending_stand_in = 1
				banlon.banlon_days_left_research = banlon.banlon_research_total_one / (spending_stand_in + banlon.banlon_research_fund)
			elif (banlon.banlon_research_spending > 0):
				banlon.banlon_days_left_research = banlon.banlon_research_total_one / (banlon.banlon_research_spending + banlon.banlon_research_fund)
		elif ((banlon.banlon_genre_two_key == true) and (banlon.banlon_genre_three_key == false)):
			research_goal_output.clear()
			research_goal_output.add_text("Genre Three -- Adventure")
			if (banlon.banlon_research_spending == 0):
				var spending_stand_in = 1
				banlon.banlon_days_left_research = banlon.banlon_research_total_two / (spending_stand_in + banlon.banlon_research_fund)
			elif (banlon.banlon_research_spending > 0):
				banlon.banlon_days_left_research = banlon.banlon_research_total_two / (banlon.banlon_research_spending + banlon.banlon_research_fund)
		elif ((banlon.banlon_genre_three_key == true) and (banlon.banlon_genre_two_key == true)):
			research_goal_output.clear()
			research_goal_output.add_text("All Genres Available")
			block = true
		days_left_output.clear()
		days_left_output.add_text(str(banlon.banlon_days_left_research))
	if (towns.town_select == "slatten"):
		research_fund_output.clear()
		research_fund_output.add_text(str(slatten.slatten_research_fund))
		if (slatten.slatten_genre_two_key == false):
			research_goal_output.clear()
			research_goal_output.add_text("Genre Two -- Casual")
			if (slatten.slatten_research_spending == 0):
				var spending_stand_in = 1
				slatten.slatten_days_left_research = slatten.slatten_research_total_one / (spending_stand_in + slatten.slatten_research_fund)
			elif (slatten.slatten_research_spending > 0):
				slatten.slatten_days_left_research = slatten.slatten_research_total_one / (slatten.slatten_research_spending + slatten.slatten_research_fund)
		elif ((slatten.slatten_genre_two_key == true) and (slatten.slatten_genre_three_key == false)):
			research_goal_output.clear()
			research_goal_output.add_text("Genre Three -- Nostalgic")
			if (slatten.slatten_research_spending == 0):
				var spending_stand_in = 1
				slatten.slatten_days_left_research = slatten.slatten_research_total_two / (spending_stand_in + slatten.slatten_research_fund)
			elif (slatten.slatten_research_spending > 0):
				slatten.slatten_days_left_research = slatten.slatten_research_total_two / (slatten.slatten_research_spending + slatten.slatten_research_fund)
		elif ((slatten.slatten_genre_three_key == true) and (slatten.slatten_genre_two_key == true)):
			research_goal_output.clear()
			research_goal_output.add_text("All Genres Available")
			block = true
		days_left_output.clear()
		days_left_output.add_text(str(slatten.slatten_days_left_research))

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
	if (towns.town_select == "untilly"):
		if (block == false):
			if (untilly.untilly_research_spending > 1):
				untilly.untilly_research_spending = untilly.untilly_research_spending - 1
				research_spending_output.clear()
				research_spending_output.set_text(str(untilly.untilly_research_spending))
		if (block == true):
			pass
	if (towns.town_select == "banlon"):
		if (block == false):
			if (banlon.banlon_research_spending > 1):
				banlon.banlon_research_spending = banlon.banlon_research_spending - 1
				research_spending_output.clear()
				research_spending_output.set_text(str(banlon.banlon_research_spending))
		if (block == true):
			pass
	if (towns.town_select == "slatten"):
		if (block == false):
			if (slatten.slatten_research_spending > 1):
				slatten.slatten_research_spending = slatten.slatten_research_spending - 1
				research_spending_output.clear()
				research_spending_output.set_text(str(slatten.slatten_research_spending))
		if (block == true):
			pass
	if (towns.town_select == "windrow"):
		if (block == false):
			if (windrow.windrow_research_spending > 1):
				windrow.windrow_research_spending = windrow.windrow_research_spending - 1
				research_spending_output.clear()
				research_spending_output.set_text(str(windrow.windrow_research_spending))
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
	if (towns.town_select == "untilly"):
		if (block == false):
			if (untilly.untilly_research_spending + 1 <= money.untilly_cash):
				untilly.untilly_research_spending = untilly.untilly_research_spending + 1
				research_spending_output.clear()
				research_spending_output.set_text(str(untilly.untilly_research_spending))
		if (block == true):
			pass
	if (towns.town_select == "windrow"):
		if (block == false):
			if (windrow.windrow_research_spending + 1 <= money.windrow_cash):
				windrow.windrow_research_spending = windrow.windrow_research_spending + 1
				research_spending_output.clear()
				research_spending_output.set_text(str(windrow.windrow_research_spending))
		if (block == true):
			pass
	if (towns.town_select == "banlon"):
		if (block == false):
			if (banlon.banlon_research_spending + 1 <= money.banlon_cash):
				banlon.banlon_research_spending = banlon.banlon_research_spending + 1
				research_spending_output.clear()
				research_spending_output.set_text(str(banlon.banlon_research_spending))
		if (block == true):
			pass
	if (towns.town_select == "slatten"):
		if (block == false):
			if (slatten.slatten_research_spending + 1 <= money.slatten_cash):
				slatten.slatten_research_spending = slatten.slatten_research_spending + 1
				research_spending_output.clear()
				research_spending_output.set_text(str(slatten.slatten_research_spending))
		if (block == true):
			pass

func _on_confirm_button_down():
	if (towns.town_select == "hollyhock"):
		var temp_spending = research_spending_output.get_text()
		if (hollyhock.hollyhock_genre_two_key == false):
			if (int(temp_spending) > hollyhock.hollyhock_research_total_one):
				temp_spending = hollyhock.hollyhock_research_total_one
			if (money.hollyhock_cash < int(temp_spending)):
				temp_spending = money.hollyhock_cash
			hollyhock.hollyhock_research_spending = int(temp_spending)
			research_spending_output.clear()
			research_spending_output.set_text(str(hollyhock.hollyhock_research_spending))
		elif ((hollyhock.hollyhock_genre_two_key == true) and (hollyhock.hollyhock_genre_three_key == false)):
			if (int(temp_spending) > hollyhock.hollyhock_research_total_two):
				temp_spending = hollyhock.hollyhock_research_total_two
			if (money.hollyhock_cash < int(temp_spending)):
				temp_spending = money.hollyhock_cash
			hollyhock.hollyhock_research_spending = int(temp_spending)
			research_spending_output.clear()
			research_spending_output.set_text(str(hollyhock.hollyhock_research_spending))
		elif ((hollyhock.hollyhock_genre_two_key == true) and (hollyhock.hollyhock_genre_three_key == true)):
			hollyhock.hollyhock_research_spending = 0
			research_spending_output.clear()
			research_spending_output.set_text(str(hollyhock.hollyhock_research_spending))
	if (towns.town_select == "fiyork"):
		var temp_spending = research_spending_output.get_text()
		if (fiyork.fiyork_genre_two_key == false):
			if (int(temp_spending) > fiyork.fiyork_research_total_one):
				temp_spending = fiyork.fiyork_research_total_one
			if (money.fiyork_cash < int(temp_spending)):
				temp_spending = money.fiyork_cash
			fiyork.fiyork_research_spending = int(temp_spending)
			research_spending_output.clear()
			research_spending_output.set_text(str(fiyork.fiyork_research_spending))
		elif ((fiyork.fiyork_genre_two_key == true) and (fiyork.fiyork_genre_three_key == false)):
			if (int(temp_spending) > fiyork.fiyork_research_total_two):
				temp_spending = fiyork.fiyork_research_total_two
			if (money.fiyork_cash < int(temp_spending)):
				temp_spending = money.fiyork_cash
			fiyork.fiyork_research_spending = int(temp_spending)
			research_spending_output.clear()
			research_spending_output.set_text(str(fiyork.fiyork_research_spending))
		elif ((fiyork.fiyork_genre_two_key == true) and (fiyork.fiyork_genre_three_key == true)):
			fiyork.fiyork_research_spending = 0
			research_spending_output.clear()
			research_spending_output.set_text(str(fiyork.fiyork_research_spending))
	if (towns.town_select == "plansey"):
		var temp_spending = research_spending_output.get_text()
		if (plansey.plansey_genre_two_key == false):
			if (int(temp_spending) > plansey.plansey_research_total_one):
				temp_spending = plansey.plansey_research_total_one
			if (money.plansey_cash < int(temp_spending)):
				temp_spending = money.plansey_cash
			plansey.plansey_research_spending = int(temp_spending)
			research_spending_output.clear()
			research_spending_output.set_text(str(plansey.plansey_research_spending))
		elif ((plansey.plansey_genre_two_key == true) and (plansey.plansey_genre_three_key == false)):
			if (int(temp_spending) > plansey.plansey_research_total_two):
				temp_spending = plansey.plansey_research_total_two
			if (money.plansey_cash < int(temp_spending)):
				temp_spending = money.plansey_cash
			plansey.plansey_research_spending = int(temp_spending)
			research_spending_output.clear()
			research_spending_output.set_text(str(plansey.plansey_research_spending))
		elif ((plansey.plansey_genre_two_key == true) and (plansey.plansey_genre_three_key == true)):
			plansey.plansey_research_spending = 0
			research_spending_output.clear()
			research_spending_output.set_text(str(plansey.plansey_research_spending))
	if (towns.town_select == "untilly"):
		var temp_spending = research_spending_output.get_text()
		if (untilly.untilly_genre_two_key == false):
			if (int(temp_spending) > untilly.untilly_research_total_one):
				temp_spending = untilly.untilly_research_total_one
			if (money.untilly_cash < int(temp_spending)):
				temp_spending = money.untilly_cash
			untilly.untilly_research_spending = int(temp_spending)
			research_spending_output.clear()
			research_spending_output.set_text(str(untilly.untilly_research_spending))
		elif ((untilly.untilly_genre_two_key == true) and (untilly.untilly_genre_three_key == false)):
			if (int(temp_spending) > untilly.untilly_research_total_two):
				temp_spending = untilly.untilly_research_total_two
			if (money.untilly_cash < int(temp_spending)):
				temp_spending = money.untilly_cash
			untilly.untilly_research_spending = int(temp_spending)
			research_spending_output.clear()
			research_spending_output.set_text(str(untilly.untilly_research_spending))
		elif ((untilly.untilly_genre_two_key == true) and (untilly.untilly_genre_three_key == true)):
			untilly.untilly_research_spending = 0
			research_spending_output.clear()
			research_spending_output.set_text(str(untilly.untilly_research_spending))
	if (towns.town_select == "windrow"):
		var temp_spending = research_spending_output.get_text()
		if (windrow.windrow_genre_two_key == false):
			if (int(temp_spending) > windrow.windrow_research_total_one):
				temp_spending = windrow.windrow_research_total_one
			if (money.windrow_cash < int(temp_spending)):
				temp_spending = money.windrow_cash
			windrow.windrow_research_spending = int(temp_spending)
			research_spending_output.clear()
			research_spending_output.set_text(str(windrow.windrow_research_spending))
		elif ((windrow.windrow_genre_two_key == true) and (windrow.windrow_genre_three_key == false)):
			if (int(temp_spending) > windrow.windrow_research_total_two):
				temp_spending = windrow.windrow_research_total_two
			if (money.windrow_cash < int(temp_spending)):
				temp_spending = money.windrow_cash
			windrow.windrow_research_spending = int(temp_spending)
			research_spending_output.clear()
			research_spending_output.set_text(str(windrow.windrow_research_spending))
		elif ((windrow.windrow_genre_two_key == true) and (windrow.windrow_genre_three_key == true)):
			windrow.windrow_research_spending = 0
			research_spending_output.clear()
			research_spending_output.set_text(str(windrow.windrow_research_spending))
	if (towns.town_select == "banlon"):
		var temp_spending = research_spending_output.get_text()
		if (banlon.banlon_genre_two_key == false):
			if (int(temp_spending) > banlon.banlon_research_total_one):
				temp_spending = banlon.banlon_research_total_one
			if (money.banlon_cash < int(temp_spending)):
				temp_spending = money.banlon_cash
			banlon.banlon_research_spending = int(temp_spending)
			research_spending_output.clear()
			research_spending_output.set_text(str(banlon.banlon_research_spending))
		elif ((banlon.banlon_genre_two_key == true) and (banlon.banlon_genre_three_key == false)):
			if (int(temp_spending) > banlon.banlon_research_total_two):
				temp_spending = banlon.banlon_research_total_two
			if (money.banlon_cash < int(temp_spending)):
				temp_spending = money.banlon_cash
			banlon.banlon_research_spending = int(temp_spending)
			research_spending_output.clear()
			research_spending_output.set_text(str(banlon.banlon_research_spending))
		elif ((banlon.banlon_genre_two_key == true) and (banlon.banlon_genre_three_key == true)):
			banlon.banlon_research_spending = 0
			research_spending_output.clear()
			research_spending_output.set_text(str(banlon.banlon_research_spending))
	if (towns.town_select == "slatten"):
		var temp_spending = research_spending_output.get_text()
		if (slatten.slatten_genre_two_key == false):
			if (int(temp_spending) > slatten.slatten_research_total_one):
				temp_spending = slatten.slatten_research_total_one
			if (money.slatten_cash < int(temp_spending)):
				temp_spending = money.slatten_cash
			slatten.slatten_research_spending = int(temp_spending)
			research_spending_output.clear()
			research_spending_output.set_text(str(slatten.slatten_research_spending))
		elif ((slatten.slatten_genre_two_key == true) and (slatten.slatten_genre_three_key == false)):
			if (int(temp_spending) > slatten.slatten_research_total_two):
				temp_spending = slatten.slatten_research_total_two
			if (money.slatten_cash < int(temp_spending)):
				temp_spending = money.slatten_cash
			slatten.slatten_research_spending = int(temp_spending)
			research_spending_output.clear()
			research_spending_output.set_text(str(slatten.slatten_research_spending))
		elif ((slatten.slatten_genre_two_key == true) and (slatten.slatten_genre_three_key == true)):
			slatten.slatten_research_spending = 0
			research_spending_output.clear()
			research_spending_output.set_text(str(slatten.slatten_research_spending))