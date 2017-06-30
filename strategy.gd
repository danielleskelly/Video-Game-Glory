extends Node2D

#display nodes
onready var genre_one = get_node("genre_one")
onready var genre_two = get_node("genre_two")
onready var genre_three = get_node("genre_three")
onready var supply_one = get_tree().get_current_scene().get_node("supply_one")
onready var supply_two = get_tree().get_current_scene().get_node("supply_two")
onready var town_banner = get_tree().get_current_scene().get_node("town_banner")
onready var low_funds_warning = get_tree().get_current_scene().get_node("low_funds_warning")
onready var game_over = get_tree().get_current_scene().get_node("game_over")
onready var genre_discovery = get_node("genre_discovery")
onready var hollyhock_complete = get_node("hollyhock_complete")
onready var tutorial_start = get_node("tutorial_start")
onready var tutorial_persistent_menu = get_node("tutorial_persistent_menu")
onready var tutorial_reports = get_node("tutorial_reports")
onready var tutorial_news = get_node("tutorial_news")
onready var tutorial_supplies = get_node("tutorial_supplies")
onready var tutorial_games = get_node("tutorial_games")
onready var tutorial_pricing = get_node("tutorial_pricing")
onready var tutorial_marketing = get_node("tutorial_marketing")
onready var tutorial_upgrades = get_node("tutorial_upgrades")
onready var tutorial_locals = get_node("tutorial_locals")
onready var tutorial_research = get_node("tutorial_research")
onready var finish_up = get_node("finish_up")

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
		if (((money.hollyhock_cash - money.hollyhock_expenses) < 0) and (money.hollyhock_expenses == 0) and (loans.hollyhock_current_loan == loans.credit_limit)):
			game_over.set_hidden(false)
			get_tree().set_pause(true)
		if (customer_math.hollyhock_player_marketshare >= .75):
			hollyhock_complete.set_hidden(false)
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
				get_tree().set_pause(true)
			if ((keys.hollyhock_genre_two_key == true) and (keys.hollyhock_genre_three_key == false)):
				keys.hollyhock_genre_three_key = true
				hollyhock.hollyhock_research_fund = 0
				hollyhock.hollyhock_research_spending = 0
				genre_discovery.set_hidden(false)
				get_tree().set_pause(true)

func _on_start_day_button_up():
	if (towns.town_select == "hollyhock"):
		if (money.hollyhock_balance - money.hollyhock_expenses < 0):
			low_funds_warning.set_hidden(false)
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
	get_tree().set_pause(false)

func _on_game_over_ok_button_down():
	if (towns.town_select == "hollyhock"):
		game_over.game_over_hollyhock()

func _on_genre_discover_ok_button_down():
	genre_discovery.set_hidden(true)
	get_tree().set_pause(false)

func _on_continue_ok_button_down():
	hollyhock_complete.set_hidden(true)
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
	if (tutorial.tutorial_start == true):
		pass

func _on_tutorial_start_yes_button_button_down():
	tutorial.tutorial_start = true
	tutorial_start.set_hidden(true)
	tutorial_persistent_menu.set_hidden(false)
	get_tree().get_current_scene().get_node("tutorial_persistent_menu/persistent_menu_timer").start()
	get_tree().set_pause(true)

func _on_tutorial_start_no_button_button_down():
	tutorial.tutorial_start = true
	tutorial_start.set_hidden(true)
	get_tree().set_pause(false)
	tutorial.time_management_start = true

