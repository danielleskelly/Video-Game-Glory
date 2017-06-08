extends Node2D

var popcorn_price
var price_output
var popcorn_range
var range_output

func _ready():
	price_output = get_node("price_output")
	range_output = get_node("range")
	set_process(true)

func _process(delta):
	get_globals()
	range_output.clear()
	range_output.add_text(popcorn_range)

func get_globals():
	popcorn_price = global.popcorn_price
	popcorn_range = global.popcorn_range
	
func _on_lower_button_down():
	get_globals()
	if (popcorn_price > 0):
		popcorn_price = popcorn_price - 1
		price_output.clear()
		price_output.add_text(str(popcorn_price))
		global.popcorn_price = popcorn_price

func _on_raise_button_down():
	get_globals()
	popcorn_price = popcorn_price + 1
	price_output.clear()
	price_output.add_text(str(popcorn_price))
	global.popcorn_price = popcorn_price