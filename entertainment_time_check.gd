extends Node

var wait_time

func _ready():
	# Called every time the node is added to the scene.
	# Initialization here
	pass

#in store entertainment upgrades effect on waiting
func entertainment_time_check(): 
	if (towns.town_select == "hollyhock"):
		if (hollyhock.hollyhock_entertainment_best_key == true):
			wait_time == 45
		elif (hollyhock.hollyhock_entertainment_great_key == true):
			wait_time = 40
		elif (hollyhock.hollyhock_entertainment_good_key == true):
			wait_time = 35
		elif (hollyhock.hollyhock_entertainment_decent_key == true):
			wait_time = 30
		elif (hollyhock.hollyhock_entertainment_worst_key == true):
			wait_time = 25
	if (towns.town_select == "fiyork"):
		if (fiyork.fiyork_entertainment_best_key == true):
			wait_time == 45
		elif (fiyork.fiyork_entertainment_great_key == true):
			wait_time = 40
		elif (fiyork.fiyork_entertainment_good_key == true):
			wait_time = 35
		elif (fiyork.fiyork_entertainment_decent_key == true):
			wait_time = 30
		elif (fiyork.fiyork_entertainment_worst_key == true):
			wait_time = 25
	if (towns.town_select == "plansey"):
		if (plansey.plansey_entertainment_best_key == true):
			wait_time == 45
		elif (plansey.plansey_entertainment_great_key == true):
			wait_time = 40
		elif (plansey.plansey_entertainment_good_key == true):
			wait_time = 35
		elif (plansey.plansey_entertainment_decent_key == true):
			wait_time = 30
		elif (plansey.plansey_entertainment_worst_key == true):
			wait_time = 25
	if (towns.town_select == "windrow"):
		if (windrow.windrow_entertainment_best_key == true):
			wait_time == 45
		elif (windrow.windrow_entertainment_great_key == true):
			wait_time = 40
		elif (windrow.windrow_entertainment_good_key == true):
			wait_time = 35
		elif (windrow.windrow_entertainment_decent_key == true):
			wait_time = 30
		elif (windrow.windrow_entertainment_worst_key == true):
			wait_time = 25
	if (towns.town_select == "banlon"):
		if (banlon.banlon_entertainment_best_key == true):
			wait_time == 45
		elif (banlon.banlon_entertainment_great_key == true):
			wait_time = 40
		elif (banlon.banlon_entertainment_good_key == true):
			wait_time = 35
		elif (banlon.banlon_entertainment_decent_key == true):
			wait_time = 30
		elif (banlon.banlon_entertainment_worst_key == true):
			wait_time = 25
	if (towns.town_select == "slatten"):
		if (slatten.slatten_entertainment_best_key == true):
			wait_time == 45
		elif (slatten.slatten_entertainment_great_key == true):
			wait_time = 40
		elif (slatten.slatten_entertainment_good_key == true):
			wait_time = 35
		elif (slatten.slatten_entertainment_decent_key == true):
			wait_time = 30
		elif (slatten.slatten_entertainment_worst_key == true):
			wait_time = 25
	if (towns.town_select == "untilly"):
		if (untilly.untilly_entertainment_best_key == true):
			wait_time == 45
		elif (untilly.untilly_entertainment_great_key == true):
			wait_time = 40
		elif (untilly.untilly_entertainment_good_key == true):
			wait_time = 35
		elif (untilly.untilly_entertainment_decent_key == true):
			wait_time = 30
		elif (untilly.untilly_entertainment_worst_key == true):
			wait_time = 25