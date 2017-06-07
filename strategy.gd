extends Node2D

var soda
var popcorn

var pizza
var nachos
var energy_drinks
var candy

var pizza_key
var nachos_key
var energy_key
var candy_key

var soda_count
var popcorn_count
var pizza_count
var nachos_count
var energy_count
var candy_count

func _ready():
	soda = get_tree().get_current_scene().get_node("soda")
	popcorn = get_tree().get_current_scene().get_node("popcorn")
	pizza = get_tree().get_current_scene().get_node("pizza")
	nachos = get_tree().get_current_scene().get_node("nachos")
	energy_drinks = get_tree().get_current_scene().get_node("energy_drinks")
	candy = get_tree().get_current_scene().get_node("candy")
	set_process(true)
	pass
	
func _process(delta):
	get_globals()
	hide()
	soda.get_child(2).clear()
	soda.get_child(2).add_text(soda_count)
	popcorn.get_child(2).clear()
	popcorn.get_child(2).add_text(popcorn_count)
	if (pizza_key == true):
		pizza.show()
		pizza.get_child(2).clear()
		pizza.get_child(2).add_text(pizza_count)
	if (nachos_key == true):
		nachos.show()
		nachos.get_child(2).clear()
		nachos.get_child(2).add_text(nachos_count)
	if (energy_key == true):
		energy_drinks.show()
		energy_drinks.get_child(2).clear()
		energy_drinks.get_child(2).add_text(energy_count)
	if (candy_key == true):
		candy.show()
		candy.get_child(2).clear()
		candy.get_child(2).add_text(candy_count)

func hide():
	pizza.set_hidden(true)
	nachos.set_hidden(true)
	energy_drinks.set_hidden(true)
	candy.set_hidden(true)
	
func get_globals():
	soda_count = str(global.soda_count)
	popcorn_count = str(global.popcorn_count)
	pizza_count = str(global.pizza_count)
	nachos_count = str(global.nachos_count)
	energy_count = str(global.energy_count)
	candy_count = str(global.candy_count)
	pizza_key = global.pizza_key
	nachos_key = global.nachos_key
	energy_key = global.energy_key
	candy_key = global.candy_key

func _on_start_day_button_up():
	get_tree().change_scene("res://time_management.tscn")