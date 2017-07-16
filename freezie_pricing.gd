extends Node2D

onready var price_output = get_node("price_output")
onready var range_output = get_node("range")

func _ready():
	set_process(true)

func _process(delta):
	if (towns.town_select == "fiyork"):
		range_output.clear()
		range_output.add_text(str(supplies.freezie_range_low) + " - " + str(supplies.freezie_range_high))
		price_output.clear()
		price_output.add_text(str(supplies.fiyork_freezie_price))
	
func _on_lower_button_down():
	if (towns.town_select == "fiyork"):
		if (supplies.fiyork_freezie_price > 0):
			supplies.fiyork_freezie_price = supplies.fiyork_freezie_price - 1
			price_output.clear()
			price_output.add_text(str(supplies.fiyork_freezie_price))

func _on_raise_button_down():
	if (towns.town_select == "fiyork"):
		supplies.fiyork_freezie_price = supplies.fiyork_freezie_price + 1
		price_output.clear()
		price_output.add_text(str(supplies.fiyork_freezie_price))