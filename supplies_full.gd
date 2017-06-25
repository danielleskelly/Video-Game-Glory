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
	if (towns.town_select == "hollyhock"):
		soda_vis.show()
		popcorn_vis.show()
		pizza_vis.set_hidden(true)
		freezie_vis.set_hidden(true)
		energy_vis.set_hidden(true)
		candy_vis.set_hidden(true)


func _on_confirm_button_down():
	if (towns.town_select == "hollyhock"):
		soda_purchase = get_node("soda").soda_purchase
		popcorn_purchase = get_node("popcorn").popcorn_purchase
		supplies.hollyhock_soda_count = supplies.hollyhock_soda_count + soda_purchase
		get_node("soda").soda_purchase = 0
		supplies.hollyhock_popcorn_count = supplies.hollyhock_popcorn_count + popcorn_purchase
		get_node("popcorn").popcorn_purchase = 0
		var total_deduc = get_node("overall_total_output").get_text()
		money.hollyhock_balance = money.hollyhock_balance - int(total_deduc)
	supplies.purchase_total = 0