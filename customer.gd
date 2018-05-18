extends Node2D

var colliders
var potentials
var direction
var where
const move_speed = 25

var reset_pos

var up_move = true
var down_move = true
var left_move = true
var right_move = true

func _ready():
	show_a_few()
	set_process(true)
	
func _process(delta):
	colliders = get_colliding_bodies()
	potentials = get_tree().get_nodes_in_group("hidden")
	if colliders.size() == 0:
		up_move = true
		down_move = true
		left_move = true
		right_move = true
	for x in colliders:
		if (x.is_in_group("up") == true):
			up_move = false
		else:
			up_move = true
		if (x.is_in_group("left") == true):
			left_move = false
		else:
			left_move = true
		if (x.is_in_group("right") == true):
			right_move = false
		else:
			right_move = true
		if (x.is_in_group("down") == true):
			down_move = false
		else:
			down_move = true
		if (x.is_in_group("shown") == true):
			x.set_hidden(true)
			x.add_to_group("hidden")
			x.remove_from_group("shown")
			var called = potentials[randi() % potentials.size()]
			called.set_hidden(false)
			called.remove_from_group("hidden")
			called.add_to_group("shown")
			perks.success = perks.success + 1
	where = get_global_position()
	if ((Input.is_action_pressed("move_up")) and (up_move == true)):
		direction = Vector2(0.0, -1.0)
		where += direction * move_speed * delta
		set_pos(where)
	if ((Input.is_action_pressed("move_left")) and (left_move == true)):
		direction = Vector2(-1.0, 0.0)
		where += direction * move_speed * delta
		set_pos(where)
	if ((Input.is_action_pressed("move_down")) and (down_move == true)):
		direction = Vector2(0.0, 1.0)
		where += direction * move_speed * delta
		set_pos(where)
	if ((Input.is_action_pressed("move_right")) and (right_move == true)):
		direction = Vector2(1.0, 0.0)
		where += direction * move_speed * delta
		set_pos(where)

func show_a_few():
	potentials = get_tree().get_nodes_in_group("hidden")
	for x in range(0,4):
		randomize()
		var called = potentials[randi() % potentials.size()]
		called.show()
		called.remove_from_group("hidden")
		called.add_to_group("shown")