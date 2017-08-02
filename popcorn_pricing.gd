extends Node2D

onready var price_output = get_node("price_output")
onready var range_output = get_node("range")
onready var name = get_node("name")

func _ready():
	set_process(true)

func _process(delta):
	if (towns.town_select == "hollyhock"):
		name.clear()
		name.add_text("Pocorn")
		range_output.clear()
		range_output.add_text(str(supplies.popcorn_range_low) + " - " + str(supplies.popcorn_range_high))
		price_output.clear()
		price_output.add_text(str(supplies.hollyhock_popcorn_price))
	if (towns.town_select == "untilly"):
		name.clear()
		name.add_text("Popcorn")
		range_output.clear()
		range_output.add_text(str(supplies.popcorn_range_low) + " - " + str(supplies.popcorn_range_high))
		price_output.clear()
		price_output.add_text(str(supplies.untilly_popcorn_price))
	if (towns.town_select == "fiyork"):
		name.clear()
		name.add_text("Pizza")
		range_output.clear()
		range_output.add_text(str(supplies.pizza_range_low) + " - " + str(supplies.pizza_range_high))
		price_output.clear()
		price_output.add_text(str(supplies.fiyork_pizza_price))
	if (towns.town_select == "windrow"):
		name.clear()
		name.add_text("Pizza")
		range_output.clear()
		range_output.add_text(str(supplies.pizza_range_low) + " - " + str(supplies.pizza_range_high))
		price_output.clear()
		price_output.add_text(str(supplies.windrow_pizza_price))
	if (towns.town_select == "slatten"):
		name.clear()
		name.add_text("Pocorn")
		range_output.clear()
		range_output.add_text(str(supplies.popcorn_range_low) + " - " + str(supplies.popcorn_range_high))
		price_output.clear()
		price_output.add_text(str(supplies.slatten_popcorn_price))
	if (towns.town_select == "plansey"):
		name.clear()
		name.add_text("Nachos")
		range_output.clear()
		range_output.add_text(str(supplies.nachos_range_low) + " - " + str(supplies.nachos_range_high))
		price_output.clear()
		price_output.add_text(str(supplies.plansey_nachos_price))
	if (towns.town_select == "banlon"):
		name.clear()
		name.add_text("Nachos")
		range_output.clear()
		range_output.add_text(str(supplies.nachos_range_low) + " - " + str(supplies.nachos_range_high))
		price_output.clear()
		price_output.add_text(str(supplies.banlon_nachos_price))
		
	
func _on_lower_button_down():
	if (towns.town_select == "hollyhock"):
		if (supplies.hollyhock_popcorn_price > 0):
			supplies.hollyhock_popcorn_price = supplies.hollyhock_popcorn_price - 1
			price_output.clear()
			price_output.add_text(str(supplies.hollyhock_popcorn_price))
	if (towns.town_select == "untilly"):
		if (supplies.untilly_popcorn_price > 0):
			supplies.untilly_popcorn_price = supplies.untilly_popcorn_price - 1
			price_output.clear()
			price_output.add_text(str(supplies.untilly_popcorn_price))
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
	if (towns.town_select == "slatten"):
		if (supplies.slatten_popcorn_price > 0):
			supplies.slatten_popcorn_price = supplies.slatten_popcorn_price - 1
			price_output.clear()
			price_output.add_text(str(supplies.slatten_popcorn_price))
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
	if (towns.town_select == "hollyhock"):
		supplies.hollyhock_popcorn_price = supplies.hollyhock_popcorn_price + 1
		price_output.clear()
		price_output.add_text(str(supplies.hollyhock_popcorn_price))
	if (towns.town_select == "untilly"):
		supplies.untilly_popcorn_price = supplies.untilly_popcorn_price + 1
		price_output.clear()
		price_output.add_text(str(supplies.untilly_popcorn_price))
	if (towns.town_select == "fiyork"):
		supplies.fiyork_pizza_price = supplies.fiyork_pizza_price + 1
		price_output.clear()
		price_output.add_text(str(supplies.fiyork_pizza_price))
	if (towns.town_select == "windrow"):
		supplies.windrow_pizza_price = supplies.windrow_pizza_price + 1
		price_output.clear()
		price_output.add_text(str(supplies.windrow_pizza_price))
	if (towns.town_select == "slatten"):
		supplies.slatten_popcorn_price = supplies.slatten_popcorn_price + 1
		price_output.clear()
		price_output.add_text(str(supplies.slatten_popcorn_price))
	if (towns.town_select == "plansey"):
		supplies.plansey_nachos_price = supplies.plansey_nachos_price + 1
		price_output.clear()
		price_output.add_text(str(supplies.plansey_nachos_price))
	if (towns.town_select == "banlon"):
		supplies.banlon_nachos_price = supplies.banlon_nachos_price + 1
		price_output.clear()
		price_output.add_text(str(supplies.banlon_nachos_price))
		
		
		