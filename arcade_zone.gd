extends Node2D

var station_one_selection

var town_select

var type

var old_parent
var prime
var new_parent

func _ready():
	get_globals()
	set_type()
	old_parent = get_tree().get_current_scene().get_node("customer_queue")
	new_parent = get_tree().get_current_scene().get_node("zone_one_path")
	set_process(true)
	
func _process(delta):
	if (old_parent.get_child_count() > 1) and (is_in_group("free") == true):
		prime = get_tree().get_current_scene().get_node("customer_queue").get_child(1)
		if (prime.get_child(0).is_in_group("meta") == true) and (type == "meta") and (prime.get_unit_offset() > 1):
			old_parent.remove_child(old_parent.get_child(1))
			prime.set_offset(0)
			new_parent.add_child(prime)
			remove_from_group("free")
		
		
func set_type():
	if town_select == "hollyhock":
		if (station_one_selection == 0):
			type = "none"
		if (station_one_selection == 1):
			type = "meta"
		if (station_one_selection == 2):
			type = "classic"
		if station_one_selection == 3:
			type = "platformer"
	
	
func get_globals():
	station_one_selection = global.station_one_selection
	town_select = global.town_select