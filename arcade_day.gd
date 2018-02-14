extends Node

var town_population = 300
var playershare = .1

var playershare_effect
var player_reach
var reach_in_playershare

var storefront_choice
var wait_choice

var arcade_price

func business_day():
	global.cash -= global.overhead
	if global.genre_three_key == true:
		player_reach = 1
	elif global.genre_three_key == false and global.genre_two_key == true:
		player_reach = .5
	elif global.genre_three_key == false and global.genre_two_key == false:
		player_reach = .1
	
	arcade_price = 20 * player_reach
	playershare_effect = town_population * playershare
	reach_in_playershare = playershare_effect * player_reach
	for x in range(0,reach_in_playershare + 1):
		storefront_check()
		if storefront_choice == true:
			wait_check()
			if wait_choice == true:
				global.income += arcade_price
				global.cash += arcade_price
				global.sales_made += 1
			else:
				global.sales_lost += 1
				global.waited_loss += 1
		else:
			global.sales_lost += 1
			global.waited_loss += 1
	global.price_loss = int(playershare_effect) - int(reach_in_playershare)
	global.sales_lost += int(playershare_effect) - int(reach_in_playershare)
	print(playershare_effect)
	print(reach_in_playershare)
	daily_marketshare_adjustment()
	
func daily_marketshare_adjustment():
	if (playershare >= 1):
		pass
	else:
		if ((global.sales_made > global.sales_lost) and (global.cash > 100)):
			playershare = playershare + .1
		elif ((global.sales_made > global.sales_lost) or (global.cash > 100)):
			playershare = playershare + .05
		else:
			playershare = playershare - .05
			
#checks for upgrades on the storefront and creates an array of success or failure to test against
func storefront_check():
	if (global.storefront_best_key == true):
		randomize()
		var storefront_chance = [true, true, true, true, true, true, true, true, true, true, true]
		storefront_choice = storefront_chance[randi() % storefront_chance.size()]
	elif (global.storefront_great_key == true):
		randomize()
		var storefront_chance = [true, true, true, true, false, true, true, true, true]
		storefront_choice = storefront_chance[randi() % storefront_chance.size()]
	elif (global.storefront_good_key == true):
		randomize()
		var storefront_chance = [true, true, true, false, false, true, true, true]
		storefront_choice = storefront_chance[randi() % storefront_chance.size()]
	elif (global.storefront_decent_key == true):
		randomize()
		var storefront_chance = [true, true, false, false, false, true, true]
		storefront_choice = storefront_chance[randi() % storefront_chance.size()]
	elif (global.storefront_worst_key == true):
		randomize()
		var storefront_chance = [true, false, false, false, false, true]
		storefront_choice = storefront_chance[randi() % storefront_chance.size()]

func wait_check():
	if (global.entertainment_best_key == true):
		randomize()
		var wait_chance = [true, true, true, true, true]
		wait_choice = wait_chance[randi() % wait_chance.size()]
	elif (global.entertainment_great_key == true):
		randomize()
		var wait_chance = [true, true, true, true, false]
		wait_choice = wait_chance[randi() % wait_chance.size()]
	elif (global.entertainment_good_key == true):
		randomize()
		var wait_chance = [true, true, true, false]
		wait_choice = wait_chance[randi() % wait_chance.size()]
	elif (global.entertainment_decent_key == true):
		randomize()
		var wait_chance = [true, true, true, false]
		wait_choice = wait_chance[randi() % wait_chance.size()]
	elif (global.entertainment_worst_key == true):
		randomize()
		var wait_chance = [true, true, false]
		wait_choice = wait_chance[randi() % wait_chance.size()]