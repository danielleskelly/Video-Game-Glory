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

var direction
var current_pos

var frog_colliders
var cars

var stopwatch = 0

func _ready():
	get_node("StreamPlayer").set_volume(sound.volume)
	current_pos = "a"
	set_process(true)

func _process(delta):
	hundreds = get_node("success_background/hundreths")
	tens = get_node("success_background/tens")
	ones = get_node("success_background/ones")
	point_display()
	countdown_timer.clear()
	countdown_timer.add_text(str(int(stopwatch)))
	frog_colliders = get_node("frog").get_colliding_bodies()
	for x in frog_colliders:
		if (x.is_in_group("car") == true):
			var game_over = get_tree().get_nodes_in_group("game_over")
			for x in game_over:
				x.show()
				get_tree().set_pause(true)
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
	perks.success = perks.success + 10
	reset_frog()
	
func reset_frog():
	if perks.success > 5:
		perks.success = perks.success - 5
	get_node("frog").set_pos(Vector2(27.389816, 27.931084))
	current_pos = "a"
	
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

func _on_return_to_village_button_down():
	get_node("are_you_sure").show()

func _on_game_over_button_button_down():
	get_tree().set_pause(false)
	rewards_globals.million_total_minigame_points += perks.success
	if stopwatch > rewards_globals.three_min_jad:
		rewards_globals.three_min_jad = stopwatch
	get_tree().change_scene("res://endless_mode.tscn")


func _on_yes_village_button_down():
	get_tree().change_scene("res://endless_mode.tscn")
	

func _on_no_village_button_down():
	get_node("are_you_sure").hide()
