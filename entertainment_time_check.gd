extends Node

var hollyhock_entertainment_best_key = false
var hollyhock_entertainment_great_key = false
var hollyhock_entertainment_good_key = false
var hollyhock_entertainment_decent_key = false
var hollyhock_entertainment_worst_key = true

var wait_time

func _ready():
	# Called every time the node is added to the scene.
	# Initialization here
	pass

#in store entertainment upgrades effect on waiting
func entertainment_time_check(): 
	if (towns.town_select == "hollyhock"):
		if (hollyhock_entertainment_best_key == true):
			wait_time == 45
		elif (hollyhock_entertainment_great_key == true):
			wait_time = 40
		elif (hollyhock_entertainment_good_key == true):
			wait_time = 35
		elif (hollyhock_entertainment_decent_key == true):
			wait_time = 30
		elif (hollyhock_entertainment_worst_key == true):
			wait_time = 25