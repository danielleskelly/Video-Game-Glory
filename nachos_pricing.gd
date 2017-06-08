extends Node2D

var nachos_price
var price_output
var nachos_range
var range_output


func _ready():
	price_output = get_node("price_output")
	range_output = get_node("range")
	set_process(true)

func _process(delta):
	get_globals()
	range_output.clear()
	range_output.add_text(nachos_range)

func get_globals():
	nachos_price = global.nachos_price
	nachos_range = global.nachos_range
	
func _on_lower_button_down():
	get_globals()
	if (nachos_price > 0):
		nachos_price = nachos_price - 1
		price_output.clear()
		price_output.add_text(str(nachos_price))
		global.nachos_price = nachos_price

func _on_raise_button_down():
	get_globals()
	nachos_price = nachos_price + 1
	price_output.clear()
	price_output.add_text(str(nachos_price))
	global.nachos_price = nachos_price