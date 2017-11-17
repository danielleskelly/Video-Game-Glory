extends Node2D

func _ready():
	set_sound()
	set_process(true)

func _process(delta):
	get_node("skip_button").set_global_pos(Vector2(20,526))
	get_node("mute_button").set_global_pos(Vector2(920, 526))

func _on_AnimationPlayer_finished():
	var current_animation = get_node("AnimationPlayer").get_current_animation()
	if current_animation == "pixel" or current_animation == "sam":
		towns.town_select = "slatten"
		get_tree().change_scene("res://strategy.tscn")


func _on_skip_button_button_down():
	towns.town_select = "slatten"
	get_tree().change_scene("res://strategy.tscn")


func set_sound():
	get_node("StreamPlayer").set_volume(sound.volume)

func _on_mute_button_button_down():
	if (get_node("StreamPlayer").is_playing() == true):
		get_node("StreamPlayer").stop()
		sound.music_mute = true
	elif (get_node("StreamPlayer").is_playing() == false):
		get_node("StreamPlayer").play()
		sound.music_mute = false
		sound.volume = .75
		set_sound()


func _on_pixel_accuse_button_down():
	get_node("AnimationPlayer").play("pixel")

func _on_sam_accuse_button_down():
	rewards_globals.find_saboteur = true
	rewards_globals.unseen += 1
	get_node("AnimationPlayer").play("sam")