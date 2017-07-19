extends Node

#player
var player_name = "dutchess"

func _ready():
	add_to_group("Persist")

func save():
	var savedict = {
	filename=get_filename(),
	player_name = player_name
	}