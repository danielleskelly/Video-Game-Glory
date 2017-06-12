extends Node2D

var arcade_one_price
var price_output
var arcade_one_range
var range_output

func _ready():
	price_output = get_node("price_output")
	range_output = get_node("range")
	set_process(true)

func _process(delta):
	get_globals()
	range_output.clear()
	range_output.add_text(str(arcade_one_range))

func get_globals():
	arcade_one_price = global.arcade_one_price
	arcade_one_range = global.arcade_two_range_high
	
func _on_lower_button_down():
	get_globals()
	if (arcade_one_price > 0):
		arcade_one_price = arcade_one_price - 1
		price_output.clear()
		price_output.add_text(str(arcade_one_price))
		global.arcade_one_price = arcade_one_price

func _on_raise_button_down():
	get_globals()
	arcade_one_price = arcade_one_price + 1
	price_output.clear()
	price_output.add_text(str(arcade_one_price))
	global.arcade_one_price = arcade_one_price