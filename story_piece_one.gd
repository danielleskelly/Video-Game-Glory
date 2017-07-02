extends Node2D

var player_name_set
var player_name

func _ready():
	set_process(true)
	pass

func _process(delta):
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
