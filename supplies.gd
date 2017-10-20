extends Node

var supply_one
var supply_two

var purchase_total = 0
var soda_total = 0
var popcorn_total = 0
var pizza_total = 0
var freezie_total = 0
var energy_total = 0
var nachos_total = 0

var hollyhock_soda_price = 0
var hollyhock_popcorn_price = 0

var fiyork_pizza_price = 0
var fiyork_freezie_price = 0

var plansey_energy_price = 0
var plansey_nachos_price = 0

var untilly_soda_price = 0
var untilly_popcorn_price = 0

var windrow_freezie_price = 0
var windrow_pizza_price = 0

var banlon_energy_price = 0
var banlon_nachos_price = 0

var slatten_freezie_price = 0
var slatten_popcorn_price = 0

var daily_soda_purchase_price = 4
var daily_popcorn_purchase_price = 4
var daily_pizza_purchase_price = 6
var daily_freezie_purchase_price = 8
var daily_energy_purchase_price = 16
var daily_nachos_purchase_price = 12

var hollyhock_popcorn_count = 0
var hollyhock_soda_count = 0

var plansey_nachos_count = 0
var plansey_energy_count = 0

var fiyork_pizza_count = 0
var fiyork_freezie_count = 0

var untilly_soda_count = 0
var untilly_popcorn_count = 0

var windrow_freezie_count = 0
var windrow_pizza_count = 0

var banlon_energy_count = 0
var banlon_nachos_count = 0

var slatten_freezie_count = 0
var slatten_popcorn_count = 0

var soda_range_low = 5
var popcorn_range_low = 5
var pizza_range_low = 7
var freezie_range_low = 10
var nachos_range_low = 9
var nachos_range_high = 22
var energy_range_low = 5
var candy_range_low = 5
var soda_range_high = 15
var popcorn_range_high = 15
var pizza_range_high = 21
var freezie_range_high = 30
var energy_range_high = 15
var candy_range_high = 15

var supply_one_count
var supply_one_name
var supply_one_icon
var supply_two_count
var supply_two_name
var supply_two_icon

func _ready():
	pass

