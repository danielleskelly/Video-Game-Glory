extends Node2D

var station_three_vis
var station_four_vis
var station_five_vis
var station_six_vis

var station_three_key
var station_four_key
var station_five_key
var station_six_key

func _ready():
	station_three_vis = get_node("station_three")
	station_four_vis = get_node("station_four")
	station_five_vis = get_node("station_five")
	station_six_vis = get_node("station_six")
	set_process(true)
	pass

func _process(delta):
	get_globals()
	hide()
	if (station_three_key == true):
		station_three_vis.show()
	if (station_four_key == true):
		station_four_vis.show()
	if (station_five_key == true):
		station_five_vis.show()
	if (station_six_key == true):
		station_six_vis.show()


func get_globals():
	station_three_key = global.station_three_key
	station_four_key = global.station_four_key
	station_five_key = global.station_five_key
	station_six_key = global.station_six_key
	
func hide():
	station_three_vis.set_hidden(true)
	station_four_vis.set_hidden(true)
	station_five_vis.set_hidden(true)
	station_six_vis.set_hidden(true)