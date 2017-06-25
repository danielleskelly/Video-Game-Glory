extends Node

var time_management_start = false

var tutorial_start = false
var tutorial_title_box = false
var tutorial_prediction_box = false
var tutorial_supplies_box = false
var tutorial_finances_box = false

func _ready():
	# Called every time the node is added to the scene.
	# Initialization here
	pass

func tutorial_check():
	if (time_management_start == false):
		get_tree().get_current_scene().get_node("tutorial").set_hidden(false)
		get_tree().set_pause(true)
	elif (time_management_start == true):
		pass