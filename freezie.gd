extends Node2D

var freezie_price
var price_output
var freezie_range
var range_output


func _ready():
	price_output = get_node("price_output")
	range_output = get_node("range")
	set_process(true)

func _process(delta):
	get_globals()
	range_output.clear()
	range_output.add_text(freezie_range)

func get_globals():
	freezie_price = global.freezie_price
	freezie_range = global.freezie_range
	
func _on_lower_button_down():
	get_globals()
	if (freezie_price > 0):
		freezie_price = freezie_price - 1
		price_output.clear()
		price_output.add_text(str(freezie_price))
		global.freezie_price = freezie_price

func _on_raise_button_down():
	get_globals()
	freezie_price = freezie_price + 1
	price_output.clear()
	price_output.add_text(str(freezie_price))
	global.freezie_price = freezie_price