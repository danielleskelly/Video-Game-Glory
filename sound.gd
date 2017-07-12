extends Node

var volume

func _ready():
	if (get_tree().get_current_scene().get_name() == "strategy"):
		volume = get_tree().get_current_scene().get_node("StreamPlayer").get_volume()