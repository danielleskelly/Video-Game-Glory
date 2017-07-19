extends Node

var time_management_start = false

var tutorial_start = false
var tutorial_title_box = false
var tutorial_prediction_box = false
var tutorial_supplies_box = false
var tutorial_finances_box = false

func _ready():
	add_to_group("Persist")
	
func save():
	var savedict = {
		filename=get_filename(),
		time_management_start = time_management_start,
		tutorial_start = tutorial_start,
		tutorial_title_box = tutorial_title_box,
		tutorial_prediction_box = tutorial_prediction_box,
		tutorial_supplies_box = tutorial_supplies_box,
		tutorial_finances_box = tutorial_finances_box
	}
	return savedict

func tutorial_check():
	if (time_management_start == false):
		get_tree().get_current_scene().get_node("tutorial").set_hidden(false)
		get_tree().set_pause(true)
	elif (time_management_start == true):
		pass