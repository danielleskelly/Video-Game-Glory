extends Node2D

var pizza_purchase = 0
var pizza_price
var cash
var pizza_stock
var stock_output
var purchase_total
var yesterday_output
var yesterday_used
var total_output
var pizza_total
var overall_total_output

var buy_output
var price_output

func _ready():
	buy_output = get_node("buy_output")
	price_output = get_node("price_output")
	stock_output = get_node("stock_output")
	yesterday_output = get_node("yesterday_output")
	total_output = get_node("total_output")
	overall_total_output = get_parent().get_child(9)
	set_process(true)
	pass

func _process(delta):
	var string_pizza = str(pizza_purchase)
	buy_output.clear()
	buy_output.add_text(string_pizza)
	pizza_price = global.daily_pizza_price
	pizza_stock = str(global.pizza_count)
	yesterday_used = str(global.pizza_yesterday_used)
	pizza_total = str(pizza_purchase + global.pizza_count)
	cash = global.balance - global.expenses
	purchase_total = global.purchase_total
	price_output.clear()
	price_output.add_text(str(pizza_price))
	stock_output.clear()
	stock_output.add_text(pizza_stock)
	yesterday_output.clear()
	yesterday_output.add_text(yesterday_used)
	total_output.clear()
	total_output.add_text(pizza_total)
	overall_total_output.clear()
	overall_total_output.add_text(str(purchase_total))

func _on_lower_button_down():
	if (pizza_purchase > 0):
		pizza_purchase = pizza_purchase - 1
		get_node("/root/global").purchase_total = purchase_total - pizza_price

func _on_raise_button_down():
	if (cash >= (purchase_total + pizza_price)):
		pizza_purchase = pizza_purchase + 1
		get_node("/root/global").purchase_total = purchase_total + pizza_price