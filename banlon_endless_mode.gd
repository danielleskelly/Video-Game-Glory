extends Node2D

onready var countdown_timer = get_node("countdown_timer")

var new_volume

var hundreds
var tens
var ones

var car_mover

var customer_choice
var price_choice
var randomness
var rand_arcade_price
var concession_choice
var concessions_desire
var concessions_price_check

onready var pixel = get_node("pixel")

var direction
var current_pos

var frog_colliders
var cars

var stopwatch = 0

func _ready():
	get_tree().set_pause(true)
	countin()
	get_node("StreamPlayer").set_volume_db(sound.volume)
	current_pos = "a"
	get_node("frog").set_global_position(Vector2(953, 565.073608))
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
	var frog_pos = get_node("frog").get_global_position()
	if current_pos == "a":
		get_node("frog").set_global_position(Vector2(frog_pos.x, 565.073608))
	elif current_pos == "b":
		get_node("frog").set_global_position(Vector2(frog_pos.x, 436.073127))
	elif current_pos == "c":
		get_node("frog").set_global_position(Vector2(frog_pos.x, 287.072815))
	elif current_pos == "d":
		get_node("frog").set_global_position(Vector2(frog_pos.x, 138.073074))
	elif current_pos == "e":
		get_node("frog").set_global_position(Vector2(frog_pos.x, 37.071869))
	
	car_mover = get_tree().get_nodes_in_group("car")
	for x in car_mover:
		if x.is_in_group("road_one"):
			x.set_unit_offset(get_node("Path2D/road_one").car_loc)
			get_node("Path2D/road_one").car_loc += get_node("Path2D/road_one").car_speed
		elif x.is_in_group("road_two"):
			x.set_unit_offset(get_node("Path2D2/road_two").car_loc)
			get_node("Path2D2/road_two").car_loc += get_node("Path2D2/road_two").car_speed
		elif x.is_in_group("road_three"):
			x.set_unit_offset(get_node("Path2D3/road_three").car_loc)
			get_node("Path2D3/road_three").car_loc += get_node("Path2D3/road_three").car_speed
	frog_colliders = get_node("frog").get_colliding_bodies()
	for x in frog_colliders:
		var game_over = get_tree().get_nodes_in_group("game_over")
		for x in game_over:
			x.show()
			get_tree().set_pause(true)
	if (Input.is_action_pressed("move_left")):
		direction = Vector2(-1.0, 0.0)
		frog_pos += direction * 250 * delta
		get_node("frog").set_global_position(frog_pos)
	if (Input.is_action_pressed("move_right")):
		direction = Vector2(1.0, 0.0)
		frog_pos += direction * 250 * delta
		get_node("frog").set_global_position(frog_pos)
	if (Input.is_action_pressed("move_up")) and (get_node("jump_timer").get_time_left() == 0):
		if (current_pos == "a"):
			current_pos = "b"
		elif (current_pos == "b"):
			current_pos = "c"
		elif (current_pos == "c"):
			current_pos = "d"
		elif (current_pos == "d"):
			current_pos = "e"
			get_node("notification").show()
			get_node("note_timer").start()
		get_node("jump_timer").start()
	if (Input.is_action_pressed("move_down")) and (get_node("jump_timer").get_time_left() == 0):
		if (current_pos == "e"):
			current_pos = "d"
		elif (current_pos == "d"):
			current_pos = "c"
		elif (current_pos == "c"):
			current_pos = "b"
		elif (current_pos == "b"):
			current_pos = "a"
		get_node("jump_timer").start()


func _on_note_timer_timeout():
	get_node("notification").hide()
	perks.success = perks.success + 10
	reset_frog()
	
func reset_frog():
	current_pos = "a"
	get_node("frog").rotation = 0
	
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

func _on_return_to_village_button_down():
	get_node("are_you_sure").show()


func _on_yes_village_button_down():
	get_tree().paused = false
	get_tree().change_scene("res://endless_mode.tscn")
	

func _on_no_village_button_down():
	get_node("are_you_sure").hide()
	
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

func _on_game_over_button_button_down():
	get_tree().set_pause(false)
	rewards_globals.million_total_minigame_points += perks.success
	if stopwatch > rewards_globals.three_min_jad:
		rewards_globals.three_min_jad = stopwatch
	get_tree().change_scene("res://endless_mode.tscn")
