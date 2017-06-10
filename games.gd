extends Node2D

var town_select

var station_three_vis
var station_four_vis
var station_five_vis
var station_six_vis

var station_three_key
var station_four_key
var station_five_key
var station_six_key

var station_one_selection
var station_two_selection
var station_three_selection
var station_four_selection
var station_five_selection
var station_six_selection


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
	station_one_selection = get_node("station_one/dropdown").get_selected()
	station_two_selection = get_node("station_two/dropdown").get_selected()
	station_three_selection = get_node("station_three/dropdown").get_selected()
	station_four_selection = get_node("station_four/dropdown").get_selected()
	station_five_selection = get_node("station_five/dropdown").get_selected()
	station_six_selection = get_node("station_six/dropdown").get_selected()
	global.station_one_selection = station_one_selection
	global.station_two_selection = station_two_selection
	global.station_three_selection = station_three_selection
	global.station_four_selection = station_four_selection
	global.station_five_selection = station_five_selection
	global.station_six_selection = station_six_selection
	
	

func get_globals():
	station_three_key = global.station_three_key
	station_four_key = global.station_four_key
	station_five_key = global.station_five_key
	station_six_key = global.station_six_key
	town_select = global.town_select
	
func hide():
	station_three_vis.set_hidden(true)
	station_four_vis.set_hidden(true)
	station_five_vis.set_hidden(true)
	station_six_vis.set_hidden(true)