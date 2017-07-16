extends Node2D

onready var station_three_vis = get_node("zone_three")
onready var station_four_vis = get_node("zone_four")
onready var station_five_vis = get_node("zone_five")
onready var station_six_vis = get_node("zone_six")

func _ready():
	set_process(true)

func _process(delta):
	if (towns.town_select == "hollyhock"):
		if (hollyhock.hollyhock_arcade_decent_key == true):
			station_three_vis.show()
		if (hollyhock.hollyhock_arcade_decent_key == false):
			station_three_vis.set_hidden(true)
		if (hollyhock.hollyhock_arcade_good_key == true):
			station_four_vis.show()
		if (hollyhock.hollyhock_arcade_good_key == false):
			station_four_vis.set_hidden(true)
		if (hollyhock.hollyhock_arcade_great_key == true):
			station_five_vis.show()
		if (hollyhock.hollyhock_arcade_great_key == false):
			station_five_vis.set_hidden(true)
		if (hollyhock.hollyhock_arcade_best_key == true):
			station_six_vis.show()
		if (hollyhock.hollyhock_arcade_best_key == false):
			station_six_vis.set_hidden(true)
	if (towns.town_select == "fiyork"):
		if (fiyork.fiyork_arcade_decent_key == true):
			station_three_vis.show()
		if (fiyork.fiyork_arcade_decent_key == false):
			station_three_vis.set_hidden(true)
		if (fiyork.fiyork_arcade_good_key == true):
			station_four_vis.show()
		if (fiyork.fiyork_arcade_good_key == false):
			station_four_vis.set_hidden(true)
		if (fiyork.fiyork_arcade_great_key == true):
			station_five_vis.show()
		if (fiyork.fiyork_arcade_great_key == false):
			station_five_vis.set_hidden(true)
		if (fiyork.fiyork_arcade_best_key == true):
			station_six_vis.show()
		if (fiyork.fiyork_arcade_best_key == false):
			station_six_vis.set_hidden(true)
	if (towns.town_select == "plansey"):
		if (plansey.plansey_arcade_decent_key == true):
			station_three_vis.show()
		if (plansey.plansey_arcade_decent_key == false):
			station_three_vis.set_hidden(true)
		if (plansey.plansey_arcade_good_key == true):
			station_four_vis.show()
		if (plansey.plansey_arcade_good_key == false):
			station_four_vis.set_hidden(true)
		if (plansey.plansey_arcade_great_key == true):
			station_five_vis.show()
		if (plansey.plansey_arcade_great_key == false):
			station_five_vis.set_hidden(true)
		if (plansey.plansey_arcade_best_key == true):
			station_six_vis.show()
		if (plansey.plansey_arcade_best_key == false):
			station_six_vis.set_hidden(true)