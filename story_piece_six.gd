extends Node2D

func _ready():
	set_sound()

func _on_skip_button_button_down():
	global.town_select = "windrow"
	global.level_reset()
	get_tree().change_scene("res://strategy.tscn")

func set_sound():
	get_node("StreamPlayer").set_volume_db(sound.volume)

func _on_mute_button_button_down():
	if (get_node("StreamPlayer").is_playing() == true):
		get_node("StreamPlayer").stop()
		sound.music_mute = true
	elif (get_node("StreamPlayer").is_playing() == false):
		get_node("StreamPlayer").play()
		sound.music_mute = false
		sound.volume = .75
		set_sound()

func _on_AnimationPlayer_animation_finished(anim_name):
	global.town_select = "windrow"
	global.level_reset()
	get_tree().change_scene("res://strategy.tscn")
