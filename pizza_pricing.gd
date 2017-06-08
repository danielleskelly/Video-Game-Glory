extends Node2D

var pizza_price
var price_output
var pizza_range
var range_output


func _ready():
	price_output = get_node("price_output")
	range_output = get_node("range")
	set_process(true)

func _process(delta):
	get_globals()
	range_output.clear()
	range_output.add_text(pizza_range)

func get_globals():
	pizza_price = global.pizza_price
	pizza_range = global.pizza_range
	
func _on_lower_button_down():
	get_globals()
	if (pizza_price > 0):
		pizza_price = pizza_price - 1
		price_output.clear()
		price_output.add_text(str(pizza_price))
		global.pizza_price = pizza_price

func _on_raise_button_down():
	get_globals()
	pizza_price = pizza_price + 1
	price_output.clear()
	price_output.add_text(str(pizza_price))
	global.pizza_price = pizza_price