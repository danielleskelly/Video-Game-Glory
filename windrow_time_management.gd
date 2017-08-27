extends Node2D

var five_texture = preload("res://tetris_s.png")
var four_texture = preload("res://tetris_knight.png")
var three_texture = preload("res://tetris_square.png")
var two_texture = preload("res://tetris_bar.png")
var zero_texture = preload("res://blank.png")

var paddle
var ball

var ball_where
var ball_dir = Vector2(0.5, 1.0)
var ball_speed = 30

var left_move
var right_move

var matrix = []

func _ready():
	paddle = get_node("paddle")
	ball = get_node("ball")
	set_about()
	set_process(true)
	
func _process(delta):
	set_stuff()
	ball_where = ball.get_pos()
	ball_where += delta * ball_dir * ball_speed
	ball.set_pos(ball_where)
	var paddle_colliders = paddle.get_colliding_bodies()
	left_move = true
	right_move = true
	check_matrix()
	for x in paddle_colliders:
		if x.is_in_group("left") == true:
			left_move = false
		if x.is_in_group("right") == true:
			right_move = false
	var ball_colliders = ball.get_colliding_bodies()
	for x in ball_colliders:
		if x.is_in_group("buffer") == true:
			ball.set_pos(Vector2(-1.72338, -8.34917))
		if x.get_name() == "paddle" and get_node("bounce_timer").get_time_left() == 0:
			get_node("bounce_timer").start()
			ball_dir.y = -ball_dir.y
			ball_dir.x = rand_range(-1,1)
		if x.is_in_group("wall") == true and get_node("wall_timer").get_time_left() == 0:
			get_node("wall_timer").start()
			ball_dir.x = -ball_dir.x
		if x.is_in_group("floor") == true and get_node("bounce_timer").get_time_left() == 0:
			ball_dir.y = -ball_dir.y
			get_node("bounce_timer").start()
			if perks.success >= 5:
				perks.success = perks.success - 5
		if x.get_name() == "zerozero" and get_node("bounce_timer").get_time_left() == 0:
			if matrix[0][0] == 1:
				matrix[0][0] -= 1
				ball_dir.y = -ball_dir.y
				perks.success = perks.success + 5
			elif matrix[0][0] > 1:
				matrix[0][0] -= 1
				ball_dir.y = -ball_dir.y
			else:
				pass
			get_node("bounce_timer").start()
		if x.get_name() == "zeroone" and get_node("bounce_timer").get_time_left() == 0:
			if matrix[0][1] == 1:
				matrix[0][1] -= 1
				ball_dir.y = -ball_dir.y
				perks.success = perks.success + 5
			elif matrix[0][1] > 1:
				matrix[0][1] -= 1
				ball_dir.y = -ball_dir.y
			else:
				pass
			get_node("bounce_timer").start()
		if x.get_name() == "zerotwo" and get_node("bounce_timer").get_time_left() == 0:
			if matrix[0][2] == 1:
				matrix[0][2] -= 1
				ball_dir.y = -ball_dir.y
				perks.success = perks.success + 5
			elif matrix[0][2] > 1:
				matrix[0][2] -= 1
				ball_dir.y = -ball_dir.y
			else:
				pass
			get_node("bounce_timer").start()
		if x.get_name() == "zerothree" and get_node("bounce_timer").get_time_left() == 0:
			if matrix[0][3] == 1:
				matrix[0][3] -= 1
				ball_dir.y = -ball_dir.y
				perks.success = perks.success + 5
			elif matrix[0][3] > 1:
				matrix[0][3] -= 1
				ball_dir.y = -ball_dir.y
			else:
				pass
			get_node("bounce_timer").start()
		if x.get_name() == "zerofour" and get_node("bounce_timer").get_time_left() == 0:
			if matrix[0][4] == 1:
				matrix[0][4] -= 1
				ball_dir.y = -ball_dir.y
				perks.success = perks.success + 5
			elif matrix[0][4] > 1:
				matrix[0][4] -= 1
				ball_dir.y = -ball_dir.y
			else:
				pass
			get_node("bounce_timer").start()
		if x.get_name() == "zerofive" and get_node("bounce_timer").get_time_left() == 0:
			if matrix[0][5] == 1:
				matrix[0][5] -= 1
				ball_dir.y = -ball_dir.y
				perks.success = perks.success + 5
			elif matrix[0][5] > 1:
				matrix[0][5] -= 1
				ball_dir.y = -ball_dir.y
			else:
				pass
			get_node("bounce_timer").start()
		if x.get_name() == "zerosix" and get_node("bounce_timer").get_time_left() == 0:
			if matrix[0][6] == 1:
				matrix[0][6] -= 1
				ball_dir.y = -ball_dir.y
				perks.success = perks.success + 5
			elif matrix[0][6] > 1:
				matrix[0][6] -= 1
				ball_dir.y = -ball_dir.y
			else:
				pass
			get_node("bounce_timer").start()
		if x.get_name() == "zeroseven" and get_node("bounce_timer").get_time_left() == 0:
			if matrix[0][7] == 1:
				matrix[0][7] -= 1
				ball_dir.y = -ball_dir.y
				perks.success = perks.success + 5
			elif matrix[0][7] > 1:
				matrix[0][7] -= 1
				ball_dir.y = -ball_dir.y
			else:
				pass
			get_node("bounce_timer").start()
		if x.get_name() == "onezero" and get_node("bounce_timer").get_time_left() == 0:
			if matrix[1][0] == 1:
				matrix[1][0] -= 1
				ball_dir.y = -ball_dir.y
				perks.success = perks.success + 5
			elif matrix[1][0] > 1:
				matrix[1][0] -= 1
				ball_dir.y = -ball_dir.y
			else:
				pass
			get_node("bounce_timer").start()
		if x.get_name() == "oneone" and get_node("bounce_timer").get_time_left() == 0:
			if matrix[1][1] == 1:
				matrix[1][1] -= 1
				ball_dir.y = -ball_dir.y
				perks.success = perks.success + 5
			elif matrix[1][1] > 1:
				matrix[1][1] -= 1
				ball_dir.y = -ball_dir.y
			else:
				pass
			get_node("bounce_timer").start()
		if x.get_name() == "onetwo" and get_node("bounce_timer").get_time_left() == 0:
			if matrix[1][2] == 1:
				matrix[1][2] -= 1
				ball_dir.y = -ball_dir.y
				perks.success = perks.success + 5
			elif matrix[1][2] > 1:
				matrix[1][2] -= 1
				ball_dir.y = -ball_dir.y
			else:
				pass
			get_node("bounce_timer").start()
		if x.get_name() == "onethree" and get_node("bounce_timer").get_time_left() == 0:
			if matrix[1][3] == 1:
				matrix[1][3] -= 1
				ball_dir.y = -ball_dir.y
				perks.success = perks.success + 5
			elif matrix[1][3] > 1:
				matrix[1][3] -= 1
				ball_dir.y = -ball_dir.y
			else:
				pass
			get_node("bounce_timer").start()
		if x.get_name() == "onefour" and get_node("bounce_timer").get_time_left() == 0:
			if matrix[1][4] == 1:
				matrix[1][4] -= 1
				ball_dir.y = -ball_dir.y
				perks.success = perks.success + 5
			elif matrix[1][4] > 1:
				matrix[1][4] -= 1
				ball_dir.y = -ball_dir.y
			else:
				pass
			get_node("bounce_timer").start()
		if x.get_name() == "onefive" and get_node("bounce_timer").get_time_left() == 0:
			if matrix[1][5] == 1:
				matrix[1][5] -= 1
				ball_dir.y = -ball_dir.y
				perks.success = perks.success + 5
			elif matrix[1][5] > 1:
				matrix[1][5] -= 1
				ball_dir.y = -ball_dir.y
			else:
				pass
			get_node("bounce_timer").start()
		if x.get_name() == "onesix" and get_node("bounce_timer").get_time_left() == 0:
			if matrix[1][6] == 1:
				matrix[1][6] -= 1
				ball_dir.y = -ball_dir.y
				perks.success = perks.success + 5
			elif matrix[1][6] > 1:
				matrix[1][6] -= 1
				ball_dir.y = -ball_dir.y
			else:
				pass
			get_node("bounce_timer").start()
		if x.get_name() == "oneseven" and get_node("bounce_timer").get_time_left() == 0:
			if matrix[1][7] == 1:
				matrix[1][7] -= 1
				ball_dir.y = -ball_dir.y
				perks.success = perks.success + 5
			elif matrix[1][7] > 1:
				matrix[1][7] -= 1
				ball_dir.y = -ball_dir.y
			else:
				pass
			get_node("bounce_timer").start()
		if x.get_name() == "twozero" and get_node("bounce_timer").get_time_left() == 0:
			if matrix[2][0] == 1:
				matrix[2][0] -= 1
				ball_dir.y = -ball_dir.y
				perks.success = perks.success + 5
			elif matrix[2][0] > 1:
				matrix[2][0] -= 1
				ball_dir.y = -ball_dir.y
			else:
				pass
			get_node("bounce_timer").start()
		if x.get_name() == "twoone" and get_node("bounce_timer").get_time_left() == 0:
			if matrix[2][1] == 1:
				matrix[2][1] -= 1
				ball_dir.y = -ball_dir.y
				perks.success = perks.success + 5
			elif matrix[2][1] > 1:
				matrix[2][1] -= 1
				ball_dir.y = -ball_dir.y
			else:
				pass
			get_node("bounce_timer").start()
		if x.get_name() == "twotwo" and get_node("bounce_timer").get_time_left() == 0:
			if matrix[2][2] == 1:
				matrix[2][2] -= 1
				ball_dir.y = -ball_dir.y
				perks.success = perks.success + 5
			elif matrix[2][2] > 1:
				matrix[2][2] -= 1
				ball_dir.y = -ball_dir.y
			else:
				pass
			get_node("bounce_timer").start()
		if x.get_name() == "twothree" and get_node("bounce_timer").get_time_left() == 0:
			if matrix[2][3] == 1:
				matrix[2][3] -= 1
				ball_dir.y = -ball_dir.y
				perks.success = perks.success + 5
			elif matrix[2][3] > 1:
				matrix[2][3] -= 1
				ball_dir.y = -ball_dir.y
			else:
				pass
			get_node("bounce_timer").start()
		if x.get_name() == "twofour" and get_node("bounce_timer").get_time_left() == 0:
			if matrix[2][4] == 1:
				matrix[2][4] -= 1
				ball_dir.y = -ball_dir.y
				perks.success = perks.success + 5
			elif matrix[2][4] > 1:
				matrix[2][4] -= 1
				ball_dir.y = -ball_dir.y
			else:
				pass
			get_node("bounce_timer").start()
		if x.get_name() == "twofive" and get_node("bounce_timer").get_time_left() == 0:
			if matrix[2][5] == 1:
				matrix[2][5] -= 1
				ball_dir.y = -ball_dir.y
				perks.success = perks.success + 5
			elif matrix[2][5] > 1:
				matrix[2][5] -= 1
				ball_dir.y = -ball_dir.y
			else:
				pass
			get_node("bounce_timer").start()
		if x.get_name() == "twosix" and get_node("bounce_timer").get_time_left() == 0:
			if matrix[2][6] == 1:
				matrix[2][6] -= 1
				ball_dir.y = -ball_dir.y
				perks.success = perks.success + 5
			elif matrix[2][6] > 1:
				matrix[2][6] -= 1
				ball_dir.y = -ball_dir.y
			else:
				pass
			get_node("bounce_timer").start()
		if x.get_name() == "twoseven" and get_node("bounce_timer").get_time_left() == 0:
			if matrix[2][7] == 1:
				matrix[2][7] -= 1
				ball_dir.y = -ball_dir.y
				perks.success = perks.success + 5
			elif matrix[2][7] > 1:
				matrix[2][7] -= 1
				ball_dir.y = -ball_dir.y
			else:
				pass
			get_node("bounce_timer").start()
		if x.get_name() == "threezero" and get_node("bounce_timer").get_time_left() == 0:
			if matrix[3][0] == 1:
				matrix[3][0] -= 1
				ball_dir.y = -ball_dir.y
				perks.success = perks.success + 5
			elif matrix[3][0] > 1:
				matrix[3][0] -= 1
				ball_dir.y = -ball_dir.y
			else:
				pass
			get_node("bounce_timer").start()
		if x.get_name() == "threeone" and get_node("bounce_timer").get_time_left() == 0:
			if matrix[3][1] == 1:
				matrix[3][1] -= 1
				ball_dir.y = -ball_dir.y
				perks.success = perks.success + 5
			elif matrix[3][1] > 1:
				matrix[3][1] -= 1
				ball_dir.y = -ball_dir.y
			else:
				pass
			get_node("bounce_timer").start()
		if x.get_name() == "threetwo" and get_node("bounce_timer").get_time_left() == 0:
			if matrix[3][2] == 1:
				matrix[3][2] -= 1
				ball_dir.y = -ball_dir.y
				perks.success = perks.success + 5
			elif matrix[3][2] > 1:
				matrix[3][2] -= 1
				ball_dir.y = -ball_dir.y
			else:
				pass
			get_node("bounce_timer").start()
		if x.get_name() == "threethree" and get_node("bounce_timer").get_time_left() == 0:
			if matrix[3][3] == 1:
				matrix[3][3] -= 1
				ball_dir.y = -ball_dir.y
				perks.success = perks.success + 5
			elif matrix[3][3] > 1:
				matrix[3][3] -= 1
				ball_dir.y = -ball_dir.y
			else:
				pass
			get_node("bounce_timer").start()
		if x.get_name() == "threefour" and get_node("bounce_timer").get_time_left() == 0:
			if matrix[3][4] == 1:
				matrix[3][4] -= 1
				ball_dir.y = -ball_dir.y
				perks.success = perks.success + 5
			elif matrix[3][4] > 1:
				matrix[3][4] -= 1
				ball_dir.y = -ball_dir.y
			else:
				pass
			get_node("bounce_timer").start()
		if x.get_name() == "threefive" and get_node("bounce_timer").get_time_left() == 0:
			if matrix[3][5] == 1:
				matrix[3][5] -= 1
				ball_dir.y = -ball_dir.y
				perks.success = perks.success + 5
			elif matrix[3][5] > 1:
				matrix[3][5] -= 1
				ball_dir.y = -ball_dir.y
			else:
				pass
			get_node("bounce_timer").start()
		if x.get_name() == "threesix" and get_node("bounce_timer").get_time_left() == 0:
			if matrix[3][6] == 1:
				matrix[3][6] -= 1
				ball_dir.y = -ball_dir.y
				perks.success = perks.success + 5
			elif matrix[3][6] > 1:
				matrix[3][6] -= 1
				ball_dir.y = -ball_dir.y
			else:
				pass
			get_node("bounce_timer").start()
		if x.get_name() == "threeseven" and get_node("bounce_timer").get_time_left() == 0:
			if matrix[3][7] == 1:
				matrix[3][7] -= 1
				ball_dir.y = -ball_dir.y
				perks.success = perks.success + 5
			elif matrix[3][7] > 1:
				matrix[3][7] -= 1
				ball_dir.y = -ball_dir.y
			else:
				pass
			get_node("bounce_timer").start()
	if (Input.is_action_pressed("move_left")):
		if left_move == true:
			var where = paddle.get_pos()
			var direction = Vector2(-1.0, 0.0)
			var speed = 50
			where += delta * direction * speed
			paddle.set_pos(where)
	if (Input.is_action_pressed("move_right")):
		if right_move == true:
			var where = paddle.get_pos()
			var direction = Vector2(1.0, 0.0)
			var speed = 50
			where += delta * direction * speed
			paddle.set_pos(where)
	
