extends Node2D

var colliders
var potentials
var direction
var where
const move_speed = 25

var reset_pos

func _ready():
	show_a_few()
	reset_pos = get_pos()
	set_process(true)
	
func _process(delta):
	colliders = get_colliding_bodies()
	potentials = get_tree().get_nodes_in_group("hidden")
	if (colliders.size() > 0):
		for x in colliders:
			if (x.is_in_group("level") == true):
				reset()
			if (x.is_in_group("goal") == true):
				x.set_hidden(true)
				get_tree().get_current_scene().get_node("checkpoint_timer").start()
				perks.perk_final_count = int(perks.perk_final_count) + int(perks.success)
				perks.success = 0
			if (x.is_in_group("shown") == true):
				x.set_hidden(true)
				x.add_to_group("hidden")
				x.remove_from_group("shown")
				var called = potentials[randi() % potentials.size()]
				called.set_hidden(false)
				called.remove_from_group("hidden")
				called.add_to_group("shown")
				perks.success = perks.success + 1
	where = get_pos()
	if (Input.is_action_pressed("move_up")):
		direction = Vector2(0.0, -1.0)
		where += direction * move_speed * delta
		set_pos(where)
	if (Input.is_action_pressed("move_left")):
		direction = Vector2(-1.0, 0.0)
		where += direction * move_speed * delta
		set_pos(where)
	if (Input.is_action_pressed("move_down")):
		direction = Vector2(0.0, 1.0)
		where += direction * move_speed * delta
		set_pos(where)
	if (Input.is_action_pressed("move_right")):
		direction = Vector2(1.0, 0.0)
		where += direction * move_speed * delta
		set_pos(where)
	
func reset():
	set_pos(reset_pos)
	perks.success = 0

func show_a_few():
	potentials = get_tree().get_nodes_in_group("hidden")
	for x in range(0,4):
		randomize()
		var called = potentials[randi() % potentials.size()]
		called.set_hidden(false)
		called.remove_from_group("hidden")
		called.add_to_group("shown")