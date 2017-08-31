extends Node2D

var hundreds
var tens
var ones

var new_volume

onready var pixel = get_node("pixel")

onready var countdown_timer = get_node("countdown_timer")

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

func _ready():
	pixel_small()
	get_node("StreamPlayer").set_volume(sound.volume)
	load_stuff()
	set_process(true)
	
func _process(delta):
	check_board()
	hundreds = get_node("success_background/hundreths")
	tens = get_node("success_background/tens")
	ones = get_node("success_background/ones")
	point_display()
	countdown_timer.clear()
	countdown_timer.add_text(str(int(get_node("day_timer").get_time_left())))
	if ((Input.is_action_pressed("fire")) and (get_node("debounce").get_time_left() == 0)):
		which_number()
		if (goal_choice == "Multiple of 5"):
			if (int(number) % 5 == 0):
				perks.success = perks.success + 1
		else:
			if (perks.success > 5):
				perks.success = perks.success - 5
		if (goal_choice == "Multiple of 3"):
			if (int(number) % 3 == 0):
				perks.success = perks.success + 1
			else:
				if (perks.success > 5):
					perks.success = perks.success - 5
		if (goal_choice == "Multiple of 2"):
			if (int(number) % 2 == 0):
				perks.success = perks.success + 1
			else:
				if (perks.success > 5):
					perks.success = perks.success - 5
		if (goal_choice == "Multiple of 7"):
			if (int(number) % 7 == 0):
				perks.success = perks.success + 1
			else:
				if (perks.success > 5):
					perks.success = perks.success - 5
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
			
func set_muncher_pos():
	number_muncher = get_node("number_muncher")
	if (current_vert == "1"):
		current_x = -27.341173
	if (current_vert == "2"):
		current_x = -18.246117
	if (current_vert == "3"):
		current_x = -9.088764
	if (current_vert == "4"):
		current_x = -0.056002
	if (current_vert == "5"):
		current_x = 8.789875
	if (current_vert == "6"):
		current_x = 17.822636
	if (current_vert == "7"):
		current_x = 27.16687
	if (current_hoz == "a"):
		current_y = -25.579504
	if (current_hoz == "b"):
		current_y = -12.052235
	if (current_hoz == "c"):
		current_y = 1.34742
	if (current_hoz == "d"):
		current_y = 15.002304
	number_muncher.set_pos(Vector2(current_x, current_y))
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
	var goals = ["Multiple of 5", "Multiple of 2", "Multiple of 3", "Multiple of 7"]
	randomize()
	goal_choice = goals[randi() % goals.size()]
	get_node("goal").clear()
	get_node("goal").add_text(goal_choice)
	numbers = get_tree().get_nodes_in_group("number")
	for x in numbers:
		randomize()
		x.clear()
		x.add_text(str(int(rand_range(0, 50))))
		
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
	var something = false
	for x in on_board:
		if ((goal_choice == "Multiple of 5") and (int(x.get_text()) % 5 == 0)):
			something = true
		elif ((goal_choice == "Multiple of 2") and (int(x.get_text()) % 2 == 0)):
			something = true
		elif ((goal_choice == "Multiple of 3") and (int(x.get_text()) % 3 == 0)):
			something = true
		elif ((goal_choice == "Multiple of 7") and (int(x.get_text()) % 7 == 0)):
			something = true
		else:
			something = false
	if (something == false):
		load_stuff()

func _on_day_timer_timeout():
	perk_check()
	get_tree().change_scene("res://strategy.tscn")
	

func perk_check():
	if (towns.town_select == "plansey"):
		if (int(perks.perk_goal) <= int(perks.success)):
			if (perks.perk_num == 1):
				supplies.plansey_energy_count = supplies.plansey_energy_count + 5
				supplies.plansey_nachos_count = supplies.plansey_nachos_count + 5
			elif (perks.perk_num == 2):
				customer_math.plansey_player_marketshare = int(customer_math.plansey_player_marketshare) + .1
			elif (perks.perk_num == 3):
				money.plansey_balance = money.plansey_balance + 50
			elif (perks.perk_num == 4):
				supplies.plansey_energy_count = supplies.plansey_energy_count + 10
				supplies.plansey_nachos_count = supplies.plansey_nachos_count + 10
			elif (perks.perk_num == 5):
				supplies.plansey_energy_count = supplies.plansey_energy_count + 20
				supplies.plansey_nachos_count = supplies.plansey_nachos_count + 20
			elif (perks.perk_num == 6):
				money.plansey_balance = money.plansey_balance + 25
				
				
func pixel_small():
	pixel.set_pos(Vector2(0, 0))
	pixel.set_scale(Vector2(1, 1))
	
func pixel_big():
	pixel.set_pos(Vector2(98.612053, -132.878601))
	pixel.set_scale(Vector2(4.201189, 5.211131))

func _on_pixel_button_button_down():
	pixel_big()
	get_tree().set_pause(true)
	get_node("menu").set_hidden(false)
	get_node("menu/sound_slider").set_value(int(sound.volume * 100))
	

func _on_sound_slider_value_changed( value ):
	new_volume = value / 100
	sound.volume = new_volume
	get_node("StreamPlayer").set_volume(new_volume)

func _on_return_to_game_button_down():
	pixel_small()
	get_tree().set_pause(false)
	get_node("menu").set_hidden(true)


func _on_return_to_village_button_down():
	get_node("menu").set_hidden(true)
	get_node("are_you_sure").set_hidden(false)


func _on_yes_village_button_down():
	get_node("menu").set_hidden(true)
	perk_check()
	get_tree().set_pause(false)
	get_tree().change_scene("res://strategy.tscn")


func _on_no_village_button_down():
	get_node("are_you_sure").set_hidden(true)
	get_node("menu").set_hidden(false)


func _on_return_to_main_button_down():
	get_node("menu").set_hidden(true)
	get_node("are_you_sure_2").set_hidden(false)
	
	
func _on_yes_main_button_down():
	get_tree().set_pause(false)
	get_tree().change_scene("res://player_selection.tscn")


func _on_no_main_button_down():
	get_node("are_you_sure_2").set_hidden(true)
	get_node("menu").set_hidden(false)
