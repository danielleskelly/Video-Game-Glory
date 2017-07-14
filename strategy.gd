extends Node2D

#display nodes
onready var genre_one = get_node("genre_one")
onready var genre_two = get_node("genre_two")
onready var genre_three = get_node("genre_three")
onready var supply_one = get_tree().get_current_scene().get_node("supply_one")
onready var supply_two = get_tree().get_current_scene().get_node("supply_two")
onready var town_banner = get_tree().get_current_scene().get_node("town_banner")
onready var low_funds_warning = get_tree().get_current_scene().get_node("low_funds_warning")
onready var game_over_alert = get_tree().get_current_scene().get_node("game_over_alert")
onready var genre_discovery = get_node("genre_discovery")
onready var hollyhock_complete = get_node("hollyhock_complete")
onready var tutorial_start = get_node("tutorial_start")
onready var tutorial_persistent_menu = get_node("tutorial_persistent_menu")
onready var tutorial_reports = get_node("tutorial_reports")
onready var tutorial_supplies = get_node("tutorial_supplies")
onready var tutorial_pricing = get_node("tutorial_pricing")
onready var tutorial_upgrades = get_node("tutorial_upgrades")
onready var tutorial_locals = get_node("tutorial_locals")
onready var tutorial_research = get_node("tutorial_research")
onready var pixel = get_node("pixel")

#allows the prediction genres to change with the town
var genre_one_count
var genre_two_count
var genre_three_count
var genre_two_key
var genre_three_key
var genre_one_name
var genre_one_icon
var genre_two_name
var genre_two_icon
var genre_three_name
var genre_three_icon
var supply_one_count
var supply_one_name
var supply_one_icon
var supply_two_count
var supply_two_name
var supply_two_icon

var customer_choice
var price_choice
var randomness
var rand_arcade_price
var concession_choice
var concessions_desire
var concessions_price_check

var new_volume

func _ready():
	pixel_small()
	set_sound()
	tutorial_start()
	research_countdown()
	set_process(true)
	pass
	
