extends Node2D

onready var countdown_timer = get_node("countdown_timer")

var new_volume

var hundreds
var tens
var ones
var sam_hundreds
var sam_tens = 0
var sam_ones = 0
var sam_points = 0

var sam_updown = 9
var sam_leftright = 11
var bert_updown = 0
var bert_leftright = 0

var sam_pos
var bert_pos

signal sam_moved

var stopwatch = 0

onready var pixel = get_node("pixel")


func _ready():
	sam_pos = str(sam_updown) + "-" + str(sam_leftright)
	bert_pos = str(bert_updown) + "-" + str(bert_leftright)
	
	get_tree().set_pause(true)
	countin()
	get_node("StreamPlayer").set_volume_db(sound.volume)
	set_process(true)
	set_physics_process(true)
	
func _process(delta):
	hundreds = get_node("success_background/hundreths")
	tens = get_node("success_background/tens")
	ones = get_node("success_background/ones")
	sam_hundreds = get_node("sam_points/hundreths")
	sam_tens = get_node("sam_points/tens")
	sam_ones = get_node("sam_points/ones")
	point_display()
	countdown_timer.clear()
	countdown_timer.add_text(str(stopwatch))
	
func _physics_process(delta):
	sam_pos = str(sam_updown) + "-" + str(sam_leftright)
	bert_pos = str(bert_updown) + "-" + str(bert_leftright)
	get_node("q-bert").set_global_position(get_node(bert_pos).get_global_position())
	get_node("sam").set_global_position(get_node(sam_pos).get_global_position())
	get_node("q-bert").rotation = 0
	get_node("sam").rotation = 0
	if Input.is_action_pressed("move_up"):
		if get_node("up_timer").get_time_left() == 0:
			if bert_updown > 0:
				bert_updown -= 1
				get_node("up_timer").start()
			else:
				pass
	if Input.is_action_pressed("move_down"):
		if get_node("down_timer").get_time_left() == 0:
			if bert_updown < 9:
				bert_updown += 1
				get_node("down_timer").start()
			else:
				pass
	if Input.is_action_pressed("move_left"):
		if get_node("left_timer").get_time_left() == 0:
			if bert_leftright > 0:
				bert_leftright -= 1
				get_node("left_timer").start()
			else:
				pass
	if Input.is_action_pressed("move_right"):
		if get_node("right_timer").get_time_left() == 0:
			if bert_leftright < 11:
				bert_leftright += 1
				get_node("right_timer").start()
			else:
				pass


	if sam_pos == bert_pos and get_node("both_timer").get_time_left() == 0:
		var game_over = get_tree().get_nodes_in_group("game_over")
		for x in game_over:
			x.show()
			get_tree().set_pause(true)
	
	var sams_block = get_node(sam_pos)
	if sams_block.brick_num == 0:
		sams_block.brick_num = 1
		sam_points += 2
		if perks.success > 2:
			perks.success -= 2
	elif sams_block.brick_num == 1:
		pass
	elif sams_block.brick_num == 2:
		sams_block.brick_num = 1
		sam_points += 1
		if perks.success > 2:
			perks.success -= 1
		
		
	var berts_block = get_node(bert_pos)
	if berts_block.brick_num == 0:
		berts_block.brick_num = 2
		perks.success += 2
	elif berts_block.brick_num == 1:
		berts_block.brick_num = 2
	elif berts_block.brick_num == 2:
		pass
		


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
	var sam_one_ones_digit = ((sam_points)) % 10
	var sam_one_tens_digit = ((sam_points) / 10) % 10
	var sam_one_hunds_digit = ((sam_points) / 100) % 10
	sam_hundreds.clear()
	sam_hundreds.add_text(str(sam_one_hunds_digit))
	sam_tens.clear()
	sam_tens.add_text(str(sam_one_tens_digit))
	sam_ones.clear()
	sam_ones.add_text(str(sam_one_ones_digit))


func _on_day_timer_timeout():
	stopwatch += 1

func _on_pixel_button_button_down():
	get_tree().paused = true
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
		get_tree().paused = false

func _on_sam_timer_timeout():
	randomize()
	var dir_list = ["left", "right", "up", "down"]
	var dir = dir_list[randi() % dir_list.size()]
	if dir == "up":
		if sam_updown > 0:
			sam_updown -= 1
		else:
			pass
	if dir == "down":
		if sam_updown < 9:
			sam_updown += 1
		else:
			pass
	if dir == "left":
		if sam_leftright > 0:
			sam_leftright -= 1
		else:
			pass
	if dir == "right":
		if sam_leftright < 11:
			sam_leftright += 1
			get_node("right_timer").start()
		else:
			pass

func _on_game_over_button_button_down():
	get_tree().set_pause(false)
	rewards_globals.million_total_minigame_points += perks.success
	if stopwatch > rewards_globals.three_min_yed:
		rewards_globals.three_min_yed = stopwatch
	get_tree().change_scene("res://endless_mode.tscn")
	
	
func _on_yes_village_button_down():
	get_tree().paused = false
	get_tree().change_scene("res://endless_mode.tscn")
	

func _on_no_village_button_down():
	get_tree().paused = true
	get_node("are_you_sure").hide()
