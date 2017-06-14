extends Node2D

onready var sabatoge_name = get_node("sabatoge_goal_output")
onready var sabatoge_pic_output = get_node("sabatoge_pic")
onready var sabatoge_price_output = get_node("sabatoge_price_output")

func _ready():
	set_process(true)

func _process(delta):
	pass