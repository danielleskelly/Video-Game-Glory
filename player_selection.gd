extends Node2D

onready var load_button = preload("res://load.tscn")
onready var new_button = preload("res://story_piece_one.tscn")

func _ready():
	pass

func _on_skip_button_down():
	if (get_node("AnimationPlayer").is_playing() == true):
		get_node("AnimationPlayer").stop()
		get_node("name").clear()
		get_node("name").add_text("Video Game Glory")
		get_node("sam").set_hidden(true)
		get_node("pixel").set_hidden(true)
		get_node("new").show()
		get_node("load").show()

func _on_music_button_toggled( pressed ):
	if (get_node("StreamPlayer").is_playing() == true):
		get_node("StreamPlayer").stop()
	elif (get_node("StreamPlayer").is_playing() == false):
		get_node("StreamPlayer").play()

func _on_load_button_button_up():
	get_tree().change_scene_to(load_button)

func _on_new_button_button_up():
	get_tree().change_scene_to(new_button)
