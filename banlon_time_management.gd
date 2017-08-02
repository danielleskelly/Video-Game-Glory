extends Node2D

var direction
var current_pos

var frog_colliders
var cars

func _ready():
	current_pos = "a"
	set_process(true)

func _process(delta):
	frog_colliders = get_node("frog").get_colliding_bodies()
	for x in frog_colliders:
		if (x.is_in_group("car") == true):
			reset_frog()
	var frog_pos = get_node("frog").get_pos()
	if (Input.is_action_pressed("move_left")):
		direction = Vector2(-1.0, 0.0)
		frog_pos += direction * 25 * delta
		get_node("frog").set_pos(frog_pos)
	if (Input.is_action_pressed("move_right")):
		direction = Vector2(1.0, 0.0)
		frog_pos += direction * 25 * delta
		get_node("frog").set_pos(frog_pos)
	if (Input.is_action_pressed("move_up")) and (get_node("jump_timer").get_time_left() == 0):
		if (current_pos == "a"):
			current_pos = "b"
			get_node("frog").set_pos(Vector2(frog_pos.x, 13.569057))
		elif (current_pos == "b"):
			current_pos = "c"
			get_node("frog").set_pos(Vector2(frog_pos.x, -1.493553))
		elif (current_pos == "c"):
			current_pos = "d"
			get_node("frog").set_pos(Vector2(frog_pos.x, -16.731302))
		elif (current_pos == "d"):
			get_node("frog").set_pos(Vector2(frog_pos.x, -27.590385))
			get_node("notification").set_hidden(false)
			get_node("note_timer").start()
		get_node("jump_timer").start()
	if (Input.is_action_pressed("move_down")) and (get_node("jump_timer").get_time_left() == 0):
		if (current_pos == "e"):
			current_pos = "d"
			get_node("frog").set_pos(Vector2(frog_pos.x, -16.731302))
		elif (current_pos == "d"):
			current_pos = "c"
			get_node("frog").set_pos(Vector2(frog_pos.x, -1.493553))
		elif (current_pos == "c"):
			current_pos = "b"
			get_node("frog").set_pos(Vector2(frog_pos.x, 13.569057))
		elif (current_pos == "b"):
			current_pos = "a"
			get_node("frog").set_pos(Vector2(frog_pos.x, 27.931084))
		get_node("jump_timer").start()
	

func _on_note_timer_timeout():
	get_node("notification").set_hidden(true)
	perks.success = perks.success + 1
	reset_frog()
	
func reset_frog():
	get_node("frog").set_pos(Vector2(27.389816, 27.931084))
	current_pos = "a"