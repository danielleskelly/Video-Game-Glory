extends Node2D

onready var price_output = get_node("price_output")
onready var range_output = get_node("range")

func _ready():
	set_process(true)

func _process(delta):
	range_output.clear()
	range_output.add_text(str(price_check.arcade_three_range_low) + " - " + str(price_check.arcade_three_range_high))
	if (towns.town_select == "hollyhock"):
		price_output.clear()
		price_output.add_text(str(price_check.hollyhock_arcade_three_price))

func _on_lower_button_down():
	if (towns.town_select == "hollyhock"):
		if (price_check.hollyhock_arcade_three_price > 0):
			price_check.hollyhock_arcade_three_price = price_check.hollyhock_arcade_three_price - 1

func _on_raise_button_down():
	if (towns.town_select == "hollyhock"):
		price_check.hollyhock_arcade_three_price = price_check.hollyhock_arcade_three_price + 1