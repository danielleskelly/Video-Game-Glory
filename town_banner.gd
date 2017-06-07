extends Node2D

var hollyhock
var plansey
var windrow
var slatten
var fiyork
var banlon

var selected = global.town_select

func _ready():
	hollyhock = get_node("hollyhock")
	plansey = get_node("plansey")
	windrow = get_node("windrow")
	slatten = get_node("slatten")
	fiyork = get_node("fiyork")
	banlon = get_node("banlon")
	set_process(true)
	pass
	
func _process(delta):
	hide()
	if (selected == "hollyhock"):
		hollyhock.show()

func hide():
	hollyhock.set_hidden(true)
	plansey.set_hidden(true)
	windrow.set_hidden(true)
	slatten.set_hidden(true)
	fiyork.set_hidden(true)
	banlon.set_hidden(true)