func _process(delta):
	if (towns.town_select == "hollyhock"):
		if (get_node("AnimationPlayer").get_current_animation() == "tutorial"):
			if ((set_genre.hollyhock_station_one_selection == 1) and (set_genre.hollyhock_station_two_selection == 1)):
				get_node("AnimationPlayer").play("tutorial_pt2")
		if (get_node("AnimationPlayer").get_current_animation() == "tutorial_pt2"):
			if ((supplies.hollyhock_popcorn_count >= 10) and (supplies.hollyhock_soda_count >= 10)):
				get_node("AnimationPlayer").play("tutorial_pt3")
		if ((money.hollyhock_cash - money.hollyhock_expenses) < 0):
			if ((money.hollyhock_expenses == 0) and (hollyhock.hollyhock_current_loan == loans.credit_limit)):
				game_over_alert.set_hidden(false)
				pixel.set_hidden(false)
				get_tree().set_pause(true)
		if (customer_math.hollyhock_player_marketshare >= .75):
			hollyhock_complete.set_hidden(false)
			pixel.set_hidden(false)
			get_tree().set_pause(true)
		supply_one_count = supplies.hollyhock_soda_count
		supply_one_name = "Soda"
		supply_one_icon = load("res://concessions_want.png")
		supply_two_count = supplies.hollyhock_popcorn_count
		supply_two_name = "Popcorn"
		supply_two_icon = load("res://popcorn.png")
		genre_one_count = customer_math.meta_prediction
		genre_one_name = "Meta"
		genre_one_icon = load("res://meta_genre.png")
		genre_two_count = customer_math.classic_prediction
		genre_two_key = customer_math.hollyhock_genre_two_key
		genre_three_name = "Classic"
		genre_three_count = customer_math.platformer_prediction
		genre_three_name = "Platformer"
		genre_three_key = customer_math.hollyhock_genre_three_key
		if (get_node("cursor_blink").get_time_left() > 1):
			town_banner.get_child(1).clear()
			town_banner.get_child(1).add_text("Hollyhock...")
		elif ((get_node("cursor_blink").get_time_left() < 1) and (get_node("cursor_blink").get_time_left() != 0)):
			town_banner.get_child(1).clear()
			town_banner.get_child(1).add_text("Hollyhock...l")
		elif (get_node("cursor_blink").get_time_left() == 0):
			get_node("cursor_blink").start()
	if (towns.town_select == "fiyork"):
		if ((money.fiyork_cash - money.fiyork_expenses) < 0):
			if ((money.fiyork_expenses == 0) and (fiyork.fiyork_current_loan == loans.credit_limit)):
				game_over_alert.set_hidden(false)
				pixel.set_hidden(false)
				get_tree().set_pause(true)
		if ((fiyork.fiyork_advertising_sabatoge_key == false) and (fiyork.fiyork_storefront_sabatoge_key == false) and (fiyork.fiyork_entertainment_sabatoge_key == false) and (fiyork.fiyork_arcade_sabatoge_key == false)):
			fiyork_complete.set_hidden(false)
			pixel.set_hidden(false)
			get_tree().set_pause(true)
		supply_one_count = supplies.fiyork_freezie_count
		supply_one_name = "Freezie"
		supply_one_icon = load("res://concessions_want.png")
		supply_two_count = supplies.fiyork_pizza_count
		supply_two_name = "Pizza"
		supply_two_icon = load("res://pizza.png")
		genre_one_count = customer_math.shooter_prediction
		genre_one_name = "Shooter"
		genre_one_icon = load("res://meta_genre.png")
		genre_two_count = customer_math.adventure_prediction
		genre_two_key = customer_math.fiyork_genre_two_key
		genre_two_name = "Adventure"
		genre_two_icon = load("res://meta_genre.png")
		genre_three_count = customer_math.casual_prediction
		genre_three_name = "Casual"
		genre_three_key = customer_math.fiyork_genre_three_key
		genre_three_icon = load("res://meta_genre.png")
		if (get_node("cursor_blink").get_time_left() > 1):
			town_banner.get_child(1).clear()
			town_banner.get_child(1).add_text("Fiyork...")
		elif ((get_node("cursor_blink").get_time_left() < 1) and (get_node("cursor_blink").get_time_left() != 0)):
			town_banner.get_child(1).clear()
			town_banner.get_child(1).add_text("Fiyork...l")
		elif (get_node("cursor_blink").get_time_left() == 0):
			get_node("cursor_blink").start()
	supply_one.get_child(2).get_child(0).clear()
	supply_one.get_child(3).get_child(0).clear()
	supply_one.get_child(4).get_child(0).clear()
	var one_ones_digit = supply_one_count % 10
	var one_tens_digit = (supply_one_count / 10) % 10
	var one_hunds_digit = (supply_one_count / 100) % 10
	supply_one.get_child(4).get_child(0).add_text(str(one_ones_digit))
	supply_one.get_child(3).get_child(0).add_text(str(one_tens_digit))
	supply_one.get_child(2).get_child(0).add_text(str(one_hunds_digit))
	supply_one.get_child(1).clear()
	supply_one.get_child(1).add_text(str(supply_one_name))
	supply_one.get_child(5).set_texture(supply_one_icon)
	supply_two.get_child(2).get_child(0).clear()
	supply_two.get_child(3).get_child(0).clear()
	supply_two.get_child(4).get_child(0).clear()
	var two_ones_digit = supply_two_count % 10
	var two_tens_digit = (supply_two_count / 10) % 10
	var two_hunds_digit = (supply_two_count / 100) % 10
	supply_two.get_child(4).get_child(0).add_text(str(two_ones_digit))
	supply_two.get_child(3).get_child(0).add_text(str(two_tens_digit))
	supply_two.get_child(2).get_child(0).add_text(str(two_hunds_digit))
	supply_two.get_child(1).clear()
	supply_two.get_child(1).add_text(str(supply_two_name))
	supply_two.get_child(5).set_texture(supply_two_icon)
	genre_one.get_child(3).get_child(0).clear()
	genre_one.get_child(4).get_child(0).clear()
	genre_one.get_child(5).get_child(0).clear()
	var one_ones_digit = int(genre_one_count * 100) % 10
	var one_tens_digit = int(genre_one_count * 10) % 10
	var one_hunds_digit = int(genre_one_count) % 10
	genre_one.get_child(5).get_child(0).add_text(str(one_ones_digit))
	genre_one.get_child(4).get_child(0).add_text(str(one_tens_digit))
	genre_one.get_child(3).get_child(0).add_text(str(one_hunds_digit))
	genre_one.get_child(1).clear()
	genre_one.get_child(1).add_text(str(genre_one_name))
	genre_one.get_child(6).set_texture(genre_one_icon)
	if (genre_two_key == true):
		genre_two.show()
		genre_two.get_child(3).get_child(0).clear()
		genre_two.get_child(4).get_child(0).clear()
		genre_two.get_child(5).get_child(0).clear()
		var two_ones_digit = int(genre_two_count * 100) % 10
		var two_tens_digit = int(genre_two_count * 10) % 10
		var two_hunds_digit = int(genre_two_count) % 10
		genre_two.get_child(5).get_child(0).add_text(str(two_ones_digit))
		genre_two.get_child(4).get_child(0).add_text(str(two_tens_digit))
		genre_two.get_child(3).get_child(0).add_text(str(two_hunds_digit))
		genre_two.get_child(1).clear()
		genre_two.get_child(1).add_text(str(genre_two_name))
		genre_two.get_child(1).clear()
		genre_two.get_child(1).add_text(str(genre_two_name))
	if (genre_two_key == false):
		genre_two.set_hidden(true)
	if (genre_three_key == true):
		genre_three.show()
		genre_three.get_child(3).get_child(0).clear()
		genre_three.get_child(4).get_child(0).clear()
		genre_three.get_child(5).get_child(0).clear()
		var three_ones_digit = int(genre_three_count * 100) % 10
		var three_tens_digit = int(genre_three_count * 10) % 10
		var three_hunds_digit = int(genre_three_count) % 10
		genre_three.get_child(5).get_child(0).add_text(str(three_ones_digit))
		genre_three.get_child(4).get_child(0).add_text(str(three_tens_digit))
		genre_three.get_child(3).get_child(0).add_text(str(three_hunds_digit))
		genre_three.get_child(1).clear()
		genre_three.get_child(1).add_text(str(genre_three_name))
	if (genre_three_key == false):
		genre_three.set_hidden(true)