func _on_persistent_menu_timer_timeout():
	if (tutorial.tutorial_title_box == false):
		get_tree().get_current_scene().get_node("tutorial_persistent_menu/title_box_border").set_hidden(false)
		get_tree().get_current_scene().get_node("tutorial_persistent_menu/title_box_pointer").set_hidden(false)
		get_tree().get_current_scene().get_node("tutorial_persistent_menu/prediction_border").set_hidden(true)
		get_tree().get_current_scene().get_node("tutorial_persistent_menu/prediction_pointer").set_hidden(true)
		get_tree().get_current_scene().get_node("tutorial_persistent_menu/supplies_border").set_hidden(true)
		get_tree().get_current_scene().get_node("tutorial_persistent_menu/supplies_pointer").set_hidden(true)
		get_tree().get_current_scene().get_node("tutorial_persistent_menu/finances_border").set_hidden(true)
		get_tree().get_current_scene().get_node("tutorial_persistent_menu/finances_pointer").set_hidden(true)
		get_tree().get_current_scene().get_node("tutorial_persistent_menu/warning").clear()
		get_tree().get_current_scene().get_node("tutorial_persistent_menu/warning").add_text("This is the town name, so you can always know which village you are working in.")
		get_tree().get_current_scene().get_node("tutorial_persistent_menu/persistent_menu_timer").start()
		tutorial.tutorial_title_box = true
	elif ((tutorial.tutorial_title_box == true) and (tutorial.tutorial_prediction_box == false)):
		get_tree().get_current_scene().get_node("tutorial_persistent_menu/title_box_border").set_hidden(true)
		get_tree().get_current_scene().get_node("tutorial_persistent_menu/title_box_pointer").set_hidden(true)
		get_tree().get_current_scene().get_node("tutorial_persistent_menu/prediction_border").set_hidden(false)
		get_tree().get_current_scene().get_node("tutorial_persistent_menu/prediction_pointer").set_hidden(false)
		get_tree().get_current_scene().get_node("tutorial_persistent_menu/supplies_border").set_hidden(true)
		get_tree().get_current_scene().get_node("tutorial_persistent_menu/supplies_pointer").set_hidden(true)
		get_tree().get_current_scene().get_node("tutorial_persistent_menu/finances_border").set_hidden(true)
		get_tree().get_current_scene().get_node("tutorial_persistent_menu/finances_pointer").set_hidden(true)
		get_tree().get_current_scene().get_node("tutorial_persistent_menu/warning").clear()
		get_tree().get_current_scene().get_node("tutorial_persistent_menu/warning").add_text("This is the prediction meter. It will tell you how popular a certain genre of game will be for the next day. We will purchase supplies and price according to these numbers.")
		get_tree().get_current_scene().get_node("tutorial_persistent_menu/persistent_menu_timer").start()
		tutorial.tutorial_prediction_box = true
	elif ((tutorial.tutorial_prediction_box == true) and (tutorial.tutorial_supplies_box == false)):
		get_tree().get_current_scene().get_node("tutorial_persistent_menu/title_box_border").set_hidden(true)
		get_tree().get_current_scene().get_node("tutorial_persistent_menu/title_box_pointer").set_hidden(true)
		get_tree().get_current_scene().get_node("tutorial_persistent_menu/prediction_border").set_hidden(true)
		get_tree().get_current_scene().get_node("tutorial_persistent_menu/prediction_pointer").set_hidden(true)
		get_tree().get_current_scene().get_node("tutorial_persistent_menu/supplies_border").set_hidden(false)
		get_tree().get_current_scene().get_node("tutorial_persistent_menu/supplies_pointer").set_hidden(false)
		get_tree().get_current_scene().get_node("tutorial_persistent_menu/finances_border").set_hidden(true)
		get_tree().get_current_scene().get_node("tutorial_persistent_menu/finances_pointer").set_hidden(true)
		get_tree().get_current_scene().get_node("tutorial_persistent_menu/warning").clear()
		get_tree().get_current_scene().get_node("tutorial_persistent_menu/warning").add_text("These boxes will tell us our current stock of supplies. There will always be two supplies for each town and they are sold as a set so it is best to purchase an equal number of each..")
		get_tree().get_current_scene().get_node("tutorial_persistent_menu/persistent_menu_timer").start()
		tutorial.tutorial_supplies_box = true
	elif ((tutorial.tutorial_supplies_box == true) and (tutorial.tutorial_finances_box == false)):
		get_tree().get_current_scene().get_node("tutorial_persistent_menu/title_box_border").set_hidden(true)
		get_tree().get_current_scene().get_node("tutorial_persistent_menu/title_box_pointer").set_hidden(true)
		get_tree().get_current_scene().get_node("tutorial_persistent_menu/prediction_border").set_hidden(true)
		get_tree().get_current_scene().get_node("tutorial_persistent_menu/prediction_pointer").set_hidden(true)
		get_tree().get_current_scene().get_node("tutorial_persistent_menu/supplies_border").set_hidden(true)
		get_tree().get_current_scene().get_node("tutorial_persistent_menu/supplies_pointer").set_hidden(true)
		get_tree().get_current_scene().get_node("tutorial_persistent_menu/finances_border").set_hidden(false)
		get_tree().get_current_scene().get_node("tutorial_persistent_menu/finances_pointer").set_hidden(false)
		get_tree().get_current_scene().get_node("tutorial_persistent_menu/persistent_menu_ok").set_hidden(false)
		get_tree().get_current_scene().get_node("tutorial_persistent_menu/warning").clear()
		get_tree().get_current_scene().get_node("tutorial_persistent_menu/warning").add_text("And this is the most important box of all, our current finances. Lots of things will effect this so we will get to that as we go along.")
		tutorial.tutorial_finances_box = true


