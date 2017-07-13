extends Node2D

var player_name_set
var player_name

var texture_off = load("res://no_music.png")
var texture_on = load("res://music.png")

func _ready():
	set_sound()
	set_process(true)
	pass

func _process(delta):
	get_node("skip_button").set_global_pos(Vector2(20,526))
	get_node("mute_button").set_global_pos(Vector2(920, 526))
	if (get_node("name_input_background/name_input").get_text().empty() == false):
		player_name = global.player_name
		get_node("tv_background/name_output").clear()
		get_node("tv_background/name_output").add_text(player_name)
		get_node("acceptance_email/name").clear()
		get_node("acceptance_email/name").add_text(player_name + ",")

func _on_send_button_button_down():
	if (get_node("name_input_background/name_input").get_text().empty() == false):
		player_name_set = get_node("name_input_background/name_input").get_text()
		global.player_name = player_name_set
		get_node("AnimationPlayer").play("piece_two")

func _on_email_button_button_down():
	get_node("AnimationPlayer").stop(true)
	get_node("AnimationPlayer").play("piece_three")


func _on_AnimationPlayer_finished():
	if (get_node("AnimationPlayer").get_current_animation() == "piece_three"):
		get_node("StreamPlayer").stop()
		get_tree().change_scene("res://story_piece_two.tscn")

func _on_skip_button_button_down():
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