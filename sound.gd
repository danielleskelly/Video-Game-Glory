extends Node

var music_mute = false
var volume

func _ready():
	volume = AudioServer.get_bus_volume_db(0)