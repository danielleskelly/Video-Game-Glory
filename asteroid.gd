extends Node2D

onready var countdown_timer = get_node("countdown_timer")

var hundreds
var tens
var ones

var customer_choice
var price_choice
var randomness
var rand_arcade_price
var concession_choice
var concessions_desire
var concessions_price_check

onready var pixel = get_node("pixel")

var screen_size
var rock_load
var bullet_load
var ship_pos
var kill_count = 0
var spawn_box  = []
var div = 25
const LEVEL_CAP = 10
const ROCK_SPEED = .1
const BULLET_SPEED = 500


func _ready():
	pixel_small()
	get_node("StreamPlayer").set_volume(sound.volume)
	
	
	screen_size = get_viewport_rect().size
	
	# top
	for i in range(0,div):
		spawn_box.append(Vector2((i * (screen_size.x))/div, 0))
	
	# bottom
	for i in range(0, div):
		spawn_box.append(Vector2((i * (screen_size.x))/div, screen_size.y))
	
	# left
	for i in range(0, div):
		spawn_box.append(Vector2(0, (i * (screen_size.y))/div))
	
	# right
	for i in range(0, div) :
		spawn_box.append(Vector2(screen_size.x, (i + (screen_size.y))/div))
	
	rock_load = preload("res://rock.scn")
	bullet_load = preload("res://bullet.scn")
	ship_pos = get_node("spaceship").get_pos()
	get_node("rock_timer").set_wait_time(4.0)
	set_fixed_process(true)
	set_process(true)

func clear_rocks(z):
	var rock_place = z.get_pos() 
	if ((rock_place.x < -100) or (rock_place.x > screen_size.x) or (rock_place.y < -100) or (rock_place.y > screen_size.y)):
		z.free()

func clear_bullets(a):
	var bullet_place = a.get_pos()
	if ((bullet_place.x < -100) or (bullet_place.x > screen_size.x) or (bullet_place.y < -100) or (bullet_place.y > screen_size.y)):
		a.free()

func level_report():
	kill_count = kill_count + 1
	if (kill_count > 100):
		LEVEL_CAP = 100
		ROCK_SPEED = .9
		get_node("rock_timer").set_wait_time(1.8)
	elif (kill_count > 90):
		LEVEL_CAP = 90
		ROCK_SPEED = .9
		get_node("rock_timer").set_wait_time(1.7)
	elif (kill_count > 80):
		LEVEL_CAP = 80
		ROCK_SPEED = .8
		get_node("rock_timer").set_wait_time(1.8)
	elif (kill_count > 70):
		LEVEL_CAP = 70
		ROCK_SPEED = .8
		get_node("rock_timer").set_wait_time(1.9)
	elif (kill_count > 60):
		LEVEL_CAP = 60
		ROCK_SPEED = .7
		get_node("rock_timer").set_wait_time(2.0)
	elif (kill_count > 50):
		LEVEL_CAP = 50
		ROCK_SPEED = .7
		get_node("rock_timer").set_wait_time(2.1)
	elif (kill_count > 40):
		LEVEL_CAP = 40
		ROCK_SPEED = .6
		get_node("rock_timer").set_wait_time(2.2)
	elif (kill_count > 30):
		LEVEL_CAP = 30
		ROCK_SPEED = .6
		get_node("rock_timer").set_wait_time(2.3)
	elif (kill_count > 20):
		LEVEL_CAP = 20
		ROCK_SPEED = .5
		get_node("rock_timer").set_wait_time(2.4)
	elif (kill_count < 20):
		LEVEL_CAP = 10
		ROCK_SPEED = .5
		get_node("rock_timer").set_wait_time(2.5)

func _on_pop_timer_timeout():
	hide_explosion()
	
func hide_explosion():
	get_node("explosion").hide()

func _fixed_process(delta):
	var bodies = get_tree().get_nodes_in_group("rocks")
	for body in bodies:
		var colliders = body.get_colliding_bodies()
		for collider in colliders:
			if (collider.is_in_group("bullets")):
				perks.success = perks.success + 1
				var explosion_place = body.get_pos()
				get_node("explosion").set_pos(explosion_place)
				get_node("explosion").show()
				body.free()
				level_report()
				get_node("pop_timer").start()

