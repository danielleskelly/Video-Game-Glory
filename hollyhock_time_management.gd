extends Node2D

onready var countdown_timer = get_node("countdown_timer")

var customer_choice
var price_choice
var randomness
var rand_arcade_price
var concession_choice
var concessions_desire
var concessions_price_check

var flag_in_play
var new_volume

var hundreds
var tens
var ones

onready var pixel = get_node("pixel")

func _ready():
	pixel_small()
	get_node("StreamPlayer").set_volume(sound.volume)
	set_process(true)

func _process(delta):
	hundreds = get_node("success_background/hundreths")
	tens = get_node("success_background/tens")
	ones = get_node("success_background/ones")
	point_display()
	countdown_timer.clear()
	countdown_timer.add_text(str(int(get_node("day_timer").get_time_left())))
	

func _on_day_timer_timeout():
	customer_math.customer_math()
	if (towns.town_select == "hollyhock"):
		for x in range(0, customer_math.player_prediction_one + 1):
			storefront_check.storefront_check()
			if (storefront_check.storefront_choice == true):
				quick_wait_check()
				customer_choice = randomness[randi() % randomness.size()]
				if (customer_choice == true):
					rand_arcade_price = [price_check.hollyhock_arcade_one_price]
					if (set_genre.hollyhock_station_two_selection == 1):
						rand_arcade_price.append(price_check.hollyhock_arcade_two_price)
					if (set_genre.hollyhock_station_three_selection == 1):
						rand_arcade_price.append(price_check.hollyhock_arcade_three_price)
					if (set_genre.hollyhock_station_four_selection == 1):
						rand_arcade_price.append(price_check.hollyhock_arcade_four_price)
					if (set_genre.hollyhock_station_five_selection == 1):
						rand_arcade_price.append(price_check.hollyhock_arcade_five_price)
					if (set_genre.hollyhock_station_six_selection == 1):
						rand_arcade_price.append(price_check.hollyhock_arcade_six_price)
					price_choice = rand_arcade_price[randi() % rand_arcade_price.size()]
					if (price_choice < price_check.hollyhock_arcade_range_high):
						money.hollyhock_balance = money.hollyhock_balance + price_choice
						money.income = money.income + price_choice
						customer_globals.sales_made = customer_globals.sales_made + 1
						var concession_rand = [true, true, false]
						concession_choice = concession_rand[randi() % concession_rand.size()]
						if (concession_choice == true):
							var concession_options = ["soda", "popcorn", "both"]
							concessions_desire = concession_options[randi() % concession_options.size()]
							if (concessions_desire == "soda"):
								if (supplies.hollyhock_soda_count > 0):
									var check_soda = supplies.soda_range_high - supplies.hollyhock_soda_price #check if the soda price is too high
									if (check_soda <= 0):
										concessions_price_check = false
									else:
										concessions_price_check = true
									if (concessions_price_check == true): #if the price is not too high
										buy_soda()
							if (concessions_desire == "popcorn"):
								if (supplies.hollyhock_popcorn_count > 0):
									var check_popcorn = supplies.popcorn_range_high - supplies.hollyhock_popcorn_price #check if the soda price is too high
									if (check_popcorn <= 0):
										concessions_price_check = false
									else:
										concessions_price_check = true
									if (concessions_price_check == true): #if the price is not too high
										buy_popcorn()
							if (concessions_desire == "both"):
								if ((supplies.hollyhock_soda_count > 0) and (supplies.hollyhock_popcorn_count > 0)):
									var check_soda = supplies.soda_range_high - supplies.hollyhock_soda_price #check if the soda price is too high
									var check_popcorn = supplies.popcorn_range_high - supplies.hollyhock_popcorn_price #check if the popcorn price is too high
									if ((check_soda <= 0) or (check_popcorn <= 0)):
										concessions_price_check = false
									else:
										concessions_price_check = true
									if (concessions_price_check == true): #if the price is not too high
										buy_soda()
										buy_popcorn()
					else:
						customer_globals.sales_lost = customer_globals.sales_lost + 1
						customer_globals.price_loss = customer_globals.price_loss + 1
				else:
					customer_globals.sales_lost = customer_globals.sales_lost + 1
					customer_globals.waited_loss = customer_globals.waited_loss + 1
			else: 
				customer_globals.sales_lost = customer_globals.sales_lost + 1
				customer_globals.storefront_loss = customer_globals.storefront_loss + 1
		if (customer_math.hollyhock_genre_two_key == true):
			for x in range(0, customer_math.player_prediction_two + 1):
				storefront_check.storefront_check()
				if (storefront_check.storefront_choice == true):
					quick_wait_check()
					customer_choice = randomness[randi() % randomness.size()]
					if (customer_choice == true):
						rand_arcade_price = [price_check.hollyhock_arcade_one_price]
						if (set_genre.hollyhock_station_two_selection == 1):
							rand_arcade_price.append(price_check.hollyhock_arcade_two_price)
						if (set_genre.hollyhock_station_three_selection == 1):
							rand_arcade_price.append(price_check.hollyhock_arcade_three_price)
						if (set_genre.hollyhock_station_four_selection == 1):
							rand_arcade_price.append(price_check.hollyhock_arcade_four_price)
						if (set_genre.hollyhock_station_five_selection == 1):
							rand_arcade_price.append(price_check.hollyhock_arcade_five_price)
						if (set_genre.hollyhock_station_six_selection == 1):
							rand_arcade_price.append(price_check.hollyhock_arcade_six_price)
						price_choice = rand_arcade_price[randi() % rand_arcade_price.size()]
						if (price_choice < price_check.hollyhock_arcade_range_high):
							money.hollyhock_balance = money.hollyhock_balance + price_choice
							money.income = money.income + price_choice
							customer_globals.sales_made = customer_globals.sales_made + 1
							var concession_rand = [true, true, false]
							concession_choice = concession_rand[randi() % concession_rand.size()]
							if (concession_choice == true):
								var concession_options = ["soda", "popcorn", "both"]
								concessions_desire = concession_options[randi() % concession_options.size()]
								if (concessions_desire == "soda"):
									if (supplies.hollyhock_soda_count > 0):
										var check_soda = supplies.soda_range_high - supplies.hollyhock_soda_price #check if the soda price is too high
										if (check_soda <= 0):
											concessions_price_check = false
										else:
											concessions_price_check = true
										if (concessions_price_check == true): #if the price is not too high
											buy_soda()
								if (concessions_desire == "popcorn"):
									if (supplies.hollyhock_popcorn_count > 0):
										var check_popcorn = supplies.popcorn_range_high - supplies.hollyhock_popcorn_price #check if the soda price is too high
										if (check_popcorn <= 0):
											concessions_price_check = false
										else:
											concessions_price_check = true
										if (concessions_price_check == true): #if the price is not too high
											buy_popcorn()
								if (concessions_desire == "both"):
									if ((supplies.hollyhock_soda_count > 0) and (supplies.hollyhock_popcorn_count > 0)):
										var check_soda = supplies.soda_range_high - supplies.hollyhock_soda_price #check if the soda price is too high
										var check_popcorn = supplies.popcorn_range_high - supplies.hollyhock_popcorn_price #check if the popcorn price is too high
										if ((check_soda <= 0) or (check_popcorn <= 0)):
											concessions_price_check = false
										else:
											concessions_price_check = true
										if (concessions_price_check == true): #if the price is not too high
											buy_soda()
											buy_popcorn()
						else:
							customer_globals.sales_lost = customer_globals.sales_lost + 1
							customer_globals.price_loss = customer_globals.price_loss + 1
					else:
						customer_globals.sales_lost = customer_globals.sales_lost + 1
						customer_globals.waited_loss = customer_globals.waited_loss + 1
				else: 
					customer_globals.sales_lost = customer_globals.sales_lost + 1
					customer_globals.storefront_loss = customer_globals.storefront_loss + 1
		if (customer_math.hollyhock_genre_three_key == true):
			for x in range(0, customer_math.player_prediction_three + 1):
				storefront_check.storefront_check()
				if (storefront_check.storefront_choice == true):
					quick_wait_check()
					customer_choice = randomness[randi() % randomness.size()]
					if (customer_choice == true):
						rand_arcade_price = [price_check.hollyhock_arcade_one_price]
						if (set_genre.hollyhock_station_two_selection == 1):
							rand_arcade_price.append(price_check.hollyhock_arcade_two_price)
						if (set_genre.hollyhock_station_three_selection == 1):
							rand_arcade_price.append(price_check.hollyhock_arcade_three_price)
						if (set_genre.hollyhock_station_four_selection == 1):
							rand_arcade_price.append(price_check.hollyhock_arcade_four_price)
						if (set_genre.hollyhock_station_five_selection == 1):
							rand_arcade_price.append(price_check.hollyhock_arcade_five_price)
						if (set_genre.hollyhock_station_six_selection == 1):
							rand_arcade_price.append(price_check.hollyhock_arcade_six_price)
						price_choice = rand_arcade_price[randi() % rand_arcade_price.size()]
						if (price_choice < price_check.hollyhock_arcade_range_high):
							money.hollyhock_balance = money.hollyhock_balance + price_choice
							money.income = money.income + price_choice
							customer_globals.sales_made = customer_globals.sales_made + 1
							var concession_rand = [true, true, false]
							concession_choice = concession_rand[randi() % concession_rand.size()]
							if (concession_choice == true):
								var concession_options = ["soda", "popcorn", "both"]
								concessions_desire = concession_options[randi() % concession_options.size()]
								if (concessions_desire == "soda"):
									if (supplies.hollyhock_soda_count > 0):
										var check_soda = supplies.soda_range_high - supplies.hollyhock_soda_price #check if the soda price is too high
										if (check_soda <= 0):
											concessions_price_check = false
										else:
											concessions_price_check = true
										if (concessions_price_check == true): #if the price is not too high
											buy_soda()
								if (concessions_desire == "popcorn"):
									if (supplies.hollyhock_popcorn_count > 0):
										var check_popcorn = supplies.popcorn_range_high - supplies.hollyhock_popcorn_price #check if the soda price is too high
										if (check_popcorn <= 0):
											concessions_price_check = false
										else:
											concessions_price_check = true
										if (concessions_price_check == true): #if the price is not too high
											buy_popcorn()
								if (concessions_desire == "both"):
									if ((supplies.hollyhock_soda_count > 0) and (supplies.hollyhock_popcorn_count > 0)):
										var check_soda = supplies.soda_range_high - supplies.hollyhock_soda_price #check if the soda price is too high
										var check_popcorn = supplies.popcorn_range_high - supplies.hollyhock_popcorn_price #check if the popcorn price is too high
										if ((check_soda <= 0) or (check_popcorn <= 0)):
											concessions_price_check = false
										else:
											concessions_price_check = true
										if (concessions_price_check == true): #if the price is not too high
											buy_soda()
											buy_popcorn()
						else:
							customer_globals.sales_lost = customer_globals.sales_lost + 1
							customer_globals.price_loss = customer_globals.price_loss + 1
					else:
						customer_globals.sales_lost = customer_globals.sales_lost + 1
						customer_globals.waited_loss = customer_globals.waited_loss + 1
				else: 
					customer_globals.sales_lost = customer_globals.sales_lost + 1
					customer_globals.storefront_loss = customer_globals.storefront_loss + 1
	perk_check()
	customer_math.new_predictions()
	supplies.new_supply_prices()
	customer_math.daily_marketshare_adjustment()
	get_tree().change_scene("res://strategy.tscn")
	
