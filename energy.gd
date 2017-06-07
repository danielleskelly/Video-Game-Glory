extends Node2D

var energy_purchase = 0
var energy_price
var cash
var energy_stock
var stock_output
var purchase_total
var yesterday_output
var yesterday_used
var total_output
var energy_total
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
	var string_energy = str(energy_purchase)
	buy_output.clear()
	buy_output.add_text(string_energy)
	energy_price = global.daily_energy_price
	energy_stock = str(global.energy_count)
	yesterday_used = str(global.energy_yesterday_used)
	energy_total = str(energy_purchase + global.energy_count)
	cash = global.balance - global.expenses
	purchase_total = global.purchase_total
	price_output.clear()
	price_output.add_text(str(energy_price))
	stock_output.clear()
	stock_output.add_text(energy_stock)
	yesterday_output.clear()
	yesterday_output.add_text(yesterday_used)
	total_output.clear()
	total_output.add_text(energy_total)
	overall_total_output.clear()
	overall_total_output.add_text(str(purchase_total))

func _on_lower_button_down():
	if (energy_purchase > 0):
		energy_purchase = energy_purchase - 1
		get_node("/root/global").purchase_total = purchase_total - energy_price

func _on_raise_button_down():
	if (cash >= (purchase_total + energy_price)):
		energy_purchase = energy_purchase + 1
		get_node("/root/global").purchase_total = purchase_total + energy_price