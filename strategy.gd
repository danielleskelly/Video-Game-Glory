extends Node2D

var strategy = load("res://strategy.tscn")

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
	pixel_small()
	set_sound()
	tutorial_start()
	research_countdown()
	set_process(true)
	
func _process(delta):
	if Input.is_action_pressed("ui_cancel"):
		_on_pixel_button_button_down()
	game_over.game_over_warning_check()
	if (game_over.game_over_warning == true):
		game_over_alert.set_hidden(false)
		pixel.set_hidden(false)
		get_tree().set_pause(true)
	if (towns.town_select == "hollyhock"):
		if (get_node("AnimationPlayer").get_current_animation() == "tutorial"):
			if ((arcade_day.hollyhock_station_one_selection == 1) and (arcade_day.hollyhock_station_two_selection == 1)):
				get_node("AnimationPlayer").play("tutorial_pt2")
		if (get_node("AnimationPlayer").get_current_animation() == "tutorial_pt2"):
			if ((supplies.hollyhock_popcorn_count >= 10) and (supplies.hollyhock_soda_count >= 10)):
				get_node("AnimationPlayer").play("tutorial_pt3")
		if (customer_math.hollyhock_player_marketshare >= .75):
			hollyhock_complete.set_hidden(false)
			pixel.set_hidden(false)
			get_tree().set_pause(true)
		if (get_node("cursor_blink").get_time_left() > 1):
			town_banner.get_child(1).clear()
			town_banner.get_child(1).add_text("Hollyhock...")
		elif ((get_node("cursor_blink").get_time_left() < 1) and (get_node("cursor_blink").get_time_left() != 0)):
			town_banner.get_child(1).clear()
			town_banner.get_child(1).add_text("Hollyhock...l")
		elif (get_node("cursor_blink").get_time_left() == 0):
			get_node("cursor_blink").start()
	if (towns.town_select == "fiyork"):
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
	if (towns.town_select == "untilly"):
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
	if (towns.town_select == "plansey"):
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
	if (towns.town_select == "windrow"):
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
	if (towns.town_select == "plansey"):
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
	if (towns.town_select == "banlon"):
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
	if (towns.town_select == "slatten"):
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
	genre_one.get_child(3).get_child(0).clear()
	genre_one.get_child(4).get_child(0).clear()
	genre_one.get_child(5).get_child(0).clear()
	var one_ones_digit = int(set_displays.genre_one_count * 100) % 10
	var one_tens_digit = int(set_displays.genre_one_count * 10) % 10
	var one_hunds_digit = int(set_displays.genre_one_count) % 10
	genre_one.get_child(5).get_child(0).add_text(str(one_ones_digit))
	genre_one.get_child(4).get_child(0).add_text(str(one_tens_digit))
	genre_one.get_child(3).get_child(0).add_text(str(one_hunds_digit))
	genre_one.get_child(1).clear()
	genre_one.get_child(1).add_text(str(set_displays.genre_one_name))
	genre_one.get_child(6).set_texture(set_displays.genre_one_icon)
	if (set_displays.genre_two_key == true):
		genre_two.show()
		genre_two.get_child(3).get_child(0).clear()
		genre_two.get_child(4).get_child(0).clear()
		genre_two.get_child(5).get_child(0).clear()
		var two_ones_digit = int(set_displays.genre_two_count * 100) % 10
		var two_tens_digit = int(set_displays.genre_two_count * 10) % 10
		var two_hunds_digit = int(set_displays.genre_two_count) % 10
		genre_two.get_child(5).get_child(0).add_text(str(two_ones_digit))
		genre_two.get_child(4).get_child(0).add_text(str(two_tens_digit))
		genre_two.get_child(3).get_child(0).add_text(str(two_hunds_digit))
		genre_two.get_child(1).clear()
		genre_two.get_child(1).add_text(str(set_displays.genre_two_name))
		genre_two.get_child(1).clear()
		genre_two.get_child(1).add_text(str(set_displays.genre_two_name))
	elif (set_displays.genre_two_key == false):
		genre_two.set_hidden(true)
	elif (set_displays.genre_three_key == true):
		genre_three.show()
		genre_three.get_child(3).get_child(0).clear()
		genre_three.get_child(4).get_child(0).clear()
		genre_three.get_child(5).get_child(0).clear()
		var three_ones_digit = int(set_displays.genre_three_count * 100) % 10
		var three_tens_digit = int(set_displays.genre_three_count * 10) % 10
		var three_hunds_digit = int(set_displays.genre_three_count) % 10
		genre_three.get_child(5).get_child(0).add_text(str(three_ones_digit))
		genre_three.get_child(4).get_child(0).add_text(str(three_tens_digit))
		genre_three.get_child(3).get_child(0).add_text(str(three_hunds_digit))
		genre_three.get_child(1).clear()
		genre_three.get_child(1).add_text(str(set_displays.genre_three_name))
	elif (set_displays.genre_three_key == false):
		genre_three.set_hidden(true)

func _on_start_day_button_up():
	game_over.day_start_check()
	if (game_over.day_start == false):
		low_funds_warning.set_hidden(false)
		pixel_big()
		pixel.set_hidden(false)
		get_tree().set_pause(true)
	else:
		get_node("skip_or_play/perk_output").clear()
		get_node("skip_or_play/perk_output").add_text(str(perks.perk))
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
	research_countdown.genre_discovery = false
	genre_discovery.set_hidden(true)
	pixel_small()
	get_tree().set_pause(false)

