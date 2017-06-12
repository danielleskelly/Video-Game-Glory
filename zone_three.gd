extends Node2D

var arcade_three_price
var price_output
var arcade_three_range
var range_output

func _ready():
	price_output = get_node("price_output")
	range_output = get_node("range")
	set_process(true)

func _process(delta):
	get_globals()
	range_output.clear()
	range_output.add_text(str(arcade_three_range))

func get_globals():
	arcade_three_price = global.arcade_three_price
	arcade_three_range = global.arcade_three_range_high
	
func _on_lower_button_down():
	get_globals()
	if (arcade_three_price > 0):
		arcade_three_price = arcade_three_price - 1
		price_output.clear()
		price_output.add_text(str(arcade_three_price))
		global.arcade_three_price = arcade_three_price

func _on_raise_button_down():
	get_globals()
	arcade_three_price = arcade_three_price + 1
	price_output.clear()
	price_output.add_text(str(arcade_three_price))
	global.arcade_three_price = arcade_three_price