func _process(delta):
	get_node("spaceship").set_pos(Vector2(549.546021, 244.014999))
	hundreds = get_node("success_background/hundreths")
	tens = get_node("success_background/tens")
	ones = get_node("success_background/ones")
	point_display()
	countdown_timer.clear()
	countdown_timer.add_text(str(int(get_node("day_timer").get_time_left())))
	
	
	if (Input.is_action_pressed("pause")):
			get_tree().set_pause(true)
			get_node("pause_popup").show()
	
	if (Input.is_action_pressed("move_left")):
		get_node("spaceship").rotate(6 * delta)
	
	if (Input.is_action_pressed("move_right")):
		get_node("spaceship").rotate(-6 * delta)
	
	if ((Input.is_action_pressed("fire") and (get_node("bullet_timer").get_time_left() == 0))):
		var ship_rot = get_node("spaceship").get_rot() + PI
		var dir_vec = Vector2(sin(ship_rot), cos(ship_rot))
		var distance_from_me = 40
		var spawn_point = get_node("spaceship").get_pos() + (dir_vec * distance_from_me)
		var bullet = bullet_load.instance()
		bullet.set_pos(Vector2(spawn_point))
		add_child(bullet)
		bullet.add_to_group("bullets")
		bullet.apply_impulse(Vector2(0,0), Vector2(dir_vec*BULLET_SPEED))
		get_node("bullet_timer").start()
	var bullets = get_tree().get_nodes_in_group("bullets")
	for a in bullets:
		clear_bullets(a)
	
	while (( get_tree().get_nodes_in_group("rocks").size() < LEVEL_CAP ) and (get_node("rock_timer").get_time_left() == 0)) :
		var rock = rock_load.instance()
		var spawn_dot = spawn_box[randi() % spawn_box.size()]
		rock.set_pos(spawn_dot)
		var rock_pos = rock.get_pos()
		var dir_vec = (ship_pos - rock_pos) + Vector2(rand_range(-102,102), rand_range(-102,102))
		add_child(rock)
		rock.add_to_group("rocks")
		rock.apply_impulse(Vector2(0,0), Vector2(dir_vec*ROCK_SPEED))
		get_node("rock_timer").start()
	var rocks = get_tree().get_nodes_in_group("rocks")
	for z in rocks:
		clear_rocks(z)

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


func pixel_small():
	pixel.set_pos(Vector2(935.401794, 443.686035))
	pixel.set_scale(Vector2(1.755808, 2.028206))


func pixel_big():
	pixel.set_pos(Vector2(840.483521, 280.641785))
	pixel.set_scale(Vector2(3.824269, 4.648254))

func _on_day_timer_timeout():
	customer_math.customer_math()
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
							var concession_options = ["fiyork", "pizza", "both"]
							concessions_desire = concession_options[randi() % concession_options.size()]
							if (concessions_desire == "fiyork"):
								if (supplies.fiyork_fiyork_count > 0):
									var check_fiyork = supplies.fiyork_range_high - supplies.fiyork_fiyork_price #check if the fiyork price is too high
									if (check_fiyork <= 0):
										concessions_price_check = false
									else:
										concessions_price_check = true
									if (concessions_price_check == true): #if the price is not too high
										buy_fiyork()
							if (concessions_desire == "pizza"):
								if (supplies.fiyork_pizza_count > 0):
									var check_pizza = supplies.pizza_range_high - supplies.fiyork_pizza_price #check if the fiyork price is too high
									if (check_pizza <= 0):
										concessions_price_check = false
									else:
										concessions_price_check = true
									if (concessions_price_check == true): #if the price is not too high
										buy_pizza()
							if (concessions_desire == "both"):
								if ((supplies.fiyork_fiyork_count > 0) and (supplies.fiyork_pizza_count > 0)):
									var check_fiyork = supplies.fiyork_range_high - supplies.fiyork_fiyork_price #check if the fiyork price is too high
									var check_pizza = supplies.pizza_range_high - supplies.fiyork_pizza_price #check if the pizza price is too high
									if ((check_fiyork <= 0) or (check_pizza <= 0)):
										concessions_price_check = false
									else:
										concessions_price_check = true
									if (concessions_price_check == true): #if the price is not too high
										buy_fiyork()
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
								var concession_options = ["fiyork", "pizza", "both"]
								concessions_desire = concession_options[randi() % concession_options.size()]
								if (concessions_desire == "fiyork"):
									if (supplies.fiyork_fiyork_count > 0):
										var check_fiyork = supplies.fiyork_range_high - supplies.fiyork_fiyork_price #check if the fiyork price is too high
										if (check_fiyork <= 0):
											concessions_price_check = false
										else:
											concessions_price_check = true
										if (concessions_price_check == true): #if the price is not too high
											buy_fiyork()
								if (concessions_desire == "pizza"):
									if (supplies.fiyork_pizza_count > 0):
										var check_pizza = supplies.pizza_range_high - supplies.fiyork_pizza_price #check if the fiyork price is too high
										if (check_pizza <= 0):
											concessions_price_check = false
										else:
											concessions_price_check = true
										if (concessions_price_check == true): #if the price is not too high
											buy_pizza()
								if (concessions_desire == "both"):
									if ((supplies.fiyork_fiyork_count > 0) and (supplies.fiyork_pizza_count > 0)):
										var check_fiyork = supplies.fiyork_range_high - supplies.fiyork_fiyork_price #check if the fiyork price is too high
										var check_pizza = supplies.pizza_range_high - supplies.fiyork_pizza_price #check if the pizza price is too high
										if ((check_fiyork <= 0) or (check_pizza <= 0)):
											concessions_price_check = false
										else:
											concessions_price_check = true
										if (concessions_price_check == true): #if the price is not too high
											buy_fiyork()
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
								var concession_options = ["fiyork", "pizza", "both"]
								concessions_desire = concession_options[randi() % concession_options.size()]
								if (concessions_desire == "fiyork"):
									if (supplies.fiyork_fiyork_count > 0):
										var check_fiyork = supplies.fiyork_range_high - supplies.fiyork_fiyork_price #check if the fiyork price is too high
										if (check_fiyork <= 0):
											concessions_price_check = false
										else:
											concessions_price_check = true
										if (concessions_price_check == true): #if the price is not too high
											buy_fiyork()
								if (concessions_desire == "pizza"):
									if (supplies.fiyork_pizza_count > 0):
										var check_pizza = supplies.pizza_range_high - supplies.fiyork_pizza_price #check if the fiyork price is too high
										if (check_pizza <= 0):
											concessions_price_check = false
										else:
											concessions_price_check = true
										if (concessions_price_check == true): #if the price is not too high
											buy_pizza()
								if (concessions_desire == "both"):
									if ((supplies.fiyork_fiyork_count > 0) and (supplies.fiyork_pizza_count > 0)):
										var check_fiyork = supplies.fiyork_range_high - supplies.fiyork_fiyork_price #check if the fiyork price is too high
										var check_pizza = supplies.pizza_range_high - supplies.fiyork_pizza_price #check if the pizza price is too high
										if ((check_fiyork <= 0) or (check_pizza <= 0)):
											concessions_price_check = false
										else:
											concessions_price_check = true
										if (concessions_price_check == true): #if the price is not too high
											buy_fiyork()
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
	perk_check()
	customer_math.new_predictions()
	supplies.new_supply_prices()
	customer_math.daily_marketshare_adjustment()
	get_tree().change_scene("res://strategy.tscn")
	
