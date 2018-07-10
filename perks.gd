extends Node

var perk_num
var perk_goal
var perk
var success = 000
var perk_final_count = 0
var fiyork_array = []
var windrow_array = []
var slatten_array = []


func perks():
	success = 000
	if (global.town_select == "fiyork"):
		if (global.arcade_sabotage_key == true):
			fiyork_array.append(7)
			fiyork_array.append(7)
		elif (global.arcade_sabotage_key == false):
			pass
		if (global.entertainment_sabotage_key == true):
			fiyork_array.append(8)
			fiyork_array.append(8)
		elif (global.entertainment_sabotage_key == false):
			pass
		if (global.storefront_sabotage_key == true):
			fiyork_array.append(9)
			fiyork_array.append(9)
		elif (global.storefront_sabotage_key == false):
			pass
		if (global.arcade_sabotage_key == false) and (global.entertainment_sabotage_key == false) and (global.storefront_sabotage_key == false):
			fiyork_array = [1,2,3,4,5,6]
		randomize()
		perk_num = fiyork_array[randi() % fiyork_array.size()]
	elif (global.town_select == "windrow"):
		if (global.arcade_sabotage_key == true):
			windrow_array.append(7)
			windrow_array.append(7)
		if (global.entertainment_sabotage_key == true):
			windrow_array.append(8)
			windrow_array.append(8)
		if (global.storefront_sabotage_key == true):
			windrow_array.append(9)
			windrow_array.append(9)
		elif (global.arcade_sabotage_key == false) and (global.entertainment_sabotage_key == false) and (global.storefront_sabotage_key == false):
			windrow_array = [1,2,3,4,5,6]
		randomize()
		perk_num = windrow_array[randi() % windrow_array.size()]
	elif (global.town_select == "slatten"):
		if (global.arcade_sabotage_key == true):
			slatten_array.append(7)
			slatten_array.append(7)
		if (global.entertainment_sabotage_key == true):
			slatten_array.append(8)
			slatten_array.append(8)
		if (global.storefront_sabotage_key == true):
			slatten_array.append(9)
			slatten_array.append(9)
		elif (global.arcade_sabotage_key == false) and (global.entertainment_sabotage_key == false) and (global.storefront_sabotage_key == false):
			slatten_array = [1,2,3,4,5,6]
		randomize()
		perk_num = slatten_array[randi() % slatten_array.size()]
	else:
		randomize()
		var array = [1,2,3,4,5,6]
		perk_num = array[randi() % array.size()]
	perk_assign()
	
	
func perk_assign():
	if (perk_num == 1):
		perk = "Random Free Upgrade"
		perk_goal = 60
	elif (perk_num == 2):
		perk = "Free 10% player satisfaction!"
		perk_goal = 60
	elif (perk_num == 3):
		perk = "$50"
		perk_goal = 50
	elif (perk_num == 4):
		perk = "$50 Off Any Loans"
		perk_goal = 40
	elif (perk_num == 5):
		perk = "$100"
		perk_goal = 80
	elif (perk_num == 6):
		perk = "$25"
		perk_goal = 25
	elif (perk_num == 7):
		perk = "Restore sabotaged arcade upgrades."
		perk_goal = 40
	elif (perk_num == 8):
		perk = "Restore sabotaged entertainment upgrades."
		perk_goal = 40
	elif (perk_num == 9):
		perk = "Restore sabotaged storefront upgrades."
		perk_goal = 40
		
func perk_check():
	if int(perks.success) > int(rewards_globals.points_in_one_minigame):
		rewards_globals.points_in_one_minigame = int(perks.success)
		rewards_globals.million_total_minigame_points = int(perks.success) + int(rewards_globals.million_total_minigame_points)
	if (int(perks.perk_goal) <= int(perks.success)):
			if (perks.perk_num == 1):
				perk_one_fulfill()
			elif (perks.perk_num == 2):
				arcade_day.playershare = int(arcade_day.playershare) + .1
			elif (perks.perk_num == 3):
				global.cash += 50
			elif (perks.perk_num == 4):
				global.current_loan -= 50
			elif (perks.perk_num == 5):
				global.cash += 100
			elif (perks.perk_num == 6):
				global.cash += 25
			elif (perks.perk_num == 7):
				global.arcade_sabotage_key = false
			elif (perks.perk_num == 8):
				global.entertainment_sabotage_key = false
			elif (perks.perk_num == 9):
				global.storefront_sabotage_key = false

				
func perk_one_fulfill():
	if global.arcade_good_key == false:
		global.arcade_good_key = true
	elif global.entertainment_good_key == false:
		global.arcade_good_key = true
	elif global.storefront_good_key == false:
		global.storefront_good_key = true
	elif global.arcade_great_key == false:
		global.arcade_great_key = true
	elif global.storefront_great_key == false:
		global.storefront_great_key = true
	elif global.entertainment_great_key == false:
		global.entertainment_great_key = true
	elif global.arcade_best_key == false:
		global.arcade_best_key = true
	elif global.entertainment_best_key == false:
		global.entertainment_best_key = true
	elif global.storefront_best_key == false:
		global.storefront_best_key = true