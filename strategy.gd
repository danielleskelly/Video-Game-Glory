extends Node2D

var balance
var expenses

var genre_one
var genre_two
var genre_three

var supply_one
var supply_two
var supply_three
var supply_four

var pizza_key
var freezie_key
var energy_key
var candy_key
var genre_two_key
var genre_three_key

var soda_count
var popcorn_count
var pizza_count
var freezie_count
var energy_count
var candy_count
var genre_one_count
var genre_two_count
var genre_three_count

var town_select

func _ready():
	supply_one = get_tree().get_current_scene().get_node("supply_one")
	supply_two = get_tree().get_current_scene().get_node("supply_two")
	supply_three = get_tree().get_current_scene().get_node("supply_three")
	supply_four = get_tree().get_current_scene().get_node("supply_four")
	genre_one = get_node("genre_one")
	genre_two = get_node("genre_two")
	genre_three = get_node("genre_three")
	set_process(true)
	pass
	
func _process(delta):
	get_globals()
	hide()
	get_predictions()
	if (town_select == "hollyhock"):
		supply_one.get_child(2).clear()
		supply_one.get_child(2).add_text(soda_count)
		supply_two.get_child(2).clear()
		supply_two.get_child(2).add_text(popcorn_count)
		if (pizza_key == true):
			supply_three.show()
			supply_three.get_child(2).clear()
			supply_three.get_child(2).add_text(pizza_count)
		if (freezie_key == true):
			supply_four.show()
			supply_four.get_child(2).clear()
			supply_four.get_child(2).add_text(freezie_count)
	genre_one.get_child(2).clear()
	genre_one.get_child(2).add_text(str(int(genre_one_count * 100)))
	if (genre_two_key == true):
		genre_two.show()
		genre_two.get_child(2).clear()
		genre_two.get_child(2).add_text(str(int(genre_two_count * 100)))
	if (genre_three_key == true):
		genre_three.show()
		genre_three.get_child(2).clear()
		genre_three.get_child(2).add_text(str(int(genre_three_count * 100)))

func hide():
	supply_three.set_hidden(true)
	supply_four.set_hidden(true)
	genre_two.set_hidden(true)
	genre_three.set_hidden(true)
	
func get_globals():
	soda_count = str(global.soda_count)
	popcorn_count = str(global.popcorn_count)
	pizza_count = str(global.pizza_count)
	freezie_count = str(global.freezie_count)
	energy_count = str(global.energy_count)
	candy_count = str(global.candy_count)
	pizza_key = global.pizza_key
	freezie_key = global.freezie_key
	energy_key = global.energy_key
	candy_key = global.candy_key
	genre_two_key = global.genre_two_key
	genre_three_key = global.genre_three_key
	town_select = global.town_select
	balance = global.balance
	expenses = global.expenses

func get_predictions():
	if (town_select == "hollyhock"):
		genre_one_count = global.meta_prediction
		genre_two_count = global.classic_prediction
		genre_three_count = global.platformer_prediction

func _on_start_day_button_up():
	global.balance = global.balance - expenses
	global.sales_made = 0
	get_tree().change_scene("res://time_management.tscn")