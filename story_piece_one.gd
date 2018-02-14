extends Node2D

var texture_off = load("res://music_icon_off.png")
var texture_on = load("res://music_icon_on.png")

func _ready():
	set_sound()
	set_process(true)


func _process(delta):
	pass

func _on_skip_button_button_down():
	global.level_reset()
	get_tree().change_scene("res://strategy.tscn")

func _on_mute_button_toggled( pressed ):
	if (get_node("StreamPlayer").is_playing() == true):
		get_node("StreamPlayer").stop()
		sound.music_mute = true
	elif (get_node("StreamPlayer").is_playing() == false):
		get_node("StreamPlayer").play()
		sound.music_mute = false
		
func set_sound():
	if (sound.music_mute == true):
		get_node("StreamPlayer").stop()
		get_node("mute_button").set_normal_texture(texture_off)
		get_node("mute_button").set_pressed_texture(texture_on)
	if (sound.music_mute == false):
		get_node("StreamPlayer").play()
		get_node("mute_button").set_normal_texture(texture_on)
		get_node("mute_button").set_pressed_texture(texture_off)

func _on_AnimationPlayer_finished():
	get_tree().change_scene("res://story_piece_two.tscn")