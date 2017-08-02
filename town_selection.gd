extends Node2D

func _ready():
	set_process(true)
	
func _process(delta):
	get_tree().set_pause(false)
	if (towns.town_select == "hollyhock"):
		get_node("AnimationPlayer").play("fiyork")
	if (towns.town_select == "fiyork"):
		get_node("AnimationPlayer").play("untilly")
	if (towns.town_select == "untilly"):
		get_node("AnimationPlayer").play("plansey")
	if (towns.town_select == "plansey"):
		get_node("AnimationPlayer").play("windrow")
	if (towns.town_select == "windrow"):
		get_node("AnimationPlayer").play("banlon")
	if (towns.town_select == "banlon"):
		get_node("AnimationPlayer").play("slatten")

func _on_fiyork_collider_input_event( viewport, event, shape_idx ):
	if (event.type == 2):
		towns.town_select = "fiyork"
		get_tree().change_scene("res://strategy.tscn")


func _on_plansey_collider_input_event( viewport, event, shape_idx ):
	if (event.type == 2):
		towns.town_select = "plansey"
		get_tree().change_scene("res://strategy.tscn")


func _on_windrow_collider_input_event( viewport, event, shape_idx ):
	if (event.type == 2):
		towns.town_select = "windrow"
		get_tree().change_scene("res://strategy.tscn")


func _on_balon_collider_input_event( viewport, event, shape_idx ):
	if (event.type == 2):
		towns.town_select = "banlon"
		get_tree().change_scene("res://strategy.tscn")
	
func _on_slatten_collider_input_event( viewport, event, shape_idx ):
	if (event.type == 2):
		towns.town_select = "slatten"
		get_tree().change_scene("res://strategy.tscn")


func _on_untilly_collider_input_event( viewport, event, shape_idx ):
	if (event.type == 2):
		towns.town_select = "untilly"
		get_tree().change_scene("res://strategy.tscn")
