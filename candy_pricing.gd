extends Node2D

var candy_price
var price_output
var candy_range
var range_output

func _ready():
	price_output = get_node("price_output")
	range_output = get_node("range")
	set_process(true)

func _process(delta):
	get_globals()
	range_output.clear()
	range_output.add_text(candy_range)

func get_globals():
	candy_price = global.candy_price
	candy_range = global.candy_range
	
func _on_lower_button_down():
	get_globals()
	if (candy_price > 0):
		candy_price = candy_price - 1
		price_output.clear()
		price_output.add_text(str(candy_price))
		global.candy_price = candy_price

func _on_raise_button_down():
	get_globals()
	candy_price = candy_price + 1
	price_output.clear()
	price_output.add_text(str(candy_price))
	global.candy_price = candy_price