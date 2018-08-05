extends RigidBody2D

var brick_num = 3
var row_num = 6
var five_texture = preload("res://red_box.png")
var four_texture = preload("res://blue_box.png")
var three_texture = preload("res://purple_box.png")
var two_texture = preload("res://green_box.png")
var zero_texture = preload("res://blank.png")


func _ready():
	set_physics_process(true)

func _physics_process(delta):
	if brick_num == 8 or brick_num == 7:
		get_child(0).set_texture(five_texture)
	elif brick_num == 6 or brick_num == 5:
		get_child(0).set_texture(four_texture)
	elif brick_num == 4 or brick_num == 3:
		get_child(0).set_texture(three_texture)
	elif brick_num == 2 or brick_num == 1:
		get_child(0).set_texture(two_texture)
	elif brick_num == 0:
		get_child(0).set_texture(zero_texture)