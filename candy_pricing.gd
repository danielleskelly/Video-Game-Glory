extends Node2D

onready var price_output = get_node("price_output")
onready var range_output = get_node("range")

func _ready():
	set_process(true)

func _process(delta):
	range_output.clear()
	range_output.add_text(str(supplies.candy_range_low) + " - " + str(supplies.candy_range_high))
	
func _on_lower_button_down():
	if (supplies.candy_price > 0):
		supplies.candy_price = supplies.candy_price - 1
		price_output.clear()
		price_output.add_text(str(supplies.candy_price))

func _on_raise_button_down():
	supplies.candy_price = supplies.candy_price + 1
	price_output.clear()
	price_output.add_text(str(supplies.candy_price))