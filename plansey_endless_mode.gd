extends Node2D

var hundreds
var tens
var ones

var something = false

onready var pixel = get_node("pixel")

onready var countdown_timer = get_node("countdown_timer")
onready var keep_moving_disp = get_node("keep_moving_display")

var numbers
var current_hoz = "d"
var current_vert = "1"
var current_x
var current_y
var number_muncher
var number_muncher_position
var number
var number_clear
var spaces
var goal_choice

var stopwatch = 0

func _ready():
	get_tree().set_pause(true)
	countin()
	load_stuff()
	set_physics_process(true)
	
func _physics_process(delta):
	if get_node("board_check_timer").get_time_left() == 0:
		check_board()
		get_node("board_check_timer").start()
	hundreds = get_node("success_background/hundreths")
	tens = get_node("success_background/tens")
	ones = get_node("success_background/ones")
	point_display()
	countdown_timer.clear()
	countdown_timer.set_text(str(stopwatch))
	keep_moving_disp.clear()
	keep_moving_disp.set_text(str(int(get_node("keep_moving").get_time_left())))
	if ((Input.is_action_pressed("fire")) and (get_node("debounce").get_time_left() == 0)):
		which_number()
		if (goal_choice == "Multiple of 5"):
			if number_clear.is_in_group("number"):
				if (int(number) % 5 == 0):
					perks.success = perks.success + 2
					get_node("keep_moving").start()
				else:
					game_over()
		elif (goal_choice == "Multiple of 3"):
			if number_clear.is_in_group("number"):
				if (int(number) % 3 == 0):
					perks.success = perks.success + 2
					get_node("keep_moving").start()
				else:
					game_over()
		elif (goal_choice == "Multiple of 2"):
			if number_clear.is_in_group("number"):
				if (int(number) % 2 == 0):
					perks.success = perks.success + 2
					get_node("keep_moving").start()
				else:
					game_over()
		elif (goal_choice == "Multiple of 4"):
			if number_clear.is_in_group("number"):
				if (int(number) % 4 == 0):
					perks.success = perks.success + 2
					get_node("keep_moving").start()
				else:
					game_over()
		number_clear.remove_from_group("number")
		number_clear.clear()
		get_node("debounce").start()
	if (get_node("move_timer").get_time_left() == 0):
		if (Input.is_action_pressed("move_left")):
			if (current_vert == "1"):
				pass
			if (current_vert == "2"):
				current_vert = "1"
			if (current_vert == "3"):
				current_vert = "2"
			if (current_vert == "4"):
				current_vert = "3"
			if (current_vert == "5"):
				current_vert = "4"
			if (current_vert == "6"):
				current_vert = "5"
			if (current_vert == "7"):
				current_vert = "6"
		if (Input.is_action_pressed("move_right")):
			if (current_vert == "7"):
				pass
			if (current_vert == "6"):
				current_vert = "7"
			if (current_vert == "5"):
				current_vert = "6"
			if (current_vert == "4"):
				current_vert = "5"
			if (current_vert == "3"):
				current_vert = "4"
			if (current_vert == "2"):
				current_vert = "3"
			if (current_vert == "1"):
				current_vert = "2"
		if (Input.is_action_pressed("move_up")):
			if (current_hoz == "a"):
				pass
			if (current_hoz == "b"):
				current_hoz = "a"
			if (current_hoz == "c"):
				current_hoz = "b"
			if (current_hoz == "d"):
				current_hoz = "c"
		if (Input.is_action_pressed("move_down")):
			if (current_hoz == "d"):
				pass
			if (current_hoz == "c"):
				current_hoz = "d"
			if (current_hoz == "b"):
				current_hoz = "c"
			if (current_hoz == "a"):
				current_hoz = "b"
		set_muncher_pos()
		get_node("move_timer").start()
			
func set_muncher_pos():
	number_muncher = get_node("number_muncher")
	if (current_vert == "1"):
		current_x = get_node("a_one").get_global_position().x
	if (current_vert == "2"):
		current_x = get_node("a_two").get_global_position().x
	if (current_vert == "3"):
		current_x = get_node("a_three").get_global_position().x
	if (current_vert == "4"):
		current_x = get_node("a_four").get_global_position().x
	if (current_vert == "5"):
		current_x = get_node("a_five").get_global_position().x
	if (current_vert == "6"):
		current_x = get_node("a_six").get_global_position().x
	if (current_vert == "7"):
		current_x = get_node("a_seven").get_global_position().x
	if (current_hoz == "a"):
		current_y = get_node("a_one").get_global_position().y
	if (current_hoz == "b"):
		current_y = get_node("b_one").get_global_position().y
	if (current_hoz == "c"):
		current_y = get_node("c_one").get_global_position().y
	if (current_hoz == "d"):
		current_y = get_node("d_one").get_global_position().y
	number_muncher.set_global_position(Vector2(current_x, current_y))
	get_node("move_timer").start()
			
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
			
			
			
