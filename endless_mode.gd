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
	if endless.falling_shapes_organization == true:
		get_node("falling_shapes_organization").show()
	elif endless.falling_shapes_organization == false:
		get_node("falling_shapes_organization").hide()
	if endless.mathmatic_mastication == true:
		get_node("mathmatic_mastication").show()
	elif endless.mathmatic_mastication == false:
		get_node("mathmatic_mastication").hide()
	if endless.tall_wall_fall_ball == true:
		get_node("tall_wall_fall_ball").show()
	elif endless.tall_wall_fall_ball == false:
		get_node("tall_wall_fall_ball").hide()
	if endless.jump_and_dodge == true:
		get_node("jump_and_dodge").show()
	elif endless.jump_and_dodge == false:
		get_node("jump_and_dodge").hide()
	if endless.lights_off == true:
		get_node("lights_off").show()
	elif endless.lights_off == false:
		get_node("lights_off").hide()

func _on_yellow_eating_button_button_up():
	get_tree().change_scene("res://hollyhock_endless_mode.tscn")

func _on_back_button_button_up():
	get_tree().change_scene("res://player_selection.tscn")

func _on_shoot_that_rock_button_button_up():
	get_tree().change_scene("res://fiyork_endless_mode.tscn")

func _on_falling_shapes_organization_button_button_up():
	get_tree().change_scene("res://untilly_endless_mode.tscn")

func _on_mathmatic_mastication_button_button_up():
	get_tree().change_scene("res://plansey_endless_mode.tscn")

func _on_tall_wall_fall_ball_button_button_up():
	get_tree().change_scene("res://windrow_endless_mode.tscn")

func _on_jump_and_dodge_button_button_down():
	get_tree().change_scene("res://banlon_endless_mode.tscn")

func _on_lights_off_button_button_down():
	get_tree().change_scene("res://slatten_endless_mode.tscn")
