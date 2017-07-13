extends Node2D

var strategy_node = load("res://strategy.tscn")

var texture_off = load("res://no_music.png")
var texture_on = load("res://music.png")

func _ready():
	set_sound()
	set_process(true)

func _process(delta):
	get_node("skip_button").set_global_pos(Vector2(20,526))
	get_node("mute_button").set_global_pos(Vector2(920, 526))
	get_node("other_bubble/player_name").clear()
	get_node("other_bubble/player_name").add_text(global.player_name + "!")

func _on_AnimationPlayer_finished():
	towns.town_select = "hollyhock"
	get_tree().change_scene_to(strategy_node)


func _on_skip_button_button_down():
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