func set_stuff():
	if matrix[0][0] == 5:
		get_node("zerozero/Sprite").set_texture(five_texture)
	if matrix[0][0] == 4:
		get_node("zerozero/Sprite").set_texture(four_texture)
	if matrix[0][0] == 3:
		get_node("zerozero/Sprite").set_texture(three_texture)
	if matrix[0][0] == 2:
		get_node("zerozero/Sprite").set_texture(two_texture)
	if matrix[0][0] == 0:
		get_node("zerozero/Sprite").set_texture(zero_texture)
		
	if matrix[0][1] == 5:
		get_node("zeroone/Sprite").set_texture(five_texture)
	if matrix[0][1] == 4:
		get_node("zeroone/Sprite").set_texture(four_texture)
	if matrix[0][1] == 3:
		get_node("zeroone/Sprite").set_texture(three_texture)
	if matrix[0][1] == 2:
		get_node("zeroone/Sprite").set_texture(two_texture)
	if matrix[0][1] == 0:
		get_node("zeroone/Sprite").set_texture(zero_texture)
	
	if matrix[0][2] == 5:
		get_node("zerotwo/Sprite").set_texture(five_texture)
	if matrix[0][2] == 4:
		get_node("zerotwo/Sprite").set_texture(four_texture)
	if matrix[0][2] == 3:
		get_node("zerotwo/Sprite").set_texture(three_texture)
	if matrix[0][2] == 2:
		get_node("zerotwo/Sprite").set_texture(two_texture)
	if matrix[0][2] == 0:
		get_node("zerotwo/Sprite").set_texture(zero_texture)
		
	if matrix[0][3] == 5:
		get_node("zerothree/Sprite").set_texture(five_texture)
	if matrix[0][3] == 4:
		get_node("zerothree/Sprite").set_texture(four_texture)
	if matrix[0][3] == 3:
		get_node("zerothree/Sprite").set_texture(three_texture)
	if matrix[0][3] == 2:
		get_node("zerothree/Sprite").set_texture(two_texture)
	if matrix[0][3] == 0:
		get_node("zerothree/Sprite").set_texture(zero_texture)
		
	if matrix[0][4] == 5:
		get_node("zerofour/Sprite").set_texture(five_texture)
	if matrix[0][4] == 4:
		get_node("zerofour/Sprite").set_texture(four_texture)
	if matrix[0][4] == 3:
		get_node("zerofour/Sprite").set_texture(three_texture)
	if matrix[0][4] == 2:
		get_node("zerofour/Sprite").set_texture(two_texture)
	if matrix[0][4] == 0:
		get_node("zerofour/Sprite").set_texture(zero_texture)
		
	if matrix[0][5] == 5:
		get_node("zerofive/Sprite").set_texture(five_texture)
	if matrix[0][5] == 4:
		get_node("zerofive/Sprite").set_texture(four_texture)
	if matrix[0][5] == 3:
		get_node("zerofive/Sprite").set_texture(three_texture)
	if matrix[0][5] == 2:
		get_node("zerofive/Sprite").set_texture(two_texture)
	if matrix[0][5] == 0:
		get_node("zerofive/Sprite").set_texture(zero_texture)
		
	if matrix[0][6] == 5:
		get_node("zerosix/Sprite").set_texture(five_texture)
	if matrix[0][6] == 4:
		get_node("zerosix/Sprite").set_texture(four_texture)
	if matrix[0][6] == 3:
		get_node("zerosix/Sprite").set_texture(three_texture)
	if matrix[0][6] == 2:
		get_node("zerosix/Sprite").set_texture(two_texture)
	if matrix[0][6] == 0:
		get_node("zerosix/Sprite").set_texture(zero_texture)
		
	if matrix[0][7] == 5:
		get_node("zeroseven/Sprite").set_texture(five_texture)
	if matrix[0][7] == 4:
		get_node("zeroseven/Sprite").set_texture(four_texture)
	if matrix[0][7] == 3:
		get_node("zeroseven/Sprite").set_texture(three_texture)
	if matrix[0][7] == 2:
		get_node("zeroseven/Sprite").set_texture(two_texture)
	if matrix[0][7] == 0:
		get_node("zeroseven/Sprite").set_texture(zero_texture)
		
	if matrix[1][0] == 5:
		get_node("onezero/Sprite").set_texture(five_texture)
	if matrix[1][0] == 4:
		get_node("onezero/Sprite").set_texture(four_texture)
	if matrix[1][0] == 3:
		get_node("onezero/Sprite").set_texture(three_texture)
	if matrix[1][0] == 2:
		get_node("onezero/Sprite").set_texture(two_texture)
	if matrix[1][0] == 0:
		get_node("onezero/Sprite").set_texture(zero_texture)
		
	if matrix[1][1] == 5:
		get_node("oneone/Sprite").set_texture(five_texture)
	if matrix[1][1] == 4:
		get_node("oneone/Sprite").set_texture(four_texture)
	if matrix[1][1] == 3:
		get_node("oneone/Sprite").set_texture(three_texture)
	if matrix[1][1] == 2:
		get_node("oneone/Sprite").set_texture(two_texture)
	if matrix[1][1] == 0:
		get_node("oneone/Sprite").set_texture(zero_texture)
	
	if matrix[1][2] == 5:
		get_node("onetwo/Sprite").set_texture(five_texture)
	if matrix[1][2] == 4:
		get_node("onetwo/Sprite").set_texture(four_texture)
	if matrix[1][2] == 3:
		get_node("onetwo/Sprite").set_texture(three_texture)
	if matrix[1][2] == 2:
		get_node("onetwo/Sprite").set_texture(two_texture)
	if matrix[1][2] == 0:
		get_node("onetwo/Sprite").set_texture(zero_texture)
		
	if matrix[1][3] == 5:
		get_node("onethree/Sprite").set_texture(five_texture)
	if matrix[1][3] == 4:
		get_node("onethree/Sprite").set_texture(four_texture)
	if matrix[1][3] == 3:
		get_node("onethree/Sprite").set_texture(three_texture)
	if matrix[1][3] == 2:
		get_node("onethree/Sprite").set_texture(two_texture)
	if matrix[1][3] == 0:
		get_node("onethree/Sprite").set_texture(zero_texture)
		
	if matrix[1][4] == 5:
		get_node("onefour/Sprite").set_texture(five_texture)
	if matrix[1][4] == 4:
		get_node("onefour/Sprite").set_texture(four_texture)
	if matrix[1][4] == 3:
		get_node("onefour/Sprite").set_texture(three_texture)
	if matrix[1][4] == 2:
		get_node("onefour/Sprite").set_texture(two_texture)
	if matrix[1][4] == 0:
		get_node("onefour/Sprite").set_texture(zero_texture)
		
	if matrix[1][5] == 5:
		get_node("onefive/Sprite").set_texture(five_texture)
	if matrix[1][5] == 4:
		get_node("onefive/Sprite").set_texture(four_texture)
	if matrix[1][5] == 3:
		get_node("onefive/Sprite").set_texture(three_texture)
	if matrix[1][5] == 2:
		get_node("onefive/Sprite").set_texture(two_texture)
	if matrix[1][5] == 0:
		get_node("onefive/Sprite").set_texture(zero_texture)
		
	if matrix[1][6] == 5:
		get_node("onesix/Sprite").set_texture(five_texture)
	if matrix[1][6] == 4:
		get_node("onesix/Sprite").set_texture(four_texture)
	if matrix[1][6] == 3:
		get_node("onesix/Sprite").set_texture(three_texture)
	if matrix[1][6] == 2:
		get_node("onesix/Sprite").set_texture(two_texture)
	if matrix[1][6] == 0:
		get_node("onesix/Sprite").set_texture(zero_texture)
		
	if matrix[1][7] == 5:
		get_node("oneseven/Sprite").set_texture(five_texture)
	if matrix[1][7] == 4:
		get_node("oneseven/Sprite").set_texture(four_texture)
	if matrix[1][7] == 3:
		get_node("oneseven/Sprite").set_texture(three_texture)
	if matrix[1][7] == 2:
		get_node("oneseven/Sprite").set_texture(two_texture)
	if matrix[1][7] == 0:
		get_node("oneseven/Sprite").set_texture(zero_texture)
		
	if matrix[2][0] == 5:
		get_node("twozero/Sprite").set_texture(five_texture)
	if matrix[2][0] == 4:
		get_node("twozero/Sprite").set_texture(four_texture)
	if matrix[2][0] == 3:
		get_node("twozero/Sprite").set_texture(three_texture)
	if matrix[2][0] == 2:
		get_node("twozero/Sprite").set_texture(two_texture)
	if matrix[2][0] == 0:
		get_node("twozero/Sprite").set_texture(zero_texture)
		
	if matrix[2][1] == 5:
		get_node("twoone/Sprite").set_texture(five_texture)
	if matrix[2][1] == 4:
		get_node("twoone/Sprite").set_texture(four_texture)
	if matrix[2][1] == 3:
		get_node("twoone/Sprite").set_texture(three_texture)
	if matrix[2][1] == 2:
		get_node("twoone/Sprite").set_texture(two_texture)
	if matrix[2][1] == 0:
		get_node("twoone/Sprite").set_texture(zero_texture)
	
	if matrix[2][2] == 5:
		get_node("twotwo/Sprite").set_texture(five_texture)
	if matrix[2][2] == 4:
		get_node("twotwo/Sprite").set_texture(four_texture)
	if matrix[2][2] == 3:
		get_node("twotwo/Sprite").set_texture(three_texture)
	if matrix[2][2] == 2:
		get_node("twotwo/Sprite").set_texture(two_texture)
	if matrix[2][2] == 0:
		get_node("twotwo/Sprite").set_texture(zero_texture)
		
	if matrix[2][3] == 5:
		get_node("twothree/Sprite").set_texture(five_texture)
	if matrix[2][3] == 4:
		get_node("twothree/Sprite").set_texture(four_texture)
	if matrix[2][3] == 3:
		get_node("twothree/Sprite").set_texture(three_texture)
	if matrix[2][3] == 2:
		get_node("twothree/Sprite").set_texture(two_texture)
	if matrix[2][3] == 0:
		get_node("twothree/Sprite").set_texture(zero_texture)
		
	if matrix[2][4] == 5:
		get_node("twofour/Sprite").set_texture(five_texture)
	if matrix[2][4] == 4:
		get_node("twofour/Sprite").set_texture(four_texture)
	if matrix[2][4] == 3:
		get_node("twofour/Sprite").set_texture(three_texture)
	if matrix[2][4] == 2:
		get_node("twofour/Sprite").set_texture(two_texture)
	if matrix[2][4] == 0:
		get_node("twofour/Sprite").set_texture(zero_texture)
		
	if matrix[2][5] == 5:
		get_node("twofive/Sprite").set_texture(five_texture)
	if matrix[2][5] == 4:
		get_node("twofive/Sprite").set_texture(four_texture)
	if matrix[2][5] == 3:
		get_node("twofive/Sprite").set_texture(three_texture)
	if matrix[2][5] == 2:
		get_node("twofive/Sprite").set_texture(two_texture)
	if matrix[2][5] == 0:
		get_node("twofive/Sprite").set_texture(zero_texture)
		
	if matrix[2][6] == 5:
		get_node("twosix/Sprite").set_texture(five_texture)
	if matrix[2][6] == 4:
		get_node("twosix/Sprite").set_texture(four_texture)
	if matrix[2][6] == 3:
		get_node("twosix/Sprite").set_texture(three_texture)
	if matrix[2][6] == 2:
		get_node("twosix/Sprite").set_texture(two_texture)
	if matrix[2][6] == 0:
		get_node("twosix/Sprite").set_texture(zero_texture)
		
	if matrix[2][7] == 5:
		get_node("twoseven/Sprite").set_texture(five_texture)
	if matrix[2][7] == 4:
		get_node("twoseven/Sprite").set_texture(four_texture)
	if matrix[2][7] == 3:
		get_node("twoseven/Sprite").set_texture(three_texture)
	if matrix[2][7] == 2:
		get_node("twoseven/Sprite").set_texture(two_texture)
	if matrix[2][7] == 0:
		get_node("twoseven/Sprite").set_texture(zero_texture)
		
	if matrix[3][0] == 5:
		get_node("threezero/Sprite").set_texture(five_texture)
	if matrix[3][0] == 4:
		get_node("threezero/Sprite").set_texture(four_texture)
	if matrix[3][0] == 3:
		get_node("threezero/Sprite").set_texture(three_texture)
	if matrix[3][0] == 2:
		get_node("threezero/Sprite").set_texture(two_texture)
	if matrix[3][0] == 0:
		get_node("threezero/Sprite").set_texture(zero_texture)
		
	if matrix[3][1] == 5:
		get_node("threeone/Sprite").set_texture(five_texture)
	if matrix[3][1] == 4:
		get_node("threeone/Sprite").set_texture(four_texture)
	if matrix[3][1] == 3:
		get_node("threeone/Sprite").set_texture(three_texture)
	if matrix[3][1] == 2:
		get_node("threeone/Sprite").set_texture(two_texture)
	if matrix[3][1] == 0:
		get_node("threeone/Sprite").set_texture(zero_texture)
	
	if matrix[3][2] == 5:
		get_node("threetwo/Sprite").set_texture(five_texture)
	if matrix[3][2] == 4:
		get_node("threetwo/Sprite").set_texture(four_texture)
	if matrix[3][2] == 3:
		get_node("threetwo/Sprite").set_texture(three_texture)
	if matrix[3][2] == 2:
		get_node("threetwo/Sprite").set_texture(two_texture)
	if matrix[3][2] == 0:
		get_node("threetwo/Sprite").set_texture(zero_texture)
		
	if matrix[3][3] == 5:
		get_node("threethree/Sprite").set_texture(five_texture)
	if matrix[3][3] == 4:
		get_node("threethree/Sprite").set_texture(four_texture)
	if matrix[3][3] == 3:
		get_node("threethree/Sprite").set_texture(three_texture)
	if matrix[3][3] == 2:
		get_node("threethree/Sprite").set_texture(two_texture)
	if matrix[3][3] == 0:
		get_node("threethree/Sprite").set_texture(zero_texture)
		
	if matrix[3][4] == 5:
		get_node("threefour/Sprite").set_texture(five_texture)
	if matrix[3][4] == 4:
		get_node("threefour/Sprite").set_texture(four_texture)
	if matrix[3][4] == 3:
		get_node("threefour/Sprite").set_texture(three_texture)
	if matrix[3][4] == 2:
		get_node("threefour/Sprite").set_texture(two_texture)
	if matrix[3][4] == 0:
		get_node("threefour/Sprite").set_texture(zero_texture)
		
	if matrix[3][5] == 5:
		get_node("threefive/Sprite").set_texture(five_texture)
	if matrix[3][5] == 4:
		get_node("threefive/Sprite").set_texture(four_texture)
	if matrix[3][5] == 3:
		get_node("threefive/Sprite").set_texture(three_texture)
	if matrix[3][5] == 2:
		get_node("threefive/Sprite").set_texture(two_texture)
	if matrix[3][5] == 0:
		get_node("threefive/Sprite").set_texture(zero_texture)
		
	if matrix[3][6] == 5:
		get_node("threesix/Sprite").set_texture(five_texture)
	if matrix[3][6] == 4:
		get_node("threesix/Sprite").set_texture(four_texture)
	if matrix[3][6] == 3:
		get_node("threesix/Sprite").set_texture(three_texture)
	if matrix[3][6] == 2:
		get_node("threesix/Sprite").set_texture(two_texture)
	if matrix[3][6] == 0:
		get_node("threesix/Sprite").set_texture(zero_texture)
		
	if matrix[3][7] == 5:
		get_node("threeseven/Sprite").set_texture(five_texture)
	if matrix[3][7] == 4:
		get_node("threeseven/Sprite").set_texture(four_texture)
	if matrix[3][7] == 3:
		get_node("threeseven/Sprite").set_texture(three_texture)
	if matrix[3][7] == 2:
		get_node("threeseven/Sprite").set_texture(two_texture)
	if matrix[3][7] == 0:
		get_node("threeseven/Sprite").set_texture(zero_texture)
		
func set_about():
	for x in range(0,4):
		matrix.append([])
		matrix[x] = []
		for y in range(0,8):
			matrix[x].append([])
			matrix[x][y] = 0
	for x in range(0,8):
		matrix[0][x] = 5
	for x in range(0,8):
		matrix[1][x] = 4
	for x in range(0,8):
		matrix[2][x] = 3
	for x in range(0,8):
		matrix[3][x] = 2
		
func check_matrix():
	var matrix_empty = true
	for x in range(0,8):
		if matrix[0][x] != 0:
			matrix_empty = false
	for x in range(0,8):
		if matrix[1][x] != 0:
			matrix_empty = false
	for x in range(0,8):
		if matrix[2][x] != 0:
			matrix_empty = false
	for x in range(0,8):
		if matrix[3][x] != 0:
			matrix_empty = false
	if matrix_empty == true:
		for x in range(0,8):
			matrix[0][x] = 5
		for x in range(0,8):
			matrix[1][x] = 4
		for x in range(0,8):
			matrix[2][x] = 3
		for x in range(0,8):
			matrix[3][x] = 2