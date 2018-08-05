extends Node2D

var strategy_node = load("res://strategy.tscn")

var texture_off = load("res://music_icon_off.png")
var texture_on = load("res://music_icon_on.png")

func _ready():
	set_sound()
	
func _on_mute_button_toggled( pressed ):
	if sound.volume > -25:
		AudioServer.set_bus_volume_db(0, -50)
	elif sound.volume < -25:
		AudioServer.set_bus_volume_db(0, 0)
		
func set_sound():
	if sound.volume > -25:
		get_node("mute_button").texture_normal = texture_on
		get_node("mute_button").texture_pressed = texture_off
	elif sound.volume < -25:
		get_node("mute_button").texture_normal = texture_off
		get_node("mute_button").texture_pressed = texture_on


func _on_skip_button_button_down():
	global.town_select = "hollyhock"
	global.level_reset()
	get_tree().change_scene("res://strategy.tscn")


func _on_AnimationPlayer_animation_finished( anim_name ):
	global.town_select = "hollyhock"
	global.level_reset()
	get_tree().change_scene_to(strategy_node)
