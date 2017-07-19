extends Node2D

onready var price_output = get_node("price_output")
onready var range_output = get_node("range")

func _ready():
	set_process(true)

func _process(delta):
	if (towns.town_select == "hollyhock"):
		range_output.clear()
		range_output.add_text(str(arcade_day.hollyhock_arcade_range_low) + " - " + str(arcade_day.hollyhock_arcade_range_high))
		price_output.clear()
		price_output.add_text(str(arcade_day.hollyhock_arcade_three_price))
	if (towns.town_select == "fiyork"):
		range_output.clear()
		range_output.add_text(str(arcade_day.fiyork_arcade_range_low) + " - " + str(arcade_day.fiyork_arcade_range_high))
		price_output.clear()
		price_output.add_text(str(arcade_day.fiyork_arcade_three_price))
	if (towns.town_select == "plansey"):
		range_output.clear()
		range_output.add_text(str(arcade_day.plansey_arcade_range_low) + " - " + str(arcade_day.plansey_arcade_range_high))
		price_output.clear()
		price_output.add_text(str(arcade_day.plansey_arcade_three_price))
	if (towns.town_select == "untilly"):
		range_output.clear()
		range_output.add_text(str(arcade_day.untilly_arcade_range_low) + " - " + str(arcade_day.untilly_arcade_range_high))
		price_output.clear()
		price_output.add_text(str(arcade_day.untilly_arcade_three_price))
	if (towns.town_select == "windrow"):
		range_output.clear()
		range_output.add_text(str(arcade_day.windrow_arcade_range_low) + " - " + str(arcade_day.windrow_arcade_range_high))
		price_output.clear()
		price_output.add_text(str(arcade_day.windrow_arcade_three_price))
	if (towns.town_select == "banlon"):
		range_output.clear()
		range_output.add_text(str(arcade_day.banlon_arcade_range_low) + " - " + str(arcade_day.banlon_arcade_range_high))
		price_output.clear()
		price_output.add_text(str(arcade_day.banlon_arcade_three_price))
	if (towns.town_select == "slatten"):
		range_output.clear()
		range_output.add_text(str(arcade_day.slatten_arcade_range_low) + " - " + str(arcade_day.slatten_arcade_range_high))
		price_output.clear()
		price_output.add_text(str(arcade_day.slatten_arcade_three_price))

func _on_lower_button_down():
	if (towns.town_select == "hollyhock"):
		if (arcade_day.hollyhock_arcade_three_price > 0):
			arcade_day.hollyhock_arcade_three_price = arcade_day.hollyhock_arcade_three_price - 1
	if (towns.town_select == "fiyork"):
		if (arcade_day.fiyork_arcade_three_price > 0):
			arcade_day.fiyork_arcade_three_price = arcade_day.fiyork_arcade_three_price - 1
	if (towns.town_select == "plansey"):
		if (arcade_day.plansey_arcade_three_price > 0):
			arcade_day.plansey_arcade_three_price = arcade_day.plansey_arcade_three_price - 1
	if (towns.town_select == "untilly"):
		if (arcade_day.untilly_arcade_three_price > 0):
			arcade_day.untilly_arcade_three_price = arcade_day.untilly_arcade_three_price - 1
	if (towns.town_select == "windrow"):
		if (arcade_day.windrow_arcade_three_price > 0):
			arcade_day.windrow_arcade_three_price = arcade_day.windrow_arcade_three_price - 1
	if (towns.town_select == "banlon"):
		if (arcade_day.banlon_arcade_three_price > 0):
			arcade_day.banlon_arcade_three_price = arcade_day.banlon_arcade_three_price - 1
	if (towns.town_select == "slatten"):
		if (arcade_day.slatten_arcade_three_price > 0):
			arcade_day.slatten_arcade_three_price = arcade_day.slatten_arcade_three_price - 1


func _on_raise_button_down():
	if (towns.town_select == "hollyhock"):
		arcade_day.hollyhock_arcade_three_price = arcade_day.hollyhock_arcade_three_price + 1
	if (towns.town_select == "fiyork"):
		arcade_day.fiyork_arcade_three_price = arcade_day.fiyork_arcade_three_price + 1
	if (towns.town_select == "plansey"):
		arcade_day.plansey_arcade_three_price = arcade_day.plansey_arcade_three_price + 1
	if (towns.town_select == "untilly"):
		arcade_day.untilly_arcade_three_price = arcade_day.untilly_arcade_three_price + 1
	if (towns.town_select == "windrow"):
		arcade_day.windrow_arcade_three_price = arcade_day.windrow_arcade_three_price + 1
	if (towns.town_select == "banlon"):
		arcade_day.banlon_arcade_three_price = arcade_day.banlon_arcade_three_price + 1
	if (towns.town_select == "slatten"):
		arcade_day.slatten_arcade_three_price = arcade_day.slatten_arcade_three_price + 1
		