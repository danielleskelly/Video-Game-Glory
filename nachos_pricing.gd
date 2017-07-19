extends Node2D

onready var price_output = get_node("price_output")
onready var range_output = get_node("range")

func _ready():
	set_process(true)

func _process(delta):
	if (towns.town_select == "plansey"):
		range_output.clear()
		range_output.add_text(str(supplies.nachos_range_low) + " - " + str(supplies.nachos_range_high))
		price_output.clear()
		price_output.add_text(str(supplies.plansey_nachos_price))
	if (towns.town_select == "banlon"):
		range_output.clear()
		range_output.add_text(str(supplies.nachos_range_low) + " - " + str(supplies.nachos_range_high))
		price_output.clear()
		price_output.add_text(str(supplies.banlon_nachos_price))
	
func _on_lower_button_down():
	if (towns.town_select == "plansey"):
		if (supplies.plansey_nachos_price > 0):
			supplies.plansey_nachos_price = supplies.plansey_nachos_price - 1
			price_output.clear()
			price_output.add_text(str(supplies.plansey_nachos_price))
	if (towns.town_select == "banlon"):
		if (supplies.banlon_nachos_price > 0):
			supplies.banlon_nachos_price = supplies.banlon_nachos_price - 1
			price_output.clear()
			price_output.add_text(str(supplies.banlon_nachos_price))

func _on_raise_button_down():
	if (towns.town_select == "plansey"):
		supplies.plansey_nachos_price = supplies.plansey_nachos_price + 1
		price_output.clear()
		price_output.add_text(str(supplies.plansey_nachos_price))
	if (towns.town_select == "banlon"):
		supplies.banlon_nachos_price = supplies.banlon_nachos_price + 1
		price_output.clear()
		price_output.add_text(str(supplies.banlon_nachos_price))