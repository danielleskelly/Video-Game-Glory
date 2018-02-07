extends Node2D

var strategy = load("res://strategy.tscn")

#display nodes
onready var supply_one = get_tree().get_current_scene().get_node("supply_one")
onready var supply_two = get_tree().get_current_scene().get_node("supply_two")
onready var town_banner = get_tree().get_current_scene().get_node("town_banner")
onready var low_funds_warning = get_tree().get_current_scene().get_node("low_funds_warning")
onready var game_over_alert = get_tree().get_current_scene().get_node("game_over_alert")
onready var genre_discovery = get_node("genre_discovery")
onready var hollyhock_complete = get_node("hollyhock_complete")
onready var fiyork_complete = get_node("fiyork_complete")
onready var plansey_complete = get_node("plansey_complete")
onready var untilly_complete = get_node("untilly_complete")
onready var windrow_complete = get_node("windrow_complete")
onready var banlon_complete = get_node("banlon_complete")
onready var slatten_complete = get_node("slatten_complete")
onready var tutorial_start = get_node("tutorial_start")
onready var tutorial_persistent_menu = get_node("tutorial_persistent_menu")
onready var tutorial_reports = get_node("tutorial_reports")
onready var tutorial_supplies = get_node("tutorial_supplies")
onready var tutorial_pricing = get_node("tutorial_pricing")
onready var tutorial_upgrades = get_node("tutorial_upgrades")
onready var tutorial_locals = get_node("tutorial_locals")
onready var tutorial_research = get_node("tutorial_research")
onready var pixel = get_node("pixel")

var new_volume

func _ready():
	set_sound()
	research_countdown_trigger()
	set_process(true)
	
