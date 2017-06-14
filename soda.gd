extends Node2D

var soda_purchase = 0

onready var buy_output = get_node("buy_output")
onready var price_output_black = get_node("price_output_black")
onready var price_output_green = get_node("price_output_green")
onready var price_output_red = get_node("price_output_red")
onready var stock_output = get_node("stock_output")
onready var yesterday_output = get_node("yesterday_output")
onready var total_output = get_node("total_output")
onready var overall_total_output = get_parent().get_child(9)

func _ready():
	set_process(true)

func _process(delta):
	if (global.town_select == "hollyhock"):
		stock_output.clear()
		stock_output.add_text(str(global.hollyhock_soda_count))
		total_output.clear()
		total_output.add_text(str(soda_purchase + global.hollyhock_soda_count))
		if (global.daily_soda_price > (global.soda_range_high / 2)):
			price_output_black.set_hidden(true)
			price_output_red.show()
			price_output_green.set_hidden(true)
		if (global.daily_soda_price < (global.soda_range_high / 2)):
			price_output_black.set_hidden(true)
			price_output_red.set_hidden(true)
			price_output_green.show()
		if (global.daily_soda_price == (global.soda_range_high / 2)):
			price_output_black.show()
			price_output_red.set_hidden(true)
			price_output_green.set_hidden(true)
	buy_output.clear()
	buy_output.add_text(str(soda_purchase))
	price_output_black.clear()
	price_output_black.add_text(str(global.daily_soda_price))
	price_output_green.clear()
	price_output_green.add_text(str(global.daily_soda_price))
	price_output_red.clear()
	price_output_red.add_text(str(global.daily_soda_price))
	yesterday_output.clear()
	yesterday_output.add_text(str(global.soda_yesterday_used))
	overall_total_output.clear()
	overall_total_output.add_text(str(global.purchase_total))

func _on_lower_button_down():
	if (soda_purchase > 0):
		soda_purchase = soda_purchase - 1
		global.purchase_total = global.purchase_total - global.daily_soda_price

func _on_raise_button_down():
	if (global.town_select == "hollyhock"):
		if (global.hollyhock_cash >= (global.purchase_total + global.daily_soda_price)):
			soda_purchase = soda_purchase + 1
			global.purchase_total = global.purchase_total + global.daily_soda_price