func research_countdown():
	if (towns.town_select == "hollyhock"):
		if (hollyhock.hollyhock_days_left_research - 1 > 0):
			hollyhock.hollyhock_days_left_research = hollyhock.hollyhock_days_left_research - 1
			hollyhock.hollyhock_research_fund = hollyhock.hollyhock_research_fund + hollyhock.hollyhock_research_spending
		if (hollyhock.hollyhock_days_left_research - 1 == 0):
			if (hollyhock.hollyhock_genre_two_key == false):
				hollyhock.hollyhock_genre_two_key = true
				hollyhock.hollyhock_research_fund = 0
				hollyhock.hollyhock_research_spending = 0
				genre_discovery.set_hidden(false)
				pixel_big()
				pixel.set_hidden(false)
				get_tree().set_pause(true)
			if ((keys.hollyhock_genre_two_key == true) and (keys.hollyhock_genre_three_key == false)):
				keys.hollyhock_genre_three_key = true
				hollyhock.hollyhock_research_fund = 0
				hollyhock.hollyhock_research_spending = 0
				genre_discovery.set_hidden(false)
				pixel_big()
				pixel.set_hidden(false)
				get_tree().set_pause(true)
	if (towns.town_select == "fiyork"):
		if (fiyork.fiyork_days_left_research - 1 > 0):
			fiyork.fiyork_days_left_research = fiyork.fiyork_days_left_research - 1
			fiyork.fiyork_research_fund = fiyork.fiyork_research_fund + fiyork.fiyork_research_spending
		if (fiyork.fiyork_days_left_research - 1 == 0):
			if (fiyork.fiyork_genre_two_key == false):
				fiyork.fiyork_genre_two_key = true
				fiyork.fiyork_research_fund = 0
				fiyork.fiyork_research_spending = 0
				genre_discovery.set_hidden(false)
				pixel_big()
				pixel.set_hidden(false)
				get_tree().set_pause(true)
			if ((keys.fiyork_genre_two_key == true) and (keys.fiyork_genre_three_key == false)):
				keys.fiyork_genre_three_key = true
				fiyork.fiyork_research_fund = 0
				fiyork.fiyork_research_spending = 0
				genre_discovery.set_hidden(false)
				pixel_big()
				pixel.set_hidden(false)
				get_tree().set_pause(true)

