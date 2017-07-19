extends Node

var music_mute = false
var volume = 1

func _ready():
	add_to_group("Persist")
	
func save():
	var savedict = {
		filename=get_filename(),
		music_mute = music_mute,
		volume = volume
	}
	return savedict