func load_stuff():
	get_node("debounce").start()
	get_node("a_one/number").add_to_group("number")
	get_node("b_one/number").add_to_group("number")
	get_node("c_one/number").add_to_group("number")
	get_node("d_one/number").add_to_group("number")
	get_node("a_two/number").add_to_group("number")
	get_node("b_two/number").add_to_group("number")
	get_node("c_two/number").add_to_group("number")
	get_node("d_two/number").add_to_group("number")
	get_node("a_three/number").add_to_group("number")
	get_node("b_three/number").add_to_group("number")
	get_node("c_three/number").add_to_group("number")
	get_node("d_three/number").add_to_group("number")
	get_node("a_four/number").add_to_group("number")
	get_node("b_four/number").add_to_group("number")
	get_node("c_four/number").add_to_group("number")
	get_node("d_four/number").add_to_group("number")
	get_node("a_five/number").add_to_group("number")
	get_node("b_five/number").add_to_group("number")
	get_node("c_five/number").add_to_group("number")
	get_node("d_five/number").add_to_group("number")
	get_node("a_six/number").add_to_group("number")
	get_node("b_six/number").add_to_group("number")
	get_node("c_six/number").add_to_group("number")
	get_node("d_six/number").add_to_group("number")
	get_node("a_seven/number").add_to_group("number")
	get_node("b_seven/number").add_to_group("number")
	get_node("c_seven/number").add_to_group("number")
	get_node("d_seven/number").add_to_group("number")
	var goals = ["Multiple of 5", "Multiple of 2", "Multiple of 3", "Multiple of 4"]
	randomize()
	goal_choice = goals[randi() % goals.size()]
	get_node("goal").clear()
	get_node("goal").add_text(goal_choice)
	numbers = get_tree().get_nodes_in_group("number")
	for x in numbers:
		randomize()
		x.clear()
		x.add_text(str(int(rand_range(1, 50))))
		
