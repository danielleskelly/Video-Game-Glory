extends Node

var storefront_choice

func _ready():
	pass

#checks for upgrades on the storefront and creates an array of success or failure to test against
func storefront_check():
	if (towns.town_select == "hollyhock"):
		if (hollyhock.hollyhock_storefront_best_key == true):
			randomize()
			var storefront_chance = [true, true, true, true, true, true, true, true, true, true, true]
			storefront_choice = storefront_chance[randi() % storefront_chance.size()]
		elif (hollyhock.hollyhock_storefront_great_key == true):
			randomize()
			var storefront_chance = [true, true, true, true, false, true, true, true, true, false]
			storefront_choice = storefront_chance[randi() % storefront_chance.size()]
		elif (hollyhock.hollyhock_storefront_good_key == true):
			randomize()
			var storefront_chance = [true, true, true, false, false, true, true, true, false, false]
			storefront_choice = storefront_chance[randi() % storefront_chance.size()]
		elif (hollyhock.hollyhock_storefront_decent_key == true):
			randomize()
			var storefront_chance = [true, true, false, false, false, true, true, false, false, false]
			storefront_choice = storefront_chance[randi() % storefront_chance.size()]
		elif (hollyhock.hollyhock_storefront_worst_key == true):
			randomize()
			var storefront_chance = [true, false, false, false, false, true, false, false, false, false, false]
			storefront_choice = storefront_chance[randi() % storefront_chance.size()]
	if (towns.town_select == "fiyork"):
		if (fiyork.fiyork_storefront_best_key == true):
			randomize()
			var storefront_chance = [true, true, true, true, true, true, true, true, true, true, true]
			storefront_choice = storefront_chance[randi() % storefront_chance.size()]
		elif (fiyork.fiyork_storefront_great_key == true):
			randomize()
			var storefront_chance = [true, true, true, true, false, true, true, true, true, false]
			storefront_choice = storefront_chance[randi() % storefront_chance.size()]
		elif (fiyork.fiyork_storefront_good_key == true):
			randomize()
			var storefront_chance = [true, true, true, false, false, true, true, true, false, false]
			storefront_choice = storefront_chance[randi() % storefront_chance.size()]
		elif (fiyork.fiyork_storefront_decent_key == true):
			randomize()
			var storefront_chance = [true, true, false, false, false, true, true, false, false, false]
			storefront_choice = storefront_chance[randi() % storefront_chance.size()]
		elif (fiyork.fiyork_storefront_worst_key == true):
			randomize()
			var storefront_chance = [true, false, false, false, false, true, false, false, false, false, false]
			storefront_choice = storefront_chance[randi() % storefront_chance.size()]
	if (towns.town_select == "plansey"):
		if (plansey.plansey_storefront_best_key == true):
			randomize()
			var storefront_chance = [true, true, true, true, true, true, true, true, true, true, true]
			storefront_choice = storefront_chance[randi() % storefront_chance.size()]
		elif (plansey.plansey_storefront_great_key == true):
			randomize()
			var storefront_chance = [true, true, true, true, false, true, true, true, true, false]
			storefront_choice = storefront_chance[randi() % storefront_chance.size()]
		elif (plansey.plansey_storefront_good_key == true):
			randomize()
			var storefront_chance = [true, true, true, false, false, true, true, true, false, false]
			storefront_choice = storefront_chance[randi() % storefront_chance.size()]
		elif (plansey.plansey_storefront_decent_key == true):
			randomize()
			var storefront_chance = [true, true, false, false, false, true, true, false, false, false]
			storefront_choice = storefront_chance[randi() % storefront_chance.size()]
		elif (plansey.plansey_storefront_worst_key == true):
			randomize()
			var storefront_chance = [true, false, false, false, false, true, false, false, false, false, false]
			storefront_choice = storefront_chance[randi() % storefront_chance.size()]
	if (towns.town_select == "untilly"):
		if (untilly.untilly_storefront_best_key == true):
			randomize()
			var storefront_chance = [true, true, true, true, true, true, true, true, true, true, true]
			storefront_choice = storefront_chance[randi() % storefront_chance.size()]
		elif (untilly.untilly_storefront_great_key == true):
			randomize()
			var storefront_chance = [true, true, true, true, false, true, true, true, true, false]
			storefront_choice = storefront_chance[randi() % storefront_chance.size()]
		elif (untilly.untilly_storefront_good_key == true):
			randomize()
			var storefront_chance = [true, true, true, false, false, true, true, true, false, false]
			storefront_choice = storefront_chance[randi() % storefront_chance.size()]
		elif (untilly.untilly_storefront_decent_key == true):
			randomize()
			var storefront_chance = [true, true, false, false, false, true, true, false, false, false]
			storefront_choice = storefront_chance[randi() % storefront_chance.size()]
		elif (untilly.untilly_storefront_worst_key == true):
			randomize()
			var storefront_chance = [true, false, false, false, false, true, false, false, false, false, false]
			storefront_choice = storefront_chance[randi() % storefront_chance.size()]
	if (towns.town_select == "windrow"):
		if (windrow.windrow_storefront_best_key == true):
			randomize()
			var storefront_chance = [true, true, true, true, true, true, true, true, true, true, true]
			storefront_choice = storefront_chance[randi() % storefront_chance.size()]
		elif (windrow.windrow_storefront_great_key == true):
			randomize()
			var storefront_chance = [true, true, true, true, false, true, true, true, true, false]
			storefront_choice = storefront_chance[randi() % storefront_chance.size()]
		elif (windrow.windrow_storefront_good_key == true):
			randomize()
			var storefront_chance = [true, true, true, false, false, true, true, true, false, false]
			storefront_choice = storefront_chance[randi() % storefront_chance.size()]
		elif (windrow.windrow_storefront_decent_key == true):
			randomize()
			var storefront_chance = [true, true, false, false, false, true, true, false, false, false]
			storefront_choice = storefront_chance[randi() % storefront_chance.size()]
		elif (windrow.windrow_storefront_worst_key == true):
			randomize()
			var storefront_chance = [true, false, false, false, false, true, false, false, false, false, false]
			storefront_choice = storefront_chance[randi() % storefront_chance.size()]
	if (towns.town_select == "banlon"):
		if (banlon.banlon_storefront_best_key == true):
			randomize()
			var storefront_chance = [true, true, true, true, true, true, true, true, true, true, true]
			storefront_choice = storefront_chance[randi() % storefront_chance.size()]
		elif (banlon.banlon_storefront_great_key == true):
			randomize()
			var storefront_chance = [true, true, true, true, false, true, true, true, true, false]
			storefront_choice = storefront_chance[randi() % storefront_chance.size()]
		elif (banlon.banlon_storefront_good_key == true):
			randomize()
			var storefront_chance = [true, true, true, false, false, true, true, true, false, false]
			storefront_choice = storefront_chance[randi() % storefront_chance.size()]
		elif (banlon.banlon_storefront_decent_key == true):
			randomize()
			var storefront_chance = [true, true, false, false, false, true, true, false, false, false]
			storefront_choice = storefront_chance[randi() % storefront_chance.size()]
		elif (banlon.banlon_storefront_worst_key == true):
			randomize()
			var storefront_chance = [true, false, false, false, false, true, false, false, false, false, false]
			storefront_choice = storefront_chance[randi() % storefront_chance.size()]
	if (towns.town_select == "slatten"):
		if (slatten.slatten_storefront_best_key == true):
			randomize()
			var storefront_chance = [true, true, true, true, true, true, true, true, true, true, true]
			storefront_choice = storefront_chance[randi() % storefront_chance.size()]
		elif (slatten.slatten_storefront_great_key == true):
			randomize()
			var storefront_chance = [true, true, true, true, false, true, true, true, true, false]
			storefront_choice = storefront_chance[randi() % storefront_chance.size()]
		elif (slatten.slatten_storefront_good_key == true):
			randomize()
			var storefront_chance = [true, true, true, false, false, true, true, true, false, false]
			storefront_choice = storefront_chance[randi() % storefront_chance.size()]
		elif (slatten.slatten_storefront_decent_key == true):
			randomize()
			var storefront_chance = [true, true, false, false, false, true, true, false, false, false]
			storefront_choice = storefront_chance[randi() % storefront_chance.size()]
		elif (slatten.slatten_storefront_worst_key == true):
			randomize()
			var storefront_chance = [true, false, false, false, false, true, false, false, false, false, false]
			storefront_choice = storefront_chance[randi() % storefront_chance.size()]
	