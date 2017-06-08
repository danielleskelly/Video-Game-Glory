extends Node2D

var arcade_four_price
var price_output
var arcade_four_range
var range_output

func _ready():
	price_output = get_node("price_output")
	range_output = get_node("range")
	set_process(true)

func _process(delta):
	get_globals()
	range_output.clear()
	range_output.add_text(arcade_four_range)

func get_globals():
	arcade_four_price = global.arcade_four_price
	arcade_four_range = global.arcade_two_range
	
func _on_lower_button_down():
	get_globals()
	if (arcade_four_price > 0):
		arcade_four_price = arcade_four_price - 1
		price_output.clear()
		price_output.add_text(str(arcade_four_price))
		global.arcade_four_price = arcade_four_price

func _on_raise_button_down():
	get_globals()
	arcade_four_price = arcade_four_price + 1
	price_output.clear()
	price_output.add_text(str(arcade_four_price))
	global.arcade_four_price = arcade_four_price