extends Node2D

onready var price_output = get_node("price_output")
onready var range_output = get_node("range")

func _ready():
	set_process(true)

func _process(delta):
	range_output.clear()
	range_output.add_text(str(global.popcorn_range_low) + " - " + str(global.popcorn_range_high))
	
func _on_lower_button_down():
	if (global.town_select == "hollyhock"):
		if (global.hollyhock_popcorn_price > 0):
			global.hollyhock_popcorn_price = global.hollyhock_popcorn_price - 1
			price_output.clear()
			price_output.add_text(str(global.hollyhock_popcorn_price))

func _on_raise_button_down():
	if (global.town_select == "hollyhock"):
		global.hollyhock_popcorn_price = global.hollyhock_popcorn_price + 1
		price_output.clear()
		price_output.add_text(str(global.hollyhock_popcorn_price))