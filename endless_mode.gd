extends Node2D

func _ready():
	set_process(true)
	pass
	
func _process(delta):
	if endless.yellow_eating_dot == true:
		get_node("yellow_eating_dot").show()
	elif endless.yellow_eating_dot == false:
		get_node("yellow_eating_dot").hide()

func _on_yellow_eating_button_button_up():
	get_tree().change_scene("res://hollyhock_endless_mode.tscn")
