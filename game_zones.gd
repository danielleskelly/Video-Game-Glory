extends Node2D

var arcade_price
var price_output
var arcade_range
var range_output
var arcade_key

func _ready():
	price_output = get_node("price_output")
	range_output = get_node("range")
	set_process(true)

func _process(delta):
	get_globals()
	range_output.clear()
	range_output.add_text(arcade_range)

func get_globals():
	arcade_price = global.arcade_price
	arcade_range = global.arcade_range
	arcade_key = global.arcade_key
	
func _on_lower_button_down():
	get_globals()
	if (arcade_price > 0):
		arcade_price = arcade_price - 1
		price_output.clear()
		price_output.add_text(str(arcade_price))
		global.arcade_price = arcade_price

func _on_raise_button_down():
	get_globals()
	arcade_price = arcade_price + 1
	price_output.clear()
	price_output.add_text(str(arcade_price))
	global.arcade_price = arcade_price