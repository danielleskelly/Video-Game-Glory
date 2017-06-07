extends Sprite

var soda_purchase = 0
var soda_price
var cash
var soda_total
var purchase_total

var buy_output

func _ready():
	buy_output = get_node("buy_output")
	set_process(true)
	pass

func _process(delta):
	var string_soda = str(soda_purchase)
	buy_output.clear()
	buy_output.add_text(string_soda)

func _on_lower_button_up():
	if (soda_purchase > 0):
		soda_purchase = soda_purchase - 1


func _on_raise_released():
	soda_price = global.daily_soda_price
	cash = global.balance - global.expenses
	print(cash)
	print(soda_price)
	if (cash > soda_price):
		soda_purchase = soda_purchase + 1