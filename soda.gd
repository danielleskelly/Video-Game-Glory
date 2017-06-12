extends Node2D


var soda_price
var cash
var soda_stock
var purchase_total

var yesterday_used

var soda_total

var soda_purchase = 0

onready var buy_output = get_node("buy_output")
onready var price_output = get_node("price_output")
onready var stock_output = get_node("stock_output")
onready var yesterday_output = get_node("yesterday_output")
onready var total_output = get_node("total_output")
onready var overall_total_output = get_parent().get_child(9)

func _ready():
	set_process(true)

func _process(delta):
	buy_output.clear()
	buy_output.add_text(str(soda_purchase))
	price_output.clear()
	price_output.add_text(str(global.daily_soda_price)
	
	
	
	
	soda_stock = str(global.soda_count)
	yesterday_used = str(global.soda_yesterday_used)
	soda_total = str(soda_purchase + global.soda_count)
	cash = global.balance - global.expenses
	purchase_total = global.purchase_total
	
	stock_output.clear()
	stock_output.add_text(soda_stock)
	yesterday_output.clear()
	yesterday_output.add_text(yesterday_used)
	total_output.clear()
	total_output.add_text(soda_total)
	overall_total_output.clear()
	overall_total_output.add_text(str(purchase_total))

func _on_lower_button_down():
	if (soda_purchase > 0):
		soda_purchase = soda_purchase - 1
		get_node("/root/global").purchase_total = purchase_total - soda_price

func _on_raise_button_down():
	if (cash >= (purchase_total + soda_price)):
		soda_purchase = soda_purchase + 1
		get_node("/root/global").purchase_total = purchase_total + soda_price

func _on_supplies_full_clear():
	print("success")
	get_node("buy_output").clear()
