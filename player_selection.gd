extends Node2D

var endless_button

var texture_off = load("res://music_icon_off.png")
var texture_on = load("res://music_icon_on.png")

var file

func ready():
	set_process(true)
	

func _process(delta):
	find_file()
	if rewards_globals.unseen == 0:
		get_node("rewards/unseen_badge").hide()
	elif rewards_globals.unseen > 0:
		get_node("rewards/unseen_badge").show()
		get_node("rewards/unseen_badge/unseen_number").clear()
		get_node("rewards/unseen_badge/unseen_number").add_text(str(rewards_globals.unseen))
	endless_button = get_node("endless_mode")
	if global.endless_unlocked == str(true):
		endless_button.show()
	elif global.endless_unlocked == str(false) or file.file_exists("user://savegame.save") == false:
		endless_button.hide()

func find_file():
	file = File.new()
	file.open("user://savegame.save", file.READ)
	if file.file_exists("user://savegame.save") == true:
		global.town_select = file.get_line()
		global.endless_unlocked = file.get_line()
		rewards_globals.complete_hollyhock = file.get_line()
		rewards_globals.complete_fiyork = file.get_line()
		rewards_globals.complete_untilly = file.get_line()
		rewards_globals.complete_plansey = file.get_line()
		rewards_globals.complete_windrow = file.get_line()
		rewards_globals.complete_banlon = file.get_line()
		rewards_globals.complete_slatten = file.get_line()
		rewards_globals.minigames_played = file.get_line()
		rewards_globals.points_in_one_minigame = file.get_line()
		rewards_globals.million_total_minigame_points = file.get_line()
		rewards_globals.fifty_business_days = file.get_line()
		rewards_globals.hundred_per_hollyhock = file.get_line()
		rewards_globals.hundred_per_fiyork = file.get_line()
		rewards_globals.hundred_per_untilly = file.get_line()
		rewards_globals.hundred_per_plansey = file.get_line()
		rewards_globals.hundred_per_windrow = file.get_line()
		rewards_globals.hundred_per_banlon = file.get_line()
		rewards_globals.hundred_per_slatten = file.get_line()
		rewards_globals.find_saboteur = file.get_line()
		rewards_globals.complete_all_levels = file.get_line()
		rewards_globals.earn_thousand = file.get_line()
		rewards_globals.earn_thousand_unlocked = file.get_line()
		rewards_globals.three_min_yed = file.get_line()
		rewards_globals.three_min_str = file.get_line()
		rewards_globals.three_min_fso = file.get_line()
		rewards_globals.three_min_math_mast = file.get_line()
		rewards_globals.three_min_twfb = file.get_line()
		rewards_globals.three_min_jad = file.get_line()
		rewards_globals.three_min_lo = file.get_line()
		global.yellow_eating_dot = file.get_line()
		global.shoot_that_rock = file.get_line()
		global.falling_shapes_organization = file.get_line()
		global.mathmatic_mastication = file.get_line()
		global.tall_wall_fall_ball = file.get_line()
		global.jump_and_dodge = file.get_line()
		global.lights_off = file.get_line()
		file.close()

func _on_music_button_toggled( pressed ):
	if sound.music_mute == false:
		AudioServer.set_bus_volume_db(0, sound.volume - 50)
		sound.music_mute = true
	elif sound.music_mute == true:
		AudioServer.set_bus_volume_db(0, sound.volume + 50)
		sound.music_mute = false

func _on_load_button_button_up():
	load_game()
	
func load_game():
	if global.town_select == "untilly" or global.town_select == "banlon" or global.town_select == "slatten":
		global.current_loan = 500
	get_tree().change_scene("res://strategy.tscn")

func _on_new_button_button_up():
	var file = File.new()
	file.open("user://savegame.save", file.READ)
	if file.file_exists("user://savegame.save") == true:
		get_tree().set_pause(true)
		get_node("new_game_overwrite").show()
		file.close()
	else:
		file.close()
		get_tree().change_scene("res://story_piece_one.tscn")

func _on_quit_button_button_down():
	get_node("quit_game_popup").show()

func _on_yes_quit_button_down():
	get_tree().quit()

func _on_no_quit_button_down():
	get_node("quit_game_popup").hide()

func _on_global_button_button_up():
	get_tree().change_scene("res://global_mode.tscn")

func _on_no_overwrite_button_up():
	get_node("new_game_overwrite").hide()
	get_tree().paused = false

func _on_yes_overwrite_button_up():
	get_tree().set_pause(false)
	global.town_select = "hollyhock"
	global.endless_unlocked = false
	global.level_reset()
	get_node("new_game_overwrite").hide()
	get_tree().change_scene("res://story_piece_one.tscn")

func _on_reward_button_button_down():
	rewards_globals.unseen = 0
	load_game()
	get_tree().change_scene("res://rewards.tscn")


func _on_endless_button_button_up():
	get_tree().change_scene("res://endless_mode.tscn")