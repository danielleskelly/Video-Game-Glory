extends Node

var storefront_choice
var hollyhock_storefront_worst_key = true
var hollyhock_storefront_decent_key = false
var hollyhock_storefront_good_key = false
var hollyhock_storefront_great_key = false
var hollyhock_storefront_best_key = false

func _ready():
	pass

#checks for upgrades on the storefront and creates an array of success or failure to test against
func storefront_check():
	if (global.town_select == "hollyhock"):
		if (hollyhock_storefront_best_key == true):
			randomize()
			var storefront_chance = [true, true, true, true, true, true, true, true, true, true, true]
			storefront_choice = storefront_chance[randi() % storefront_chance.size()]
		elif (hollyhock_storefront_great_key == true):
			randomize()
			var storefront_chance = [true, true, true, true, false, true, true, true, true, false]
			storefront_choice = storefront_chance[randi() % storefront_chance.size()]
		elif (hollyhock_storefront_good_key == true):
			randomize()
			var storefront_chance = [true, true, true, false, false, true, true, true, false, false]
			storefront_choice = storefront_chance[randi() % storefront_chance.size()]
		elif (hollyhock_storefront_decent_key == true):
			randomize()
			var storefront_chance = [true, true, false, false, false, true, true, false, false, false]
			storefront_choice = storefront_chance[randi() % storefront_chance.size()]
		elif (hollyhock_storefront_worst_key == true):
			randomize()
			var storefront_chance = [true, false, false, false, false, true, false, false, false, false, false]
			storefront_choice = storefront_chance[randi() % storefront_chance.size()]