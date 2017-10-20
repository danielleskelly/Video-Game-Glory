extends Node2D

var soda_purchase = 0
var energy_purchase = 0
var freezie_purchase = 0

onready var buy_output = get_node("buy_output")
onready var name = get_node("name")
onready var price_output_black = get_node("price_output_black")
onready var price_output_green = get_node("price_output_green")
onready var price_output_red = get_node("price_output_red")
onready var stock_output = get_node("stock_output")
onready var total_output = get_node("total_output")
onready var overall_total_output = get_parent().get_child(9)

func _ready():
	set_process(true)

func _process(delta):
	if (towns.town_select == "hollyhock"):
		name.clear()
		name.add_text("Soda")
		stock_output.clear()
		stock_output.add_text(str(supplies.hollyhock_soda_count))
		total_output.clear()
		total_output.add_text(str(soda_purchase + supplies.hollyhock_soda_count))
		if (supplies.daily_soda_purchase_price > (supplies.soda_range_high / 2)):
			price_output_black.set_hidden(true)
			price_output_red.show()
			price_output_green.set_hidden(true)
		if (supplies.daily_soda_purchase_price < (supplies.soda_range_high / 2)):
			price_output_black.set_hidden(true)
			price_output_red.set_hidden(true)
			price_output_green.show()
		if (supplies.daily_soda_purchase_price == (supplies.soda_range_high / 2)):
			price_output_black.show()
			price_output_red.set_hidden(true)
			price_output_green.set_hidden(true)
		buy_output.clear()
		buy_output.add_text(str(soda_purchase))
		price_output_black.clear()
		price_output_black.add_text("$" + str(supplies.daily_soda_purchase_price))
		price_output_green.clear()
		price_output_green.add_text("$" + str(supplies.daily_soda_purchase_price))
		price_output_red.clear()
		price_output_red.add_text("$" + str(supplies.daily_soda_purchase_price))
		overall_total_output.clear()
		overall_total_output.add_text(str(supplies.purchase_total))
	if (towns.town_select == "fiyork"):
		name.clear()
		name.add_text("Freezie")
		stock_output.clear()
		stock_output.add_text(str(supplies.fiyork_freezie_count))
		total_output.clear()
		total_output.add_text(str(freezie_purchase + supplies.fiyork_freezie_count))
		if (supplies.daily_freezie_purchase_price > (supplies.freezie_range_high / 2)):
			price_output_black.set_hidden(true)
			price_output_red.show()
			price_output_green.set_hidden(true)
		if (supplies.daily_freezie_purchase_price < (supplies.freezie_range_high / 2)):
			price_output_black.set_hidden(true)
			price_output_red.set_hidden(true)
			price_output_green.show()
		if (supplies.daily_freezie_purchase_price == (supplies.freezie_range_high / 2)):
			price_output_black.show()
			price_output_red.set_hidden(true)
			price_output_green.set_hidden(true)
		buy_output.clear()
		buy_output.add_text(str(freezie_purchase))
		price_output_black.clear()
		price_output_black.add_text("$" + str(supplies.daily_freezie_purchase_price))
		price_output_green.clear()
		price_output_green.add_text("$" + str(supplies.daily_freezie_purchase_price))
		price_output_red.clear()
		price_output_red.add_text("$" + str(supplies.daily_freezie_purchase_price))
		overall_total_output.clear()
		overall_total_output.add_text(str(supplies.purchase_total))
	if (towns.town_select == "untilly"):
		name.clear()
		name.add_text("Soda")
		stock_output.clear()
		stock_output.add_text(str(supplies.untilly_soda_count))
		total_output.clear()
		total_output.add_text(str(soda_purchase + supplies.untilly_soda_count))
		if (supplies.daily_soda_purchase_price > (supplies.soda_range_high / 2)):
			price_output_black.set_hidden(true)
			price_output_red.show()
			price_output_green.set_hidden(true)
		if (supplies.daily_soda_purchase_price < (supplies.soda_range_high / 2)):
			price_output_black.set_hidden(true)
			price_output_red.set_hidden(true)
			price_output_green.show()
		if (supplies.daily_soda_purchase_price == (supplies.soda_range_high / 2)):
			price_output_black.show()
			price_output_red.set_hidden(true)
			price_output_green.set_hidden(true)
		buy_output.clear()
		buy_output.add_text(str(soda_purchase))
		price_output_black.clear()
		price_output_black.add_text("$" + str(supplies.daily_soda_purchase_price))
		price_output_green.clear()
		price_output_green.add_text("$" + str(supplies.daily_soda_purchase_price))
		price_output_red.clear()
		price_output_red.add_text("$" + str(supplies.daily_soda_purchase_price))
		overall_total_output.clear()
		overall_total_output.add_text(str(supplies.purchase_total))
	if (towns.town_select == "plansey"):
		name.clear()
		name.add_text("Energy Drink")
		stock_output.clear()
		stock_output.add_text(str(supplies.plansey_energy_count))
		total_output.clear()
		total_output.add_text(str(energy_purchase + supplies.plansey_energy_count))
		if (supplies.daily_energy_purchase_price > (supplies.energy_range_high / 2)):
			price_output_black.set_hidden(true)
			price_output_red.show()
			price_output_green.set_hidden(true)
		if (supplies.daily_energy_purchase_price < (supplies.energy_range_high / 2)):
			price_output_black.set_hidden(true)
			price_output_red.set_hidden(true)
			price_output_green.show()
		if (supplies.daily_energy_purchase_price == (supplies.energy_range_high / 2)):
			price_output_black.show()
			price_output_red.set_hidden(true)
			price_output_green.set_hidden(true)
		buy_output.clear()
		buy_output.add_text(str(energy_purchase))
		price_output_black.clear()
		price_output_black.add_text("$" + str(supplies.daily_energy_purchase_price))
		price_output_green.clear()
		price_output_green.add_text("$" + str(supplies.daily_energy_purchase_price))
		price_output_red.clear()
		price_output_red.add_text("$" + str(supplies.daily_energy_purchase_price))
		overall_total_output.clear()
		overall_total_output.add_text(str(supplies.purchase_total))
	if (towns.town_select == "windrow"):
		name.clear()
		name.add_text("Freezie")
		stock_output.clear()
		stock_output.add_text(str(supplies.windrow_freezie_count))
		total_output.clear()
		total_output.add_text(str(freezie_purchase + supplies.windrow_freezie_count))
		if (supplies.daily_freezie_purchase_price > (supplies.freezie_range_high / 2)):
			price_output_black.set_hidden(true)
			price_output_red.show()
			price_output_green.set_hidden(true)
		if (supplies.daily_freezie_purchase_price < (supplies.freezie_range_high / 2)):
			price_output_black.set_hidden(true)
			price_output_red.set_hidden(true)
			price_output_green.show()
		if (supplies.daily_freezie_purchase_price == (supplies.freezie_range_high / 2)):
			price_output_black.show()
			price_output_red.set_hidden(true)
			price_output_green.set_hidden(true)
		buy_output.clear()
		buy_output.add_text(str(freezie_purchase))
		price_output_black.clear()
		price_output_black.add_text("$" + str(supplies.daily_freezie_purchase_price))
		price_output_green.clear()
		price_output_green.add_text("$" + str(supplies.daily_freezie_purchase_price))
		price_output_red.clear()
		price_output_red.add_text("$" + str(supplies.daily_freezie_purchase_price))
		overall_total_output.clear()
		overall_total_output.add_text(str(supplies.purchase_total))
	if (towns.town_select == "banlon"):
		name.clear()
		name.add_text("Energy")
		stock_output.clear()
		stock_output.add_text(str(supplies.banlon_energy_count))
		total_output.clear()
		total_output.add_text(str(energy_purchase + supplies.banlon_energy_count))
		if (supplies.daily_energy_purchase_price > (supplies.energy_range_high / 2)):
			price_output_black.set_hidden(true)
			price_output_red.show()
			price_output_green.set_hidden(true)
		if (supplies.daily_energy_purchase_price < (supplies.energy_range_high / 2)):
			price_output_black.set_hidden(true)
			price_output_red.set_hidden(true)
			price_output_green.show()
		if (supplies.daily_energy_purchase_price == (supplies.energy_range_high / 2)):
			price_output_black.show()
			price_output_red.set_hidden(true)
			price_output_green.set_hidden(true)
		buy_output.clear()
		buy_output.add_text(str(energy_purchase))
		price_output_black.clear()
		price_output_black.add_text("$" + str(supplies.daily_energy_purchase_price))
		price_output_green.clear()
		price_output_green.add_text("$" + str(supplies.daily_energy_purchase_price))
		price_output_red.clear()
		price_output_red.add_text("$" + str(supplies.daily_energy_purchase_price))
		overall_total_output.clear()
		overall_total_output.add_text(str(supplies.purchase_total))
	if (towns.town_select == "slatten"):
		name.clear()
		name.add_text("Freezie")
		stock_output.clear()
		stock_output.add_text(str(supplies.slatten_freezie_count))
		total_output.clear()
		total_output.add_text(str(freezie_purchase + supplies.slatten_freezie_count))
		if (supplies.daily_freezie_purchase_price > (supplies.freezie_range_high / 2)):
			price_output_black.set_hidden(true)
			price_output_red.show()
			price_output_green.set_hidden(true)
		if (supplies.daily_freezie_purchase_price < (supplies.freezie_range_high / 2)):
			price_output_black.set_hidden(true)
			price_output_red.set_hidden(true)
			price_output_green.show()
		if (supplies.daily_freezie_purchase_price == (supplies.freezie_range_high / 2)):
			price_output_black.show()
			price_output_red.set_hidden(true)
			price_output_green.set_hidden(true)
		buy_output.clear()
		buy_output.add_text(str(freezie_purchase))
		price_output_black.clear()
		price_output_black.add_text("$" + str(supplies.daily_freezie_purchase_price))
		price_output_green.clear()
		price_output_green.add_text("$" + str(supplies.daily_freezie_purchase_price))
		price_output_red.clear()
		price_output_red.add_text("$" + str(supplies.daily_freezie_purchase_price))
		overall_total_output.clear()
		overall_total_output.add_text(str(supplies.purchase_total))
	

