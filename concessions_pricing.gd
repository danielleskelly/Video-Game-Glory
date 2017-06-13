extends Node2D

onready var soda_vis = get_node("soda")
onready var popcorn_vis = get_node("popcorn")
onready var pizza_vis = get_node("pizza")
onready var freezie_vis = get_node("freezie")
onready var energy_vis = get_node("energy")
onready var candy_vis = get_node("candy")

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