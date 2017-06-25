extends Node2D

onready var price_output = get_node("price_output")
onready var range_output = get_node("range")

func _ready():
	set_process(true)

func _process(delta):
	range_output.clear()
	range_output.add_text(str(supplies.pizza_range_low) + " - " + str(supplies.pizza_range_high))
	
func _on_lower_button_down():
	if (supplies.pizza_price > 0):
		supplies.pizza_price = supplies.pizza_price - 1
		price_output.clear()
		price_output.add_text(str(global.pizza_price))

func _on_raise_button_down():
	global.pizza_price = global.pizza_price + 1
	price_output.clear()
	price_output.add_text(str(global.pizza_price))