func quick_wait_check():
	if (towns.town_select == "hollyhock"):
		if (hollyhock.hollyhock_entertainment_best_key == true):
			randomness = [true, true, true, true, true]
		if (hollyhock.hollyhock_entertainment_best_key == false) and (hollyhock.hollyhock_entertainment_great_key == true):
			randomness = [true, true, true, true, false]
		if (hollyhock.hollyhock_entertainment_great_key == false) and (hollyhock.hollyhock_entertainment_good_key == true):
			randomness = [true, true, true, false]
		if (hollyhock.hollyhock_entertainment_good_key == false) and (hollyhock.hollyhock_entertainment_decent_key == true):
			randomness = [true, true, true, false]
		if (hollyhock.hollyhock_entertainment_decent_key == false) and (hollyhock.hollyhock_entertainment_worst_key == true):
			randomness = [true, true, false]
		
func buy_soda():
	if (towns.town_select == "hollyhock"):
		var charge_price = supplies.hollyhock_soda_price
		money.hollyhock_balance = money.hollyhock_balance + charge_price
		supplies.hollyhock_soda_count = supplies.hollyhock_soda_count - 1
		supplies.soda_yesterday_used = supplies.soda_yesterday_used + 1
		money.income = money.income + charge_price
	
func buy_popcorn():
	if (towns.town_select == "hollyhock"):
		var charge_price = supplies.hollyhock_popcorn_price
		money.hollyhock_balance = money.hollyhock_balance + charge_price
		supplies.hollyhock_popcorn_count = supplies.hollyhock_popcorn_count - 1
		supplies.popcorn_yesterday_used = supplies.popcorn_yesterday_used + 1
		money.income = money.income + charge_price

