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
	if (global.town_select == "hollyhock"):
		if (hollyhock_entertainment_best_key == true):
			wait_time == 30
		elif (hollyhock_entertainment_great_key == true):
			wait_time = 25
		elif (hollyhock_entertainment_good_key == true):
			wait_time = 20
		elif (hollyhock_entertainment_decent_key == true):
			wait_time = 15
		elif (hollyhock_entertainment_worst_key == true):
			wait_time = 10