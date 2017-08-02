extends Node2D

var colliders
var where
var direction = Vector2(-1.0, 0.0)
var temp

var reset_colliders
var reset_pos

var left_move

func _ready():
	reset_pos = get_pos()
	set_process(true)
	
func _process(delta):
	where = get_pos()
	colliders = get_node("flappy_colliders").get_colliding_bodies()
	for x in colliders:
		if x.is_in_group("left") == true and left_move == true:
			where = get_pos()
			set_pos(Vector2(28, where.y))
			get_node("flip").start()
			left_move = false
		if x.is_in_group("up") == true or x.is_in_group("down") == true or x.is_in_group("other_flappy") == true:
			where = get_pos()
			temp = direction
			direction = Vector2(temp.x, -temp.y)
	reset_colliders = get_node("flappy_colliders1").get_colliding_bodies()
	for x in reset_colliders:
		if x.is_in_group("jouster"):
			direction = Vector2(-1.0, 0.0)
			set_pos(reset_pos)
	if (get_node("bounce").get_time_left() == 0):
		temp = direction
		where = get_pos()
		randomize()
		direction = Vector2(temp.x, (temp.y + rand_range(-.1,.1)))
		get_node("bounce").start()
	where += direction * 5 * delta
	set_pos(where)

func _on_flip_timeout():
	left_move = true
