extends Node2D

var popcorn_purchase = 0
var pizza_purchase = 0
var nachos_purchase = 0

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
		name.add_text("Popcorn")
		stock_output.clear()
		stock_output.add_text(str(supplies.hollyhock_popcorn_count))
		total_output.clear()
		total_output.add_text(str(popcorn_purchase + supplies.hollyhock_popcorn_count))
		if (supplies.daily_popcorn_purchase_price > (supplies.popcorn_range_high / 2)):
			price_output_black.set_hidden(true)
			price_output_red.show()
			price_output_green.set_hidden(true)
		if (supplies.daily_popcorn_purchase_price < (supplies.popcorn_range_high / 2)):
			price_output_black.set_hidden(true)
			price_output_red.set_hidden(true)
			price_output_green.show()
		if (supplies.daily_popcorn_purchase_price == (supplies.popcorn_range_high / 2)):
			price_output_black.show()
			price_output_red.set_hidden(true)
			price_output_green.set_hidden(true)
		buy_output.clear()
		buy_output.add_text(str(popcorn_purchase))
		price_output_black.clear()
		price_output_black.add_text("$" + str(supplies.daily_popcorn_purchase_price))
		price_output_green.clear()
		price_output_green.add_text("$" + str(supplies.daily_popcorn_purchase_price))
		price_output_red.clear()
		price_output_red.add_text("$" + str(supplies.daily_popcorn_purchase_price))
		overall_total_output.clear()
		overall_total_output.add_text(str(supplies.purchase_total))
	if (towns.town_select == "fiyork"):
		name.clear()
		name.add_text("Pizza")
		stock_output.clear()
		stock_output.add_text(str(supplies.fiyork_pizza_count))
		total_output.clear()
		total_output.add_text(str(pizza_purchase + supplies.fiyork_pizza_count))
		if (supplies.daily_pizza_purchase_price > (supplies.pizza_range_high / 2)):
			price_output_black.set_hidden(true)
			price_output_red.show()
			price_output_green.set_hidden(true)
		if (supplies.daily_pizza_purchase_price < (supplies.pizza_range_high / 2)):
			price_output_black.set_hidden(true)
			price_output_red.set_hidden(true)
			price_output_green.show()
		if (supplies.daily_pizza_purchase_price == (supplies.pizza_range_high / 2)):
			price_output_black.show()
			price_output_red.set_hidden(true)
			price_output_green.set_hidden(true)
		buy_output.clear()
		buy_output.add_text(str(pizza_purchase))
		price_output_black.clear()
		price_output_black.add_text("$" + str(supplies.daily_pizza_purchase_price))
		price_output_green.clear()
		price_output_green.add_text("$" + str(supplies.daily_pizza_purchase_price))
		price_output_red.clear()
		price_output_red.add_text("$" + str(supplies.daily_pizza_purchase_price))
		overall_total_output.clear()
		overall_total_output.add_text(str(supplies.purchase_total))
	if (towns.town_select == "untilly"):
		name.clear()
		name.add_text("Popcorn")
		stock_output.clear()
		stock_output.add_text(str(supplies.untilly_popcorn_count))
		total_output.clear()
		total_output.add_text(str(popcorn_purchase + supplies.untilly_popcorn_count))
		if (supplies.daily_popcorn_purchase_price > (supplies.popcorn_range_high / 2)):
			price_output_black.set_hidden(true)
			price_output_red.show()
			price_output_green.set_hidden(true)
		if (supplies.daily_popcorn_purchase_price < (supplies.popcorn_range_high / 2)):
			price_output_black.set_hidden(true)
			price_output_red.set_hidden(true)
			price_output_green.show()
		if (supplies.daily_popcorn_purchase_price == (supplies.popcorn_range_high / 2)):
			price_output_black.show()
			price_output_red.set_hidden(true)
			price_output_green.set_hidden(true)
		buy_output.clear()
		buy_output.add_text(str(popcorn_purchase))
		price_output_black.clear()
		price_output_black.add_text("$" + str(supplies.daily_popcorn_purchase_price))
		price_output_green.clear()
		price_output_green.add_text("$" + str(supplies.daily_popcorn_purchase_price))
		price_output_red.clear()
		price_output_red.add_text("$" + str(supplies.daily_popcorn_purchase_price))
		overall_total_output.clear()
		overall_total_output.add_text(str(supplies.purchase_total))
	if (towns.town_select == "slatten"):
		name.clear()
		name.add_text("Pocorn")
		stock_output.clear()
		stock_output.add_text(str(supplies.slatten_popcorn_count))
		total_output.clear()
		total_output.add_text(str(popcorn_purchase + supplies.slatten_popcorn_count))
		if (supplies.daily_popcorn_purchase_price > (supplies.popcorn_range_high / 2)):
			price_output_black.set_hidden(true)
			price_output_red.show()
			price_output_green.set_hidden(true)
		if (supplies.daily_popcorn_purchase_price < (supplies.popcorn_range_high / 2)):
			price_output_black.set_hidden(true)
			price_output_red.set_hidden(true)
			price_output_green.show()
		if (supplies.daily_popcorn_purchase_price == (supplies.popcorn_range_high / 2)):
			price_output_black.show()
			price_output_red.set_hidden(true)
			price_output_green.set_hidden(true)
		buy_output.clear()
		buy_output.add_text(str(popcorn_purchase))
		price_output_black.clear()
		price_output_black.add_text("$" + str(supplies.daily_popcorn_purchase_price))
		price_output_green.clear()
		price_output_green.add_text("$" + str(supplies.daily_popcorn_purchase_price))
		price_output_red.clear()
		price_output_red.add_text("$" + str(supplies.daily_popcorn_purchase_price))
		overall_total_output.clear()
		overall_total_output.add_text(str(supplies.purchase_total))
	if (towns.town_select == "windrow"):
		name.clear()
		name.add_text("Pizza")
		stock_output.clear()
		stock_output.add_text(str(supplies.windrow_pizza_count))
		total_output.clear()
		total_output.add_text(str(pizza_purchase + supplies.windrow_pizza_count))
		if (supplies.daily_pizza_purchase_price > (supplies.pizza_range_high / 2)):
			price_output_black.set_hidden(true)
			price_output_red.show()
			price_output_green.set_hidden(true)
		if (supplies.daily_pizza_purchase_price < (supplies.pizza_range_high / 2)):
			price_output_black.set_hidden(true)
			price_output_red.set_hidden(true)
			price_output_green.show()
		if (supplies.daily_pizza_purchase_price == (supplies.pizza_range_high / 2)):
			price_output_black.show()
			price_output_red.set_hidden(true)
			price_output_green.set_hidden(true)
		buy_output.clear()
		buy_output.add_text(str(pizza_purchase))
		price_output_black.clear()
		price_output_black.add_text("$" + str(supplies.daily_pizza_purchase_price))
		price_output_green.clear()
		price_output_green.add_text("$" + str(supplies.daily_pizza_purchase_price))
		price_output_red.clear()
		price_output_red.add_text("$" + str(supplies.daily_pizza_purchase_price))
		overall_total_output.clear()
		overall_total_output.add_text(str(supplies.purchase_total))
	if (towns.town_select == "plansey"):
		name.clear()
		name.add_text("Nachos")
		stock_output.clear()
		stock_output.add_text(str(supplies.plansey_nachos_count))
		total_output.clear()
		total_output.add_text(str(pizza_purchase + supplies.plansey_nachos_count))
		if (supplies.daily_nachos_purchase_price > (supplies.nachos_range_high / 2)):
			price_output_black.set_hidden(true)
			price_output_red.show()
			price_output_green.set_hidden(true)
		if (supplies.daily_nachos_purchase_price < (supplies.nachos_range_high / 2)):
			price_output_black.set_hidden(true)
			price_output_red.set_hidden(true)
			price_output_green.show()
		if (supplies.daily_nachos_purchase_price == (supplies.nachos_range_high / 2)):
			price_output_black.show()
			price_output_red.set_hidden(true)
			price_output_green.set_hidden(true)
		buy_output.clear()
		buy_output.add_text(str(nachos_purchase))
		price_output_black.clear()
		price_output_black.add_text("$" + str(supplies.daily_nachos_purchase_price))
		price_output_green.clear()
		price_output_green.add_text("$" + str(supplies.daily_nachos_purchase_price))
		price_output_red.clear()
		price_output_red.add_text("$" + str(supplies.daily_nachos_purchase_price))
		overall_total_output.clear()
		overall_total_output.add_text(str(supplies.purchase_total))
	if (towns.town_select == "banlon"):
		name.clear()
		name.add_text("Energy")
		stock_output.clear()
		stock_output.add_text(str(supplies.banlon_nachos_count))
		total_output.clear()
		total_output.add_text(str(pizza_purchase + supplies.banlon_nachos_count))
		if (supplies.daily_nachos_purchase_price > (supplies.nachos_range_high / 2)):
			price_output_black.set_hidden(true)
			price_output_red.show()
			price_output_green.set_hidden(true)
		if (supplies.daily_nachos_purchase_price < (supplies.nachos_range_high / 2)):
			price_output_black.set_hidden(true)
			price_output_red.set_hidden(true)
			price_output_green.show()
		if (supplies.daily_nachos_purchase_price == (supplies.nachos_range_high / 2)):
			price_output_black.show()
			price_output_red.set_hidden(true)
			price_output_green.set_hidden(true)
		buy_output.clear()
		buy_output.add_text(str(pizza_purchase))
		price_output_black.clear()
		price_output_black.add_text("$" + str(supplies.daily_nachos_purchase_price))
		price_output_green.clear()
		price_output_green.add_text("$" + str(supplies.daily_nachos_purchase_price))
		price_output_red.clear()
		price_output_red.add_text("$" + str(supplies.daily_nachos_purchase_price))
		overall_total_output.clear()
		overall_total_output.add_text(str(supplies.purchase_total))
	
	
	
	
