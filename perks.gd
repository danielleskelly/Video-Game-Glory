extends Node

var perk_num
var perk_goal
var perk
var success = 000
var perk_final_count = 0
var fiyork_array = []
var windrow_array
var slatten_array



func _ready():
	pass

func perks():
	success = 000
	if (towns.town_select == "fiyork"):
		if (fiyork.fiyork_arcade_sabatoge_key == true):
			fiyork_array.append(7)
			fiyork_array.append(7)
		if (fiyork.fiyork_entertainment_sabatoge_key == true):
			fiyork_array.append(8)
			fiyork_array.append(8)
		if (fiyork.fiyork_storefront_sabatoge_key == true):
			fiyork_array.append(9)
			fiyork_array.append(9)
		if (fiyork.fiyork_advertising_sabatoge_key == true):
			fiyork_array.append(10)
			fiyork_array.append(10)
		elif (fiyork.fiyork_arcade_sabatoge_key == false) and (fiyork.fiyork_entertainment_sabatoge_key == false) and (fiyork.fiyork_storefront_sabatoge_key == false) and (fiyork.fiyork_advertising_sabatoge_key == false):
			fiyork_array = [1,2,3,4,5,6]
		randomize()
		perk_num = fiyork_array[randi() % fiyork_array.size()]
	elif (towns.town_select == "windrow"):
		windrow_array = [1,2,3,4,5,6]
		if (windrow.windrow_arcade_sabatoge_key == true):
			windrow_array.append(7)
			windrow_array.append(7)
		if (windrow.windrow_entertainment_sabatoge_key == true):
			windrow_array.append(8)
			windrow_array.append(8)
		if (windrow.windrow_storefront_sabatoge_key == true):
			windrow_array.append(9)
			windrow_array.append(9)
		if (windrow.windrow_advertising_sabatoge_key == true):
			windrow_array.append(10)
			windrow_array.append(10)
		randomize()
		perk_num = windrow_array[randi() % windrow_array.size()]
	elif (towns.town_select == "slatten"):
		slatten_array = [1,2,3,4,5,6]
		if (slatten.slatten_arcade_sabatoge_key == true):
			slatten_array.append(7)
			slatten_array.append(7)
		if (slatten.slatten_entertainment_sabatoge_key == true):
			slatten_array.append(8)
			slatten_array.append(8)
		if (slatten.slatten_storefront_sabatoge_key == true):
			slatten_array.append(9)
			slatten_array.append(9)
		if (slatten.slatten_advertising_sabatoge_key == true):
			slatten_array.append(10)
			slatten_array.append(10)
		randomize()
		perk_num = slatten_array[randi() % slatten_array.size()]
	else:
		randomize()
		var perk_choices = [1, 2, 3, 4, 5, 6]
		perk_num = perk_choices[randi() % perk_choices.size()]
	perk_assign()
	
func perk_assign():
	if (perk_num == 1):
		perk = "Five of each supply!"
		perk_goal = 20
	elif (perk_num == 2):
		perk = "Free 10% player satisfaction!"
		perk_goal = 60
	elif (perk_num == 3):
		perk = "$50"
		perk_goal = 50
	elif (perk_num == 4):
		perk = "Ten of each supply!"
		perk_goal = 40
	elif (perk_num == 5):
		perk = "20 of each supply!"
		perk_goal = 80
	elif (perk_num == 6):
		perk = "$25"
		perk_goal = 50
	elif (perk_num == 7):
		perk = "Restore sabatoged arcade upgrades."
		perk_goal = 50
	elif (perk_num == 8):
		perk = "Restore sabatoged entertainment upgrades."
		perk_goal = 50
	elif (perk_num == 9):
		perk = "Restore sabatoged storefront upgrades."
		perk_goal = 50
	elif (perk_num == 10):
		perk = "Restore sabatoged advertising."
		perk_goal = 50