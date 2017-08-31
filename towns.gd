extends Node

var town_select = "banlon"

func _ready():
	add_to_group("Persist")

func save():
	var savedict = {
		filename=get_filename(),
		town_select=town_select
	}
	return savedict