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
	if (towns.town_select == "windrow"):
		range_output.clear()
		range_output.add_text(str(supplies.freezie_range_low) + " - " + str(supplies.freezie_range_high))
		price_output.clear()
		price_output.add_text(str(supplies.windrow_freezie_price))
	if (towns.town_select == "slatten"):
		range_output.clear()
		range_output.add_text(str(supplies.freezie_range_low) + " - " + str(supplies.freezie_range_high))
		price_output.clear()
		price_output.add_text(str(supplies.slatten_freezie_price))
	
func _on_lower_button_down():
	if (towns.town_select == "fiyork"):
		if (supplies.fiyork_freezie_price > 0):
			supplies.fiyork_freezie_price = supplies.fiyork_freezie_price - 1
			price_output.clear()
			price_output.add_text(str(supplies.fiyork_freezie_price))
	if (towns.town_select == "windrow"):
		if (supplies.windrow_freezie_price > 0):
			supplies.windrow_freezie_price = supplies.windrow_freezie_price - 1
			price_output.clear()
			price_output.add_text(str(supplies.windrow_freezie_price))
	if (towns.town_select == "slatten"):
		if (supplies.slatten_freezie_price > 0):
			supplies.slatten_freezie_price = supplies.slatten_freezie_price - 1
			price_output.clear()
			price_output.add_text(str(supplies.slatten_freezie_price))

func _on_raise_button_down():
	if (towns.town_select == "fiyork"):
		supplies.fiyork_freezie_price = supplies.fiyork_freezie_price + 1
		price_output.clear()
		price_output.add_text(str(supplies.fiyork_freezie_price))
	if (towns.town_select == "windrow"):
		supplies.windrow_freezie_price = supplies.windrow_freezie_price + 1
		price_output.clear()
		price_output.add_text(str(supplies.windrow_freezie_price))
	if (towns.town_select == "slatten"):
		supplies.slatten_freezie_price = supplies.slatten_freezie_price + 1
		price_output.clear()
		price_output.add_text(str(supplies.slatten_freezie_price))