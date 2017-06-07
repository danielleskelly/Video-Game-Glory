extends Node2D

var candy_purchase = 0
var candy_price
var cash
var candy_stock
var stock_output
var purchase_total
var yesterday_output
var yesterday_used
var total_output
var candy_total
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
	var string_candy = str(candy_purchase)
	buy_output.clear()
	buy_output.add_text(string_candy)
	candy_price = global.daily_candy_price
	candy_stock = str(global.candy_count)
	yesterday_used = str(global.candy_yesterday_used)
	candy_total = str(candy_purchase + global.candy_count)
	cash = global.balance - global.expenses
	purchase_total = global.purchase_total
	price_output.clear()
	price_output.add_text(str(candy_price))
	stock_output.clear()
	stock_output.add_text(candy_stock)
	yesterday_output.clear()
	yesterday_output.add_text(yesterday_used)
	total_output.clear()
	total_output.add_text(candy_total)
	overall_total_output.clear()
	overall_total_output.add_text(str(purchase_total))

func _on_lower_button_down():
	if (candy_purchase > 0):
		candy_purchase = candy_purchase - 1
		get_node("/root/global").purchase_total = purchase_total - candy_price

func _on_raise_button_down():
	if (cash >= (purchase_total + candy_price)):
		candy_purchase = candy_purchase + 1
		get_node("/root/global").purchase_total = purchase_total + candy_price