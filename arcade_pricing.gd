extends Node2D

onready var station_three_vis = get_node("zone_three")
onready var station_four_vis = get_node("zone_four")
onready var station_five_vis = get_node("zone_five")
onready var station_six_vis = get_node("zone_six")

func _ready():
	set_process(true)

func _process(delta):
	if (towns.town_select == "hollyhock"):
		if (keys.hollyhock_station_three_key == true):
			station_three_vis.show()
		if (keys.hollyhock_station_three_key == false):
			station_three_vis.set_hidden(true)
		if (keys.hollyhock_station_four_key == true):
			station_four_vis.show()
		if (keys.hollyhock_station_four_key == false):
			station_four_vis.set_hidden(true)
		if (keys.hollyhock_station_five_key == true):
			station_five_vis.show()
		if (keys.hollyhock_station_five_key == false):
			station_five_vis.set_hidden(true)
		if (keys.hollyhock_station_six_key == true):
			station_six_vis.show()
		if (keys.hollyhock_station_six_key == false):
			station_six_vis.set_hidden(true)