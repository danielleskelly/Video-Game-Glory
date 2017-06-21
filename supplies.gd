extends Node

var daily_soda_purchase_price = 4
var daily_popcorn_purchase_price = 4
var daily_pizza_purchase_price = 0
var daily_freezie_purchase_price = 0
var daily_energy_purchase_price = 30

var hollyhock_popcorn_count = 10
var hollyhock_soda_count = 10
var candy_count = 0
var energy_count = 0
var pizza_count = 0
var freezie_count = 0

var soda_range_low = 5
var popcorn_range_low = 5
var pizza_range_low = 5
var freezie_range_low = 5
var energy_range_low = 5
var candy_range_low = 5
var soda_range_high = 15
var popcorn_range_high = 15
var pizza_range_high = 15
var freezie_range_high = 15
var energy_range_high = 15
var candy_range_high = 15


func _ready():
	pass

func set_supply():
	if (global.town_select == "hollyhock"):
		get_tree().get_current_scene().get_node("supply_one").get_child(2).clear()
		get_tree().get_current_scene().get_node("supply_one").get_child(2).add_text(str(hollyhock_soda_count))
		get_tree().get_current_scene().get_node("supply_two").get_child(2).clear()
		get_tree().get_current_scene().get_node("supply_two").get_child(2).add_text(str(hollyhock_popcorn_count))


func new_supply_prices():
	randomize()
	daily_soda_purchase_price = range(soda_range_low, soda_range_high + 1)[randi()%range(soda_range_low, soda_range_high + 1).size()]
	randomize()
	daily_popcorn_purchase_price = range(popcorn_range_low, popcorn_range_high + 1)[randi()%range(popcorn_range_low, popcorn_range_high + 1).size()]