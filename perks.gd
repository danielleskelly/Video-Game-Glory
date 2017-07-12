extends Node

var perk_num
var perk_goal
var perk
var success = 0

func _ready():
	pass

func perks():
	randomize()
	var perk_choices = [1, 2, 3, 4, 5, 6]
	perk_num = perk_choices[randi() % perk_choices.size()]
	if (perk_num == 1):
		perk = "Five of each supply!"
		perk_goal = 5
	if (perk_num == 2):
		perk = "Free 10% player satisfaction!"
		perk_goal = 20
	if (perk_num == 3):
		perk = "$50"
		perk_goal = 10
	if (perk_num == 4):
		perk = "Ten of each supply!"
		perk_goal = 10
	if (perk_num == 5):
		perk = "20 of each supply!"
		perk_goal = 20
	if (perk_num == 6):
		perk = "$25"
		perk_goal = 5