func perk_check():
	perks.perk_final_count = int(perks.perk_final_count) + int(perks.success)
	if (towns.town_select == "hollyhock"):
		if (int(perks.perk_goal) <= int(perks.perk_final_count)):
			if (perks.perk_num == 1):
				supplies.hollyhock_soda_count = supplies.hollyhock_soda_count + 5
				supplies.hollyhock_popcorn_count = supplies.hollyhock_popcorn_count + 5
			elif (perks.perk_num == 2):
				customer_math.hollyhock_player_marketshare = int(customer_math.hollyhock_player_marketshare) + .1
			elif (perks.perk_num == 3):
				money.hollyhock_balance = money.hollyhock_balance + 50
			elif (perks.perk_num == 4):
				supplies.hollyhock_soda_count = supplies.hollyhock_soda_count + 10
				supplies.hollyhock_popcorn_count = supplies.hollyhock_popcorn_count + 10
			elif (perks.perk_num == 5):
				supplies.hollyhock_soda_count = supplies.hollyhock_soda_count + 20
				supplies.hollyhock_popcorn_count = supplies.hollyhock_popcorn_count + 20
			elif (perks.perk_num == 6):
				money.hollyhock_balance = money.hollyhock_balance + 25
				
func pixel_small():
	pixel.set_pos(Vector2(15.587059, 31.145905))
	pixel.set_scale(Vector2(1.490551, 1.481762))
	
