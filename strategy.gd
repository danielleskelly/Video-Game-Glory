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

func _ready():
	tutorial_start()
	research_countdown()
	set_process(true)
	pass
	
func _process(delta):
	if (global.town_select == "hollyhock"):
		if (((finances_full.hollyhock_cash - finances_full.hollyhock_expenses) < 0) and (finances_full.hollyhock_expenses == 0) and (finances_full.hollyhock_current_loan == finances_full.credit_limit)):
			game_over.set_hidden(false)
			get_tree().set_pause(true)
		if (global.hollyhock_player_marketshare >= .75):
			hollyhock_complete.set_hidden(false)
			get_tree().set_pause(true)
		supply_one.get_child(2).clear()
		supply_one.get_child(2).add_text(str(global.hollyhock_soda_count))
		supply_two.get_child(2).clear()
		supply_two.get_child(2).add_text(str(global.hollyhock_popcorn_count))
		genre_one_count = global.meta_prediction
		genre_two_count = global.classic_prediction
		genre_two_key = global.hollyhock_genre_two_key
		genre_three_count = global.platformer_prediction
		genre_three_key = global.hollyhock_genre_three_key
		town_banner.get_child(1).clear()
		town_banner.get_child(1).add_text("Hollyhock")
	genre_one.get_child(2).clear()
	genre_one.get_child(2).add_text(str(int(genre_one_count * 100)))
	if (genre_two_key == true):
		genre_two.show()
		genre_two.get_child(2).clear()
		genre_two.get_child(2).add_text(str(int(genre_two_count * 100)))
	if (genre_two_key == false):
		genre_two.set_hidden(true)
	if (genre_three_key == true):
		genre_three.show()
		genre_three.get_child(2).clear()
		genre_three.get_child(2).add_text(str(int(genre_three_count * 100)))
	if (genre_three_key == false):
		genre_three.set_hidden(true)

func research_countdown():
	if (global.town_select == "hollyhock"):
		if (global.hollyhock_days_left_research - 1 > 0):
			global.hollyhock_days_left_research = global.hollyhock_days_left_research - 1
			global.hollyhock_research_fund = global.hollyhock_research_fund + global.hollyhock_research_spending
		if (global.hollyhock_days_left_research - 1 == 0):
			if (global.hollyhock_genre_two_key == false):
				global.hollyhock_genre_two_key = true
				global.hollyhock_research_fund = 0
				global.hollyhock_research_spending = 0
				genre_discovery.set_hidden(false)
				get_tree().set_pause(true)
			if ((global.hollyhock_genre_two_key == true) and (global.hollyhock_genre_three_key == false)):
				global.hollyhock_genre_three_key = true
				global.hollyhock_research_fund = 0
				global.hollyhock_research_spending = 0
				genre_discovery.set_hidden(false)
				get_tree().set_pause(true)

func _on_start_day_button_up():
	if (global.town_select == "hollyhock"):
		if (global.hollyhock_balance - global.hollyhock_expenses < 0):
			low_funds_warning.set_hidden(false)
			get_tree().set_pause(true)
		else:
			global.hollyhock_balance = global.hollyhock_balance - global.hollyhock_expenses
			global.soda_yesterday_used = 0
			global.popcorn_yesterday_used = 0
			if (global.hollyhock_current_loan > 0):
				var daily_interest_charge = global.hollyhock_current_loan * global.daily_interest
				global.hollyhock_balance = global.hollyhock_balance - int(daily_interest_charge)
			global.sales_made = 0
			global.sales_lost = 0
			global.storefront_loss = 0
			global.price_loss = 0
			global.waited_loss = 0
			global.sabatoge_loss= 0
			global.income = 0
			print("Pop up asks if player would like to play the day or skip the day. If they skip then do the calculations for them")
			get_tree().change_scene("res://time_management.tscn")

func _on_low_funds_ok_button_down():
	low_funds_warning.set_hidden(true)
	get_tree().set_pause(false)
	


func _on_game_over_ok_button_down():
	if (global.town_select == "hollyhock"):
		game_over.game_over_hollyhock()

func _on_genre_discover_ok_button_down():
	genre_discovery.set_hidden(true)
	get_tree().set_pause(false)


func _on_continue_ok_button_down():
	hollyhock_complete.set_hidden(true)
	get_tree().set_pause(false)
	global.town_select = "fiyork"
	global.income = 0
	global.sales_lost = 0
	global.sales_made = 0
	global.storefront_loss = 0
	global.price_loss = 0
	global.waited_loss = 0
	global.sabatoge_loss = 0
	global.one_cash = 0
	global.two_cash = 0
	global.one_sales_made = 0
	global.two_sales_made = 0
	global.one_sales_lost = 0
	global.two_sales_lost = 0
	
func tutorial_start():
	if (global.tutorial_start == false):
		tutorial_start.show()
	if (global.tutorial_start == true):
		pass

func _on_tutorial_start_yes_button_button_down():
	global.tutorial_start = true
	tutorial_start.set_hidden(true)
	tutorial_persistent_menu.set_hidden(false)
	get_tree().get_current_scene().get_node("tutorial_persistent_menu/persistent_menu_timer").start()
	get_tree().set_pause(true)

func _on_tutorial_start_no_button_button_down():
	global.tutorial_start = true
	tutorial_start.set_hidden(true)
	print("set all tutorial phases as true")
	get_tree().set_pause(false)


func _on_persistent_menu_timer_timeout():
	if (global.tutorial_title_box == false):
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
		global.tutorial_title_box = true
	elif ((global.tutorial_title_box == true) and (global.tutorial_prediction_box == false)):
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
		global.tutorial_prediction_box = true
	elif ((global.tutorial_prediction_box == true) and (global.tutorial_supplies_box == false)):
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
		global.tutorial_supplies_box = true
	elif ((global.tutorial_supplies_box == true) and (global.tutorial_finances_box == false)):
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
		global.tutorial_finances_box = true


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
