extends Node2D

var soda
var popcorn
var genre_one

var pizza
var nachos
var energy_drinks
var candy
var genre_two
var genre_three

var pizza_key
var nachos_key
var energy_key
var candy_key
var genre_two_key
var genre_three_key

var soda_count
var popcorn_count
var pizza_count
var nachos_count
var energy_count
var candy_count
var genre_one_count
var genre_two_count
var genre_three_count

var town_select

func _ready():
	soda = get_tree().get_current_scene().get_node("soda")
	popcorn = get_tree().get_current_scene().get_node("popcorn")
	pizza = get_tree().get_current_scene().get_node("pizza")
	nachos = get_tree().get_current_scene().get_node("nachos")
	energy_drinks = get_tree().get_current_scene().get_node("energy_drinks")
	candy = get_tree().get_current_scene().get_node("candy")
	genre_one = get_node("genre_one")
	genre_two = get_node("genre_two")
	genre_three = get_node("genre_three")
	set_process(true)
	pass
	
func _process(delta):
	get_globals()
	hide()
	get_predictions()
	soda.get_child(2).clear()
	soda.get_child(2).add_text(soda_count)
	popcorn.get_child(2).clear()
	popcorn.get_child(2).add_text(popcorn_count)
	genre_one.get_child(2).clear()
	genre_one.get_child(2).add_text(str(int(genre_one_count * 100)))
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
	if (genre_two_key == true):
		genre_two.show()
		genre_two.get_child(2).clear()
		genre_two.get_child(2).add_text(str(int(genre_two_count * 100)))
	if (genre_three_key == true):
		genre_three.show()
		genre_three.get_child(2).clear()
		genre_three.get_child(2).add_text(str(int(genre_three_count * 100)))

func hide():
	pizza.set_hidden(true)
	nachos.set_hidden(true)
	energy_drinks.set_hidden(true)
	candy.set_hidden(true)
	genre_two.set_hidden(true)
	genre_three.set_hidden(true)
	
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
	genre_two_key = global.genre_two_key
	genre_three_key = global.genre_three_key
	town_select = global.town_select

func get_predictions():
	if (town_select == "hollyhock"):
		genre_one_count = global.meta_prediction
		genre_two_count = global.classic_prediction
		genre_three_count = global.platformer_prediction

func _on_start_day_button_up():
	get_tree().change_scene("res://time_management.tscn")