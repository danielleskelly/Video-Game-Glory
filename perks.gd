extends Node

var perk_num
var perk_goal
var perk
var success = 000
var perk_final_count = 0



func _ready():
	pass

func perks():
	randomize()
	if (towns.town_select == "fiyork"):
		var perk_choices = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 7, 8, 9, 10]
		perk_num = perk_choices[randi() % perk_choices.size()]
	else:
		var perk_choices = [1, 2, 3, 4, 5, 6]
		perk_num = perk_choices[randi() % perk_choices.size()]
	var perk_choices = [1, 2, 3, 4, 5, 6]
	perk_num = perk_choices[randi() % perk_choices.size()]
	if (perk_num == 1):
		perk = "Five of each supply!"
		if (towns.town_select == "fiyork"):
			perk_goal = 10
		else:
			perk_goal = 20
	if (perk_num == 2):
		perk = "Free 10% player satisfaction!"
		if (towns.town_select == "fiyork"):
			perk_goal = 30
		else:
			perk_goal = 60
	if (perk_num == 3):
		perk = "$50"
		if (towns.town_select == "fiyork"):
			perk_goal = 25
		else:
			perk_goal = 50
	if (perk_num == 4):
		perk = "Ten of each supply!"
		if (towns.town_select == "fiyork"):
			perk_goal = 20
		else:
			perk_goal = 40
	if (perk_num == 5):
		perk = "20 of each supply!"
		if (towns.town_select == "fiyork"):
			perk_goal = 40
		else:
			perk_goal = 80
	if (perk_num == 6):
		perk = "$25"
		if (towns.town_select == "fiyork"):
			perk_goal = 10
		else:
			perk_goal = 25
	if (perk_num == 7):
		perk = "Restore sabatoged arcade upgrades."
		perk_goal = 25
	if (perk_num == 8):
		perk = "Restore sabatoged entertainment upgrades."
		perk_goal = 25
	if (perk_num == 9):
		perk = "Restore sabatoged storefront upgrades."
		perk_goal = 25
	if (perk_num == 10):
		perk = "Restore sabatoged advertising."
		perk_goal = 25