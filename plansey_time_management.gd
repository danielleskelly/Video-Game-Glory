extends Node2D

var hundreds
var tens
var ones

onready var countdown_timer = get_node("countdown_timer")

var numbers
var current_hoz = "d"
var current_vert = "1"
var current_x
var current_y
var number_muncher
var number_muncher_colliders
var number
var spaces
var goal_choice

func _ready():
	load_stuff()
	set_process(true)
	
func _process(delta):
	hundreds = get_node("success_background/hundreths")
	tens = get_node("success_background/tens")
	ones = get_node("success_background/ones")
	point_display()
	countdown_timer.clear()
	countdown_timer.add_text(str(int(get_node("day_timer").get_time_left())))
	if ((Input.is_action_pressed("fire")) and (get_node("debounce").get_time_left() == 0)):
		number_muncher_colliders = get_node("number_muncher").get_child(0).get_colliding_bodies()
		for x in number_muncher_colliders:
			number = x.get_child(2).get_text()
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
			x.get_child(2).clear()
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
	var goals = ["Multiple of 5", "Multiple of 2", "Multiple of 3", "Multiple of 7"]
	randomize()
	goal_choice = goals[randi() % goals.size()]
	get_node("goal").clear()
	get_node("goal").add_text(goal_choice)
	numbers = get_tree().get_nodes_in_group("number")
	for x in numbers:
		randomize()
		x.clear()
		x.add_text(str(int(rand_range(0, 100))))