func _on_lower_button_down():
	if (towns.town_select == "hollyhock") or (towns.town_select == "untilly") or (towns.town_select == "slatten"): 
		if (popcorn_purchase > 0):
			popcorn_purchase = popcorn_purchase - 1
			supplies.purchase_total = supplies.purchase_total - supplies.daily_popcorn_purchase_price
	if (towns.town_select == "fiyork") or (towns.town_select == "windrow"):
		if (pizza_purchase > 0):
			pizza_purchase = pizza_purchase - 1
			supplies.purchase_total = supplies.purchase_total - supplies.daily_pizza_purchase_price
	if (towns.town_select == "plansey") or (towns.town_select == "banlon"):
		if (nachos_purchase > 0):
			nachos_purchase = nachos_purchase - 1
			supplies.purchase_total = supplies.purchase_total - supplies.daily_nachos_purchase_price

func _on_raise_button_down():
	if (towns.town_select == "hollyhock"):
		if (money.hollyhock_cash >= (supplies.purchase_total + supplies.daily_popcorn_purchase_price)):
			popcorn_purchase = popcorn_purchase + 1
			supplies.purchase_total = supplies.purchase_total + supplies.daily_popcorn_purchase_price
	if (towns.town_select == "untilly"):
		if (money.untilly_cash >= (supplies.purchase_total + supplies.daily_popcorn_purchase_price)):
			popcorn_purchase = popcorn_purchase + 1
			supplies.purchase_total = supplies.purchase_total + supplies.daily_popcorn_purchase_price
	if (towns.town_select == "slatten"):
		if (money.slatten_cash >= (supplies.purchase_total + supplies.daily_popcorn_purchase_price)):
			popcorn_purchase = popcorn_purchase + 1
			supplies.purchase_total = supplies.purchase_total + supplies.daily_popcorn_purchase_price
	if (towns.town_select == "fiyork"):
		if (money.fiyork_cash >= (supplies.purchase_total + supplies.daily_pizza_purchase_price)):
			pizza_purchase = pizza_purchase + 1
			supplies.purchase_total = supplies.purchase_total + supplies.daily_pizza_purchase_price
	if (towns.town_select == "windrow"):
		if (money.windrow_cash >= (supplies.purchase_total + supplies.daily_pizza_purchase_price)):
			pizza_purchase = pizza_purchase + 1
			supplies.purchase_total = supplies.purchase_total + supplies.daily_pizza_purchase_price
	if (towns.town_select == "plansey"):
		if (money.plansey_cash >= (supplies.purchase_total + supplies.daily_popcorn_purchase_price)):
			popcorn_purchase = popcorn_purchase + 1
			supplies.purchase_total = supplies.purchase_total + supplies.daily_popcorn_purchase_price
	if (towns.town_select == "banlon"):
		if (money.banlon_cash >= (supplies.purchase_total + supplies.daily_popcorn_purchase_price)):
			popcorn_purchase = popcorn_purchase + 1
			supplies.purchase_total = supplies.purchase_total + supplies.daily_popcorn_purchase_price