func _process(delta):
	if Input.is_action_pressed("ui_cancel"):
		_on_pixel_button_button_down()
	if (towns.town_select == "hollyhock"):
		if (get_node("AnimationPlayer").get_current_animation() == "tutorial"):
			if ((arcade_day.hollyhock_station_one_selection == 1) and (arcade_day.hollyhock_station_two_selection == 1)):
				get_node("AnimationPlayer").play("tutorial_pt2")
		if (get_node("AnimationPlayer").get_current_animation() == "tutorial_pt2"):
			if ((supplies.hollyhock_popcorn_count >= 10) and (supplies.hollyhock_soda_count >= 10)):
				get_node("AnimationPlayer").play("tutorial_pt3")
		if (customer_math.hollyhock_player_marketshare >= .75):
			hollyhock_complete.set_hidden(false)
			get_tree().set_pause(true)
		if (get_node("cursor_blink").get_time_left() > 1):
			town_banner.get_child(1).clear()
			town_banner.get_child(1).add_text("Hollyhock...")
		elif ((get_node("cursor_blink").get_time_left() < 1) and (get_node("cursor_blink").get_time_left() != 0)):
			town_banner.get_child(1).clear()
			town_banner.get_child(1).add_text("Hollyhock...^")
		elif (get_node("cursor_blink").get_time_left() == 0):
			get_node("cursor_blink").start()
	elif (towns.town_select == "fiyork"):
		if (fiyork.fiyork_advertising_sabatoge_key == false) and (fiyork.fiyork_storefront_sabatoge_key == false) and (fiyork.fiyork_entertainment_sabatoge_key == false) and (fiyork.fiyork_arcade_sabatoge_key == false):
			fiyork_complete.set_hidden(false)
			pixel.set_hidden(false)
			get_tree().set_pause(true)
		if (get_node("cursor_blink").get_time_left() > 1):
			town_banner.get_child(1).clear()
			town_banner.get_child(1).add_text("Fiyork...")
		elif ((get_node("cursor_blink").get_time_left() < 1) and (get_node("cursor_blink").get_time_left() != 0)):
			town_banner.get_child(1).clear()
			town_banner.get_child(1).add_text("Fiyork...l")
		elif (get_node("cursor_blink").get_time_left() == 0):
			get_node("cursor_blink").start()
	elif (towns.town_select == "untilly"):
		if (int(money.untilly_cash) >= 500) and (int(untilly.untilly_current_loan) <= 0):
			untilly_complete.set_hidden(false)
			pixel.set_hidden(false)
			get_tree().set_pause(true)
		if (get_node("cursor_blink").get_time_left() > 1):
			town_banner.get_child(1).clear()
			town_banner.get_child(1).add_text("Untilly...")
		elif ((get_node("cursor_blink").get_time_left() < 1) and (get_node("cursor_blink").get_time_left() != 0)):
			town_banner.get_child(1).clear()
			town_banner.get_child(1).add_text("Untilly...l")
		elif (get_node("cursor_blink").get_time_left() == 0):
			get_node("cursor_blink").start()
	elif (towns.town_select == "plansey"):
		if (customer_math.plansey_player_marketshare >= .75) and (plansey.plansey_current_loan == 0):
			plansey_complete.set_hidden(false)
			pixel.set_hidden(false)
			get_tree().set_pause(true)
		if (get_node("cursor_blink").get_time_left() > 1):
			town_banner.get_child(1).clear()
			town_banner.get_child(1).add_text("Plansey...")
		elif ((get_node("cursor_blink").get_time_left() < 1) and (get_node("cursor_blink").get_time_left() != 0)):
			town_banner.get_child(1).clear()
			town_banner.get_child(1).add_text("Plansey...l")
		elif (get_node("cursor_blink").get_time_left() == 0):
			get_node("cursor_blink").start()
	elif (towns.town_select == "windrow"):
		if (windrow.windrow_advertising_sabatoge_key == false) and (windrow.windrow_entertainment_sabatoge_key == false) and (windrow.windrow_storefront_sabatoge_key == false) and (windrow.windrow_arcade_sabatoge_key == false) and (windrow.windrow_genre_two_key == true) and (windrow.windrow_genre_three_key == true):
			windrow_complete.set_hidden(false)
			pixel.set_hidden(false)
			get_tree().set_pause(true)
		if (get_node("cursor_blink").get_time_left() > 1):
			town_banner.get_child(1).clear()
			town_banner.get_child(1).add_text("Windrow...")
		elif ((get_node("cursor_blink").get_time_left() < 1) and (get_node("cursor_blink").get_time_left() != 0)):
			town_banner.get_child(1).clear()
			town_banner.get_child(1).add_text("Windrow...l")
		elif (get_node("cursor_blink").get_time_left() == 0):
			get_node("cursor_blink").start()
	elif (towns.town_select == "plansey"):
		if (customer_math.plansey_player_marketshare >= .75) and (plansey.plansey_current_loan == 0):
			plansey_complete.set_hidden(false)
			pixel.set_hidden(false)
			get_tree().set_pause(true)
		if (get_node("cursor_blink").get_time_left() > 1):
			town_banner.get_child(1).clear()
			town_banner.get_child(1).add_text("Plansey...")
		elif ((get_node("cursor_blink").get_time_left() < 1) and (get_node("cursor_blink").get_time_left() != 0)):
			town_banner.get_child(1).clear()
			town_banner.get_child(1).add_text("Plansey...l")
		elif (get_node("cursor_blink").get_time_left() == 0):
			get_node("cursor_blink").start()
	elif (towns.town_select == "banlon"):
		if (int(money.banlon_cash) >= 1000) and (banlon.banlon_current_loan == 0):
			banlon_complete.set_hidden(false)
			pixel.set_hidden(false)
			get_tree().set_pause(true)
		if (get_node("cursor_blink").get_time_left() > 1):
			town_banner.get_child(1).clear()
			town_banner.get_child(1).add_text("Banlon...")
		elif ((get_node("cursor_blink").get_time_left() < 1) and (get_node("cursor_blink").get_time_left() != 0)):
			town_banner.get_child(1).clear()
			town_banner.get_child(1).add_text("Banlon...l")
		elif (get_node("cursor_blink").get_time_left() == 0):
			get_node("cursor_blink").start()
	elif (towns.town_select == "slatten"):
		if (slatten.slatten_advertising_sabatoge_key == false) and (slatten.slatten_storefront_sabatoge_key == false) and (slatten.slatten_entertainment_sabatoge_key == false) and (slatten.slatten_arcade_sabatoge_key == false) and (int(money.slatten_cash) >= 500) and (slatten.slatten_current_loan == 0):
			slatten_complete.set_hidden(false)
			pixel.set_hidden(false)
			get_tree().set_pause(true)
		if (get_node("cursor_blink").get_time_left() > 1):
			town_banner.get_child(1).clear()
			town_banner.get_child(1).add_text("Slatten...")
		elif ((get_node("cursor_blink").get_time_left() < 1) and (get_node("cursor_blink").get_time_left() != 0)):
			town_banner.get_child(1).clear()
			town_banner.get_child(1).add_text("Slatten...l")
		elif (get_node("cursor_blink").get_time_left() == 0):
			get_node("cursor_blink").start()
	
	set_displays.set_that_shit()
	supply_one.get_child(2).get_child(0).clear()
	supply_one.get_child(3).get_child(0).clear()
	supply_one.get_child(4).get_child(0).clear()
	var one_ones_digit = set_displays.supply_one_count % 10
	var one_tens_digit = (set_displays.supply_one_count / 10) % 10
	var one_hunds_digit = (set_displays.supply_one_count / 100) % 10
	supply_one.get_child(4).get_child(0).add_text(str(one_ones_digit))
	supply_one.get_child(3).get_child(0).add_text(str(one_tens_digit))
	supply_one.get_child(2).get_child(0).add_text(str(one_hunds_digit))
	supply_one.get_child(1).clear()
	supply_one.get_child(1).add_text(str(set_displays.supply_one_name))
	supply_one.get_child(5).set_texture(set_displays.supply_one_icon)
	supply_two.get_child(2).get_child(0).clear()
	supply_two.get_child(3).get_child(0).clear()
	supply_two.get_child(4).get_child(0).clear()
	var two_ones_digit = set_displays.supply_two_count % 10
	var two_tens_digit = (set_displays.supply_two_count / 10) % 10
	var two_hunds_digit = (set_displays.supply_two_count / 100) % 10
	supply_two.get_child(4).get_child(0).add_text(str(two_ones_digit))
	supply_two.get_child(3).get_child(0).add_text(str(two_tens_digit))
	supply_two.get_child(2).get_child(0).add_text(str(two_hunds_digit))
	supply_two.get_child(1).clear()
	supply_two.get_child(1).add_text(str(set_displays.supply_two_name))
	supply_two.get_child(5).set_texture(set_displays.supply_two_icon)
	var one_ones_digit = int(set_displays.genre_one_count * 100) % 10
	var one_tens_digit = int(set_displays.genre_one_count * 10) % 10
	var one_hunds_digit = int(set_displays.genre_one_count) % 10

