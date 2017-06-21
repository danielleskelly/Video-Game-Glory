extends Node

var genre_type_one
var genre_type_two
var genre_type_three
var genre_type_four
var genre_type_five
var genre_type_six

var hollyhock_station_one_selection = 0
var hollyhock_station_two_selection = 0
var hollyhock_station_three_selection = 0
var hollyhock_station_four_selection = 0
var hollyhock_station_five_selection = 0
var hollyhock_station_six_selection = 0

func _ready():
	# Called every time the node is added to the scene.
	# Initialization here
	pass

func set_genre_type(): #sets the genre of the games based on the town
	if (global.town_select == "hollyhock"):
		if (hollyhock_station_one_selection == 0):
			genre_type_one = "none"
			get_tree().get_current_scene().get_node("arcade_zone_one/genre_display/meta").set_hidden(true)
			get_tree().get_current_scene().get_node("arcade_zone_one/genre_display/classic").set_hidden(true)
			get_tree().get_current_scene().get_node("arcade_zone_one/genre_display/platformer").set_hidden(true)
			get_tree().get_current_scene().get_node("arcade_zone_one/genre_display/strategy").set_hidden(true)
			get_tree().get_current_scene().get_node("arcade_zone_one/genre_display/time_management").set_hidden(true)
			get_tree().get_current_scene().get_node("arcade_zone_one/genre_display/adventure").set_hidden(true)
		if (hollyhock_station_one_selection == 1):
			genre_type_one = "meta"
			get_tree().get_current_scene().get_node("arcade_zone_one/genre_display/meta").show()
			get_tree().get_current_scene().get_node("arcade_zone_one/genre_display/classic").set_hidden(true)
			get_tree().get_current_scene().get_node("arcade_zone_one/genre_display/platformer").set_hidden(true)
			get_tree().get_current_scene().get_node("arcade_zone_one/genre_display/strategy").set_hidden(true)
			get_tree().get_current_scene().get_node("arcade_zone_one/genre_display/time_management").set_hidden(true)
			get_tree().get_current_scene().get_node("arcade_zone_one/genre_display/adventure").set_hidden(true)
		if (hollyhock_station_one_selection == 2):
			genre_type_one = "classic"
			get_tree().get_current_scene().get_node("arcade_zone_one/genre_display/meta").set_hidden(true)
			get_tree().get_current_scene().get_node("arcade_zone_one/genre_display/classic").show()
			get_tree().get_current_scene().get_node("arcade_zone_one/genre_display/platformer").set_hidden(true)
			get_tree().get_current_scene().get_node("arcade_zone_one/genre_display/strategy").set_hidden(true)
			get_tree().get_current_scene().get_node("arcade_zone_one/genre_display/time_management").set_hidden(true)
			get_tree().get_current_scene().get_node("arcade_zone_one/genre_display/adventure").set_hidden(true)
		if (hollyhock_station_one_selection == 3):
			genre_type_one = "platformer"
			get_tree().get_current_scene().get_node("arcade_zone_one/genre_display/meta").set_hidden(true)
			get_tree().get_current_scene().get_node("arcade_zone_one/genre_display/classic").set_hidden(true)
			get_tree().get_current_scene().get_node("arcade_zone_one/genre_display/platformer").show()
			get_tree().get_current_scene().get_node("arcade_zone_one/genre_display/strategy").set_hidden(true)
			get_tree().get_current_scene().get_node("arcade_zone_one/genre_display/time_management").set_hidden(true)
			get_tree().get_current_scene().get_node("arcade_zone_one/genre_display/adventure").set_hidden(true)
		if (hollyhock_station_two_selection == 0):
			genre_type_two = "none"
			get_tree().get_current_scene().get_node("arcade_zone_two/genre_display/meta").set_hidden(true)
			get_tree().get_current_scene().get_node("arcade_zone_two/genre_display/classic").set_hidden(true)
			get_tree().get_current_scene().get_node("arcade_zone_two/genre_display/platformer").set_hidden(true)
			get_tree().get_current_scene().get_node("arcade_zone_two/genre_display/strategy").set_hidden(true)
			get_tree().get_current_scene().get_node("arcade_zone_two/genre_display/time_management").set_hidden(true)
			get_tree().get_current_scene().get_node("arcade_zone_two/genre_display/adventure").set_hidden(true)
		if (hollyhock_station_two_selection == 1):
			genre_type_two = "meta"
			get_tree().get_current_scene().get_node("arcade_zone_two/genre_display/meta").show()
			get_tree().get_current_scene().get_node("arcade_zone_two/genre_display/classic").set_hidden(true)
			get_tree().get_current_scene().get_node("arcade_zone_two/genre_display/platformer").set_hidden(true)
			get_tree().get_current_scene().get_node("arcade_zone_two/genre_display/strategy").set_hidden(true)
			get_tree().get_current_scene().get_node("arcade_zone_two/genre_display/time_management").set_hidden(true)
			get_tree().get_current_scene().get_node("arcade_zone_two/genre_display/adventure").set_hidden(true)
		if (hollyhock_station_two_selection == 2):
			genre_type_two = "classic"
			get_tree().get_current_scene().get_node("arcade_zone_two/genre_display/meta").set_hidden(true)
			get_tree().get_current_scene().get_node("arcade_zone_two/genre_display/classic").show()
			get_tree().get_current_scene().get_node("arcade_zone_two/genre_display/platformer").set_hidden(true)
			get_tree().get_current_scene().get_node("arcade_zone_two/genre_display/strategy").set_hidden(true)
			get_tree().get_current_scene().get_node("arcade_zone_two/genre_display/time_management").set_hidden(true)
			get_tree().get_current_scene().get_node("arcade_zone_two/genre_display/adventure").set_hidden(true)
		if (hollyhock_station_two_selection == 3):
			genre_type_two = "platformer"
			get_tree().get_current_scene().get_node("arcade_zone_two/genre_display/meta").set_hidden(true)
			get_tree().get_current_scene().get_node("arcade_zone_two/genre_display/classic").set_hidden(true)
			get_tree().get_current_scene().get_node("arcade_zone_two/genre_display/platformer").show()
			get_tree().get_current_scene().get_node("arcade_zone_two/genre_display/strategy").set_hidden(true)
			get_tree().get_current_scene().get_node("arcade_zone_two/genre_display/time_management").set_hidden(true)
			get_tree().get_current_scene().get_node("arcade_zone_two/genre_display/adventure").set_hidden(true)
		if (hollyhock_station_three_selection == 0):
			genre_type_three = "none"
			get_tree().get_current_scene().get_node("arcade_zone_three/genre_display/meta").set_hidden(true)
			get_tree().get_current_scene().get_node("arcade_zone_three/genre_display/classic").set_hidden(true)
			get_tree().get_current_scene().get_node("arcade_zone_three/genre_display/platformer").set_hidden(true)
			get_tree().get_current_scene().get_node("arcade_zone_three/genre_display/strategy").set_hidden(true)
			get_tree().get_current_scene().get_node("arcade_zone_three/genre_display/time_management").set_hidden(true)
			get_tree().get_current_scene().get_node("arcade_zone_three/genre_display/adventure").set_hidden(true)
		if (hollyhock_station_three_selection == 1):
			genre_type_three = "meta"
			get_tree().get_current_scene().get_node("arcade_zone_three/genre_display/meta").show()
			get_tree().get_current_scene().get_node("arcade_zone_three/genre_display/classic").set_hidden(true)
			get_tree().get_current_scene().get_node("arcade_zone_three/genre_display/platformer").set_hidden(true)
			get_tree().get_current_scene().get_node("arcade_zone_three/genre_display/strategy").set_hidden(true)
			get_tree().get_current_scene().get_node("arcade_zone_three/genre_display/time_management").set_hidden(true)
			get_tree().get_current_scene().get_node("arcade_zone_three/genre_display/adventure").set_hidden(true)
		if (hollyhock_station_three_selection == 2):
			genre_type_three = "classic"
			get_tree().get_current_scene().get_node("arcade_zone_three/genre_display/meta").set_hidden(true)
			get_tree().get_current_scene().get_node("arcade_zone_three/genre_display/classic").show()
			get_tree().get_current_scene().get_node("arcade_zone_three/genre_display/platformer").set_hidden(true)
			get_tree().get_current_scene().get_node("arcade_zone_three/genre_display/strategy").set_hidden(true)
			get_tree().get_current_scene().get_node("arcade_zone_three/genre_display/time_management").set_hidden(true)
			get_tree().get_current_scene().get_node("arcade_zone_three/genre_display/adventure").set_hidden(true)
		if (hollyhock_station_three_selection == 3):
			genre_type_three = "platformer"
			get_tree().get_current_scene().get_node("arcade_zone_three/genre_display/meta").set_hidden(true)
			get_tree().get_current_scene().get_node("arcade_zone_three/genre_display/classic").set_hidden(true)
			get_tree().get_current_scene().get_node("arcade_zone_three/genre_display/platformer").show()
			get_tree().get_current_scene().get_node("arcade_zone_three/genre_display/strategy").set_hidden(true)
			get_tree().get_current_scene().get_node("arcade_zone_three/genre_display/time_management").set_hidden(true)
			get_tree().get_current_scene().get_node("arcade_zone_three/genre_display/adventure").set_hidden(true)
		if (hollyhock_station_four_selection == 0):
			genre_type_four = "none"
			get_tree().get_current_scene().get_node("arcade_zone_four/genre_display/meta").set_hidden(true)
			get_tree().get_current_scene().get_node("arcade_zone_four/genre_display/classic").set_hidden(true)
			get_tree().get_current_scene().get_node("arcade_zone_four/genre_display/platformer").set_hidden(true)
			get_tree().get_current_scene().get_node("arcade_zone_four/genre_display/strategy").set_hidden(true)
			get_tree().get_current_scene().get_node("arcade_zone_four/genre_display/time_management").set_hidden(true)
			get_tree().get_current_scene().get_node("arcade_zone_four/genre_display/adventure").set_hidden(true)
		if (hollyhock_station_four_selection == 1):
			genre_type_four = "meta"
			get_tree().get_current_scene().get_node("arcade_zone_four/genre_display/meta").show()
			get_tree().get_current_scene().get_node("arcade_zone_four/genre_display/classic").set_hidden(true)
			get_tree().get_current_scene().get_node("arcade_zone_four/genre_display/platformer").set_hidden(true)
			get_tree().get_current_scene().get_node("arcade_zone_four/genre_display/strategy").set_hidden(true)
			get_tree().get_current_scene().get_node("arcade_zone_four/genre_display/time_management").set_hidden(true)
			get_tree().get_current_scene().get_node("arcade_zone_four/genre_display/adventure").set_hidden(true)
		if (hollyhock_station_four_selection == 2):
			genre_type_four = "classic"
			get_tree().get_current_scene().get_node("arcade_zone_four/genre_display/meta").set_hidden(true)
			get_tree().get_current_scene().get_node("arcade_zone_four/genre_display/classic").show()
			get_tree().get_current_scene().get_node("arcade_zone_four/genre_display/platformer").set_hidden(true)
			get_tree().get_current_scene().get_node("arcade_zone_four/genre_display/strategy").set_hidden(true)
			get_tree().get_current_scene().get_node("arcade_zone_four/genre_display/time_management").set_hidden(true)
			get_tree().get_current_scene().get_node("arcade_zone_four/genre_display/adventure").set_hidden(true)
		if (hollyhock_station_four_selection == 3):
			genre_type_four = "platformer"
			get_tree().get_current_scene().get_node("arcade_zone_four/genre_display/meta").set_hidden(true)
			get_tree().get_current_scene().get_node("arcade_zone_four/genre_display/classic").set_hidden(true)
			get_tree().get_current_scene().get_node("arcade_zone_four/genre_display/platformer").show()
			get_tree().get_current_scene().get_node("arcade_zone_four/genre_display/strategy").set_hidden(true)
			get_tree().get_current_scene().get_node("arcade_zone_four/genre_display/time_management").set_hidden(true)
			get_tree().get_current_scene().get_node("arcade_zone_four/genre_display/adventure").set_hidden(true)
		if (hollyhock_station_five_selection == 0):
			genre_type_five = "none"
			get_tree().get_current_scene().get_node("arcade_zone_five/genre_display/meta").set_hidden(true)
			get_tree().get_current_scene().get_node("arcade_zone_five/genre_display/classic").set_hidden(true)
			get_tree().get_current_scene().get_node("arcade_zone_five/genre_display/platformer").set_hidden(true)
			get_tree().get_current_scene().get_node("arcade_zone_five/genre_display/strategy").set_hidden(true)
			get_tree().get_current_scene().get_node("arcade_zone_five/genre_display/time_management").set_hidden(true)
			get_tree().get_current_scene().get_node("arcade_zone_five/genre_display/adventure").set_hidden(true)
		if (hollyhock_station_five_selection == 1):
			genre_type_five = "meta"
			get_tree().get_current_scene().get_node("arcade_zone_five/genre_display/meta").show()
			get_tree().get_current_scene().get_node("arcade_zone_five/genre_display/classic").set_hidden(true)
			get_tree().get_current_scene().get_node("arcade_zone_five/genre_display/platformer").set_hidden(true)
			get_tree().get_current_scene().get_node("arcade_zone_five/genre_display/strategy").set_hidden(true)
			get_tree().get_current_scene().get_node("arcade_zone_five/genre_display/time_management").set_hidden(true)
			get_tree().get_current_scene().get_node("arcade_zone_five/genre_display/adventure").set_hidden(true)
		if (hollyhock_station_five_selection == 2):
			genre_type_five = "classic"
			get_tree().get_current_scene().get_node("arcade_zone_five/genre_display/meta").set_hidden(true)
			get_tree().get_current_scene().get_node("arcade_zone_five/genre_display/classic").show()
			get_tree().get_current_scene().get_node("arcade_zone_five/genre_display/platformer").set_hidden(true)
			get_tree().get_current_scene().get_node("arcade_zone_five/genre_display/strategy").set_hidden(true)
			get_tree().get_current_scene().get_node("arcade_zone_five/genre_display/time_management").set_hidden(true)
			get_tree().get_current_scene().get_node("arcade_zone_five/genre_display/adventure").set_hidden(true)
		if (hollyhock_station_five_selection == 3):
			genre_type_five = "platformer"
			get_tree().get_current_scene().get_node("arcade_zone_five/genre_display/meta").set_hidden(true)
			get_tree().get_current_scene().get_node("arcade_zone_five/genre_display/classic").set_hidden(true)
			get_tree().get_current_scene().get_node("arcade_zone_five/genre_display/platformer").show()
			get_tree().get_current_scene().get_node("arcade_zone_five/genre_display/strategy").set_hidden(true)
			get_tree().get_current_scene().get_node("arcade_zone_five/genre_display/time_management").set_hidden(true)
			get_tree().get_current_scene().get_node("arcade_zone_five/genre_display/adventure").set_hidden(true)
		if (hollyhock_station_six_selection == 0):
			genre_type_six = "none"
			get_tree().get_current_scene().get_node("arcade_zone_six/genre_display/meta").set_hidden(true)
			get_tree().get_current_scene().get_node("arcade_zone_six/genre_display/classic").set_hidden(true)
			get_tree().get_current_scene().get_node("arcade_zone_six/genre_display/platformer").set_hidden(true)
			get_tree().get_current_scene().get_node("arcade_zone_six/genre_display/strategy").set_hidden(true)
			get_tree().get_current_scene().get_node("arcade_zone_six/genre_display/time_management").set_hidden(true)
			get_tree().get_current_scene().get_node("arcade_zone_six/genre_display/adventure").set_hidden(true)
		if (hollyhock_station_six_selection == 1):
			genre_type_six = "meta"
			get_tree().get_current_scene().get_node("arcade_zone_six/genre_display/meta").show()
			get_tree().get_current_scene().get_node("arcade_zone_six/genre_display/classic").set_hidden(true)
			get_tree().get_current_scene().get_node("arcade_zone_six/genre_display/platformer").set_hidden(true)
			get_tree().get_current_scene().get_node("arcade_zone_six/genre_display/strategy").set_hidden(true)
			get_tree().get_current_scene().get_node("arcade_zone_six/genre_display/time_management").set_hidden(true)
			get_tree().get_current_scene().get_node("arcade_zone_six/genre_display/adventure").set_hidden(true)
		if (hollyhock_station_six_selection == 2):
			genre_type_six = "classic"
			get_tree().get_current_scene().get_node("arcade_zone_six/genre_display/meta").set_hidden(true)
			get_tree().get_current_scene().get_node("arcade_zone_six/genre_display/classic").show()
			get_tree().get_current_scene().get_node("arcade_zone_six/genre_display/platformer").set_hidden(true)
			get_tree().get_current_scene().get_node("arcade_zone_six/genre_display/strategy").set_hidden(true)
			get_tree().get_current_scene().get_node("arcade_zone_six/genre_display/time_management").set_hidden(true)
			get_tree().get_current_scene().get_node("arcade_zone_six/genre_display/adventure").set_hidden(true)
		if (hollyhock_station_six_selection == 3):
			genre_type_six = "platformer"
			get_tree().get_current_scene().get_node("arcade_zone_six/genre_display/meta").set_hidden(true)
			get_tree().get_current_scene().get_node("arcade_zone_six/genre_display/classic").set_hidden(true)
			get_tree().get_current_scene().get_node("arcade_zone_six/genre_display/platformer").show()
			get_tree().get_current_scene().get_node("arcade_zone_six/genre_display/strategy").set_hidden(true)
			get_tree().get_current_scene().get_node("arcade_zone_six/genre_display/time_management").set_hidden(true)
			get_tree().get_current_scene().get_node("genre_display/adventure").set_hidden(true)