func _on_lower_button_down():
	if (towns.town_select == "hollyhock") or (towns.town_select == "untilly"):
		if (soda_purchase > 0):
			soda_purchase = soda_purchase - 1
			supplies.purchase_total = supplies.purchase_total - supplies.daily_soda_purchase_price
	if (towns.town_select == "fiyork") or (towns.town_select == "windrow") or (towns.town_select == "slatten"):
		if (freezie_purchase > 0):
			freezie_purchase = freezie_purchase - 1
			supplies.purchase_total = supplies.purchase_total - supplies.daily_freezie_purchase_price
	if (towns.town_select == "plansey") or (towns.town_select == "banlon"):
		if (energy_purchase > 0):
			energy_purchase = energy_purchase - 1
			supplies.purchase_total = supplies.purchase_total - supplies.daily_energy_purchase_price


func _on_raise_button_down():
	if (towns.town_select == "hollyhock"):
		if (money.hollyhock_cash >= (supplies.purchase_total + supplies.daily_soda_purchase_price)):
			soda_purchase = soda_purchase + 1
			supplies.purchase_total = supplies.purchase_total + supplies.daily_soda_purchase_price
	if (towns.town_select == "fiyork"):
		if (money.fiyork_cash >= (supplies.purchase_total + supplies.daily_freezie_purchase_price)):
			freezie_purchase = freezie_purchase + 1
			supplies.purchase_total = supplies.purchase_total + supplies.daily_freezie_purchase_price
	if (towns.town_select == "plansey"):
		if (money.plansey_cash >= (supplies.purchase_total + supplies.daily_energy_purchase_price)):
			energy_purchase = energy_purchase + 1
			supplies.purchase_total = supplies.purchase_total + supplies.daily_energy_purchase_price
	if (towns.town_select == "untilly"):
		if (money.untilly_cash >= (supplies.purchase_total + supplies.daily_soda_purchase_price)):
			soda_purchase = soda_purchase + 1
			supplies.purchase_total = supplies.purchase_total + supplies.daily_soda_purchase_price
	if (towns.town_select == "windrow"):
		if (money.windrow_cash >= (supplies.purchase_total + supplies.daily_freezie_purchase_price)):
			freezie_purchase = freezie_purchase + 1
			supplies.purchase_total = supplies.purchase_total + supplies.daily_freezie_purchase_price
	if (towns.town_select == "banlon"):
		if (money.banlon_cash >= (supplies.purchase_total + supplies.daily_energy_purchase_price)):
			energy_purchase = energy_purchase + 1
			supplies.purchase_total = supplies.purchase_total + supplies.daily_energy_purchase_price
	if (towns.town_select == "slatten"):
		if (money.slatten_cash >= (supplies.purchase_total + supplies.daily_freezie_purchase_price)):
			freezie_purchase = freezie_purchase + 1
			supplies.purchase_total = supplies.purchase_total + supplies.daily_freezie_purchase_price