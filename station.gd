extends Node2D

onready var dropdown = get_node("dropdown")

func _ready():
	add_items()
	pass

func add_items():
		dropdown.add_item("Make a Selection...")
		if (towns.town_select == "hollyhock"):
			dropdown.add_item("Video Game Glory")
			if (keys.hollyhock_yellowdot_key == true):
				dropdown.add_item("Yellow Eating Dot")
			if (keys.hollyhock_plumber_key == true):
				dropdown.add_item("A Plumber and his Brother")