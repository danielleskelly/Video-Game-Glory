extends Node2D

var fiyork_colliders

func _ready():
	set_process(true)
	
func _process(delta):
	if (towns.town_select == "hollyhock"):
		get_node("AnimationPlayer").play("fiyork")
	if (towns.town_select == "fiyork"):
		get_node("AnimationPlayer").play("plansey")

func _on_fiyork_collider_input_event( viewport, event, shape_idx ):
	if (event.type == 2):
		towns.town_select = "fiyork"
		get_tree().change_scene("res://strategy.tscn")


func _on_plansey_collider_input_event( viewport, event, shape_idx ):
	if (event.type == 2):
		towns.town_select = "plansey"
		get_tree().change_scene("res://strategy.tscn")
