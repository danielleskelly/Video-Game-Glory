extends Node

var daily_candy_price = 0
var soda_yesterday_used = 0
var popcorn_yesterday_used = 0
var pizza_yesterday_used = 0
var freezie_yesterday_used = 0
var energy_yesterday_used = 0
var candy_yesterday_used = 0

var purchase_total = 0
var soda_total = 0
var popcorn_total = 0
var pizza_total = 0
var freezie_total = 0
var energy_total = 0
var candy_total = 0

var hollyhock_soda_price = 8
var hollyhock_popcorn_price = 8
var pizza_price = 0
var freezie_price = 0
var energy_price = 0
var candy_price = 0


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
	if (towns.town_select == "hollyhock"):
		get_tree().get_current_scene().get_node("supply_one").get_child(2).clear()
		get_tree().get_current_scene().get_node("supply_one").get_child(2).add_text(str(hollyhock_soda_count))
		get_tree().get_current_scene().get_node("supply_two").get_child(2).clear()
		get_tree().get_current_scene().get_node("supply_two").get_child(2).add_text(str(hollyhock_popcorn_count))


func new_supply_prices():
	randomize()
	daily_soda_purchase_price = range(soda_range_low, soda_range_high + 1)[randi()%range(soda_range_low, soda_range_high + 1).size()]
	randomize()
	daily_popcorn_purchase_price = range(popcorn_range_low, popcorn_range_high + 1)[randi()%range(popcorn_range_low, popcorn_range_high + 1).size()]