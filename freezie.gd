extends Node2D

var freezie_purchase = 0

onready var buy_output = get_node("buy_output")
onready var price_output_black = get_node("price_output_black")
onready var price_output_green = get_node("price_output_green")
onready var price_output_red = get_node("price_output_red")
onready var stock_output = get_node("stock_output")
onready var yesterday_output = get_node("yesterday_output")
onready var total_output = get_node("total_output")
onready var overall_total_output = get_parent().get_child(10)

func _ready():
	set_process(true)

func _process(delta):
	if (towns.town_select == "fiyork"):
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
	yesterday_output.clear()
	yesterday_output.add_text(str(supplies.freezie_yesterday_used))
	overall_total_output.clear()
	overall_total_output.add_text(str(supplies.purchase_total))

func _on_lower_button_down():
	if (freezie_purchase > 0):
		freezie_purchase = freezie_purchase - 1
		supplies.purchase_total = supplies.purchase_total - supplies.daily_freezie_purchase_price

func _on_raise_button_down():
	if (towns.town_select == "fiyork"):
		if (money.fiyork_cash >= (supplies.purchase_total + supplies.daily_freezie_purchase_price)):
			freezie_purchase = freezie_purchase + 1
			supplies.purchase_total = supplies.purchase_total + supplies.daily_freezie_purchase_price