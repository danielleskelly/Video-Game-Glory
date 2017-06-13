extends Node2D

var popcorn_purchase = 0

onready var buy_output = get_node("buy_output")
onready var price_output = get_node("price_output")
onready var stock_output = get_node("stock_output")
onready var yesterday_output = get_node("yesterday_output")
onready var total_output = get_node("total_output")
onready var overall_total_output = get_parent().get_child(9)

func _ready():
	set_process(true)

func _process(delta):
	if (global.town_select == "hollyhock"):
		stock_output.clear()
		stock_output.add_text(str(global.hollyhock_popcorn_count))
		total_output.clear()
		total_output.add_text(str(popcorn_purchase + global.hollyhock_popcorn_count))
	buy_output.clear()
	buy_output.add_text(str(popcorn_purchase))
	price_output.clear()
	price_output.add_text(str(global.daily_popcorn_price))
	yesterday_output.clear()
	yesterday_output.add_text(str(global.popcorn_yesterday_used))
	overall_total_output.clear()
	overall_total_output.add_text(str(global.purchase_total))
	overall_total_output.clear()
	overall_total_output.add_text(str(global.purchase_total))

func _on_lower_button_down():
	if (popcorn_purchase > 0):
		popcorn_purchase = popcorn_purchase - 1
		global.purchase_total = global.purchase_total - global.daily_popcorn_price

func _on_raise_button_down():
	if (global.cash >= (global.purchase_total + global.popcorn_price)):
		popcorn_purchase = popcorn_purchase + 1
		global.purchase_total = global.purchase_total + global.daily_popcorn_price