func set_supply():
	supply_one = get_tree().get_current_scene().get_node("supply_one")
	supply_two = get_tree().get_current_scene().get_node("supply_two")
	if (towns.town_select == "hollyhock"):
		supply_one_count = supplies.hollyhock_soda_count
		supply_one_name = "Soda"
		supply_one_icon = load("res://concessions_want.png")
		supply_two_count = supplies.hollyhock_popcorn_count
		supply_two_name = "Popcorn"
		supply_two_icon = load("res://popcorn.png")
		get_tree().get_current_scene().get_node("supply_one").get_child(2).get_child(0).clear()
		get_tree().get_current_scene().get_node("supply_one").get_child(3).get_child(0).clear()
		get_tree().get_current_scene().get_node("supply_one").get_child(4).get_child(0).clear()
		var one_ones_digit = supply_one_count % 10
		var one_tens_digit = (supply_one_count / 10) % 10
		var one_hunds_digit = (supply_one_count / 100) % 10
		get_tree().get_current_scene().get_node("supply_one").get_child(4).get_child(0).add_text(str(one_ones_digit))
		get_tree().get_current_scene().get_node("supply_one").get_child(3).get_child(0).add_text(str(one_tens_digit))
		get_tree().get_current_scene().get_node("supply_one").get_child(2).get_child(0).add_text(str(one_hunds_digit))
		get_tree().get_current_scene().get_node("supply_one").get_child(1).clear()
		get_tree().get_current_scene().get_node("supply_one").get_child(1).add_text(str(supply_one_name))
		get_tree().get_current_scene().get_node("supply_one").get_child(5).set_texture(supply_one_icon)
		get_tree().get_current_scene().get_node("supply_two").get_child(2).get_child(0).clear()
		get_tree().get_current_scene().get_node("supply_two").get_child(3).get_child(0).clear()
		get_tree().get_current_scene().get_node("supply_two").get_child(4).get_child(0).clear()
		var two_ones_digit = supply_two_count % 10
		var two_tens_digit = (supply_two_count / 10) % 10
		var two_hunds_digit = (supply_two_count / 100) % 10
		get_tree().get_current_scene().get_node("supply_two").get_child(4).get_child(0).add_text(str(two_ones_digit))
		get_tree().get_current_scene().get_node("supply_two").get_child(3).get_child(0).add_text(str(two_tens_digit))
		get_tree().get_current_scene().get_node("supply_two").get_child(2).get_child(0).add_text(str(two_hunds_digit))
		get_tree().get_current_scene().get_node("supply_two").get_child(1).clear()
		get_tree().get_current_scene().get_node("supply_two").get_child(1).add_text(str(supply_two_name))
		get_tree().get_current_scene().get_node("supply_two").get_child(5).set_texture(supply_two_icon)
	if (towns.town_select == "fiyork"):
		supply_one_count = supplies.fiyork_freezie_count
		supply_one_name = "Freezie"
		supply_one_icon = load("res://concessions_want.png")
		supply_two_count = supplies.hollyhock_popcorn_count
		supply_two_name = "Pizza"
		supply_two_icon = load("res://pizza.png")
		get_tree().get_current_scene().get_node("supply_one").get_child(2).get_child(0).clear()
		get_tree().get_current_scene().get_node("supply_one").get_child(3).get_child(0).clear()
		get_tree().get_current_scene().get_node("supply_one").get_child(4).get_child(0).clear()
		var one_ones_digit = supply_one_count % 10
		var one_tens_digit = (supply_one_count / 10) % 10
		var one_hunds_digit = (supply_one_count / 100) % 10
		get_tree().get_current_scene().get_node("supply_one").get_child(4).get_child(0).add_text(str(one_ones_digit))
		get_tree().get_current_scene().get_node("supply_one").get_child(3).get_child(0).add_text(str(one_tens_digit))
		get_tree().get_current_scene().get_node("supply_one").get_child(2).get_child(0).add_text(str(one_hunds_digit))
		get_tree().get_current_scene().get_node("supply_one").get_child(1).clear()
		get_tree().get_current_scene().get_node("supply_one").get_child(1).add_text(str(supply_one_name))
		get_tree().get_current_scene().get_node("supply_one").get_child(5).set_texture(supply_one_icon)
		get_tree().get_current_scene().get_node("supply_two").get_child(2).get_child(0).clear()
		get_tree().get_current_scene().get_node("supply_two").get_child(3).get_child(0).clear()
		get_tree().get_current_scene().get_node("supply_two").get_child(4).get_child(0).clear()
		var two_ones_digit = supply_two_count % 10
		var two_tens_digit = (supply_two_count / 10) % 10
		var two_hunds_digit = (supply_two_count / 100) % 10
		get_tree().get_current_scene().get_node("supply_two").get_child(4).get_child(0).add_text(str(two_ones_digit))
		get_tree().get_current_scene().get_node("supply_two").get_child(3).get_child(0).add_text(str(two_tens_digit))
		get_tree().get_current_scene().get_node("supply_two").get_child(2).get_child(0).add_text(str(two_hunds_digit))
		get_tree().get_current_scene().get_node("supply_two").get_child(1).clear()
		get_tree().get_current_scene().get_node("supply_two").get_child(1).add_text(str(supply_two_name))
		get_tree().get_current_scene().get_node("supply_two").get_child(5).set_texture(supply_two_icon)
	if (towns.town_select == "plansey"):
		supply_one_count = supplies.plansey_energy_count
		supply_one_name = "Energy"
		supply_one_icon = load("res://concessions_want.png")
		supply_two_count = supplies.plansey_nachos_count
		supply_two_name = "Nachos"
		supply_two_icon = load("res://nachos.png")
		get_tree().get_current_scene().get_node("supply_one").get_child(2).get_child(0).clear()
		get_tree().get_current_scene().get_node("supply_one").get_child(3).get_child(0).clear()
		get_tree().get_current_scene().get_node("supply_one").get_child(4).get_child(0).clear()
		var one_ones_digit = supply_one_count % 10
		var one_tens_digit = (supply_one_count / 10) % 10
		var one_hunds_digit = (supply_one_count / 100) % 10
		get_tree().get_current_scene().get_node("supply_one").get_child(4).get_child(0).add_text(str(one_ones_digit))
		get_tree().get_current_scene().get_node("supply_one").get_child(3).get_child(0).add_text(str(one_tens_digit))
		get_tree().get_current_scene().get_node("supply_one").get_child(2).get_child(0).add_text(str(one_hunds_digit))
		get_tree().get_current_scene().get_node("supply_one").get_child(1).clear()
		get_tree().get_current_scene().get_node("supply_one").get_child(1).add_text(str(supply_one_name))
		get_tree().get_current_scene().get_node("supply_one").get_child(5).set_texture(supply_one_icon)
		get_tree().get_current_scene().get_node("supply_two").get_child(2).get_child(0).clear()
		get_tree().get_current_scene().get_node("supply_two").get_child(3).get_child(0).clear()
		get_tree().get_current_scene().get_node("supply_two").get_child(4).get_child(0).clear()
		var two_ones_digit = supply_two_count % 10
		var two_tens_digit = (supply_two_count / 10) % 10
		var two_hunds_digit = (supply_two_count / 100) % 10
		get_tree().get_current_scene().get_node("supply_two").get_child(4).get_child(0).add_text(str(two_ones_digit))
		get_tree().get_current_scene().get_node("supply_two").get_child(3).get_child(0).add_text(str(two_tens_digit))
		get_tree().get_current_scene().get_node("supply_two").get_child(2).get_child(0).add_text(str(two_hunds_digit))
		get_tree().get_current_scene().get_node("supply_two").get_child(1).clear()
		get_tree().get_current_scene().get_node("supply_two").get_child(1).add_text(str(supply_two_name))
		get_tree().get_current_scene().get_node("supply_two").get_child(5).set_texture(supply_two_icon)
	if (towns.town_select == "untilly"):
		supply_one_count = supplies.untilly_soda_count
		supply_one_name = "Soda"
		supply_one_icon = load("res://concessions_want.png")
		supply_two_count = supplies.untilly_popcorn_count
		supply_two_name = "Popcorn"
		supply_two_icon = load("res://popcorn.png")
		get_tree().get_current_scene().get_node("supply_one").get_child(2).get_child(0).clear()
		get_tree().get_current_scene().get_node("supply_one").get_child(3).get_child(0).clear()
		get_tree().get_current_scene().get_node("supply_one").get_child(4).get_child(0).clear()
		var one_ones_digit = supply_one_count % 10
		var one_tens_digit = (supply_one_count / 10) % 10
		var one_hunds_digit = (supply_one_count / 100) % 10
		get_tree().get_current_scene().get_node("supply_one").get_child(4).get_child(0).add_text(str(one_ones_digit))
		get_tree().get_current_scene().get_node("supply_one").get_child(3).get_child(0).add_text(str(one_tens_digit))
		get_tree().get_current_scene().get_node("supply_one").get_child(2).get_child(0).add_text(str(one_hunds_digit))
		get_tree().get_current_scene().get_node("supply_one").get_child(1).clear()
		get_tree().get_current_scene().get_node("supply_one").get_child(1).add_text(str(supply_one_name))
		get_tree().get_current_scene().get_node("supply_one").get_child(5).set_texture(supply_one_icon)
		get_tree().get_current_scene().get_node("supply_two").get_child(2).get_child(0).clear()
		get_tree().get_current_scene().get_node("supply_two").get_child(3).get_child(0).clear()
		get_tree().get_current_scene().get_node("supply_two").get_child(4).get_child(0).clear()
		var two_ones_digit = supply_two_count % 10
		var two_tens_digit = (supply_two_count / 10) % 10
		var two_hunds_digit = (supply_two_count / 100) % 10
		get_tree().get_current_scene().get_node("supply_two").get_child(4).get_child(0).add_text(str(two_ones_digit))
		get_tree().get_current_scene().get_node("supply_two").get_child(3).get_child(0).add_text(str(two_tens_digit))
		get_tree().get_current_scene().get_node("supply_two").get_child(2).get_child(0).add_text(str(two_hunds_digit))
		get_tree().get_current_scene().get_node("supply_two").get_child(1).clear()
		get_tree().get_current_scene().get_node("supply_two").get_child(1).add_text(str(supply_two_name))
		get_tree().get_current_scene().get_node("supply_two").get_child(5).set_texture(supply_two_icon)
	if (towns.town_select == "windrow"):
		supply_one_count = supplies.windrow_freezie_count
		supply_one_name = "Freezie"
		supply_one_icon = load("res://concessions_want.png")
		supply_two_count = supplies.windrow_pizza_count
		supply_two_name = "Pizza"
		supply_two_icon = load("res://pizza.png")
		get_tree().get_current_scene().get_node("supply_one").get_child(2).get_child(0).clear()
		get_tree().get_current_scene().get_node("supply_one").get_child(3).get_child(0).clear()
		get_tree().get_current_scene().get_node("supply_one").get_child(4).get_child(0).clear()
		var one_ones_digit = supply_one_count % 10
		var one_tens_digit = (supply_one_count / 10) % 10
		var one_hunds_digit = (supply_one_count / 100) % 10
		get_tree().get_current_scene().get_node("supply_one").get_child(4).get_child(0).add_text(str(one_ones_digit))
		get_tree().get_current_scene().get_node("supply_one").get_child(3).get_child(0).add_text(str(one_tens_digit))
		get_tree().get_current_scene().get_node("supply_one").get_child(2).get_child(0).add_text(str(one_hunds_digit))
		get_tree().get_current_scene().get_node("supply_one").get_child(1).clear()
		get_tree().get_current_scene().get_node("supply_one").get_child(1).add_text(str(supply_one_name))
		get_tree().get_current_scene().get_node("supply_one").get_child(5).set_texture(supply_one_icon)
		get_tree().get_current_scene().get_node("supply_two").get_child(2).get_child(0).clear()
		get_tree().get_current_scene().get_node("supply_two").get_child(3).get_child(0).clear()
		get_tree().get_current_scene().get_node("supply_two").get_child(4).get_child(0).clear()
		var two_ones_digit = supply_two_count % 10
		var two_tens_digit = (supply_two_count / 10) % 10
		var two_hunds_digit = (supply_two_count / 100) % 10
		get_tree().get_current_scene().get_node("supply_two").get_child(4).get_child(0).add_text(str(two_ones_digit))
		get_tree().get_current_scene().get_node("supply_two").get_child(3).get_child(0).add_text(str(two_tens_digit))
		get_tree().get_current_scene().get_node("supply_two").get_child(2).get_child(0).add_text(str(two_hunds_digit))
		get_tree().get_current_scene().get_node("supply_two").get_child(1).clear()
		get_tree().get_current_scene().get_node("supply_two").get_child(1).add_text(str(supply_two_name))
		get_tree().get_current_scene().get_node("supply_two").get_child(5).set_texture(supply_two_icon)
	if (towns.town_select == "banlon"):
		supply_one_count = supplies.banlon_energy_count
		supply_one_name = "Energy"
		supply_one_icon = load("res://concessions_want.png")
		supply_two_count = supplies.banlon_nachos_count
		supply_two_name = "Nachos"
		supply_two_icon = load("res://nachos.png")
		get_tree().get_current_scene().get_node("supply_one").get_child(2).get_child(0).clear()
		get_tree().get_current_scene().get_node("supply_one").get_child(3).get_child(0).clear()
		get_tree().get_current_scene().get_node("supply_one").get_child(4).get_child(0).clear()
		var one_ones_digit = supply_one_count % 10
		var one_tens_digit = (supply_one_count / 10) % 10
		var one_hunds_digit = (supply_one_count / 100) % 10
		get_tree().get_current_scene().get_node("supply_one").get_child(4).get_child(0).add_text(str(one_ones_digit))
		get_tree().get_current_scene().get_node("supply_one").get_child(3).get_child(0).add_text(str(one_tens_digit))
		get_tree().get_current_scene().get_node("supply_one").get_child(2).get_child(0).add_text(str(one_hunds_digit))
		get_tree().get_current_scene().get_node("supply_one").get_child(1).clear()
		get_tree().get_current_scene().get_node("supply_one").get_child(1).add_text(str(supply_one_name))
		get_tree().get_current_scene().get_node("supply_one").get_child(5).set_texture(supply_one_icon)
		get_tree().get_current_scene().get_node("supply_two").get_child(2).get_child(0).clear()
		get_tree().get_current_scene().get_node("supply_two").get_child(3).get_child(0).clear()
		get_tree().get_current_scene().get_node("supply_two").get_child(4).get_child(0).clear()
		var two_ones_digit = supply_two_count % 10
		var two_tens_digit = (supply_two_count / 10) % 10
		var two_hunds_digit = (supply_two_count / 100) % 10
		get_tree().get_current_scene().get_node("supply_two").get_child(4).get_child(0).add_text(str(two_ones_digit))
		get_tree().get_current_scene().get_node("supply_two").get_child(3).get_child(0).add_text(str(two_tens_digit))
		get_tree().get_current_scene().get_node("supply_two").get_child(2).get_child(0).add_text(str(two_hunds_digit))
		get_tree().get_current_scene().get_node("supply_two").get_child(1).clear()
		get_tree().get_current_scene().get_node("supply_two").get_child(1).add_text(str(supply_two_name))
		get_tree().get_current_scene().get_node("supply_two").get_child(5).set_texture(supply_two_icon)
	if (towns.town_select == "slatten"):
		supply_one_count = supplies.slatten_freezie_count
		supply_one_name = "Freezie"
		supply_one_icon = load("res://concessions_want.png")
		supply_two_count = supplies.slatten_popcorn_count
		supply_two_name = "Popcorn"
		supply_two_icon = load("res://popcorn.png")
		get_tree().get_current_scene().get_node("supply_one").get_child(2).get_child(0).clear()
		get_tree().get_current_scene().get_node("supply_one").get_child(3).get_child(0).clear()
		get_tree().get_current_scene().get_node("supply_one").get_child(4).get_child(0).clear()
		var one_ones_digit = supply_one_count % 10
		var one_tens_digit = (supply_one_count / 10) % 10
		var one_hunds_digit = (supply_one_count / 100) % 10
		get_tree().get_current_scene().get_node("supply_one").get_child(4).get_child(0).add_text(str(one_ones_digit))
		get_tree().get_current_scene().get_node("supply_one").get_child(3).get_child(0).add_text(str(one_tens_digit))
		get_tree().get_current_scene().get_node("supply_one").get_child(2).get_child(0).add_text(str(one_hunds_digit))
		get_tree().get_current_scene().get_node("supply_one").get_child(1).clear()
		get_tree().get_current_scene().get_node("supply_one").get_child(1).add_text(str(supply_one_name))
		get_tree().get_current_scene().get_node("supply_one").get_child(5).set_texture(supply_one_icon)
		get_tree().get_current_scene().get_node("supply_two").get_child(2).get_child(0).clear()
		get_tree().get_current_scene().get_node("supply_two").get_child(3).get_child(0).clear()
		get_tree().get_current_scene().get_node("supply_two").get_child(4).get_child(0).clear()
		var two_ones_digit = supply_two_count % 10
		var two_tens_digit = (supply_two_count / 10) % 10
		var two_hunds_digit = (supply_two_count / 100) % 10
		get_tree().get_current_scene().get_node("supply_two").get_child(4).get_child(0).add_text(str(two_ones_digit))
		get_tree().get_current_scene().get_node("supply_two").get_child(3).get_child(0).add_text(str(two_tens_digit))
		get_tree().get_current_scene().get_node("supply_two").get_child(2).get_child(0).add_text(str(two_hunds_digit))
		get_tree().get_current_scene().get_node("supply_two").get_child(1).clear()
		get_tree().get_current_scene().get_node("supply_two").get_child(1).add_text(str(supply_two_name))
		get_tree().get_current_scene().get_node("supply_two").get_child(5).set_texture(supply_two_icon)