func _on_start_day_button_up():
	if (towns.town_select == "hollyhock"):
		if (money.hollyhock_balance - money.hollyhock_expenses < 0):
			low_funds_warning.set_hidden(false)
			pixel_big()
			pixel.set_hidden(false)
			get_tree().set_pause(true)
		else:
			money.hollyhock_balance = money.hollyhock_balance - money.hollyhock_expenses
			supplies.soda_yesterday_used = 0
			supplies.popcorn_yesterday_used = 0
			if (hollyhock.hollyhock_current_loan > 0):
				var daily_interest_charge = hollyhock.hollyhock_current_loan * loans.daily_interest
				money.hollyhock_balance = money.hollyhock_balance - int(daily_interest_charge)
			customer_globals.sales_made = 0
			customer_globals.sales_lost = 0
			customer_globals.storefront_loss = 0
			customer_globals.price_loss = 0
			customer_globals.waited_loss = 0
			customer_globals.sabatoge_loss= 0
			money.income = 0
			perks.perks()
			get_node("skip_or_play/perk_output").clear()
			get_node("skip_or_play/perk_output").add_text(perks.perk)
			get_node("skip_or_play/perk_goal_output").clear()
			get_node("skip_or_play/perk_goal_output").add_text(str(perks.perk_goal))
			get_node("skip_or_play").show()
			pixel_big()
			get_node("pixel").show()
	if (towns.town_select == "fiyork"):
		if (money.fiyork_balance - money.fiyork_expenses < 0):
			low_funds_warning.set_hidden(false)
			pixel_big()
			pixel.set_hidden(false)
			get_tree().set_pause(true)
		else:
			money.fiyork_balance = money.fiyork_balance - money.fiyork_expenses
			supplies.freezie_yesterday_used = 0
			supplies.pizza_yesterday_used = 0
			if (fiyork.fiyork_current_loan > 0):
				var daily_interest_charge = fiyork.fiyork_current_loan * loans.daily_interest
				money.fiyork_balance = money.fiyork_balance - int(daily_interest_charge)
			customer_globals.sales_made = 0
			customer_globals.sales_lost = 0
			customer_globals.storefront_loss = 0
			customer_globals.price_loss = 0
			customer_globals.waited_loss = 0
			customer_globals.sabatoge_loss= 0
			money.income = 0
			perks.perks()
			get_node("skip_or_play/perk_output").clear()
			get_node("skip_or_play/perk_output").add_text(perks.perk)
			get_node("skip_or_play/perk_goal_output").clear()
			get_node("skip_or_play/perk_goal_output").add_text(str(perks.perk_goal))
			get_node("skip_or_play").show()
			pixel_big()
			get_node("pixel").show()


func _on_low_funds_ok_button_down():
	low_funds_warning.set_hidden(true)
	pixel_big()
	pixel.set_hidden(true)
	get_tree().set_pause(false)


func _on_genre_discover_ok_button_down():
	genre_discovery.set_hidden(true)
	pixel_small()
	get_tree().set_pause(false)

func _on_continue_ok_button_down():
	if (towns.town_select == "hollyhock"):
		hollyhock_complete.set_hidden(true)
		get_tree().change_scene("res://story_piece_three.tscn")
	if (towns.town_select == "fiyork"):
		print("story piece four")
		fiyork_complete.set_hidden(true)
		#get_tree().change_scene("res://story_piece_three.tscn")
	pixel_small()
	get_tree().set_pause(false)
	money.income = 0
	customer_globals.sales_lost = 0
	customer_globals.sales_made = 0
	customer_globals.storefront_loss = 0
	customer_globals.price_loss = 0
	customer_globals.waited_loss = 0
	customer_globals.sabatoge_loss = 0
	
	
func tutorial_start():
	if (tutorial.tutorial_start == false):
		pass
		print("undo this in strategy tutorial") 
		#tutorial_start.show()
		#pixel_big()
		#pixel.show()
	if (tutorial.tutorial_start == true):
		pass

