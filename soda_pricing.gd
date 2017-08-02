extends Node2D

onready var price_output = get_node("price_output")
onready var range_output = get_node("range")
onready var name = get_node("name")

func _ready():
	set_process(true)

func _process(delta):
	if (towns.town_select == "hollyhock"):
		name.clear()
		name.add_text("Soda")
		range_output.clear()
		range_output.add_text(str(supplies.soda_range_low) + " - " + str(supplies.soda_range_high))
		price_output.clear()
		price_output.add_text(str(supplies.hollyhock_soda_price))
	if (towns.town_select == "untilly"):
		name.clear()
		name.add_text("Soda")
		range_output.clear()
		range_output.add_text(str(supplies.soda_range_low) + " - " + str(supplies.soda_range_high))
		price_output.clear()
		price_output.add_text(str(supplies.untilly_soda_price))
	if (towns.town_select == "fiyork"):
		name.clear()
		name.add_text("Freezie")
		range_output.clear()
		range_output.add_text(str(supplies.freezie_range_low) + " - " + str(supplies.freezie_range_high))
		price_output.clear()
		price_output.add_text(str(supplies.fiyork_freezie_price))
	if (towns.town_select == "windrow"):
		name.clear()
		name.add_text("Freezie")
		range_output.clear()
		range_output.add_text(str(supplies.freezie_range_low) + " - " + str(supplies.freezie_range_high))
		price_output.clear()
		price_output.add_text(str(supplies.windrow_freezie_price))
	if (towns.town_select == "slatten"):
		name.clear()
		name.add_text("Freezie")
		range_output.clear()
		range_output.add_text(str(supplies.freezie_range_low) + " - " + str(supplies.freezie_range_high))
		price_output.clear()
		price_output.add_text(str(supplies.slatten_freezie_price))
	if (towns.town_select == "plansey"):
		name.clear()
		name.add_text("Energy")
		range_output.clear()
		range_output.add_text(str(supplies.energy_range_low) + " - " + str(supplies.energy_range_high))
		price_output.clear()
		price_output.add_text(str(supplies.plansey_energy_price))
	if (towns.town_select == "banlon"):
		name.clear()
		name.add_text("Energy")
		range_output.clear()
		range_output.add_text(str(supplies.energy_range_low) + " - " + str(supplies.energy_range_high))
		price_output.clear()
		price_output.add_text(str(supplies.banlon_energy_price))
		
	
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
	if (towns.town_select == "plansey"):
		if (supplies.plansey_energy_price > 0):
			supplies.plansey_energy_price = supplies.plansey_energy_price - 1
			price_output.clear()
			price_output.add_text(str(supplies.plansey_energy_price))
	if (towns.town_select == "banlon"):
		if (supplies.banlon_energy_price > 0):
			supplies.banlon_energy_price = supplies.banlon_energy_price - 1
			price_output.clear()
			price_output.add_text(str(supplies.banlon_energy_price))
			
			

func _on_raise_button_down():
	if (towns.town_select == "hollyhock"):
		supplies.hollyhock_soda_price = supplies.hollyhock_soda_price + 1
		price_output.clear()
		price_output.add_text(str(supplies.hollyhock_soda_price))
	if (towns.town_select == "untilly"):
		supplies.untilly_soda_price = supplies.untilly_soda_price + 1
		price_output.clear()
		price_output.add_text(str(supplies.untilly_soda_price))
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
	if (towns.town_select == "plansey"):
		supplies.plansey_energy_price = supplies.plansey_energy_price + 1
		price_output.clear()
		price_output.add_text(str(supplies.plansey_energy_price))
	if (towns.town_select == "banlon"):
		supplies.banlon_energy_price = supplies.banlon_energy_price + 1
		price_output.clear()
		price_output.add_text(str(supplies.banlon_energy_price))
		
		
		