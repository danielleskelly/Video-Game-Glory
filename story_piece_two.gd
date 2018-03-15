extends Node2D

var strategy_node = load("res://strategy.tscn")

var texture_off = load("res://music_icon_off.png")
var texture_on = load("res://music_icon_on.png")

func _ready():
	set_sound()
	set_process(true)

func _process(delta):
	pass


func _on_skip_button_button_down():
	global.town_select = "hollyhock"
	global.level_reset()
	get_tree().change_scene("res://strategy.tscn")


func set_sound():
	if (sound.music_mute == true):
		get_node("StreamPlayer").stop()
		get_node("mute_button").set_normal_texture(texture_off)
		get_node("mute_button").set_pressed_texture(texture_on)
	if (sound.music_mute == false):
		get_node("StreamPlayer").play()
		get_node("mute_button").set_normal_texture(texture_on)
		get_node("mute_button").set_pressed_texture(texture_off)

func _on_mute_button_button_down():
	if (get_node("StreamPlayer").is_playing() == true):
		get_node("StreamPlayer").stop()
		sound.music_mute = true
	elif (get_node("StreamPlayer").is_playing() == false):
		get_node("StreamPlayer").play()
		sound.music_mute = false


func _on_AnimationPlayer_animation_finished( anim_name ):
	global.town_select = "hollyhock"
	global.level_reset()
	get_tree().change_scene_to(strategy_node)
