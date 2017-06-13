extends Node2D

#display nodes
onready var genre_one = get_node("genre_one")
onready var genre_two = get_node("genre_two")
onready var genre_three = get_node("genre_three")
onready var supply_one = get_tree().get_current_scene().get_node("supply_one")
onready var supply_two = get_tree().get_current_scene().get_node("supply_two")
onready var town_banner = get_tree().get_current_scene().get_node("town_banner")

#allows the prediction genres to change with the town
var genre_one_count
var genre_two_count
var genre_three_count
var genre_two_key
var genre_three_key

func _ready():
	set_process(true)
	pass
	
func _process(delta):
	if (global.town_select == "hollyhock"):
		supply_one.get_child(2).clear()
		supply_one.get_child(2).add_text(str(global.hollyhock_soda_count))
		supply_two.get_child(2).clear()
		supply_two.get_child(2).add_text(str(global.hollyhock_popcorn_count))
		genre_one_count = global.meta_prediction
		genre_two_count = global.classic_prediction
		genre_two_key = global.hollyhock_genre_two_key
		genre_three_count = global.platformer_prediction
		genre_three_key = global.hollyhock_genre_three_key
		town_banner.get_child(1).clear()
		town_banner.get_child(1).add_text("Hollyhock")
	genre_one.get_child(2).clear()
	genre_one.get_child(2).add_text(str(int(genre_one_count * 100)))
	if (genre_two_key == true):
		genre_two.show()
		genre_two.get_child(2).clear()
		genre_two.get_child(2).add_text(str(int(genre_two_count * 100)))
	if (genre_two_key == false):
		genre_two.set_hidden(true)
	if (genre_three_key == true):
		genre_three.show()
		genre_three.get_child(2).clear()
		genre_three.get_child(2).add_text(str(int(genre_three_count * 100)))
	if (genre_three_key == false):
		genre_three.set_hidden(true)

func _on_start_day_button_up():
	global.balance = global.balance - global.expenses
	global.sales_made = 0
	global.sales_lost = 0
	global.storefront_loss = 0
	global.price_loss = 0
	global.waited_loss = 0
	global.sabatoge_loss= 0
	global.income = 0
	get_tree().change_scene("res://time_management.tscn")