func _on_persistent_menu_ok_button_down():
	tutorial_persistent_menu.set_hidden(true)
	tutorial_reports.set_hidden(false)
	get_node("report_buttons").set_hidden(false)
	get_node("upgrade_buttons").set_hidden(true)
	get_node("locals_buttons").set_hidden(true)
	get_node("pricing_buttons").set_hidden(true)
	get_node("finances_full").set_hidden(false)
	get_node("customers").set_hidden(true)
	get_node("competition").set_hidden(true)
	get_node("news").set_hidden(true)
	get_node("supplies_full").set_hidden(true)
	get_node("sabatoge").set_hidden(true)
	get_node("marketing").set_hidden(true)
	get_node("storefront").set_hidden(true)
	get_node("loans").set_hidden(true)
	get_node("research").set_hidden(true)
	get_node("games").set_hidden(true)
	get_node("arcade_pricing").set_hidden(true)
	get_node("concessions_pricing").set_hidden(true)
	get_node("entertainment").set_hidden(true)
	get_node("arcade_upgrade").set_hidden(true)
	get_node("tutorial_reports/reports_button_ok").set_hidden(true)
	get_node("tutorial_reports/reports_menu_timer").start()
	get_node("tutorial_reports/reports_pointer").set_hidden(false)
	get_node("tutorial_reports/finances_pointer").set_hidden(false)
	get_node("tutorial_reports/reports_box").set_hidden(false)
	get_node("tutorial_reports/finances_box").set_hidden(false)
	get_node("tutorial_reports/other_pointer").set_hidden(true)
	get_node("tutorial_reports/other_box").set_hidden(true)


func _on_reports_menu_timer_timeout():
	get_node("report_buttons").set_hidden(false)
	get_node("upgrade_buttons").set_hidden(true)
	get_node("sabatoge").set_hidden(true)
	get_node("locals_buttons").set_hidden(true)
	get_node("pricing_buttons").set_hidden(true)
	get_node("finances_full").set_hidden(false)
	get_node("customers").set_hidden(true)
	get_node("competition").set_hidden(true)
	get_node("news").set_hidden(true)
	get_node("supplies_full").set_hidden(true)
	get_node("marketing").set_hidden(true)
	get_node("storefront").set_hidden(true)
	get_node("loans").set_hidden(true)
	get_node("research").set_hidden(true)
	get_node("games").set_hidden(true)
	get_node("arcade_pricing").set_hidden(true)
	get_node("concessions_pricing").set_hidden(true)
	get_node("entertainment").set_hidden(true)
	get_node("arcade_upgrade").set_hidden(true)
	get_node("tutorial_reports/reports_button_ok").set_hidden(false)
	get_node("tutorial_reports/reports_pointer").set_hidden(true)
	get_node("tutorial_reports/finances_pointer").set_hidden(true)
	get_node("tutorial_reports/reports_box").set_hidden(true)
	get_node("tutorial_reports/finances_box").set_hidden(true)
	get_node("tutorial_reports/other_pointer").set_hidden(false)
	get_node("tutorial_reports/other_box").set_hidden(false)
	get_node("tutorial_reports/warning").clear()
	get_node("tutorial_reports/warning").add_text("These tabs will tell you about our customers and our competition, but you look at it after we are done. I can already tell you the situation is grim.")
	


