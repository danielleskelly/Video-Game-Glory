extends Node2D

var pizza_key
var nachos_key
var energy_key
var candy_key
var pizza_vis
var nachos_vis
var energy_vis
var candy_vis

var soda_purchase
var popcorn_purchase
var pizza_purchase
var nachos_purchase
var energy_purchase
var candy_purchase


var overall_total


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

func _on_confirm_button_down():
	soda_purchase = get_node("soda").soda_purchase
	popcorn_purchase = get_node("popcorn").popcorn_purchase
	pizza_purchase = get_node("pizza").pizza_purchase
	nachos_purchase = get_node("nachos").nachos_purchase
	energy_purchase = get_node("energy").energy_purchase
	candy_purchase = get_node("candy").candy_purchase
	get_node("/root/global").soda_count = get_node("/root/global").soda_count + soda_purchase
	get_node("soda").soda_purchase = 0
	get_node("/root/global").popcorn_count = get_node("/root/global").popcorn_count + popcorn_purchase
	get_node("popcorn").popcorn_purchase = 0
	get_node("/root/global").pizza_count = get_node("/root/global").pizza_count + pizza_purchase
	get_node("pizza").pizza_purchase = 0
	get_node("/root/global").nachos_count = get_node("/root/global").nachos_count + nachos_purchase
	get_node("nachos").nachos_purchase = 0
	get_node("/root/global").energy_count = get_node("/root/global").energy_count + energy_purchase
	get_node("energy").energy_purchase = 0
	get_node("/root/global").candy_count = get_node("/root/global").candy_count + candy_purchase
	get_node("candy").candy_purchase = 0
	var total_deduc = get_node("overall_total_output").get_text()
	get_node("/root/global").balance = get_node("/root/global").balance - int(total_deduc)
	get_node("/root/global").purchase_total = 0