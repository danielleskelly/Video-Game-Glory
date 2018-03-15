extends Node2D

var endless_button

func _ready():
	set_process(true)
	
func _process(delta):
	if rewards_globals.unseen == 0:
		get_node("rewards/unseen_badge").hide()
	elif rewards_globals.unseen > 0:
		get_node("rewards/unseen_badge").show()
		get_node("rewards/unseen_badge/unseen_number").clear()
		get_node("rewards/unseen_badge/unseen_number").add_text(str(rewards_globals.unseen))
	endless_button = get_node("endless_mode")
	var file = File.new()
	file.open("user://savegame.save", file.READ)
	if file.file_exists("user://savegame.save") == true:
		file.get_line()
		var global_mode = file.get_line()
		global.endless_unlocked = "true"
		file.close()
		if global.endless_unlocked == "true":
			endless_button.show()
		elif global.endless_unlocked == "false":
			endless_button.hide()
	elif file.file_exists("user://savegame.save") == false:
			endless_button.hide()

func _on_music_button_toggled( pressed ):
	if (get_node("StreamPlayer").is_playing() == true):
		get_node("StreamPlayer").stop()
		sound.music_mute = true
	elif (get_node("StreamPlayer").is_playing() == false):
		get_node("StreamPlayer").play()
		sound.music_mute = false

func _on_load_button_button_up():
	load_game()
	
func load_game():
	var file = File.new()
	file.open("user://savegame.save", file.READ)
	if file.file_exists("user://savegame.save") == true:
		var town_load = file.get_line()
		global.town_select = town_load
		file.close()
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

func _on_yes_overwrite_button_up():
	get_tree().set_pause(false)
	global.town_select == "hollyhock"
	global.endless_unlocked == "false"
	get_node("new_game_overwrite").hide()
	get_tree().change_scene("res://story_piece_one.tscn")

func _on_reward_button_button_down():
	rewards_globals.unseen = 0
	get_tree().change_scene("res://rewards.tscn")


func _on_endless_button_button_up():
	get_tree().change_scene("res://endless_mode.tscn")