func _on_tutorial_start_no_button_button_down():
	tutorial.tutorial_start = true
	tutorial_start.set_hidden(true)
	get_node("AnimationPlayer").play("tutorial_pass")
	tutorial.time_management_start = true
	
func _on_tutorial_start_yes_button_button_down():
	tutorial.tutorial_start = true
	get_tree().get_current_scene().get_node("AnimationPlayer").play("tutorial")

func _on_game_over_ok_button_down():
	if (towns.town_select == "hollyhock"):
		pixel_small()
		game_over_alert.set_hidden(true)
		game_over.game_over_hollyhock()
	if (towns.town_select == "fiyork"):
		pixel_small()
		game_over_alert.set_hidden(true)
		game_over.game_over_fiyork()

func _on_ok_button_button_down():
	if (get_node("AnimationPlayer").get_current_animation() == "tutorial_pt3"):
		get_node("AnimationPlayer").play("tutorial_pt4")
	elif (get_node("AnimationPlayer").get_current_animation() == "tutorial_pt4"):
		get_node("AnimationPlayer").play("tutorial_pt5")

func _on_AnimationPlayer_finished():
	if (get_node("AnimationPlayer").get_current_animation() == "tutorial_pt6"):
		get_node("AnimationPlayer").play("tutorial_finish")
	if (get_node("AnimationPlayer").get_current_animation() == "tutorial_pass"):
		get_node("AnimationPlayer").play("tutorial_finish")