func which_number():
	if (current_vert == "1") and (current_hoz == "a"):
		number = get_node("a_one/number").get_text()
		number_clear = get_node("a_one/number")
	if (current_vert == "2") and (current_hoz == "a"):
		number = get_node("a_two/number").get_text()
		number_clear = get_node("a_two/number")
	if (current_vert == "3") and (current_hoz == "a"):
		number = get_node("a_three/number").get_text()
		number_clear = get_node("a_three/number")
	if (current_vert == "4") and (current_hoz == "a"):
		number = get_node("a_four/number").get_text()
		number_clear = get_node("a_four/number")
	if (current_vert == "5") and (current_hoz == "a"):
		number = get_node("a_five/number").get_text()
		number_clear = get_node("a_five/number")
	if (current_vert == "6") and (current_hoz == "a"):
		number = get_node("a_six/number").get_text()
		number_clear = get_node("a_six/number")
	if (current_vert == "7") and (current_hoz == "a"):
		number = get_node("a_seven/number").get_text()
		number_clear = get_node("a_seven/number")
	if (current_vert == "1") and (current_hoz == "b"):
		number = get_node("b_one/number").get_text()
		number_clear = get_node("b_one/number")
	if (current_vert == "2") and (current_hoz == "b"):
		number = get_node("b_two/number").get_text()
		number_clear = get_node("b_two/number")
	if (current_vert == "3") and (current_hoz == "b"):
		number = get_node("b_three/number").get_text()
		number_clear = get_node("b_three/number")
	if (current_vert == "4") and (current_hoz == "b"):
		number = get_node("b_four/number").get_text()
		number_clear = get_node("b_four/number")
	if (current_vert == "5") and (current_hoz == "b"):
		number = get_node("b_five/number").get_text()
		number_clear = get_node("b_five/number")
	if (current_vert == "6") and (current_hoz == "b"):
		number = get_node("b_six/number").get_text()
		number_clear = get_node("b_six/number")
	if (current_vert == "7") and (current_hoz == "b"):
		number = get_node("b_seven/number").get_text()
		number_clear = get_node("b_seven/number")
	if (current_vert == "1") and (current_hoz == "c"):
		number = get_node("c_one/number").get_text()
		number_clear = get_node("c_one/number")
	if (current_vert == "2") and (current_hoz == "c"):
		number = get_node("c_two/number").get_text()
		number_clear = get_node("c_two/number")
	if (current_vert == "3") and (current_hoz == "c"):
		number = get_node("c_three/number").get_text()
		number_clear = get_node("c_three/number")
	if (current_vert == "4") and (current_hoz == "c"):
		number = get_node("c_four/number").get_text()
		number_clear = get_node("c_four/number")
	if (current_vert == "5") and (current_hoz == "c"):
		number = get_node("c_five/number").get_text()
		number_clear = get_node("c_five/number")
	if (current_vert == "6") and (current_hoz == "c"):
		number = get_node("c_six/number").get_text()
		number_clear = get_node("c_six/number")
	if (current_vert == "7") and (current_hoz == "c"):
		number = get_node("c_seven/number").get_text()
		number_clear = get_node("c_seven/number")
	if (current_vert == "1") and (current_hoz == "d"):
		number = get_node("d_one/number").get_text()
		number_clear = get_node("d_one/number")
	if (current_vert == "2") and (current_hoz == "d"):
		number = get_node("d_two/number").get_text()
		number_clear = get_node("d_two/number")
	if (current_vert == "3") and (current_hoz == "d"):
		number = get_node("d_three/number").get_text()
		number_clear = get_node("d_three/number")
	if (current_vert == "4") and (current_hoz == "d"):
		number = get_node("d_four/number").get_text()
		number_clear = get_node("d_four/number")
	if (current_vert == "5") and (current_hoz == "d"):
		number = get_node("d_five/number").get_text()
		number_clear = get_node("d_five/number")
	if (current_vert == "6") and (current_hoz == "d"):
		number = get_node("d_six/number").get_text()
		number_clear = get_node("d_six/number")
	if (current_vert == "7") and (current_hoz == "d"):
		number = get_node("d_seven/number").get_text()
		number_clear = get_node("d_seven/number")
		
func check_board():
	var on_board = get_tree().get_nodes_in_group("number")
	something = false
	for x in on_board:
		if ((goal_choice == "Multiple of 5") and (int(x.get_text()) % 5 == 0)):
			something = true
		elif ((goal_choice == "Multiple of 2") and (int(x.get_text()) % 2 == 0)):
			something = true
		elif ((goal_choice == "Multiple of 3") and (int(x.get_text()) % 3 == 0)):
			something = true
		elif ((goal_choice == "Multiple of 4") and (int(x.get_text()) % 4 == 0)):
			something = true
	if (something == false):
		load_stuff()

func _on_day_timer_timeout():
	stopwatch += 1


func _on_pixel_button_button_down():
	get_node("menu/sound_slider").set_value(int(sound.volume + 50))
	get_tree().set_pause(true)
	get_node("menu").show()

func _on_sound_slider_value_changed( value ):
	AudioServer.set_bus_volume_db(0,value - 50)
	
func _on_return_to_game_button_down():
	get_tree().set_pause(false)
	get_node("menu").hide()


func _on_return_to_village_button_down():
	get_node("are_you_sure").show()


func _on_yes_village_button_down():
	perks.success = 0
	get_tree().set_pause(false)
	rewards_globals.million_total_minigame_points = perks.success + int(rewards_globals.million_total_minigame_points)
	if int(stopwatch) > int(rewards_globals.three_min_math_mast):
		rewards_globals.three_min_math_mast = stopwatch
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
		
func game_over():
	var game_over = get_tree().get_nodes_in_group("game_over")
	for x in game_over:
		x.show()
		get_tree().set_pause(true)



func _on_game_over_button_button_down():
	perks.success = 0
	get_tree().set_pause(false)
	rewards_globals.million_total_minigame_points = perks.success + int(rewards_globals.million_total_minigame_points)
	if int(stopwatch) > int(rewards_globals.three_min_math_mast):
		rewards_globals.three_min_math_mast = stopwatch
	get_tree().change_scene("res://endless_mode.tscn")


func _on_keep_moving_timeout():
	var game_over = get_tree().get_nodes_in_group("game_over")
	for x in game_over:
		x.show()
		get_tree().set_pause(true)