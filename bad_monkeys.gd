extends Node2D

onready var next_scene = preload("res://player_selection.tscn")
# class member variables go here, for example:
# var a = 2
# var b = "textvar"

func _ready():
	# Called every time the node is added to the scene.
	# Initialization here
	pass


func _on_AnimationPlayer_finished():
	get_tree().change_scene_to(next_scene)
