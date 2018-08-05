extends Node

var music_mute = false
var volume = 0

func _ready():
	set_process(true)
	
func _process(delta):
	volume = AudioServer.get_bus_volume_db(0)