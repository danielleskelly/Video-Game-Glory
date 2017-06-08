extends Node2D

var pizza_key
var nachos_key
var energy_key
var candy_key

var pizza_vis
var nachos_vis
var energy_vis
var candy_vis

func _ready():
	pizza_vis = get_node("pizza")
	nachos_vis = get_node("nachos")
	energy_vis = get_node("energy")
	candy_vis = get_node("candy")
	set_process(true)
	pass

func _process(delta):
	get_globals()
	hide()
	if (pizza_key == true):
		pizza_vis.show()
	if (nachos_key == true):
		nachos_vis.show()
	if (energy_key == true):
		energy_vis.show()
	if (candy_key == true):
		candy_vis.show()
	
func get_globals():
	pizza_key = global.pizza_key
	nachos_key = global.nachos_key
	energy_key = global.energy_key
	candy_key = global.candy_key

func hide():
	pizza_vis.set_hidden(true)
	nachos_vis.set_hidden(true)
	energy_vis.set_hidden(true)
	candy_vis.set_hidden(true)