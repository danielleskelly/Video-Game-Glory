extends RigidBody2D

var ball_pos
const ball_speed = 30
var colliders
var direction
var paddle
var paddle_size
var left_wall
var left_wall_size
var right_wall
var right_wall_size
var floor_
var floor_size
var roof
var roof_size

func _ready():
	paddle_size = get_tree().get_current_scene().get_node("paddle").get_texture().get_size()
	left_wall_size = get_tree().get_current_scene().get_node("left_wall").get_size()
	right_wall_size = get_tree().get_current_scene().get_node("right_wall").get_size()
	floor_size = get_tree().get_current_scene().get_node("floor").get_size()
	roof_size = get_tree().get_current_scene().get_node("roof").get_size()
	direction = Vector2(0.5, 1.0)
	set_process(true)
	
func _process(delta):
	paddle = Rect2(get_tree().get_current_scene().get_node("paddle").get_pos() - paddle_size*.05, paddle_size)
	left_wall = Rect2(get_tree().get_current_scene().get_node("left_wall").get_pos() - left_wall_size*.05, left_wall_size)
	right_wall = Rect2(get_tree().get_current_scene().get_node("right_wall").get_pos() - right_wall_size*.05, right_wall_size)
	floor_ = Rect2(get_tree().get_current_scene().get_node("floor").get_pos() - floor_size*.05, floor_size)
	roof = Rect2(get_tree().get_current_scene().get_node("roof").get_pos() - roof_size*.05, roof_size)
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
				