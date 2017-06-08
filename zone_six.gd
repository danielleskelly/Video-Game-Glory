extends Node2D

var arcade_six_price
var price_output
var arcade_six_range
var range_output

func _ready():
	price_output = get_node("price_output")
	range_output = get_node("range")
	set_process(true)

func _process(delta):
	get_globals()
	range_output.clear()
	range_output.add_text(arcade_six_range)

func get_globals():
	arcade_six_price = global.arcade_six_price
	arcade_six_range = global.arcade_two_range
	
func _on_lower_button_down():
	get_globals()
	if (arcade_six_price > 0):
		arcade_six_price = arcade_six_price - 1
		price_output.clear()
		price_output.add_text(str(arcade_six_price))
		global.arcade_six_price = arcade_six_price

func _on_raise_button_down():
	get_globals()
	arcade_six_price = arcade_six_price + 1
	price_output.clear()
	price_output.add_text(str(arcade_six_price))
	global.arcade_six_price = arcade_six_price