func _on_continue_ok_button_down():
	if (towns.town_select == "hollyhock"):
		hollyhock_complete.set_hidden(true)
		get_tree().change_scene("res://story_piece_three.tscn")
	if (towns.town_select == "fiyork"):
		fiyork_complete.set_hidden(true)
		get_tree().change_scene("res://story_piece_four.tscn")
	if (towns.town_select == "plansey"):
		plansey_complete.set_hidden(true)
		print("story piece five")
		#get_tree().change_scene("res://story_piece_four.tscn")
	if (towns.town_select == "untilly"):
		untilly_complete.set_hidden(true)
		print("story piece six")
		#get_tree().change_scene("res://story_piece_four.tscn")
	if (towns.town_select == "windrow"):
		windrow_complete.set_hidden(true)
		print("story piece seven")
		#get_tree().change_scene("res://story_piece_four.tscn")
	if (towns.town_select == "banlon"):
		banlon_complete.set_hidden(true)
		print("story piece eight")
		#get_tree().change_scene("res://story_piece_four.tscn")
	if (towns.town_select == "slatten"):
		slatten_complete.set_hidden(true)
		print("story piece nine")
		#get_tree().change_scene("res://story_piece_four.tscn")
	pixel_small()
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
		pixel_small()
		game_over_alert.set_hidden(true)
		game_over.game_over_hollyhock()
	if (towns.town_select == "fiyork"):
		pixel_small()
		game_over_alert.set_hidden(true)
		game_over.game_over_fiyork()
	if (towns.town_select == "plansey"):
		pixel_small()
		game_over_alert.set_hidden(true)
		game_over.game_over_plansey()
	if (towns.town_select == "untilly"):
		pixel_small()
		game_over_alert.set_hidden(true)
		game_over.game_over_untilly()
	if (towns.town_select == "windrow"):
		pixel_small()
		game_over_alert.set_hidden(true)
		game_over.game_over_windrow()
	if (towns.town_select == "banlon"):
		pixel_small()
		game_over_alert.set_hidden(true)
		game_over.game_over_banlon()
	if (towns.town_select == "slatten"):
		pixel_small()
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
	customer_globals.customer_reset()
	if (towns.town_select == "hollyhock"):
		arcade_day.hollyhock_day()
	if (towns.town_select == "fiyork"):
		arcade_day.fiyork_day()
	if (towns.town_select == "untilly"):
		arcade_day.untilly_day()
	if (towns.town_select == "plansey"):
		arcade_day.plansey_day()
	if (towns.town_select == "windrow"):
		arcade_day.windrow_day()
	if (towns.town_select == "banlon"):
		arcade_day.banlon_day()
	if (towns.town_select == "slatten"):
		arcade_day.slatten_day()
	customer_math.new_predictions()
	supplies.new_supply_prices()
	customer_math.daily_marketshare_adjustment()
	get_node("skip_or_play").set_hidden(true)
	pixel_small()
	get_tree().change_scene("res://strategy.tscn")

func _on_play_button_down():
	customer_globals.customer_reset()
	if (towns.town_select == "hollyhock"):
		arcade_day.hollyhock_day()
	if (towns.town_select == "fiyork"):
		arcade_day.fiyork_day()
	if (towns.town_select == "untilly"):
		arcade_day.untilly_day()
	if (towns.town_select == "plansey"):
		arcade_day.plansey_day()
	if (towns.town_select == "windrow"):
		arcade_day.windrow_day()
	if (towns.town_select == "banlon"):
		arcade_day.banlon_day()
	if (towns.town_select == "slatten"):
		arcade_day.slatten_day()
	customer_math.new_predictions()
	supplies.new_supply_prices()
	customer_math.daily_marketshare_adjustment()
	pixel_small()
	get_node("skip_or_play").set_hidden(true)
	if (towns.town_select == "hollyhock"):
		get_tree().change_scene("res://hollyhock_time_management.tscn")
	if (towns.town_select == "fiyork"):
		get_tree().change_scene("res://fiyork_time_management.tscn")
	if (towns.town_select == "plansey"):
		get_tree().change_scene("res://plansey_time_management.tscn")
	if (towns.town_select == "untilly"):
		get_tree().change_scene("res://tetrus.tscn")
	if (towns.town_select == "windrow"):
		get_tree().change_scene("res://windrow_time_management.tscn")
	if (towns.town_select == "banlon"):
		get_tree().change_scene("res://banlon_time_management.tscn")
	if (towns.town_select == "slatten"):
		get_tree().change_scene("res://qbert.tscn")
	

		
func pixel_big():
	pixel.set_pos(Vector2(0.17552, 0.761547))
	pixel.set_scale(Vector2(0.99308, 1.009797))
	
	
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
	if (towns.town_select == "plansey"):
		pixel_small()
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

func pixel_small():
	pixel.set_pos(Vector2(-37.864216, 19.423996))
	pixel.set_scale(Vector2(0.443099, 0.357029))

func set_sound():
	get_node("StreamPlayer").set_volume(sound.volume)

func tutorial_start():
	if (tutorial.tutorial_start == false):
		tutorial_start.show()
		pixel_big()
		pixel.show()
	if (tutorial.tutorial_start == true):
		pass

func research_countdown():
	research_countdown.research_counting()
	if (research_countdown.genre_discovery == true):
			genre_discovery.set_hidden(false)
			pixel_big()
			pixel.set_hidden(false)
			get_tree().set_pause(true)