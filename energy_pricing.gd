extends Node2D

onready var price_output = get_node("price_output")
onready var range_output = get_node("range")

func _ready():
	set_process(true)

func _process(delta):
	range_output.clear()
	range_output.add_text(str(supplies.energy_range_low) + " - " + str(supplies.energy_range_high))
	
func _on_lower_button_down():
	if (supplies.energy_price > 0):
		supplies.energy_price = supplies.energy_price - 1
		price_output.clear()
		price_output.add_text(str(supplies.energy_price))

func _on_raise_button_down():
	supplies.energy_price = supplies.energy_price + 1
	price_output.clear()
	price_output.add_text(str(supplies.energy_price))