func _on_reports_button_ok_button_down():
	tutorial_reports.set_hidden(true)
	tutorial_news.set_hidden(false)
	get_node("report_buttons").set_hidden(true)
	get_node("upgrade_buttons").set_hidden(true)
	get_node("locals_buttons").set_hidden(true)
	get_node("pricing_buttons").set_hidden(true)
	get_node("finances_full").set_hidden(true)
	get_node("customers").set_hidden(true)
	get_node("competition").set_hidden(true)
	get_node("news").set_hidden(false)
	get_node("supplies_full").set_hidden(true)
	get_node("sabatoge").set_hidden(true)
	get_node("marketing").set_hidden(true)
	get_node("storefront").set_hidden(true)
	get_node("loans").set_hidden(true)
	get_node("research").set_hidden(true)
	get_node("games").set_hidden(true)
	get_node("arcade_pricing").set_hidden(true)
	get_node("concessions_pricing").set_hidden(true)
	get_node("entertainment").set_hidden(true)
	get_node("arcade_upgrade").set_hidden(true)

func _on_news_button_ok_button_down():
	tutorial_news.set_hidden(true)
	tutorial_supplies.set_hidden(false)
	get_node("report_buttons").set_hidden(true)
	get_node("upgrade_buttons").set_hidden(true)
	get_node("locals_buttons").set_hidden(true)
	get_node("pricing_buttons").set_hidden(true)
	get_node("finances_full").set_hidden(true)
	get_node("customers").set_hidden(true)
	get_node("competition").set_hidden(true)
	get_node("news").set_hidden(true)
	get_node("sabatoge").set_hidden(true)
	get_node("supplies_full").set_hidden(false)
	get_node("marketing").set_hidden(true)
	get_node("storefront").set_hidden(true)
	get_node("loans").set_hidden(true)
	get_node("research").set_hidden(true)
	get_node("games").set_hidden(true)
	get_node("arcade_pricing").set_hidden(true)
	get_node("concessions_pricing").set_hidden(true)
	get_node("entertainment").set_hidden(true)
	get_node("arcade_upgrade").set_hidden(true)

func _on_supplies_button_ok_button_down():
	tutorial_supplies.set_hidden(true)
	tutorial_games.set_hidden(false)
	get_node("report_buttons").set_hidden(true)
	get_node("upgrade_buttons").set_hidden(true)
	get_node("locals_buttons").set_hidden(true)
	get_node("pricing_buttons").set_hidden(true)
	get_node("finances_full").set_hidden(true)
	get_node("customers").set_hidden(true)
	get_node("competition").set_hidden(true)
	get_node("sabatoge").set_hidden(true)
	get_node("news").set_hidden(true)
	get_node("supplies_full").set_hidden(true)
	get_node("marketing").set_hidden(true)
	get_node("storefront").set_hidden(true)
	get_node("loans").set_hidden(true)
	get_node("research").set_hidden(true)
	get_node("games").set_hidden(false)
	get_node("arcade_pricing").set_hidden(true)
	get_node("concessions_pricing").set_hidden(true)
	get_node("entertainment").set_hidden(true)
	get_node("arcade_upgrade").set_hidden(true)


