extends Node2D

var town_select
var plumber_key
var yellowdot_key
var vgg_key

var dropdown

func _ready():
	dropdown = get_node("dropdown")
	get_globals()
	add_items()
	set_process(true)
	pass

func _process(delta):
	get_globals()
	if (vgg_key == false):
		dropdown.set_item_disabled(0, true)
	if (yellowdot_key == false):
		dropdown.set_item_disabled(1, true)
	if (plumber_key == false):
		dropdown.set_item_ID(2, true)

func add_items():
	if (town_select == "hollyhock"):
		dropdown.add_item("Video Game Glory")
		dropdown.add_item("Yellow Eating Dot")
		dropdown.add_item("A Plumber and his Brother")
	
func get_globals():
	town_select = global.town_select
	vgg_key = global.vgg_key
	plumber_key = global.plumber_key
	yellowdot_key = global.yellowdot_key
	