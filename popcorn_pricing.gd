extends Node2D

onready var price_output = get_node("price_output")
onready var range_output = get_node("range")

func _ready():
	set_process(true)

func _process(delta):
	if (towns.town_select == "hollyhock"):
		range_output.clear()
		range_output.add_text(str(supplies.popcorn_range_low) + " - " + str(supplies.popcorn_range_high))
		price_output.clear()
		price_output.add_text(str(supplies.hollyhock_popcorn_price))
	if (towns.town_select == "untilly"):
		range_output.clear()
		range_output.add_text(str(supplies.popcorn_range_low) + " - " + str(supplies.popcorn_range_high))
		price_output.clear()
		price_output.add_text(str(supplies.untilly_popcorn_price))
	if (towns.town_select == "slatten"):
		range_output.clear()
		range_output.add_text(str(supplies.popcorn_range_low) + " - " + str(supplies.popcorn_range_high))
		price_output.clear()
		price_output.add_text(str(supplies.slatten_popcorn_price))
	
func _on_lower_button_down():
	if (towns.town_select == "hollyhock"):
		if (supplies.hollyhock_popcorn_price > 0):
			supplies.hollyhock_popcorn_price = supplies.hollyhock_popcorn_price - 1
			price_output.clear()
			price_output.add_text(str(supplies.hollyhock_popcorn_price))
	if (towns.town_select == "windrow"):
		if (supplies.windrow_popcorn_price > 0):
			supplies.windrow_popcorn_price = supplies.windrow_popcorn_price - 1
			price_output.clear()
			price_output.add_text(str(supplies.windrow_popcorn_price))
	if (towns.town_select == "slatten"):
		if (supplies.slatten_popcorn_price > 0):
			supplies.slatten_popcorn_price = supplies.slatten_popcorn_price - 1
			price_output.clear()
			price_output.add_text(str(supplies.slatten_popcorn_price))

func _on_raise_button_down():
	if (towns.town_select == "hollyhock"):
		supplies.hollyhock_popcorn_price = supplies.hollyhock_popcorn_price + 1
		price_output.clear()
		price_output.add_text(str(supplies.hollyhock_popcorn_price))
	if (towns.town_select == "windrow"):
		supplies.windrow_popcorn_price = supplies.windrow_popcorn_price + 1
		price_output.clear()
		price_output.add_text(str(supplies.windrow_popcorn_price))
	if (towns.town_select == "slatten"):
		supplies.slatten_popcorn_price = supplies.slatten_popcorn_price + 1
		price_output.clear()
		price_output.add_text(str(supplies.slatten_popcorn_price))
		