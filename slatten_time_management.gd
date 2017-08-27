extends Node2D

var colliders
var where
var direction

var ghostie_positions
var ghost_collider

var down_move = true
var up_move = false
var down_ladder = false
var left_move = true
var right_move = true

func _ready():
	set_process(true)
	
func _process(delta):
	colliders = get_node("lou/lou_colliders").get_colliding_bodies()
	if colliders.size() == 1:
		down_move = true
		up_move = false
		left_move = true
		right_move = true
	for x in colliders:
		if x.is_in_group("down") == true:
			down_move = false
		elif x.is_in_group("up") == true:
			up_move = true
		elif x.is_in_group("left") == true:
			left_move = false
		elif x.is_in_group("right") == true:
			right_move = false
	if (down_move == true):
		where = get_node("lou").get_pos()
		direction = Vector2(0.0, 1.0)
		where += direction * 20 * delta
		get_node("lou").set_pos(where)
	if up_move == true and Input.is_action_pressed("move_up"):
		where = get_node("lou").get_pos()
		direction = Vector2(0.0, -1.0)
		where += direction * 20 * delta
		get_node("lou").set_pos(where)
	if left_move == true and Input.is_action_pressed("move_left"):
		where = get_node("lou").get_pos()
		direction = Vector2(-1.0, 0.0)
		where += direction * 20 * delta
		get_node("lou").set_pos(where) 
	if right_move == true and Input.is_action_pressed("move_right"):
		where = get_node("lou").get_pos()
		direction = Vector2(1.0, 0.0)
		where += direction * 20 * delta
		get_node("lou").set_pos(where)
	ghost_collider = get_node("lou/vaccuum").get_colliding_bodies()
	for x in ghost_collider:
		if x.is_in_group("ghostie") == true:
			if Input.is_action_pressed("fire") == true:
				perks.success = perks.success + 1
				_on_ghostie_timer_timeout()

func _on_ghostie_timer_timeout():
	randomize()
	ghostie_positions = [Vector2(30.433273, -8.73095), Vector2(30.275845, -7.610176), Vector2(30.589325, -23.018887), Vector2(-28.81498, 5.186888), Vector2(-29.44194, -8.916002), Vector2(-29.441942, -24.58588)]
	var ghost_choice = ghostie_positions[randi() % ghostie_positions.size()]
	get_node("ghostie").set_pos(ghost_choice)
	get_node("ghostie_timer").start()