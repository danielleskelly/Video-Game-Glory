extends Node2D

onready var countdown_timer = get_node("countdown_timer")

var new_volume

var hundreds
var tens
var ones

onready var pixel = get_node("pixel")

var move_left = true
var move_right = true

var matrix = []
var paddle
var ball

var ball_where
var ball_dir = Vector2(0.5, 1.0)
var ball_speed = 350

var stopwatch = 0

func _ready():
	paddle = get_node("paddle")
	ball = get_node("ball")
	

	get_tree().set_pause(true)
	countin()
	get_node("StreamPlayer").set_volume_db(sound.volume)
	set_process(true)
	set_physics_process(true)
	
func _process(delta):
	hundreds = get_node("success_background/hundreths")
	tens = get_node("success_background/tens")
	ones = get_node("success_background/ones")
	point_display()
	countdown_timer.clear()
	countdown_timer.add_text(str(stopwatch))
	
func _physics_process(delta):
	get_node("paddle").rotation = 0
	ball_where = ball.get_global_position()
	ball_where += delta * ball_dir * ball_speed
	ball.set_global_position(ball_where)
	var ball_colliders = ball.get_colliding_bodies()
	for x in ball_colliders:
		if x.is_in_group("buffer") == true:
			ball.set_global_position(Vector2(-1.72338, -8.34917))
		elif x.get_name() == "paddle" and get_node("paddle_timer").get_time_left() == 0:
			get_node("paddle_timer").start()
			ball_dir.y = -ball_dir.y
			ball_dir.x = rand_range(-1,1)
		elif x.is_in_group("left_wall") == true or x.is_in_group("right_wall") == true:
			if get_node("wall_timer").get_time_left() == 0:
				get_node("wall_timer").start()
				ball_dir.x = -ball_dir.x
		elif x.is_in_group("floor") == true and get_node("bounce_timer").get_time_left() == 0:
			var game_over = get_tree().get_nodes_in_group("game_over")
			for x in game_over:
				x.show()
				get_tree().set_pause(true)
		elif x.is_in_group("roof") == true and get_node("bounce_timer").get_time_left() == 0:
			ball_dir.y = -ball_dir.y
			get_node("bounce_timer").start()
		elif x.is_in_group("brick"):
			var node = x.get_name()
			if x.get_child(2).get_time_left() == 0:
				if get_node(node).brick_num > 0:
					get_node(node).brick_num -= 1
					x.get_child(2).start()
					ball_dir.y = -ball_dir.y
				if get_node(node).brick_num == 1:
					get_node(node).brick_num -= 1
					x.get_child(2).start()
					ball_dir.y = -ball_dir.y
					perks.success += 2
				
	
	
	var paddle_coll = get_node("paddle").get_colliding_bodies()
	move_left = true
	move_right = true
	for x in paddle_coll:
		if x.is_in_group("left_wall"):
			move_left = false
		elif x.is_in_group("right_wall"):
			move_right = false
	if Input.is_action_pressed("move_left") and move_left == true:
		var where = paddle.get_global_position()
		var direction = Vector2(-1.0, 0.0)
		var speed = 500
		where += delta * direction * speed
		paddle.set_global_position(where)
	if Input.is_action_pressed("move_right") and move_right == true:
		var where = paddle.get_global_position()
		var direction = Vector2(1.0, 0.0)
		var speed = 500
		where += delta * direction * speed
		paddle.set_global_position(where)


func point_display():
		var one_ones_digit = ((perks.success)) % 10
		var one_tens_digit = ((perks.success) / 10) % 10
		var one_hunds_digit = ((perks.success) / 100) % 10
		hundreds.clear()
		hundreds.add_text(str(one_hunds_digit))
		tens.clear()
		tens.add_text(str(one_tens_digit))
		ones.clear()
		ones.add_text(str(one_ones_digit))

func _on_day_timer_timeout():
	stopwatch += 1

func _on_pixel_button_button_down():
	get_tree().set_pause(true)
	get_node("menu").show()
	get_node("menu/sound_slider").set_value(int(sound.volume * 100))

func _on_sound_slider_value_changed( value ):
	new_volume = value / 100
	sound.volume = new_volume
	get_node("StreamPlayer").set_volume_db(new_volume)

func _on_return_to_game_button_down():
	get_tree().set_pause(false)
	get_node("menu").hide()
	
func countin():
	get_node("in").show()
	get_node("in/count_timer").start()

func _on_count_timer_timeout():
	if get_node("in/in_number").get_text() == "3":
		get_node("in/in_number").clear()
		get_node("in/in_number").set_text("2")
	elif get_node("in/in_number").get_text() == "2":
		get_node("in/in_number").clear()
		get_node("in/in_number").set_text("1")
	elif get_node("in/in_number").get_text() == "1":
		get_node("in").hide()
		get_node("in/count_timer").stop()
		get_tree().set_pause(false)

func _on_game_over_button_button_up():
	get_tree().set_pause(false)
	rewards_globals.million_total_minigame_points += perks.success
	if stopwatch > rewards_globals.three_min_twfb:
		rewards_globals.three_min_twfb = stopwatch
	get_tree().change_scene("res://endless_mode.tscn")


func _on_return_to_village_button_down():
	get_node("are_you_sure").show()


func _on_yes_village_button_down():
	get_tree().paused = false
	get_tree().change_scene("res://endless_mode.tscn")
	

func _on_no_village_button_down():
	get_node("are_you_sure").hide()
