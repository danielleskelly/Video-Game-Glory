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
onready var tutorial_games = get_node("tutorial_games")
onready var tutorial_pricing = get_node("tutorial_pricing")
onready var tutorial_marketing = get_node("tutorial_marketing")
onready var tutorial_upgrades = get_node("tutorial_upgrades")
onready var tutorial_locals = get_node("tutorial_locals")
onready var tutorial_research = get_node("tutorial_research")
onready var finish_up = get_node("finish_up")
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

func _ready():
	tutorial_start()
	research_countdown()
	set_process(true)
	pass
	
func _process(delta):
	if (towns.town_select == "hollyhock"):
		if ((get_node("AnimationPlayer").get_current_animation() == "tutorial") and (set_genre.hollyhock_station_one_selection == 1) and (set_genre.hollyhock_station_two_selection == 1)):
			get_node("AnimationPlayer").play("tutorial_pt2")
		if (((money.hollyhock_cash - money.hollyhock_expenses) < 0) and (money.hollyhock_expenses == 0) and (loans.hollyhock_current_loan == loans.credit_limit)):
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
				pixel.set_hidden(false)
				get_tree().set_pause(true)
			if ((keys.hollyhock_genre_two_key == true) and (keys.hollyhock_genre_three_key == false)):
				keys.hollyhock_genre_three_key = true
				hollyhock.hollyhock_research_fund = 0
				hollyhock.hollyhock_research_spending = 0
				genre_discovery.set_hidden(false)
				pixel.set_hidden(false)
				get_tree().set_pause(true)

func _on_start_day_button_up():
	if (towns.town_select == "hollyhock"):
		if (money.hollyhock_balance - money.hollyhock_expenses < 0):
			low_funds_warning.set_hidden(false)
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
			print("Pop up asks if player would like to play the day or skip the day. If they skip then do the calculations for them")
			get_tree().change_scene("res://time_management.tscn")

func _on_low_funds_ok_button_down():
	low_funds_warning.set_hidden(true)
	pixel.set_hidden(true)
	get_tree().set_pause(false)


func _on_genre_discover_ok_button_down():
	genre_discovery.set_hidden(true)
	pixel.set_hidden(true)
	get_tree().set_pause(false)

func _on_continue_ok_button_down():
	hollyhock_complete.set_hidden(true)
	pixel.set_hidden(true)
	get_tree().set_pause(false)
	towns.town_select = "fiyork"
	money.income = 0
	customer_globals.sales_lost = 0
	customer_globals.sales_made = 0
	customer_globals.storefront_loss = 0
	customer_globals.price_loss = 0
	customer_globals.waited_loss = 0
	customer_globals.sabatoge_loss = 0
	customer_math.one_cash = 0
	customer_math.two_cash = 0
	customer_math.one_sales_made = 0
	customer_math.two_sales_made = 0
	customer_math.one_sales_lost = 0
	customer_math.two_sales_lost = 0
	
func tutorial_start():
	if (tutorial.tutorial_start == false):
		tutorial_start.show()
		pixel.show()
	if (tutorial.tutorial_start == true):
		pass

func _on_tutorial_start_no_button_button_down():
	tutorial.tutorial_start = true
	tutorial_start.set_hidden(true)
	pixel.set_hidden(true)
	tutorial.time_management_start = true
	
func _on_tutorial_start_yes_button_button_down():
	tutorial.tutorial_start = true
	get_tree().get_current_scene().get_node("AnimationPlayer").play("tutorial")


func _on_game_over_ok_button_down():
	if (towns.town_select == "hollyhock"):
		pixel.set_hidden(true)
		game_over_alert.set_hidden(true)
		game_over.game_over_hollyhock()