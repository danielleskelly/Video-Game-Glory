extends Node2D

var endless_button

func _ready():
	set_process(true)
	
func _process(delta):
	endless_button = get_node("endless")
	var file = File.new()
	file.open("user://savegame.save", file.READ)
	if file.file_exists("user://savegame.save") == true:
		file.get_line()
		var endless_mode = file.get_line()
		endless.endless_unlocked = endless_mode
		file.close()
		if endless.endless_unlocked == "true":
			endless_button.show()
		elif endless.endless_unlocked == "false":
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
		towns.town_select = town_load
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
		get_tree().change_scene_to("res://story_piece_one.tscn")

func _on_quit_button_button_down():
	get_node("quit_game").set_hidden(false)

func _on_yes_quit_button_down():
	get_tree().quit()

func _on_no_quit_button_down():
	get_node("quit_game").set_hidden(true)

func _on_endless_button_button_up():
	get_tree().change_scene_to("res://endless_mode.tscn")

func _on_no_overwrite_button_up():
	get_node("new_game_overwrite").set_hidden(true)

func _on_yes_overwrite_button_up():
	get_tree().set_pause(false)
	get_node("new_game_overwrite").set_hidden(true)
	get_tree().change_scene("res://story_piece_one.tscn")