func _on_start_day_button_up():
	game_over.game_over_check()
	if game_over.expenses_warning == true:
		low_funds_warning.set_hidden(false)
		pixel.set_hidden(false)
		get_tree().set_pause(true)
	elif game_over.game_over == true:
		game_over_alert.set_hidden(false)
		pixel.set_hidden(false)
		get_tree().set_pause(true)
	elif (game_over.expenses_warning == false) and (game_over.game_over == false):
		perks.perks()
		get_node("skip_or_play/perk_output").clear()
		get_node("skip_or_play/perk_output").add_text(str(perks.perk))
		get_node("skip_or_play/perk_goal_output").clear()
		get_node("skip_or_play/perk_goal_output").add_text(str(perks.perk_goal))
		get_node("skip_or_play").show()
		get_node("pixel").show()

func _on_low_funds_ok_button_down():
	low_funds_warning.set_hidden(true)
	pixel.set_hidden(true)
	get_tree().set_pause(false)


func _on_genre_discover_ok_button_down():
	station.clear_shit()
	station.add_items()
	research_countdown.genre_discovery = false
	genre_discovery.set_hidden(true)
	get_tree().set_pause(false)

func _on_continue_ok_button_down():
	if (towns.town_select == "hollyhock"):
		hollyhock_complete.set_hidden(true)
		endless.endless_unlocked = "true"
		rewards_globals.complete_hollyhock = true
		rewards_globals.unseen += 1
		get_tree().change_scene("res://story_piece_three.tscn")
	elif (towns.town_select == "fiyork"):
		fiyork_complete.set_hidden(true)
		endless.shoot_that_rock = true
		rewards_globals.complete_fiyork = true
		rewards_globals.unseen += 1
		get_tree().change_scene("res://story_piece_four.tscn")
	elif (towns.town_select == "untilly"):
		plansey_complete.set_hidden(true)
		endless.falling_shapes_organization = true
		rewards_globals.complete_plansey = true
		rewards_globals.unseen += 1
		get_tree().change_scene("res://story_piece_five.tscn")
	elif (towns.town_select == "plansey"):
		untilly_complete.set_hidden(true)
		endless.mathmatic_mastication = true
		rewards_globals.complete_untilly = true
		rewards_globals.unseen += 1
		get_tree().change_scene("res://story_piece_six.tscn")
	elif (towns.town_select == "windrow"):
		windrow_complete.set_hidden(true)
		endless.tall_wall_fall_ball = true
		rewards_globals.complete_windrow = true
		rewards_globals.unseen += 1
		get_tree().change_scene("res://story_piece_seven.tscn")
	elif (towns.town_select == "banlon"):
		banlon_complete.set_hidden(true)
		endless.jump_and_dodge = true
		rewards_globals.complete_banlon = true
		rewards_globals.unseen += 1
		get_tree().change_scene("res://story_piece_eight.tscn")
	elif (towns.town_select == "slatten"):
		slatten_complete.set_hidden(true)
		endless.lights_off = true
		rewards_globals.complete_slatten = true
		rewards_globals.unseen += 1
		get_tree().change_scene("res://story_piece_nine.tscn")
	get_tree().set_pause(false)
	customer_globals.customer_reset()
	

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
		game_over_alert.set_hidden(true)
		game_over.game_over_hollyhock()
	if (towns.town_select == "fiyork"):
		game_over_alert.set_hidden(true)
		game_over.game_over_fiyork()
	if (towns.town_select == "plansey"):
		game_over_alert.set_hidden(true)
		game_over.game_over_plansey()
	if (towns.town_select == "untilly"):
		game_over_alert.set_hidden(true)
		game_over.game_over_untilly()
	if (towns.town_select == "windrow"):
		game_over_alert.set_hidden(true)
		game_over.game_over_windrow()
	if (towns.town_select == "banlon"):
		game_over_alert.set_hidden(true)
		game_over.game_over_banlon()
	if (towns.town_select == "slatten"):
		game_over_alert.set_hidden(true)
		game_over.game_over_slatten()

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
	rewards_globals.fifty_business_days += 1
	customer_globals.customer_reset()
	customer_math.new_predictions()
	supplies.new_supply_prices()
	customer_math.daily_marketshare_adjustment()
	get_node("skip_or_play").set_hidden(true)
	if (towns.town_select == "hollyhock"):
		arcade_day.hollyhock_day()
	elif (towns.town_select == "fiyork"):
		arcade_day.fiyork_day()
	elif (towns.town_select == "untilly"):
		arcade_day.untilly_day()
	elif (towns.town_select == "plansey"):
		arcade_day.plansey_day()
	elif (towns.town_select == "windrow"):
		arcade_day.windrow_day()
	elif (towns.town_select == "banlon"):
		arcade_day.banlon_day()
	elif (towns.town_select == "slatten"):
		arcade_day.slatten_day()
	get_tree().change_scene("res://strategy.tscn")

