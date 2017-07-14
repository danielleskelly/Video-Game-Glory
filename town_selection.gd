extends Node2D

var fiyork_colliders

func _ready():
	pass

func _on_fiyork_collider_input_event( viewport, event, shape_idx ):
	if (event.type == 2):
		towns.town_select = "fiyork"
		get_tree().change_scene("res://strategy.tscn")
