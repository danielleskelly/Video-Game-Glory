extends RigidBody2D

var colliders
var where
var direction
const move_speed = 5

var random_direction = ["Vector2(-1.0, 0.0)", "Vector2(1.0, 0.0)", "Vector2(0.0, 1.0)",  "Vector2(0.0, -1.0)"]
var direction_choice

func _ready():
	direction = Vector2(-1.0, 0.0)
	set_process(true)
	
func _process(delta):
	where = get_pos()
	where += direction * move_speed * delta
	set_pos(where)
	colliders = get_colliding_bodies()
	for x in colliders:
		if (x.is_in_group("left")):
			direction = Vector2(1.0, 0.0)
		if (x.is_in_group("right")):
			direction = Vector2(-1.0, 0.0)
		if (x.is_in_group("up")):
			direction = Vector2(0.0, 1.0)
		if (x.is_in_group("down")):
			direction = Vector2(0.0, -1.0)
		if (x.is_in_group("green_ghostie")):
			direction = -direction
		if (x.get_name() == "customer"):
			if (perks.success > 5):
				perks.success = perks.success - 5
		
		
func _on_time_turner_timeout():
	direction_choice = random_direction[randi() % random_direction.size()]
	if (direction_choice == "Vector2(0.0, -1.0)"):
		direction = Vector2(0.0, -1.0)
	if (direction_choice == "Vector2(0.0, 1.0)"):
		direction = Vector2(0.0, 1.0)
	if (direction_choice == "Vector2(-1.0, 0.0)"):
		direction = Vector2(-1.0, 0.0)
	if (direction_choice == "Vector2(1.0, 0.0)"):
		direction = Vector2(1.0, 0.0)