func new_supply_prices():
	if (towns.town_select == "hollyhock"):
		randomize()
		daily_soda_purchase_price = range(soda_range_low, soda_range_high + 1)[randi()%range(soda_range_low, soda_range_high + 1).size()]
		randomize()
		daily_popcorn_purchase_price = range(popcorn_range_low, popcorn_range_high + 1)[randi()%range(popcorn_range_low, popcorn_range_high + 1).size()]
	if (towns.town_select == "fiyork"):
		randomize()
		daily_freezie_purchase_price = range(freezie_range_low, freezie_range_high + 1)[randi()%range(freezie_range_low, freezie_range_high + 1).size()]
		randomize()
		daily_pizza_purchase_price = range(pizza_range_low, pizza_range_high + 1)[randi()%range(pizza_range_low, pizza_range_high + 1).size()]
	if (towns.town_select == "plansey"):
		randomize()
		daily_energy_purchase_price = range(energy_range_low, energy_range_high + 1)[randi()%range(energy_range_low, energy_range_high + 1).size()]
		randomize()
		daily_nachos_purchase_price = range(nachos_range_low, nachos_range_high + 1)[randi()%range(nachos_range_low, nachos_range_high + 1).size()]
	if (towns.town_select == "untilly"):
		randomize()
		daily_soda_purchase_price = range(soda_range_low, soda_range_high + 1)[randi()%range(soda_range_low, soda_range_high + 1).size()]
		randomize()
		daily_popcorn_purchase_price = range(popcorn_range_low, popcorn_range_high + 1)[randi()%range(popcorn_range_low, popcorn_range_high + 1).size()]
	if (towns.town_select == "windrow"):
		randomize()
		daily_freezie_purchase_price = range(freezie_range_low, freezie_range_high + 1)[randi()%range(freezie_range_low, freezie_range_high + 1).size()]
		randomize()
		daily_pizza_purchase_price = range(pizza_range_low, pizza_range_high + 1)[randi()%range(pizza_range_low, pizza_range_high + 1).size()]
	if (towns.town_select == "banlon"):
		randomize()
		daily_energy_purchase_price = range(energy_range_low, energy_range_high + 1)[randi()%range(energy_range_low, energy_range_high + 1).size()]
		randomize()
		daily_nachos_purchase_price = range(nachos_range_low, nachos_range_high + 1)[randi()%range(nachos_range_low, nachos_range_high + 1).size()]
	if (towns.town_select == "plansey"):
		randomize()
		daily_freezie_purchase_price = range(freezie_range_low, freezie_range_high + 1)[randi()%range(freezie_range_low, freezie_range_high + 1).size()]
		randomize()
		daily_popcorn_purchase_price = range(popcorn_range_low, popcorn_range_high + 1)[randi()%range(popcorn_range_low, popcorn_range_high + 1).size()]
		
		