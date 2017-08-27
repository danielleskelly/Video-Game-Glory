extends RigidBody2D

var ball_pos
const ball_speed = 30
var colliders
var direction


func _ready():
	
	
func _process(delta):
	
	ball_pos = get_pos()
	ball_pos += direction * delta * ball_speed
	set_pos(ball_pos)
	if paddle.has_point(ball_pos):
		direction.y = -direction.y
	if floor_.has_point(ball_pos):
		direction.y = -direction.y
		if (perks.success > 5):
			perks.success = perks.success - 5
	if (left_wall.has_point(ball_pos)) or (right_wall.has_point(ball_pos)):
		direction.x = -direction.x
	colliders = get_colliding_bodies()
	for x in colliders:
		if (x.is_in_group("active") == true) and (get_node("block_timer").get_time_left() == 0):
			direction.y = -direction.y
			direction.x = randf(0,1)
			get_node("block_timer").start()
			if (x.is_in_group("eight_hits")):
				x.remove_from_group("eight_hits")
				x.add_to_group("seven_hits")
			elif (x.is_in_group("seven_hits")):
				x.remove_from_group("seven_hits")
				x.add_to_group("six_hits")
			elif (x.is_in_group("six_hits")):
				x.remove_from_group("six_hits")
				x.add_to_group("five_hits")
			elif (x.is_in_group("five_hits")):
				x.remove_from_group("five_hits")
				x.add_to_group("four_hits")
			elif (x.is_in_group("four_hits")):
				x.remove_from_group("four_hits")
				x.add_to_group("three_hits")
			elif (x.is_in_group("three_hits")):
				x.remove_from_group("three_hits")
				x.add_to_group("two_hits")
			elif (x.is_in_group("two_hits")):
				x.remove_from_group("two_hits")
				x.add_to_group("one_hits")
			elif (x.is_in_group("one_hits")):
				x.remove_from_group("one_hits")
				x.remove_from_group("active")
				x.set_hidden(true)
				