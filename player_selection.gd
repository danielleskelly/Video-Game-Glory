extends Node2D

onready var load_button = preload("res://load.tscn")
onready var new_button = preload("res://story_piece_one.tscn")

var loop = load("res://player_select_two.ogg")

func _ready():
	set_process(true)
	
func _process(delta):
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
	get_tree().change_scene_to(load_button)

func _on_new_button_button_up():
	get_tree().change_scene_to(new_button)


func _on_quit_button_button_down():
	get_node("are_you_sure").set_hidden(false)


func _on_yes_quit_button_down():
	get_tree().quit()


func _on_no_quit_button_down():
	get_node("are_you_sure").set_hidden(true)
