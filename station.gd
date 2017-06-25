extends Node2D

onready var dropdown = get_node("dropdown")

func _ready():
	add_items()
	set_process(true)
	pass

func _process(delta):
	if (towns.town_select == "hollyhock"):
		if (keys.hollyhock_vgg_key == false):
			dropdown.set_item_disabled(1, true)
		if (keys.hollyhock_yellowdot_key == false):
			dropdown.set_item_disabled(2, true)
		if (keys.hollyhock_plumber_key == false):
			dropdown.set_item_disabled(3, true)

func add_items():
		dropdown.add_item("Make a Selection...")
		if (towns.town_select == "hollyhock"):
			dropdown.add_item("Video Game Glory")
			dropdown.add_item("Yellow Eating Dot")
			dropdown.add_item("A Plumber and his Brother")