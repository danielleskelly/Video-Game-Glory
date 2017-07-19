extends Node2D

onready var price_output = get_node("price_output")
onready var range_output = get_node("range")

func _ready():
	set_process(true)

func _process(delta):
	if (towns.town_select == "fiyork"):
		range_output.clear()
		range_output.add_text(str(supplies.pizza_range_low) + " - " + str(supplies.pizza_range_high))
		price_output.clear()
		price_output.add_text(str(supplies.fiyork_pizza_price))
	if (towns.town_select == "windrow"):
		range_output.clear()
		range_output.add_text(str(supplies.pizza_range_low) + " - " + str(supplies.pizza_range_high))
		price_output.clear()
		price_output.add_text(str(supplies.windrow_pizza_price))
	
func _on_lower_button_down():
	if (towns.town_select == "fiyork"):
		if (supplies.fiyork_pizza_price > 0):
			supplies.fiyork_pizza_price = supplies.fiyork_pizza_price - 1
			price_output.clear()
			price_output.add_text(str(supplies.fiyork_pizza_price))
	if (towns.town_select == "windrow"):
		if (supplies.windrow_pizza_price > 0):
			supplies.windrow_pizza_price = supplies.windrow_pizza_price - 1
			price_output.clear()
			price_output.add_text(str(supplies.windrow_pizza_price))

func _on_raise_button_down():
	if (towns.town_select == "fiyork"):
		supplies.fiyork_pizza_price = supplies.fiyork_pizza_price + 1
		price_output.clear()
		price_output.add_text(str(supplies.fiyork_pizza_price))
	if (towns.town_select == "windrow"):
		supplies.windrow_pizza_price = supplies.windrow_pizza_price + 1
		price_output.clear()
		price_output.add_text(str(supplies.windrow_pizza_price))