extends Node2D

onready var countdown_timer = get_node("countdown_timer")

var hundreds
var tens
var ones

var sam_updown = 9
var sam_leftright = 11
var bert_updown = 0
var bert_leftright = 0

var sam_pos
var bert_pos

signal sam_moved

onready var pixel = get_node("pixel")

var stopwatch = 0

func _ready():
	sam_pos = str(sam_updown) + "-" + str(sam_leftright)
	bert_pos = str(bert_updown) + "-" + str(bert_leftright)
	get_tree().set_pause(true)
	countin()
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
		get_node("both_timer").start()
		if perks.success > 10:
			perks.success -= 10
	
	var sams_block = get_node(sam_pos)
	if sams_block.brick_num == 0:
		sams_block.brick_num = 1
		if perks.success > 2:
			perks.success -= 2
	elif sams_block.brick_num == 1:
		pass
	elif sams_block.brick_num == 2:
		sams_block.brick_num = 1
		
		
	var berts_block = get_node(bert_pos)
	if berts_block.brick_num == 0:
		berts_block.brick_num = 2
		perks.success += 1
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
	if int(stopwatch) > int(rewards_globals.three_min_jad):
		rewards_globals.three_min_jad = stopwatch
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
	perks.success = 0
	get_tree().set_pause(false)
	rewards_globals.million_total_minigame_points = perks.success + int(rewards_globals.million_total_minigame_points)
	if int(stopwatch) > int(rewards_globals.three_min_fso):
		rewards_globals.three_min_fso = stopwatch
	get_tree().change_scene("res://endless_mode.tscn")
