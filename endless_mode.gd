extends Node2D

func _ready():
	set_process(true)
	pass
	
func _process(delta):
	if endless.yellow_eating_dot == true:
		get_node("yellow_eating_dot").show()
	elif endless.yellow_eating_dot == false:
		get_node("yellow_eating_dot").hide()
	if endless.shoot_that_rock == true:
		get_node("shoot_that_rock").show()
	elif endless.shoot_that_rock == false:
		get_node("shoot_that_rock").hide()

func _on_yellow_eating_button_button_up():
	get_tree().change_scene("res://hollyhock_endless_mode.tscn")


func _on_back_button_button_up():
	get_tree().change_scene("res://player_selection.tscn")

func _on_shoot_that_rock_button_button_up():
	get_tree().change_scene("res://fiyork_endless_mode.tscn")
