extends Node2D

onready var load_button = preload("res://load.tscn")
onready var new_button = preload("res://story_piece_one.tscn")

var loop = load("res://player_select_two.ogg")

var endless_button

func _ready():
	set_process(true)
	
func _process(delta):
	endless_button = get_node("endless")
	var file = File.new()
	file.open("user://savegame.save", file.READ)
	if file.file_exists("user://savegame.save") == true:
		file.get_line()
		file.get_line()
		var endless_mode = file.get_line()
		global.endless_unlocked = endless_mode
		file.close()
		if global.endless_unlocked == "true":
			endless_button.show()
		elif global.endless_unlocked == "false":
			endless_button.hide()
		else:
			print("nope")
	elif file.file_exists("user://savegame.save") == false:
			endless_button.hide()
			
			
	if (sound.music_mute == false) and (get_node("StreamPlayer").is_playing() == false):
		get_node("StreamPlayer").set_stream(loop)
		get_node("StreamPlayer").play()
		get_node("StreamPlayer").has_loop()

func _on_skip_button_down():
	if (get_node("AnimationPlayer").is_playing() == true):
		get_node("AnimationPlayer").stop()
		get_node("name").clear()
		get_node("name").add_text("Video Game Glory")
		get_node("sam").set_hidden(true)
		get_node("pixel").set_hidden(true)
		get_node("new").show()
		get_node("quit").set_hidden(false)
		get_node("load").show()

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
		var username_load = file.get_line()
		global.player_name = username_load
		file.close()
		get_tree().change_scene("res://strategy.tscn")

func _on_new_button_button_up():
	get_tree().change_scene_to(new_button)


func _on_quit_button_button_down():
	get_node("are_you_sure").set_hidden(false)


func _on_yes_quit_button_down():
	get_tree().quit()


func _on_no_quit_button_down():
	get_node("are_you_sure").set_hidden(true)
