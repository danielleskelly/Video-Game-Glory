extends Node2D

func _ready():
	get_tree().paused = false
	set_process(true)
	pass
	
func _process(delta):
	if str(global.yellow_eating_dot) == str(true):
		get_node("yellow_eating_dot").show()
	elif str(global.yellow_eating_dot) == str(false):
		get_node("yellow_eating_dot").hide()
	if str(global.shoot_that_rock) == str(true):
		get_node("shoot_that_rock").show()
	elif str(global.shoot_that_rock) == str(false):
		get_node("shoot_that_rock").hide()
	if str(global.falling_shapes_organization) == str(true):
		get_node("falling_shapes_organization").show()
	elif str(global.falling_shapes_organization) == str(false):
		get_node("falling_shapes_organization").hide()
	if str(global.mathmatic_mastication) == str(true):
		get_node("mathmatic_mastication").show()
	elif str(global.mathmatic_mastication) == str(false):
		get_node("mathmatic_mastication").hide()
	if str(global.tall_wall_fall_ball) == str(true):
		get_node("tall_wall_fall_ball").show()
	elif str(global.tall_wall_fall_ball) == str(false):
		get_node("tall_wall_fall_ball").hide()
	if str(global.jump_and_dodge) == str(true):
		get_node("jump_and_dodge").show()
	elif str(global.jump_and_dodge) == str(false):
		get_node("jump_and_dodge").hide()
	if str(global.lights_off) == str(true):
		get_node("lights_off").show()
	elif str(global.lights_off) == str(false):
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
