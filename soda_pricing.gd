extends Node2D

var soda_price
var price_output
var soda_range
var range_output

func _ready():
	price_output = get_node("price_output")
	range_output = get_node("range")
	set_process(true)

func _process(delta):
	get_globals()
	range_output.clear()
	range_output.add_text(soda_range)

func get_globals():
	soda_price = global.soda_price
	soda_range = global.soda_range
	
func _on_lower_button_down():
	get_globals()
	if (soda_price > 0):
		soda_price = soda_price - 1
		price_output.clear()
		price_output.add_text(str(soda_price))
		global.soda_price = soda_price

func _on_raise_button_down():
	get_globals()
	soda_price = soda_price + 1
	price_output.clear()
	price_output.add_text(str(soda_price))
	global.soda_price = soda_price