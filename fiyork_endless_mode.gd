extends Node2D

onready var countdown_timer = get_node("countdown_timer")

var new_volume

var hundreds
var tens
var ones

var customer_choice
var price_choice
var randomness
var rand_arcade_price
var concession_choice
var concessions_desire
var concessions_price_check

onready var pixel = get_node("pixel")

var screen_size
var rock_load
var bullet_load
var ship_pos
var kill_count = 0
var spawn_box  = []
var div = 25
const LEVEL_CAP = 10
const ROCK_SPEED = .1
const BULLET_SPEED = 500

var stopwatch = 0

func _ready():
	get_node("StreamPlayer").set_volume(sound.volume)
	
	
	screen_size = get_viewport_rect().size
	
	# top
	for i in range(0,div):
		spawn_box.append(Vector2((i * (screen_size.x))/div, 0))
	
	# bottom
	for i in range(0, div):
		spawn_box.append(Vector2((i * (screen_size.x))/div, screen_size.y))
	
	# left
	for i in range(0, div):
		spawn_box.append(Vector2(0, (i * (screen_size.y))/div))
	
	# right
	for i in range(0, div) :
		spawn_box.append(Vector2(screen_size.x, (i + (screen_size.y))/div))
	
	rock_load = preload("res://rock.scn")
	bullet_load = preload("res://bullet.tscn")
	ship_pos = get_node("spaceship").get_pos()
	get_node("rock_timer").set_wait_time(4.0)
	set_fixed_process(true)
	set_process(true)

func clear_rocks(z):
	var rock_place = z.get_pos() 
	if ((rock_place.x < -100) or (rock_place.x > screen_size.x) or (rock_place.y < -100) or (rock_place.y > screen_size.y)):
		z.free()

func clear_bullets(a):
	var bullet_place = a.get_pos()
	if ((bullet_place.x < -100) or (bullet_place.x > screen_size.x) or (bullet_place.y < -100) or (bullet_place.y > screen_size.y)):
		a.free()

func level_report():
	kill_count = kill_count + 1
	if (kill_count > 100):
		LEVEL_CAP = 100
		ROCK_SPEED = .9
		get_node("rock_timer").set_wait_time(1.8)
	elif (kill_count > 90):
		LEVEL_CAP = 90
		ROCK_SPEED = .9
		get_node("rock_timer").set_wait_time(1.7)
	elif (kill_count > 80):
		LEVEL_CAP = 80
		ROCK_SPEED = .8
		get_node("rock_timer").set_wait_time(1.8)
	elif (kill_count > 70):
		LEVEL_CAP = 70
		ROCK_SPEED = .8
		get_node("rock_timer").set_wait_time(1.9)
	elif (kill_count > 60):
		LEVEL_CAP = 60
		ROCK_SPEED = .7
		get_node("rock_timer").set_wait_time(2.0)
	elif (kill_count > 50):
		LEVEL_CAP = 50
		ROCK_SPEED = .7
		get_node("rock_timer").set_wait_time(2.1)
	elif (kill_count > 40):
		LEVEL_CAP = 40
		ROCK_SPEED = .6
		get_node("rock_timer").set_wait_time(2.2)
	elif (kill_count > 30):
		LEVEL_CAP = 30
		ROCK_SPEED = .6
		get_node("rock_timer").set_wait_time(2.3)
	elif (kill_count > 20):
		LEVEL_CAP = 20
		ROCK_SPEED = .5
		get_node("rock_timer").set_wait_time(2.4)
	elif (kill_count < 20):
		LEVEL_CAP = 10
		ROCK_SPEED = .5
		get_node("rock_timer").set_wait_time(2.5)

func _on_pop_timer_timeout():
	hide_explosion()
	
func hide_explosion():
	get_node("explosion").hide()

func _fixed_process(delta):
	var bodies = get_tree().get_nodes_in_group("rocks")
	for body in bodies:
		var colliders = body.get_colliding_bodies()
		for collider in colliders:
			if (collider.is_in_group("bullets")):
				perks.success = perks.success + 2
				var explosion_place = body.get_pos()
				get_node("explosion").set_pos(explosion_place)
				get_node("explosion").show()
				body.free()
				level_report()
				get_node("pop_timer").start()

func _process(delta):
	get_node("spaceship").set_pos(Vector2(549.546021, 244.014999))
	hundreds = get_node("success_background/hundreths")
	tens = get_node("success_background/tens")
	ones = get_node("success_background/ones")
	point_display()
	countdown_timer.clear()
	countdown_timer.add_text(str(int(stopwatch)))
	
	
	if (Input.is_action_pressed("pause")):
			get_tree().set_pause(true)
			get_node("pause_popup").show()
	
	if (Input.is_action_pressed("move_left")):
		get_node("spaceship").rotate(6 * delta)
	
	if (Input.is_action_pressed("move_right")):
		get_node("spaceship").rotate(-6 * delta)
	
	if ((Input.is_action_pressed("fire") and (get_node("bullet_timer").get_time_left() == 0))):
		var ship_rot = get_node("spaceship").get_rot() + PI
		var dir_vec = Vector2(sin(ship_rot), cos(ship_rot))
		var distance_from_me = 40
		var spawn_point = get_node("spaceship").get_pos() + (dir_vec * distance_from_me)
		var bullet = bullet_load.instance()
		bullet.set_pos(Vector2(spawn_point))
		add_child(bullet)
		bullet.add_to_group("bullets")
		bullet.apply_impulse(Vector2(0,0), Vector2(dir_vec*BULLET_SPEED))
		get_node("bullet_timer").start()
	var bullets = get_tree().get_nodes_in_group("bullets")
	for a in bullets:
		clear_bullets(a)
	
	while (( get_tree().get_nodes_in_group("rocks").size() < LEVEL_CAP ) and (get_node("rock_timer").get_time_left() == 0)) :
		var rock = rock_load.instance()
		var spawn_dot = spawn_box[randi() % spawn_box.size()]
		rock.set_pos(spawn_dot)
		var rock_pos = rock.get_pos()
		var dir_vec = (ship_pos - rock_pos) + Vector2(rand_range(-102,102), rand_range(-102,102))
		add_child(rock)
		rock.add_to_group("rocks")
		rock.apply_impulse(Vector2(0,0), Vector2(dir_vec*ROCK_SPEED))
		get_node("rock_timer").start()
	var rocks = get_tree().get_nodes_in_group("rocks")
	for z in rocks:
		clear_rocks(z)

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
	get_node("menu").set_hidden(false)
	get_node("menu/sound_slider").set_value(int(sound.volume * 100))

func _on_sound_slider_value_changed( value ):
	new_volume = value / 100
	sound.volume = new_volume
	get_node("StreamPlayer").set_volume(new_volume)

func _on_return_to_game_button_down():
	get_tree().set_pause(false)
	get_node("menu").set_hidden(true)
	


func _on_game_over_button_button_up():
	get_tree().set_pause(false)
	rewards_globals.million_total_minigame_points += perks.success
	if stopwatch > rewards_globals.three_min_str:
		rewards_globals.three_min_str = stopwatch
	get_tree().change_scene("res://endless_mode.tscn")

func _on_return_to_endless_button_down():
	get_node("are_you_sure").show()


func _on_yes_village_button_down():
	get_tree().change_scene("res://endless_mode.tscn")

func _on_no_village_button_down():
	get_node("are_you_sure").hide()
