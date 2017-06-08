extends Node2D

var energy_price
var price_output
var energy_range
var range_output

func _ready():
	price_output = get_node("price_output")
	range_output = get_node("range")
	set_process(true)

func _process(delta):
	get_globals()
	range_output.clear()
	range_output.add_text(energy_range)

func get_globals():
	energy_price = global.energy_price
	energy_range = global.energy_range
	
func _on_lower_button_down():
	get_globals()
	if (energy_price > 0):
		energy_price = energy_price - 1
		price_output.clear()
		price_output.add_text(str(energy_price))
		global.energy_price = energy_price

func _on_raise_button_down():
	get_globals()
	energy_price = energy_price + 1
	price_output.clear()
	price_output.add_text(str(energy_price))
	global.energy_price = energy_price