func _on_skip_button_down():
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
	if (towns.town_select == "fiyork"):
		for x in range(0, customer_math.player_prediction_one + 1):
			storefront_check.storefront_check()
			if (storefront_check.storefront_choice == true):
				quick_wait_check()
				customer_choice = randomness[randi() % randomness.size()]
				if (customer_choice == true):
					rand_arcade_price = [price_check.fiyork_arcade_one_price]
					if (set_genre.fiyork_station_two_selection == 1):
						rand_arcade_price.append(price_check.fiyork_arcade_two_price)
					if (set_genre.fiyork_station_three_selection == 1):
						rand_arcade_price.append(price_check.fiyork_arcade_three_price)
					if (set_genre.fiyork_station_four_selection == 1):
						rand_arcade_price.append(price_check.fiyork_arcade_four_price)
					if (set_genre.fiyork_station_five_selection == 1):
						rand_arcade_price.append(price_check.fiyork_arcade_five_price)
					if (set_genre.fiyork_station_six_selection == 1):
						rand_arcade_price.append(price_check.fiyork_arcade_six_price)
					price_choice = rand_arcade_price[randi() % rand_arcade_price.size()]
					if (price_choice < price_check.fiyork_arcade_range_high):
						money.fiyork_balance = money.fiyork_balance + price_choice
						money.income = money.income + price_choice
						customer_globals.sales_made = customer_globals.sales_made + 1
						var concession_rand = [true, true, false]
						concession_choice = concession_rand[randi() % concession_rand.size()]
						if (concession_choice == true):
							var concession_options = ["freezie", "pizza", "both"]
							concessions_desire = concession_options[randi() % concession_options.size()]
							if (concessions_desire == "freezie"):
								if (supplies.fiyork_freezie_count > 0):
									var check_freezie = supplies.freezie_range_high - supplies.fiyork_freezie_price #check if the soda price is too high
									if (check_freezie <= 0):
										concessions_price_check = false
									else:
										concessions_price_check = true
									if (concessions_price_check == true): #if the price is not too high
										buy_freezie()
							if (concessions_desire == "pizza"):
								if (supplies.fiyork_pizza_count > 0):
									var check_pizza = supplies.pizza_range_high - supplies.fiyork_pizza_price #check if the soda price is too high
									if (check_pizza <= 0):
										concessions_price_check = false
									else:
										concessions_price_check = true
									if (concessions_price_check == true): #if the price is not too high
										buy_pizza()
							if (concessions_desire == "both"):
								if ((supplies.fiyork_freezie_count > 0) and (supplies.fiyork_pizza_count > 0)):
									var check_freezie = supplies.freezie_range_high - supplies.fiyork_freezie_price #check if the soda price is too high
									var check_pizza = supplies.pizza_range_high - supplies.fiyork_pizza_price #check if the popcorn price is too high
									if ((check_freezie <= 0) or (check_pizza <= 0)):
										concessions_price_check = false
									else:
										concessions_price_check = true
									if (concessions_price_check == true): #if the price is not too high
										buy_freezie()
										buy_pizza()
					else:
						customer_globals.sales_lost = customer_globals.sales_lost + 1
						customer_globals.price_loss = customer_globals.price_loss + 1
				else:
					customer_globals.sales_lost = customer_globals.sales_lost + 1
					customer_globals.waited_loss = customer_globals.waited_loss + 1
			else: 
				customer_globals.sales_lost = customer_globals.sales_lost + 1
				customer_globals.storefront_loss = customer_globals.storefront_loss + 1
		if (customer_math.fiyork_genre_two_key == true):
			for x in range(0, customer_math.player_prediction_two + 1):
				storefront_check.storefront_check()
				if (storefront_check.storefront_choice == true):
					quick_wait_check()
					customer_choice = randomness[randi() % randomness.size()]
					if (customer_choice == true):
						rand_arcade_price = [price_check.fiyork_arcade_one_price]
						if (set_genre.fiyork_station_two_selection == 1):
							rand_arcade_price.append(price_check.fiyork_arcade_two_price)
						if (set_genre.fiyork_station_three_selection == 1):
							rand_arcade_price.append(price_check.fiyork_arcade_three_price)
						if (set_genre.fiyork_station_four_selection == 1):
							rand_arcade_price.append(price_check.fiyork_arcade_four_price)
						if (set_genre.fiyork_station_five_selection == 1):
							rand_arcade_price.append(price_check.fiyork_arcade_five_price)
						if (set_genre.fiyork_station_six_selection == 1):
							rand_arcade_price.append(price_check.fiyork_arcade_six_price)
						price_choice = rand_arcade_price[randi() % rand_arcade_price.size()]
						if (price_choice < price_check.fiyork_arcade_range_high):
							money.fiyork_balance = money.fiyork_balance + price_choice
							money.income = money.income + price_choice
							customer_globals.sales_made = customer_globals.sales_made + 1
							var concession_rand = [true, true, false]
							concession_choice = concession_rand[randi() % concession_rand.size()]
							if (concession_choice == true):
								var concession_options = ["freezie", "pizza", "both"]
								concessions_desire = concession_options[randi() % concession_options.size()]
								if (concessions_desire == "soda"):
									if (supplies.fiyork_freezie_count > 0):
										var check_freezie = supplies.freezie_range_high - supplies.fiyork_freezie_price #check if the soda price is too high
										if (check_freezie <= 0):
											concessions_price_check = false
										else:
											concessions_price_check = true
										if (concessions_price_check == true): #if the price is not too high
											buy_freezie()
								if (concessions_desire == "pizza"):
									if (supplies.fiyork_pizza_count > 0):
										var check_pizza = supplies.pizza_range_high - supplies.fiyork_pizza_price #check if the soda price is too high
										if (check_pizza <= 0):
											concessions_price_check = false
										else:
											concessions_price_check = true
										if (concessions_price_check == true): #if the price is not too high
											buy_pizza()
								if (concessions_desire == "both"):
									if ((supplies.fiyork_freezie_count > 0) and (supplies.fiyork_pizza_count > 0)):
										var check_freezie = supplies.freezie_range_high - supplies.fiyork_freezie_price #check if the soda price is too high
										var check_pizza = supplies.pizza_range_high - supplies.fiyork_pizza_price #check if the popcorn price is too high
										if ((check_freezie <= 0) or (check_pizza <= 0)):
											concessions_price_check = false
										else:
											concessions_price_check = true
										if (concessions_price_check == true): #if the price is not too high
											buy_freezie()
											buy_pizza()
						else:
							customer_globals.sales_lost = customer_globals.sales_lost + 1
							customer_globals.price_loss = customer_globals.price_loss + 1
					else:
						customer_globals.sales_lost = customer_globals.sales_lost + 1
						customer_globals.waited_loss = customer_globals.waited_loss + 1
				else: 
					customer_globals.sales_lost = customer_globals.sales_lost + 1
					customer_globals.storefront_loss = customer_globals.storefront_loss + 1
		if (customer_math.fiyork_genre_three_key == true):
			for x in range(0, customer_math.player_prediction_three + 1):
				storefront_check.storefront_check()
				if (storefront_check.storefront_choice == true):
					quick_wait_check()
					customer_choice = randomness[randi() % randomness.size()]
					if (customer_choice == true):
						rand_arcade_price = [price_check.fiyork_arcade_one_price]
						if (set_genre.fiyork_station_two_selection == 1):
							rand_arcade_price.append(price_check.fiyork_arcade_two_price)
						if (set_genre.fiyork_station_three_selection == 1):
							rand_arcade_price.append(price_check.fiyork_arcade_three_price)
						if (set_genre.fiyork_station_four_selection == 1):
							rand_arcade_price.append(price_check.fiyork_arcade_four_price)
						if (set_genre.fiyork_station_five_selection == 1):
							rand_arcade_price.append(price_check.fiyork_arcade_five_price)
						if (set_genre.fiyork_station_six_selection == 1):
							rand_arcade_price.append(price_check.fiyork_arcade_six_price)
						price_choice = rand_arcade_price[randi() % rand_arcade_price.size()]
						if (price_choice < price_check.fiyork_arcade_range_high):
							money.fiyork_balance = money.fiyork_balance + price_choice
							money.income = money.income + price_choice
							customer_globals.sales_made = customer_globals.sales_made + 1
							var concession_rand = [true, true, false]
							concession_choice = concession_rand[randi() % concession_rand.size()]
							if (concession_choice == true):
								var concession_options = ["freezie", "pizza", "both"]
								concessions_desire = concession_options[randi() % concession_options.size()]
								if (concessions_desire == "soda"):
									if (supplies.fiyork_freezie_count > 0):
										var check_freezie = supplies.freezie_range_high - supplies.fiyork_freezie_price #check if the soda price is too high
										if (check_freezie <= 0):
											concessions_price_check = false
										else:
											concessions_price_check = true
										if (concessions_price_check == true): #if the price is not too high
											buy_freezie()
								if (concessions_desire == "pizza"):
									if (supplies.fiyork_pizza_count > 0):
										var check_pizza = supplies.pizza_range_high - supplies.fiyork_pizza_price #check if the soda price is too high
										if (check_pizza <= 0):
											concessions_price_check = false
										else:
											concessions_price_check = true
										if (concessions_price_check == true): #if the price is not too high
											buy_pizza()
								if (concessions_desire == "both"):
									if ((supplies.fiyork_freezie_count > 0) and (supplies.fiyork_pizza_count > 0)):
										var check_freezie = supplies.freezie_range_high - supplies.fiyork_freezie_price #check if the soda price is too high
										var check_pizza = supplies.pizza_range_high - supplies.fiyork_pizza_price #check if the popcorn price is too high
										if ((check_freezie <= 0) or (check_pizza <= 0)):
											concessions_price_check = false
										else:
											concessions_price_check = true
										if (concessions_price_check == true): #if the price is not too high
											buy_freezie()
											buy_pizza()
						else:
							customer_globals.sales_lost = customer_globals.sales_lost + 1
							customer_globals.price_loss = customer_globals.price_loss + 1
					else:
						customer_globals.sales_lost = customer_globals.sales_lost + 1
						customer_globals.waited_loss = customer_globals.waited_loss + 1
				else: 
					customer_globals.sales_lost = customer_globals.sales_lost + 1
					customer_globals.storefront_loss = customer_globals.storefront_loss + 1
	customer_math.new_predictions()
	supplies.new_supply_prices()
	customer_math.daily_marketshare_adjustment()
	pixel_small()
	get_tree().change_scene("res://strategy.tscn")