func pixel_big():
	pixel.set_pos(Vector2(17.404663, 71.34024))
	pixel.set_scale(Vector2(2.601525, 3.259631))

func _on_pixel_button_button_down():
	pixel_big()
	get_node("menu").set_hidden(false)
	get_node("menu/sound_slider").set_value(int(sound.volume * 100))
	

func _on_sound_slider_value_changed( value ):
	new_volume = value / 100
	sound.volume = new_volume
	get_node("StreamPlayer").set_volume(new_volume)
	
func point_display():
		var one_ones_digit = ((perks.success + perks.perk_final_count)) % 10
		var one_tens_digit = ((perks.success + perks.perk_final_count) / 10) % 10
		var one_hunds_digit = ((perks.success + perks.perk_final_count) / 100) % 10
		hundreds.clear()
		hundreds.add_text(str(one_hunds_digit))
		tens.clear()
		tens.add_text(str(one_tens_digit))
		ones.clear()
		ones.add_text(str(one_ones_digit))

func _on_return_to_game_button_down():
	pixel_small()
	get_node("menu").set_hidden(true)


func _on_return_to_village_button_down():
	get_node("menu").set_hidden(true)
	get_node("are_you_sure").set_hidden(false)


func _on_yes_village_button_down():
	get_node("menu").set_hidden(true)
	customer_math.customer_math()
	if (towns.town_select == "hollyhock"):
		for x in range(0, customer_math.player_prediction_one + 1):
			storefront_check.storefront_check()
			if (storefront_check.storefront_choice == true):
				quick_wait_check()
				customer_choice = randomness[randi() % randomness.size()]
				if (customer_choice == true):
					rand_arcade_price = [price_check.hollyhock_arcade_one_price]
					if (set_genre.hollyhock_station_two_selection == 1):
						rand_arcade_price.append(price_check.hollyhock_arcade_two_price)
					if (set_genre.hollyhock_station_three_selection == 1):
						rand_arcade_price.append(price_check.hollyhock_arcade_three_price)
					if (set_genre.hollyhock_station_four_selection == 1):
						rand_arcade_price.append(price_check.hollyhock_arcade_four_price)
					if (set_genre.hollyhock_station_five_selection == 1):
						rand_arcade_price.append(price_check.hollyhock_arcade_five_price)
					if (set_genre.hollyhock_station_six_selection == 1):
						rand_arcade_price.append(price_check.hollyhock_arcade_six_price)
					price_choice = rand_arcade_price[randi() % rand_arcade_price.size()]
					if (price_choice < price_check.hollyhock_arcade_range_high):
						money.hollyhock_balance = money.hollyhock_balance + price_choice
						money.income = money.income + price_choice
						customer_globals.sales_made = customer_globals.sales_made + 1
						var concession_rand = [true, true, false]
						concession_choice = concession_rand[randi() % concession_rand.size()]
						if (concession_choice == true):
							var concession_options = ["soda", "popcorn", "both"]
							concessions_desire = concession_options[randi() % concession_options.size()]
							if (concessions_desire == "soda"):
								if (supplies.hollyhock_soda_count > 0):
									var check_soda = supplies.soda_range_high - supplies.hollyhock_soda_price #check if the soda price is too high
									if (check_soda <= 0):
										concessions_price_check = false
									else:
										concessions_price_check = true
									if (concessions_price_check == true): #if the price is not too high
										buy_soda()
							if (concessions_desire == "popcorn"):
								if (supplies.hollyhock_popcorn_count > 0):
									var check_popcorn = supplies.popcorn_range_high - supplies.hollyhock_popcorn_price #check if the soda price is too high
									if (check_popcorn <= 0):
										concessions_price_check = false
									else:
										concessions_price_check = true
									if (concessions_price_check == true): #if the price is not too high
										buy_popcorn()
							if (concessions_desire == "both"):
								if ((supplies.hollyhock_soda_count > 0) and (supplies.hollyhock_popcorn_count > 0)):
									var check_soda = supplies.soda_range_high - supplies.hollyhock_soda_price #check if the soda price is too high
									var check_popcorn = supplies.popcorn_range_high - supplies.hollyhock_popcorn_price #check if the popcorn price is too high
									if ((check_soda <= 0) or (check_popcorn <= 0)):
										concessions_price_check = false
									else:
										concessions_price_check = true
									if (concessions_price_check == true): #if the price is not too high
										buy_soda()
										buy_popcorn()
					else:
						customer_globals.sales_lost = customer_globals.sales_lost + 1
						customer_globals.price_loss = customer_globals.price_loss + 1
				else:
					customer_globals.sales_lost = customer_globals.sales_lost + 1
					customer_globals.waited_loss = customer_globals.waited_loss + 1
			else: 
				customer_globals.sales_lost = customer_globals.sales_lost + 1
				customer_globals.storefront_loss = customer_globals.storefront_loss + 1
		if (customer_math.hollyhock_genre_two_key == true):
			for x in range(0, customer_math.player_prediction_two + 1):
				storefront_check.storefront_check()
				if (storefront_check.storefront_choice == true):
					quick_wait_check()
					customer_choice = randomness[randi() % randomness.size()]
					if (customer_choice == true):
						rand_arcade_price = [price_check.hollyhock_arcade_one_price]
						if (set_genre.hollyhock_station_two_selection == 1):
							rand_arcade_price.append(price_check.hollyhock_arcade_two_price)
						if (set_genre.hollyhock_station_three_selection == 1):
							rand_arcade_price.append(price_check.hollyhock_arcade_three_price)
						if (set_genre.hollyhock_station_four_selection == 1):
							rand_arcade_price.append(price_check.hollyhock_arcade_four_price)
						if (set_genre.hollyhock_station_five_selection == 1):
							rand_arcade_price.append(price_check.hollyhock_arcade_five_price)
						if (set_genre.hollyhock_station_six_selection == 1):
							rand_arcade_price.append(price_check.hollyhock_arcade_six_price)
						price_choice = rand_arcade_price[randi() % rand_arcade_price.size()]
						if (price_choice < price_check.hollyhock_arcade_range_high):
							money.hollyhock_balance = money.hollyhock_balance + price_choice
							money.income = money.income + price_choice
							customer_globals.sales_made = customer_globals.sales_made + 1
							var concession_rand = [true, true, false]
							concession_choice = concession_rand[randi() % concession_rand.size()]
							if (concession_choice == true):
								var concession_options = ["soda", "popcorn", "both"]
								concessions_desire = concession_options[randi() % concession_options.size()]
								if (concessions_desire == "soda"):
									if (supplies.hollyhock_soda_count > 0):
										var check_soda = supplies.soda_range_high - supplies.hollyhock_soda_price #check if the soda price is too high
										if (check_soda <= 0):
											concessions_price_check = false
										else:
											concessions_price_check = true
										if (concessions_price_check == true): #if the price is not too high
											buy_soda()
								if (concessions_desire == "popcorn"):
									if (supplies.hollyhock_popcorn_count > 0):
										var check_popcorn = supplies.popcorn_range_high - supplies.hollyhock_popcorn_price #check if the soda price is too high
										if (check_popcorn <= 0):
											concessions_price_check = false
										else:
											concessions_price_check = true
										if (concessions_price_check == true): #if the price is not too high
											buy_popcorn()
								if (concessions_desire == "both"):
									if ((supplies.hollyhock_soda_count > 0) and (supplies.hollyhock_popcorn_count > 0)):
										var check_soda = supplies.soda_range_high - supplies.hollyhock_soda_price #check if the soda price is too high
										var check_popcorn = supplies.popcorn_range_high - supplies.hollyhock_popcorn_price #check if the popcorn price is too high
										if ((check_soda <= 0) or (check_popcorn <= 0)):
											concessions_price_check = false
										else:
											concessions_price_check = true
										if (concessions_price_check == true): #if the price is not too high
											buy_soda()
											buy_popcorn()
						else:
							customer_globals.sales_lost = customer_globals.sales_lost + 1
							customer_globals.price_loss = customer_globals.price_loss + 1
					else:
						customer_globals.sales_lost = customer_globals.sales_lost + 1
						customer_globals.waited_loss = customer_globals.waited_loss + 1
				else: 
					customer_globals.sales_lost = customer_globals.sales_lost + 1
					customer_globals.storefront_loss = customer_globals.storefront_loss + 1
		if (customer_math.hollyhock_genre_three_key == true):
			for x in range(0, customer_math.player_prediction_three + 1):
				storefront_check.storefront_check()
				if (storefront_check.storefront_choice == true):
					quick_wait_check()
					customer_choice = randomness[randi() % randomness.size()]
					if (customer_choice == true):
						rand_arcade_price = [price_check.hollyhock_arcade_one_price]
						if (set_genre.hollyhock_station_two_selection == 1):
							rand_arcade_price.append(price_check.hollyhock_arcade_two_price)
						if (set_genre.hollyhock_station_three_selection == 1):
							rand_arcade_price.append(price_check.hollyhock_arcade_three_price)
						if (set_genre.hollyhock_station_four_selection == 1):
							rand_arcade_price.append(price_check.hollyhock_arcade_four_price)
						if (set_genre.hollyhock_station_five_selection == 1):
							rand_arcade_price.append(price_check.hollyhock_arcade_five_price)
						if (set_genre.hollyhock_station_six_selection == 1):
							rand_arcade_price.append(price_check.hollyhock_arcade_six_price)
						price_choice = rand_arcade_price[randi() % rand_arcade_price.size()]
						if (price_choice < price_check.hollyhock_arcade_range_high):
							money.hollyhock_balance = money.hollyhock_balance + price_choice
							money.income = money.income + price_choice
							customer_globals.sales_made = customer_globals.sales_made + 1
							var concession_rand = [true, true, false]
							concession_choice = concession_rand[randi() % concession_rand.size()]
							if (concession_choice == true):
								var concession_options = ["soda", "popcorn", "both"]
								concessions_desire = concession_options[randi() % concession_options.size()]
								if (concessions_desire == "soda"):
									if (supplies.hollyhock_soda_count > 0):
										var check_soda = supplies.soda_range_high - supplies.hollyhock_soda_price #check if the soda price is too high
										if (check_soda <= 0):
											concessions_price_check = false
										else:
											concessions_price_check = true
										if (concessions_price_check == true): #if the price is not too high
											buy_soda()
								if (concessions_desire == "popcorn"):
									if (supplies.hollyhock_popcorn_count > 0):
										var check_popcorn = supplies.popcorn_range_high - supplies.hollyhock_popcorn_price #check if the soda price is too high
										if (check_popcorn <= 0):
											concessions_price_check = false
										else:
											concessions_price_check = true
										if (concessions_price_check == true): #if the price is not too high
											buy_popcorn()
								if (concessions_desire == "both"):
									if ((supplies.hollyhock_soda_count > 0) and (supplies.hollyhock_popcorn_count > 0)):
										var check_soda = supplies.soda_range_high - supplies.hollyhock_soda_price #check if the soda price is too high
										var check_popcorn = supplies.popcorn_range_high - supplies.hollyhock_popcorn_price #check if the popcorn price is too high
										if ((check_soda <= 0) or (check_popcorn <= 0)):
											concessions_price_check = false
										else:
											concessions_price_check = true
										if (concessions_price_check == true): #if the price is not too high
											buy_soda()
											buy_popcorn()
						else:
							customer_globals.sales_lost = customer_globals.sales_lost + 1
							customer_globals.price_loss = customer_globals.price_loss + 1
					else:
						customer_globals.sales_lost = customer_globals.sales_lost + 1
						customer_globals.waited_loss = customer_globals.waited_loss + 1
				else: 
					customer_globals.sales_lost = customer_globals.sales_lost + 1
					customer_globals.storefront_loss = customer_globals.storefront_loss + 1
	perk_check()
	customer_math.new_predictions()
	supplies.new_supply_prices()
	customer_math.daily_marketshare_adjustment()
	get_tree().change_scene("res://strategy.tscn")


func _on_no_village_button_down():
	get_node("are_you_sure").set_hidden(true)
	get_node("menu").set_hidden(false)


func _on_return_to_main_button_down():
	get_node("menu").set_hidden(true)
	get_node("are_you_sure_2").set_hidden(false)
	
	
func _on_yes_main_button_down():
	get_tree().set_pause(false)
	get_tree().change_scene("res://player_selection.tscn")


func _on_no_main_button_down():
	get_node("are_you_sure_2").set_hidden(true)
	get_node("menu").set_hidden(false)


func _on_checkpoint_timer_timeout():
	var checkpoints = get_tree().get_nodes_in_group("goal")
	flag_in_play = checkpoints[randi() % checkpoints.size()]
	flag_in_play.show()