func quick_wait_check():
	if (towns.town_select == "fiyork"):
		if (fiyork.hollyhock_entertainment_best_key == true):
			randomness = [true, true, true, true, true]
		if (fiyork.hollyhock_entertainment_best_key == false) and (fiyork.hollyhock_entertainment_great_key == true):
			randomness = [true, true, true, true, false]
		if (fiyork.hollyhock_entertainment_great_key == false) and (fiyork.hollyhock_entertainment_good_key == true):
			randomness = [true, true, true, false]
		if (fiyork.hollyhock_entertainment_good_key == false) and (fiyork.hollyhock_entertainment_decent_key == true):
			randomness = [true, true, true, false]
		if (fiyork.hollyhock_entertainment_decent_key == false) and (fiyork.hollyhock_entertainment_worst_key == true):
			randomness = [true, true, false]
		
func buy_fiyork():
	if (towns.town_select == "fiyork"):
		var charge_price = supplies.fiyork_fiyork_price
		money.fiyork_balance = money.fiyork_balance + charge_price
		supplies.fiyork_fiyork_count = supplies.fiyork_fiyork_count - 1
		supplies.fiyork_yesterday_used = supplies.fiyork_yesterday_used + 1
		money.income = money.income + charge_price
	
func buy_pizza():
	if (towns.town_select == "fiyork"):
		var charge_price = supplies.fiyork_pizza_price
		money.fiyork_balance = money.fiyork_balance + charge_price
		supplies.fiyork_pizza_count = supplies.fiyork_pizza_count - 1
		supplies.pizza_yesterday_used = supplies.pizza_yesterday_used + 1
		money.income = money.income + charge_price

func perk_check():
	if (towns.town_select == "fiyork"):
		if (int(perks.perk_goal) <= int(perks.success)):
			if (perks.perk_num == 1):
				supplies.fiyork_fiyork_count = supplies.fiyork_fiyork_count + 5
				supplies.fiyork_pizza_count = supplies.fiyork_pizza_count + 5
			elif (perks.perk_num == 2):
				customer_math.fiyork_player_marketshare = int(customer_math.fiyork_player_marketshare) + .1
			elif (perks.perk_num == 3):
				money.fiyork_balance = money.fiyork_balance + 50
			elif (perks.perk_num == 4):
				supplies.fiyork_fiyork_count = supplies.fiyork_fiyork_count + 10
				supplies.fiyork_pizza_count = supplies.fiyork_pizza_count + 10
			elif (perks.perk_num == 5):
				supplies.fiyork_fiyork_count = supplies.fiyork_fiyork_count + 20
				supplies.fiyork_pizza_count = supplies.fiyork_pizza_count + 20
			elif (perks.perk_num == 6):
				money.fiyork_balance = money.fiyork_balance + 25