func _on_games_button_ok_button_down():
	tutorial_games.set_hidden(true)
	tutorial_pricing.set_hidden(false)
	get_node("report_buttons").set_hidden(true)
	get_node("upgrade_buttons").set_hidden(true)
	get_node("locals_buttons").set_hidden(true)
	get_node("pricing_buttons").set_hidden(false)
	get_node("finances_full").set_hidden(true)
	get_node("customers").set_hidden(true)
	get_node("competition").set_hidden(true)
	get_node("news").set_hidden(true)
	get_node("sabatoge").set_hidden(true)
	get_node("supplies_full").set_hidden(true)
	get_node("marketing").set_hidden(true)
	get_node("storefront").set_hidden(true)
	get_node("loans").set_hidden(true)
	get_node("research").set_hidden(true)
	get_node("games").set_hidden(true)
	get_node("arcade_pricing").set_hidden(true)
	get_node("concessions_pricing").set_hidden(false)
	get_node("entertainment").set_hidden(true)
	get_node("arcade_upgrade").set_hidden(true)
	

func _on_pricing_button_one_button_down():
	get_node("report_buttons").set_hidden(true)
	get_node("upgrade_buttons").set_hidden(true)
	get_node("locals_buttons").set_hidden(true)
	get_node("pricing_buttons").set_hidden(false)
	get_node("finances_full").set_hidden(true)
	get_node("customers").set_hidden(true)
	get_node("competition").set_hidden(true)
	get_node("news").set_hidden(true)
	get_node("supplies_full").set_hidden(true)
	get_node("marketing").set_hidden(true)
	get_node("storefront").set_hidden(true)
	get_node("loans").set_hidden(true)
	get_node("research").set_hidden(true)
	get_node("games").set_hidden(true)
	get_node("sabatoge").set_hidden(true)
	get_node("arcade_pricing").set_hidden(false)
	get_node("concessions_pricing").set_hidden(true)
	get_node("entertainment").set_hidden(true)
	get_node("arcade_upgrade").set_hidden(true)
	get_node("tutorial_pricing/first_background").set_hidden(true)
	get_node("tutorial_pricing/second_background").set_hidden(false)
	get_node("tutorial_pricing/first_warning").set_hidden(true)
	get_node("tutorial_pricing/second_warning").set_hidden(false)
	get_node("tutorial_pricing/pricing_button_one").set_hidden(true)
	get_node("tutorial_pricing/pricing_button_two").set_hidden(false)
	get_node("tutorial_pricing/pricing_pointer").set_hidden(true)
	get_node("tutorial_pricing/warning_to_prediction").set_hidden(true)
	get_node("tutorial_pricing/concessions_over").set_hidden(true)
	get_node("tutorial_pricing/arcades_over").set_hidden(false)
	get_node("tutorial_pricing/pricing_to_concessions").set_hidden(true)
	get_node("tutorial_pricing/pricing_to_arcades").set_hidden(false)
	get_node("tutorial_pricing/concessions_tab_box").set_hidden(true)
	get_node("tutorial_pricing/arcades_box").set_hidden(false)
	get_node("tutorial_pricing/prediction_box").set_hidden(true)
	

func _on_pricing_button_two_button_down():
	tutorial_pricing.set_hidden(true)
	tutorial_marketing.set_hidden(false)
	get_node("report_buttons").set_hidden(true)
	get_node("upgrade_buttons").set_hidden(true)
	get_node("locals_buttons").set_hidden(true)
	get_node("pricing_buttons").set_hidden(true)
	get_node("finances_full").set_hidden(true)
	get_node("customers").set_hidden(true)
	get_node("competition").set_hidden(true)
	get_node("news").set_hidden(true)
	get_node("supplies_full").set_hidden(true)
	get_node("sabatoge").set_hidden(true)
	get_node("marketing").set_hidden(false)
	get_node("storefront").set_hidden(true)
	get_node("loans").set_hidden(true)
	get_node("research").set_hidden(true)
	get_node("games").set_hidden(true)
	get_node("arcade_pricing").set_hidden(true)
	get_node("concessions_pricing").set_hidden(true)
	get_node("entertainment").set_hidden(true)
	get_node("arcade_upgrade").set_hidden(true)


