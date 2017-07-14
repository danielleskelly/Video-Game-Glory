extends Node2D

onready var dropdown = get_node("dropdown")

func _ready():
	add_items()
	pass

func add_items():
		dropdown.add_item("Make a Selection...")
		if (towns.town_select == "hollyhock"):
			dropdown.add_item("Video Game Glory")
			if (hollyhock.hollyhock_genre_two_key == true):
				dropdown.add_item("Yellow Eating Dot")
			if (hollyhock.hollyhock_genre_three_key == true):
				dropdown.add_item("A Plumber and his Brother")
		if (towns.town_select == "fiyork"):
			dropdown.add_item("Shoot that Rock!")
			if (fiyork.fiyork_genre_two_key == true):
				dropdown.add_item("Legendary Zilda")
			if (fiyork.fiyork_genre_three_key == true):
				dropdown.add_item("Get Those Unicorns Home!")