extends Node2D

func _on_AnimationPlayer_finished():
	get_tree().change_scene("res://player_selection.tscn")