func _on_marketing_button_button_down():
	tutorial_marketing.set_hidden(true)
	tutorial_upgrades.set_hidden(false)
	get_node("report_buttons").set_hidden(true)
	get_node("upgrade_buttons").set_hidden(false)
	get_node("locals_buttons").set_hidden(true)
	get_node("pricing_buttons").set_hidden(true)
	get_node("finances_full").set_hidden(true)
	get_node("customers").set_hidden(true)
	get_node("competition").set_hidden(true)
	get_node("news").set_hidden(true)
	get_node("supplies_full").set_hidden(true)
	get_node("sabatoge").set_hidden(true)
	get_node("marketing").set_hidden(true)
	get_node("storefront").set_hidden(false)
	get_node("loans").set_hidden(true)
	get_node("research").set_hidden(true)
	get_node("games").set_hidden(true)
	get_node("arcade_pricing").set_hidden(true)
	get_node("concessions_pricing").set_hidden(true)
	get_node("entertainment").set_hidden(true)
	get_node("arcade_upgrade").set_hidden(true)


func _on_upgrades_button_button_down():
	tutorial_upgrades.set_hidden(true)
	tutorial_locals.set_hidden(false)
	get_node("tutorial_locals/locals_timer").start()
	get_node("report_buttons").set_hidden(true)
	get_node("upgrade_buttons").set_hidden(true)
	get_node("locals_buttons").set_hidden(false)
	get_node("pricing_buttons").set_hidden(true)
	get_node("finances_full").set_hidden(true)
	get_node("customers").set_hidden(true)
	get_node("competition").set_hidden(true)
	get_node("news").set_hidden(true)
	get_node("supplies_full").set_hidden(true)
	get_node("sabatoge").set_hidden(false)
	get_node("marketing").set_hidden(true)
	get_node("storefront").set_hidden(true)
	get_node("loans").set_hidden(true)
	get_node("research").set_hidden(true)
	get_node("games").set_hidden(true)
	get_node("arcade_pricing").set_hidden(true)
	get_node("concessions_pricing").set_hidden(true)
	get_node("entertainment").set_hidden(true)
	get_node("arcade_upgrade").set_hidden(true)


func _on_locals_timer_timeout():
	get_node("tutorial_locals/second_warning").set_hidden(false)
	get_node("tutorial_locals/first_warning").set_hidden(true)
	get_node("sabatoge").set_hidden(true)
	get_node("loans").set_hidden(true)
	get_node("tutorial_locals/locals_button").set_hidden(false)

func _on_locals_button_button_down():
	tutorial_locals.set_hidden(true)
	tutorial_research.set_hidden(false)
	get_node("tutorial_locals/locals_timer").start()
	get_node("report_buttons").set_hidden(true)
	get_node("upgrade_buttons").set_hidden(true)
	get_node("locals_buttons").set_hidden(true)
	get_node("pricing_buttons").set_hidden(true)
	get_node("finances_full").set_hidden(true)
	get_node("customers").set_hidden(true)
	get_node("competition").set_hidden(true)
	get_node("news").set_hidden(true)
	get_node("supplies_full").set_hidden(true)
	get_node("sabatoge").set_hidden(true)
	get_node("marketing").set_hidden(true)
	get_node("storefront").set_hidden(true)
	get_node("loans").set_hidden(true)
	get_node("research").set_hidden(false)
	get_node("games").set_hidden(true)
	get_node("arcade_pricing").set_hidden(true)
	get_node("concessions_pricing").set_hidden(true)
	get_node("entertainment").set_hidden(true)
	get_node("arcade_upgrade").set_hidden(true)


func _on_research_button_button_down():
	tutorial_research.set_hidden(true)
	finish_up.show()
	get_tree().set_pause(false)
