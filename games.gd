extends Node2D

onready var station_one = get_node("station_one")
onready var station_two = get_node("station_two")
onready var station_three = get_node("station_three")
onready var station_four = get_node("station_four")
onready var station_five = get_node("station_five")
onready var station_six = get_node("station_six")

func _ready():
	set_games()
	set_process(true)

func _process(delta):
	if (towns.town_select == "hollyhock"):
		if (hollyhock.hollyhock_arcade_decent_key == true):
			station_three.show()
		if (hollyhock.hollyhock_arcade_decent_key == false):
			station_three.set_hidden(true)
		if (hollyhock.hollyhock_arcade_good_key == true):
			station_four.show()
		if (hollyhock.hollyhock_arcade_good_key == false):
			station_four.set_hidden(true)
		if (hollyhock.hollyhock_arcade_great_key == true):
			station_five.show()
		if (hollyhock.hollyhock_arcade_great_key == false):
			station_five.set_hidden(true)
		if (hollyhock.hollyhock_arcade_best_key == true):
			station_six.show()
		if (hollyhock.hollyhock_arcade_best_key == false):
			station_six.set_hidden(true)
		arcade_day.hollyhock_station_one_selection = get_node("station_one/dropdown").get_selected()
		arcade_day.hollyhock_station_two_selection = get_node("station_two/dropdown").get_selected()
		arcade_day.hollyhock_station_three_selection = get_node("station_three/dropdown").get_selected()
		arcade_day.hollyhock_station_four_selection = get_node("station_four/dropdown").get_selected()
		arcade_day.hollyhock_station_five_selection = get_node("station_five/dropdown").get_selected()
		arcade_day.hollyhock_station_six_selection = get_node("station_six/dropdown").get_selected()
	if (towns.town_select == "fiyork"):
		if (fiyork.fiyork_arcade_decent_key == true):
			station_three.show()
		if (fiyork.fiyork_arcade_decent_key == false):
			station_three.set_hidden(true)
		if (fiyork.fiyork_arcade_good_key == true):
			station_four.show()
		if (fiyork.fiyork_arcade_good_key == false):
			station_four.set_hidden(true)
		if (fiyork.fiyork_arcade_great_key == true):
			station_five.show()
		if (fiyork.fiyork_arcade_great_key == false):
			station_five.set_hidden(true)
		if (fiyork.fiyork_arcade_best_key == true):
			station_six.show()
		if (fiyork.fiyork_arcade_best_key == false):
			station_six.set_hidden(true)
		arcade_day.fiyork_station_one_selection = get_node("station_one/dropdown").get_selected()
		arcade_day.fiyork_station_two_selection = get_node("station_two/dropdown").get_selected()
		arcade_day.fiyork_station_three_selection = get_node("station_three/dropdown").get_selected()
		arcade_day.fiyork_station_four_selection = get_node("station_four/dropdown").get_selected()
		arcade_day.fiyork_station_five_selection = get_node("station_five/dropdown").get_selected()
		arcade_day.fiyork_station_six_selection = get_node("station_six/dropdown").get_selected()
	if (towns.town_select == "plansey"):
		if (plansey.plansey_arcade_decent_key == true):
			station_three.show()
		if (plansey.plansey_arcade_decent_key == false):
			station_three.set_hidden(true)
		if (plansey.plansey_arcade_good_key == true):
			station_four.show()
		if (plansey.plansey_arcade_good_key == false):
			station_four.set_hidden(true)
		if (plansey.plansey_arcade_great_key == true):
			station_five.show()
		if (plansey.plansey_arcade_great_key == false):
			station_five.set_hidden(true)
		if (plansey.plansey_arcade_best_key == true):
			station_six.show()
		if (plansey.plansey_arcade_best_key == false):
			station_six.set_hidden(true)
		arcade_day.plansey_station_one_selection = get_node("station_one/dropdown").get_selected()
		arcade_day.plansey_station_two_selection = get_node("station_two/dropdown").get_selected()
		arcade_day.plansey_station_three_selection = get_node("station_three/dropdown").get_selected()
		arcade_day.plansey_station_four_selection = get_node("station_four/dropdown").get_selected()
		arcade_day.plansey_station_five_selection = get_node("station_five/dropdown").get_selected()
		arcade_day.plansey_station_six_selection = get_node("station_six/dropdown").get_selected()
		
