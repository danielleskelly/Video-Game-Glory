extends Node2D

onready var soda_vis = get_node("soda")
onready var popcorn_vis = get_node("popcorn")
onready var pizza_vis = get_node("pizza")
onready var freezie_vis = get_node("freezie")
onready var energy_vis = get_node("energy")
onready var candy_vis = get_node("candy")

var soda_purchase
var popcorn_purchase
var pizza_purchase
var freezie_purchase
var energy_purchase
var candy_purchase

var overall_total

func _ready():
	set_process(true)
	
func _process(delta):
	if (global.town_select == "hollyhock"):
		soda_vis.show()
		popcorn_vis.show()
		pizza_vis.set_hidden(true)
		freezie_vis.set_hidden(true)
		energy_vis.set_hidden(true)
		candy_vis.set_hidden(true)


func _on_confirm_button_down():
	soda_purchase = get_node("soda").soda_purchase
	popcorn_purchase = get_node("popcorn").popcorn_purchase
	pizza_purchase = get_node("pizza").pizza_purchase
	freezie_purchase = get_node("freezie").freezie_purchase
	energy_purchase = get_node("energy").energy_purchase
	candy_purchase = get_node("candy").candy_purchase
	global.soda_count = global.soda_count + soda_purchase
	get_node("soda").soda_purchase = 0
	global.popcorn_count = global.popcorn_count + popcorn_purchase
	get_node("popcorn").popcorn_purchase = 0
	global.pizza_count = global.pizza_count + pizza_purchase
	get_node("pizza").pizza_purchase = 0
	global.freezie_count = global.freezie_count + freezie_purchase
	get_node("freezie").freezie_purchase = 0
	global.energy_count = global.energy_count + energy_purchase
	get_node("energy").energy_purchase = 0
	global.candy_count = global.candy_count + candy_purchase
	get_node("candy").candy_purchase = 0
	var total_deduc = get_node("overall_total_output").get_text()
	global.balance = global.balance - int(total_deduc)
	global.purchase_total = 0