extends Node

var town_select = "fiyork"

func _ready():
	add_to_group("Persist")

func save():
	var savedict = {
		filename=get_filename(),
		town_select=town_select
	}
	return savedict