func set_games():
	if (towns.town_select == "hollyhock"):
		station_one.get_child(1).select(arcade_day.hollyhock_station_one_selection)
		station_two.get_child(1).select(arcade_day.hollyhock_station_two_selection)
		if (hollyhock.hollyhock_station_three_key == true):
			station_three.get_child(1).select(arcade_day.hollyhock_station_three_selection)
		if (hollyhock.hollyhock_station_four_key == true):
			station_four.get_child(1).select(arcade_day.hollyhock_station_four_selection)
		if (hollyhock.hollyhock_station_five_key == true):
			station_five.get_child(1).select(arcade_day.hollyhock_station_five_selection)
		if (hollyhock.hollyhock_station_six_key == true):
			station_six.get_child(1).select(arcade_day.hollyhock_station_six_selection)
	if (towns.town_select == "fiyork"):
		station_one.get_child(1).select(arcade_day.fiyork_station_one_selection)
		station_two.get_child(1).select(arcade_day.fiyork_station_two_selection)
		if (fiyork.fiyork_station_three_key == true):
			station_three.get_child(1).select(arcade_day.fiyork_station_three_selection)
		if (fiyork.fiyork_station_four_key == true):
			station_four.get_child(1).select(arcade_day.fiyork_station_four_selection)
		if (fiyork.fiyork_station_five_key == true):
			station_five.get_child(1).select(arcade_day.fiyork_station_five_selection)
		if (fiyork.fiyork_station_six_key == true):
			station_six.get_child(1).select(arcade_day.fiyork_station_six_selection)
	if (towns.town_select == "plansey"):
		station_one.get_child(1).select(arcade_day.plansey_station_one_selection)
		station_two.get_child(1).select(arcade_day.plansey_station_two_selection)
		if (plansey.plansey_station_three_key == true):
			station_three.get_child(1).select(arcade_day.plansey_station_three_selection)
		if (plansey.plansey_station_four_key == true):
			station_four.get_child(1).select(arcade_day.plansey_station_four_selection)
		if (plansey.plansey_station_five_key == true):
			station_five.get_child(1).select(arcade_day.plansey_station_five_selection)
		if (plansey.plansey_station_six_key == true):
			station_six.get_child(1).select(arcade_day.plansey_station_six_selection)
	if (towns.town_select == "windrow"):
		station_one.get_child(1).select(arcade_day.windrow_station_one_selection)
		station_two.get_child(1).select(arcade_day.windrow_station_two_selection)
		if (windrow.windrow_station_three_key == true):
			station_three.get_child(1).select(arcade_day.windrow_station_three_selection)
		if (windrow.windrow_station_four_key == true):
			station_four.get_child(1).select(arcade_day.windrow_station_four_selection)
		if (windrow.windrow_station_five_key == true):
			station_five.get_child(1).select(arcade_day.windrow_station_five_selection)
		if (windrow.windrow_station_six_key == true):
			station_six.get_child(1).select(arcade_day.windrow_station_six_selection)
	if (towns.town_select == "untilly"):
		station_one.get_child(1).select(arcade_day.untilly_station_one_selection)
		station_two.get_child(1).select(arcade_day.untilly_station_two_selection)
		if (untilly.untilly_station_three_key == true):
			station_three.get_child(1).select(arcade_day.untilly_station_three_selection)
		if (untilly.untilly_station_four_key == true):
			station_four.get_child(1).select(arcade_day.untilly_station_four_selection)
		if (untilly.untilly_station_five_key == true):
			station_five.get_child(1).select(arcade_day.untilly_station_five_selection)
		if (untilly.untilly_station_six_key == true):
			station_six.get_child(1).select(arcade_day.untilly_station_six_selection)
	if (towns.town_select == "banlon"):
		station_one.get_child(1).select(arcade_day.banlon_station_one_selection)
		station_two.get_child(1).select(arcade_day.banlon_station_two_selection)
		if (banlon.banlon_station_three_key == true):
			station_three.get_child(1).select(arcade_day.banlon_station_three_selection)
		if (banlon.banlon_station_four_key == true):
			station_four.get_child(1).select(arcade_day.banlon_station_four_selection)
		if (banlon.banlon_station_five_key == true):
			station_five.get_child(1).select(arcade_day.banlon_station_five_selection)
		if (banlon.banlon_station_six_key == true):
			station_six.get_child(1).select(arcade_day.banlon_station_six_selection)
	if (towns.town_select == "slatten"):
		station_one.get_child(1).select(arcade_day.slatten_station_one_selection)
		station_two.get_child(1).select(arcade_day.slatten_station_two_selection)
		if (slatten.slatten_station_three_key == true):
			station_three.get_child(1).select(arcade_day.slatten_station_three_selection)
		if (slatten.slatten_station_four_key == true):
			station_four.get_child(1).select(arcade_day.slatten_station_four_selection)
		if (slatten.slatten_station_five_key == true):
			station_five.get_child(1).select(arcade_day.slatten_station_five_selection)
		if (slatten.slatten_station_six_key == true):
			station_six.get_child(1).select(arcade_day.slatten_station_six_selection)