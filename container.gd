extends Node2D

var advertising_output
var advertising
var cash
var town_select
var advertising_max

func _ready():
	advertising_output = get_node("spending_output")
	set_process(true)
	
func _process(delta):
	get_globals()
	if (town_select == "hollyhock"):
		advertising_max = global.hollyhock_advertising_max

	
func get_globals():
	advertising = global.advertising
	cash = global.balance - global.expenses
	town_select = global.town_select

func _on_lower_button_down():
	get_globals()
	if (advertising > 0):
		advertising = advertising - 1
		global.advertising = advertising
		advertising_output.clear()
		advertising_output.add_text(str(advertising))
		global.expenses = global.expenses - 1


func _on_raise_button_down():
	get_globals()
	if ((advertising <= cash) and (advertising <= advertising_max)):
		get_globals()
		advertising = advertising + 1
		global.advertising = advertising
		advertising_output.clear()
		advertising_output.add_text(str(advertising))
		global.expenses = global.expenses + 1
