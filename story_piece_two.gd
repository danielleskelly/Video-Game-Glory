extends Node2D

var strategy_node = load("res://strategy.tscn")

func _ready():
	set_process(true)

func _process(delta):
	get_node("other_bubble/player_name").clear()
	get_node("other_bubble/player_name").add_text(global.player_name + "!")

func _on_AnimationPlayer_finished():
	towns.town_select = "hollyhock"
	get_tree().change_scene_to(strategy_node)
