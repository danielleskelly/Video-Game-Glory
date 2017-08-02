extends Node2D

var where
var colliders
var direction
var down_move = true
var up_move = true
var left_move = true
var right_move = true
var temp

func _ready():
	set_process(true)
	
func _process(delta):
	where = get_node("jouster").get_pos()
	colliders = get_node("jouster/jouster_collider").get_colliding_bodies()
	if (colliders.size() == 0):
		down_move = true
		up_move = true
		left_move = true
	else:
		for x in colliders:
			if x.is_in_group("left") == true:
				temp = get_node("jouster").get_pos()
				get_node("jouster").set_pos(Vector2(28, temp.y))
				get_node("flip").start()
				left_move = false
			if x.is_in_group("right") == true:
				temp = get_node("jouster").get_pos()
				get_node("jouster").set_pos(Vector2(-28, temp.y))
				get_node("flip").start()
				right_move = false
			if x.is_in_group("down") == true:
				down_move = false
			if x.is_in_group("up") == true:
				up_move = false
			if x.is_in_group("other_flappy") == true:
				if (perks.success > 5):
					perks.success = perks.success - 5
	if down_move == true:
		where = get_node("jouster").get_pos()
		direction = Vector2(0.0, 1.0)
		where += direction * 20 * delta
		get_node("jouster").set_pos(where)
	if Input.is_action_pressed("move_right") and right_move == true:
		direction = Vector2(1.0, 0.0)
		where += direction * 20 * delta
		get_node("jouster").set_pos(where)
	if Input.is_action_pressed("move_left") and left_move == true:
		direction = Vector2(-1.0, 0.0)
		where += direction * 20 * delta
		get_node("jouster").set_pos(where)
	if Input.is_action_pressed("move_up") and up_move == true:
		direction = Vector2(0.0, -1.0)
		where += direction * 30 * delta
		get_node("jouster").set_pos(where)

func _on_flip_timeout():
	left_move = true
	right_move = true