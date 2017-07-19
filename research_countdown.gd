extends Node

var genre_discovery = false

func _ready():
	# Called every time the node is added to the scene.
	# Initialization here
	pass

func research_counting():
	if (towns.town_select == "hollyhock"):
		if (hollyhock.hollyhock_days_left_research - 1 > 0):
			hollyhock.hollyhock_days_left_research = hollyhock.hollyhock_days_left_research - 1
			hollyhock.hollyhock_research_fund = hollyhock.hollyhock_research_fund + hollyhock.hollyhock_research_spending
			genre_discovery = false
		if (hollyhock.hollyhock_days_left_research - 1 == 0):
			if (hollyhock.hollyhock_genre_two_key == false):
				hollyhock.hollyhock_genre_two_key = true
				hollyhock.hollyhock_research_fund = 0
				hollyhock.hollyhock_research_spending = 0
				genre_discovery = true
		if ((hollyhock.hollyhock_genre_two_key == true) and (hollyhock.hollyhock_genre_three_key == false)):
				hollyhock.hollyhock_genre_three_key = true
				hollyhock.hollyhock_research_fund = 0
				hollyhock.hollyhock_research_spending = 0
	if (towns.town_select == "fiyork"):
		if (fiyork.fiyork_days_left_research - 1 > 0):
			fiyork.fiyork_days_left_research = fiyork.fiyork_days_left_research - 1
			fiyork.fiyork_research_fund = fiyork.fiyork_research_fund + fiyork.fiyork_research_spending
			genre_discovery = false
		if (fiyork.fiyork_days_left_research - 1 == 0):
			if (fiyork.fiyork_genre_two_key == false):
				fiyork.fiyork_genre_two_key = true
				fiyork.fiyork_research_fund = 0
				fiyork.fiyork_research_spending = 0
				genre_discovery = true
		if ((fiyork.fiyork_genre_two_key == true) and (fiyork.fiyork_genre_three_key == false)):
				fiyork.fiyork_genre_three_key = true
				fiyork.fiyork_research_fund = 0
				fiyork.fiyork_research_spending = 0
	if (towns.town_select == "untilly"):
		if (untilly.untilly_days_left_research - 1 > 0):
			untilly.untilly_days_left_research = untilly.untilly_days_left_research - 1
			untilly.untilly_research_fund = untilly.untilly_research_fund + untilly.untilly_research_spending
			genre_discovery = false
		if (untilly.untilly_days_left_research - 1 == 0):
			if (untilly.untilly_genre_two_key == false):
				untilly.untilly_genre_two_key = true
				untilly.untilly_research_fund = 0
				untilly.untilly_research_spending = 0
				genre_discovery = true
		if ((untilly.untilly_genre_two_key == true) and (untilly.untilly_genre_three_key == false)):
				untilly.untilly_genre_three_key = true
				untilly.untilly_research_fund = 0
				untilly.untilly_research_spending = 0
	if (towns.town_select == "plansey"):
		if (plansey.plansey_days_left_research - 1 > 0):
			plansey.plansey_days_left_research = plansey.plansey_days_left_research - 1
			plansey.plansey_research_fund = plansey.plansey_research_fund + plansey.plansey_research_spending
			genre_discovery = false
		if (plansey.plansey_days_left_research - 1 == 0):
			if (plansey.plansey_genre_two_key == false):
				plansey.plansey_genre_two_key = true
				plansey.plansey_research_fund = 0
				plansey.plansey_research_spending = 0
				genre_discovery = true
		if ((plansey.plansey_genre_two_key == true) and (plansey.plansey_genre_three_key == false)):
				plansey.plansey_genre_three_key = true
				plansey.plansey_research_fund = 0
				plansey.plansey_research_spending = 0
	if (towns.town_select == "windrow"):
		if (windrow.windrow_days_left_research - 1 > 0):
			windrow.windrow_days_left_research = windrow.windrow_days_left_research - 1
			windrow.windrow_research_fund = windrow.windrow_research_fund + windrow.windrow_research_spending
			genre_discovery = false
		if (windrow.windrow_days_left_research - 1 == 0):
			if (windrow.windrow_genre_two_key == false):
				windrow.windrow_genre_two_key = true
				windrow.windrow_research_fund = 0
				windrow.windrow_research_spending = 0
				genre_discovery = true
		if ((windrow.windrow_genre_two_key == true) and (windrow.windrow_genre_three_key == false)):
				windrow.windrow_genre_three_key = true
				windrow.windrow_research_fund = 0
				windrow.windrow_research_spending = 0
	if (towns.town_select == "banlon"):
		if (banlon.banlon_days_left_research - 1 > 0):
			banlon.banlon_days_left_research = banlon.banlon_days_left_research - 1
			banlon.banlon_research_fund = banlon.banlon_research_fund + banlon.banlon_research_spending
			genre_discovery = false
		if (banlon.banlon_days_left_research - 1 == 0):
			if (banlon.banlon_genre_two_key == false):
				banlon.banlon_genre_two_key = true
				banlon.banlon_research_fund = 0
				banlon.banlon_research_spending = 0
				genre_discovery = true
		if ((banlon.banlon_genre_two_key == true) and (banlon.banlon_genre_three_key == false)):
				banlon.banlon_genre_three_key = true
				banlon.banlon_research_fund = 0
				banlon.banlon_research_spending = 0
	if (towns.town_select == "slatten"):
		if (slatten.slatten_days_left_research - 1 > 0):
			slatten.slatten_days_left_research = slatten.slatten_days_left_research - 1
			slatten.slatten_research_fund = slatten.slatten_research_fund + slatten.slatten_research_spending
			genre_discovery = false
		if (slatten.slatten_days_left_research - 1 == 0):
			if (slatten.slatten_genre_two_key == false):
				slatten.slatten_genre_two_key = true
				slatten.slatten_research_fund = 0
				slatten.slatten_research_spending = 0
				genre_discovery = true
		if ((slatten.slatten_genre_two_key == true) and (slatten.slatten_genre_three_key == false)):
				slatten.slatten_genre_three_key = true
				slatten.slatten_research_fund = 0
				slatten.slatten_research_spending = 0