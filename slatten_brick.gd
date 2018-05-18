extends RigidBody2D

var brick_num = 0

var zero_texture = preload("res://white_box.png")
var one_texture = preload("res://purple_slatten_box.png")
var two_texture = preload("res://green_slatten_box.png")

func _ready():
	set_physics_process(true)

func _physics_process(delta):
	if brick_num == 0:
		get_child(0).set_texture(zero_texture)
	elif brick_num == 1:
		get_child(0).set_texture(one_texture)
	elif brick_num == 2:
		get_child(0).set_texture(two_texture)