func _on_play_button_down():
	rewards_globals.minigames_played += 1
	rewards_globals.fifty_business_days += 1
	if money.income > rewards_globals.earn_thousand:
		rewards_globals.earn_thousand = money.income
	customer_globals.customer_reset()
	customer_math.new_predictions()
	supplies.new_supply_prices()
	customer_math.daily_marketshare_adjustment()
	get_node("skip_or_play").set_hidden(true)
	if (towns.town_select == "hollyhock"):
		arcade_day.hollyhock_day()
		get_tree().change_scene("res://hollyhock_time_management.tscn")
	elif (towns.town_select == "fiyork"):
		arcade_day.fiyork_day()
		get_tree().change_scene("res://fiyork_time_management.tscn")
	elif (towns.town_select == "plansey"):
		arcade_day.plansey_day()
		get_tree().change_scene("res://plansey_time_management.tscn")
	elif (towns.town_select == "untilly"):
		arcade_day.untilly_day()
		get_tree().change_scene("res://untilly_time_management.tscn")
	elif (towns.town_select == "windrow"):
		arcade_day.windrow_day()
		get_tree().change_scene("res://windrow_time_management.tscn")
	elif (towns.town_select == "banlon"):
		arcade_day.banlon_day()
		get_tree().change_scene("res://banlon_time_management.tscn")
	elif (towns.town_select == "slatten"):
		arcade_day.slatten_day()
		get_tree().change_scene("res://slatten_time_management.tscn")
	
	
func _on_pixel_button_button_down():
	get_tree().set_pause(true)
	get_node("menu").set_hidden(false)
	get_node("menu/sound_slider").set_value(int(sound.volume * 100))

func _on_sound_slider_value_changed( value ):
	new_volume = value / 100
	sound.volume = new_volume
	get_node("StreamPlayer").set_volume(new_volume)

func _on_return_to_game_button_down():
	get_tree().set_pause(false)
	get_node("menu").set_hidden(true)


func _on_restart_village_button_down():
	get_node("menu").set_hidden(true)
	get_node("are_you_sure").set_hidden(false)

func _on_yes_restart_button_down():
	get_tree().set_pause(false)
	if (towns.town_select == "hollyhock"):
		game_over.game_over_hollyhock()
	if (towns.town_select == "fiyork"):
		game_over.game_over_fiyork()
	if (towns.town_select == "plansey"):
		game_over.game_over_plansey()

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
	get_node("StreamPlayer").set_volume(sound.volume)

func research_countdown_trigger():
	research_countdown.research_counting()
	if (research_countdown.genre_discovery == true):
			genre_discovery.set_hidden(false)
			pixel.set_hidden(false)
			get_tree().set_pause(true)
			
func save_game():
	var savegame = File.new()
	savegame.open(str("user://savegame.save"), File.WRITE)
	savegame.store_line(str(towns.town_select))
	savegame.store_line(str(endless.endless_unlocked))
	savegame.close()
		

func _on_autosave_timeout():
	get_node("autosaved").set_hidden(false)
	get_node("timer_notify").start()
	save_game()


func _on_timer_notify_timeout():
	get_node("autosaved").set_hidden(true)