func _on_play_button_down():
	pixel_small()
	get_node("skip_or_play").set_hidden(true)
	if (towns.town_select == "hollyhock"):
		get_tree().change_scene("res://hollyhock_time_management.tscn")
	if (towns.town_select == "fiyork"):
		get_tree().change_scene("res://fiyork_time_management.tscn")
	
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
	if (towns.town_select == "fiyork"):
		if (fiyork.fiyork_entertainment_best_key == true):
			randomness = [true, true, true, true, true]
		if (fiyork.fiyork_entertainment_best_key == false) and (fiyork.fiyork_entertainment_great_key == true):
			randomness = [true, true, true, true, false]
		if (fiyork.fiyork_entertainment_great_key == false) and (fiyork.fiyork_entertainment_good_key == true):
			randomness = [true, true, true, false]
		if (fiyork.fiyork_entertainment_good_key == false) and (fiyork.fiyork_entertainment_decent_key == true):
			randomness = [true, true, true, false]
		if (fiyork.fiyork_entertainment_decent_key == false) and (fiyork.fiyork_entertainment_worst_key == true):
			randomness = [true, true, false]
		
func buy_soda():
	if (towns.town_select == "hollyhock"):
		var charge_price = supplies.hollyhock_soda_price
		money.hollyhock_balance = money.hollyhock_balance + charge_price
		supplies.hollyhock_soda_count = supplies.hollyhock_soda_count - 1
		supplies.soda_yesterday_used = supplies.soda_yesterday_used + 1
		money.income = money.income + charge_price
		
