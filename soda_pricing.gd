extends Node2D

onready var price_output = get_node("price_output")
onready var range_output = get_node("range")

func _ready():
	set_process(true)

func _process(delta):
	if (towns.town_select == "hollyhock"):
		range_output.clear()
		range_output.add_text(str(supplies.soda_range_low) + " - " + str(supplies.soda_range_high))
		price_output.clear()
		price_output.add_text(str(supplies.hollyhock_soda_price))
	if (towns.town_select == "untilly"):
		range_output.clear()
		range_output.add_text(str(supplies.soda_range_low) + " - " + str(supplies.soda_range_high))
		price_output.clear()
		price_output.add_text(str(supplies.untilly_soda_price))
	
func _on_lower_button_down():
	if (towns.town_select == "hollyhock"):
		if (supplies.hollyhock_soda_price > 0):
			supplies.hollyhock_soda_price = supplies.hollyhock_soda_price - 1
			price_output.clear()
			price_output.add_text(str(supplies.hollyhock_soda_price))
	if (towns.town_select == "untilly"):
		if (supplies.untilly_soda_price > 0):
			supplies.untilly_soda_price = supplies.untilly_soda_price - 1
			price_output.clear()
			price_output.add_text(str(supplies.untilly_soda_price))

func _on_raise_button_down():
	if (towns.town_select == "hollyhock"):
		supplies.hollyhock_soda_price = supplies.hollyhock_soda_price + 1
		price_output.clear()
		price_output.add_text(str(supplies.hollyhock_soda_price))
	if (towns.town_select == "untilly"):
		supplies.untilly_soda_price = supplies.untilly_soda_price + 1
		price_output.clear()
		price_output.add_text(str(supplies.untilly_soda_price))