func buy_freezie():
	if (towns.town_select == "fiyork"):
		var charge_price = supplies.fiyork_freezie_price
		money.fiyork_balance = money.fiyork_balance + charge_price
		supplies.fiyork_freezie_count = supplies.fiyork_freezie_count - 1
		supplies.freezie_yesterday_used = supplies.freezie_yesterday_used + 1
		money.income = money.income + charge_price
	
func buy_popcorn():
	if (towns.town_select == "hollyhock"):
		var charge_price = supplies.hollyhock_popcorn_price
		money.hollyhock_balance = money.hollyhock_balance + charge_price
		supplies.hollyhock_popcorn_count = supplies.hollyhock_popcorn_count - 1
		supplies.popcorn_yesterday_used = supplies.popcorn_yesterday_used + 1
		money.income = money.income + charge_price
		
func buy_pizza():
	if (towns.town_select == "fiyork"):
		var charge_price = supplies.fiyork_pizza_price
		money.fiyork_balance = money.fiyork_balance + charge_price
		supplies.fiyork_pizza_count = supplies.fiyork_pizza_count - 1
		supplies.pizza_yesterday_used = supplies.pizza_yesterday_used + 1
		money.income = money.income + charge_price
		
func pixel_big():
	pixel.set_pos(Vector2(0.17552, 0.761547))
	pixel.set_scale(Vector2(0.99308, 1.009797))
	
func pixel_small():
	pixel.set_pos(Vector2(17.910009, 24.698957))
	pixel.set_scale(Vector2(0.443099, 0.357029))

func _on_pixel_button_button_down():
	get_tree().set_pause(true)
	pixel_big()
	get_node("menu").set_hidden(false)
	get_node("menu/sound_slider").set_value(int(sound.volume * 100))

func _on_sound_slider_value_changed( value ):
	new_volume = value / 100
	sound.volume = new_volume
	get_node("StreamPlayer").set_volume(new_volume)

func _on_return_to_game_button_down():
	get_tree().set_pause(false)
	pixel_small()
	get_node("menu").set_hidden(true)


func _on_restart_village_button_down():
	get_node("menu").set_hidden(true)
	get_node("are_you_sure").set_hidden(false)

func _on_yes_restart_button_down():
	get_tree().set_pause(false)
	if (towns.town_select == "hollyhock"):
		pixel_small()
		game_over.game_over_hollyhock()
	if (towns.town_select == "fiyork"):
		pixel_small()
		game_over.game_over_fiyork()

func _on_no_restart_button_down():
	get_node("are_you_sure").set_hidden(true)
	get_node("menu").set_hidden(false)

func _on_quit_to_main_button_down():
	get_node("menu").set_hidden(true)
	get_node("are_you_sure_2").set_hidden(false)


func _on_yes_main_menu_button_down():
	get_tree().set_pause(false)
	get_tree().change_scene("res://player_selection.tscn")

func _on_no_main_menu_button_down():
	get_node("are_you_sure_2").set_hidden(true)
	get_node("menu").set_hidden(false)

func set_sound():
	if (sound.music_mute == false):
		sound.volume = 1
	if (sound.music_mute == true):
		sound.volume = 0
	get_node("StreamPlayer").set_volume(sound.volume)
	
	