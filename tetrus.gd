extends Node2D

onready var countdown_timer = get_node("countdown_timer")

var hundreds
var tens
var ones

var new_volume

var customer_choice
var price_choice
var randomness
var rand_arcade_price
var concession_choice
var concessions_desire
var concessions_price_check

onready var pixel = get_node("pixel")

var current_piece

var left_timer
var right_timer

var block_daddy
var block_a
var block_b
var block_c
var block_d
var a_x
var a_y
var b_x
var b_y
var c_x
var c_y
var d_x
var d_y
var block_load

var tetris_array

var rotate = 1

func _ready():
	pixel_small()
	get_node("StreamPlayer").set_volume(sound.volume)
	block_load = preload("res://tetris_one.tscn")
	block_daddy = get_node("blocks")
	left_timer = get_node("left_timer")
	right_timer = get_node("right_timer")
	for x in range(0,10):
		tetris_lines.matrix.append([])
		tetris_lines.matrix[x] = []
		for y in range(0,15):
			tetris_lines.matrix[x].append([])
			tetris_lines.matrix[x][y] = 0
	random_piece()
	set_fixed_process(true)
	set_process(true)
	
func _process(delta):
	tetris_lines.line_check()
	hundreds = get_node("success_background/hundreths")
	tens = get_node("success_background/tens")
	ones = get_node("success_background/ones")
	point_display()
	countdown_timer.clear()
	countdown_timer.add_text(str(int(get_node("day_timer").get_time_left())))
	
func _fixed_process(delta):
	if (Input.is_action_pressed("fire")) and get_node("rotate_timer").get_time_left() == 0:
		if current_piece == "threesome":
			if rotate == 1:
				if ((tetris_lines.current_loc_hoz_a - 1) < 1) or ((tetris_lines.current_loc_vert_a + 1) > 10) or ((tetris_lines.current_loc_hoz_b + 1) > 15) or ((tetris_lines.current_loc_vert_b + 1) > 10) or ((tetris_lines.current_loc_hoz_d - 1) < 1) or ((tetris_lines.current_loc_vert_d - 1) < 1):
					pass
				else:
					tetris_lines.current_loc_hoz_a = tetris_lines.current_loc_hoz_a - 1
					tetris_lines.current_loc_vert_a = tetris_lines.current_loc_vert_a + 1
					tetris_lines.current_loc_hoz_b = tetris_lines.current_loc_hoz_b + 1
					tetris_lines.current_loc_vert_b = tetris_lines.current_loc_vert_b + 1
					tetris_lines.current_loc_hoz_d = tetris_lines.current_loc_hoz_d - 1
					tetris_lines.current_loc_vert_d = tetris_lines.current_loc_vert_d - 1
					rotate = 2
			elif rotate == 2:
				if ((tetris_lines.current_loc_hoz_a + 1) > 15) or ((tetris_lines.current_loc_vert_a + 1) > 10) or ((tetris_lines.current_loc_hoz_b + 1) > 15) or ((tetris_lines.current_loc_vert_b - 1) < 1) or ((tetris_lines.current_loc_hoz_d - 1) < 1) or ((tetris_lines.current_loc_vert_d + 1) > 10):
					pass
				else:
					tetris_lines.current_loc_hoz_a = tetris_lines.current_loc_hoz_a + 1
					tetris_lines.current_loc_vert_a = tetris_lines.current_loc_vert_a + 1
					tetris_lines.current_loc_hoz_b = tetris_lines.current_loc_hoz_b + 1
					tetris_lines.current_loc_vert_b = tetris_lines.current_loc_vert_b - 1
					tetris_lines.current_loc_hoz_d = tetris_lines.current_loc_hoz_d - 1
					tetris_lines.current_loc_vert_d = tetris_lines.current_loc_vert_d + 1
					rotate = 3
			elif rotate == 3:
				if ((tetris_lines.current_loc_hoz_a + 1) > 15) or ((tetris_lines.current_loc_vert_a - 1) < 1) or ((tetris_lines.current_loc_hoz_b - 1) < 1) or ((tetris_lines.current_loc_vert_b - 1) < 1) or ((tetris_lines.current_loc_hoz_d + 1) > 15) or ((tetris_lines.current_loc_vert_d + 1) > 10):
					pass
				else:
					tetris_lines.current_loc_hoz_a = tetris_lines.current_loc_hoz_a + 1
					tetris_lines.current_loc_vert_a = tetris_lines.current_loc_vert_a - 1
					tetris_lines.current_loc_hoz_b = tetris_lines.current_loc_hoz_b - 1
					tetris_lines.current_loc_vert_b = tetris_lines.current_loc_vert_b - 1
					tetris_lines.current_loc_hoz_d = tetris_lines.current_loc_hoz_d + 1
					tetris_lines.current_loc_vert_d = tetris_lines.current_loc_vert_d + 1
					rotate = 4
			elif rotate == 4:
				if ((tetris_lines.current_loc_hoz_a - 1) < 1) or ((tetris_lines.current_loc_vert_a - 1) < 1) or ((tetris_lines.current_loc_hoz_b - 1) < 1) or ((tetris_lines.current_loc_vert_b + 1) > 10) or ((tetris_lines.current_loc_hoz_d + 1) > 15) or ((tetris_lines.current_loc_vert_d - 1) < 1):
					pass
				else:
					tetris_lines.current_loc_hoz_a = tetris_lines.current_loc_hoz_a - 1
					tetris_lines.current_loc_vert_a = tetris_lines.current_loc_vert_a - 1
					tetris_lines.current_loc_hoz_b = tetris_lines.current_loc_hoz_b - 1
					tetris_lines.current_loc_vert_b = tetris_lines.current_loc_vert_b + 1
					tetris_lines.current_loc_hoz_d = tetris_lines.current_loc_hoz_d + 1
					tetris_lines.current_loc_vert_d = tetris_lines.current_loc_vert_d - 1
					rotate = 1
		get_node("rotate_timer").start()
		if current_piece == "bar":
			if rotate == 1:
				if ((tetris_lines.current_loc_hoz_b + 1) > 15) or ((tetris_lines.current_loc_vert_b - 1) < 1) or ((tetris_lines.current_loc_hoz_c + 2) > 15) or ((tetris_lines.current_loc_vert_c - 2) < 1) or ((tetris_lines.current_loc_hoz_d + 3) > 15) or ((tetris_lines.current_loc_vert_d - 3) < 1):
					pass
				else:
					tetris_lines.current_loc_hoz_b = tetris_lines.current_loc_hoz_b + 1
					tetris_lines.current_loc_vert_b = tetris_lines.current_loc_vert_b - 1
					tetris_lines.current_loc_hoz_c = tetris_lines.current_loc_hoz_c + 2
					tetris_lines.current_loc_vert_c = tetris_lines.current_loc_vert_c - 2
					tetris_lines.current_loc_hoz_d = tetris_lines.current_loc_hoz_d + 3
					tetris_lines.current_loc_vert_d = tetris_lines.current_loc_vert_d - 3
					rotate = 2
			elif rotate == 2:
				if ((tetris_lines.current_loc_hoz_b - 1) < 1) or ((tetris_lines.current_loc_vert_b - 1) < 1) or ((tetris_lines.current_loc_hoz_c - 2) < 1) or ((tetris_lines.current_loc_vert_c - 2) < 1) or ((tetris_lines.current_loc_hoz_d - 3) < 1) or ((tetris_lines.current_loc_vert_d - 3) < 1):
					pass
				else:
					tetris_lines.current_loc_hoz_b = tetris_lines.current_loc_hoz_b - 1
					tetris_lines.current_loc_vert_b = tetris_lines.current_loc_vert_b - 1
					tetris_lines.current_loc_hoz_c = tetris_lines.current_loc_hoz_c - 2
					tetris_lines.current_loc_vert_c = tetris_lines.current_loc_vert_c - 2
					tetris_lines.current_loc_hoz_d = tetris_lines.current_loc_hoz_d - 3
					tetris_lines.current_loc_vert_d = tetris_lines.current_loc_vert_d - 3
					rotate = 3
			elif rotate == 3:
				if ((tetris_lines.current_loc_hoz_b - 1) < 1) or ((tetris_lines.current_loc_vert_b + 1) > 15) or ((tetris_lines.current_loc_hoz_c - 2) < 1) or ((tetris_lines.current_loc_vert_c + 2) > 15) or ((tetris_lines.current_loc_hoz_d - 3) < 1) or ((tetris_lines.current_loc_vert_d + 3) > 15):
					pass
				else:
					tetris_lines.current_loc_hoz_b = tetris_lines.current_loc_hoz_b - 1
					tetris_lines.current_loc_vert_b = tetris_lines.current_loc_vert_b + 1
					tetris_lines.current_loc_hoz_c = tetris_lines.current_loc_hoz_c - 2
					tetris_lines.current_loc_vert_c = tetris_lines.current_loc_vert_c + 2
					tetris_lines.current_loc_hoz_d = tetris_lines.current_loc_hoz_d - 3
					tetris_lines.current_loc_vert_d = tetris_lines.current_loc_vert_d + 3
					rotate = 4
			elif rotate == 4:
				if ((tetris_lines.current_loc_hoz_b + 1) > 15) or ((tetris_lines.current_loc_vert_b + 1) > 10) or ((tetris_lines.current_loc_hoz_c + 2) > 15) or ((tetris_lines.current_loc_vert_c + 2) > 10) or ((tetris_lines.current_loc_hoz_d + 3) > 15) or ((tetris_lines.current_loc_vert_d + 3) > 10):
					pass
				else:
					tetris_lines.current_loc_hoz_b = tetris_lines.current_loc_hoz_b + 1
					tetris_lines.current_loc_vert_b = tetris_lines.current_loc_vert_b + 1
					tetris_lines.current_loc_hoz_c = tetris_lines.current_loc_hoz_c + 2
					tetris_lines.current_loc_vert_c = tetris_lines.current_loc_vert_c + 2
					tetris_lines.current_loc_hoz_d = tetris_lines.current_loc_hoz_d + 3
					tetris_lines.current_loc_vert_d = tetris_lines.current_loc_vert_d + 3
					rotate = 1
		get_node("rotate_timer").start()
		if current_piece == "l":
			if rotate == 1:
				if ((tetris_lines.current_loc_hoz_b - 1) < 1) or ((tetris_lines.current_loc_vert_b - 1) < 1) or ((tetris_lines.current_loc_hoz_c + 1) > 15) or ((tetris_lines.current_loc_vert_c - 1) < 1) or ((tetris_lines.current_loc_hoz_d + 2) > 15) or ((tetris_lines.current_loc_vert_d - 2) < 1):
					pass
				else:
					tetris_lines.current_loc_hoz_b = tetris_lines.current_loc_hoz_b - 1
					tetris_lines.current_loc_vert_b = tetris_lines.current_loc_vert_b - 1
					tetris_lines.current_loc_hoz_c = tetris_lines.current_loc_hoz_c + 1
					tetris_lines.current_loc_vert_c = tetris_lines.current_loc_vert_c - 1
					tetris_lines.current_loc_hoz_d = tetris_lines.current_loc_hoz_d + 2
					tetris_lines.current_loc_vert_d = tetris_lines.current_loc_vert_d - 2
					rotate = 2
			elif rotate == 2:
				if ((tetris_lines.current_loc_hoz_b - 1) < 1) or ((tetris_lines.current_loc_vert_b + 1) > 15) or ((tetris_lines.current_loc_hoz_c - 1) < 1) or ((tetris_lines.current_loc_vert_c - 1) < 1) or ((tetris_lines.current_loc_hoz_d - 2) < 1) or ((tetris_lines.current_loc_vert_d - 2) < 1):
					pass
				else:
					tetris_lines.current_loc_hoz_b = tetris_lines.current_loc_hoz_b - 1
					tetris_lines.current_loc_vert_b = tetris_lines.current_loc_vert_b + 1
					tetris_lines.current_loc_hoz_c = tetris_lines.current_loc_hoz_c - 1
					tetris_lines.current_loc_vert_c = tetris_lines.current_loc_vert_c - 1
					tetris_lines.current_loc_hoz_d = tetris_lines.current_loc_hoz_d - 2
					tetris_lines.current_loc_vert_d = tetris_lines.current_loc_vert_d - 2
					rotate = 3
			elif rotate == 3:
				if ((tetris_lines.current_loc_hoz_b + 1) > 15) or ((tetris_lines.current_loc_vert_b + 1) > 10) or ((tetris_lines.current_loc_hoz_c - 1) < 1) or ((tetris_lines.current_loc_vert_c + 1) > 10) or ((tetris_lines.current_loc_hoz_d - 2) < 1) or ((tetris_lines.current_loc_vert_d + 2) > 10):
					pass
				else:
					tetris_lines.current_loc_hoz_b = tetris_lines.current_loc_hoz_b + 1
					tetris_lines.current_loc_vert_b = tetris_lines.current_loc_vert_b + 1
					tetris_lines.current_loc_hoz_c = tetris_lines.current_loc_hoz_c - 1
					tetris_lines.current_loc_vert_c = tetris_lines.current_loc_vert_c + 1
					tetris_lines.current_loc_hoz_d = tetris_lines.current_loc_hoz_d - 2
					tetris_lines.current_loc_vert_d = tetris_lines.current_loc_vert_d + 2
					rotate = 4
			elif rotate == 4:
				if ((tetris_lines.current_loc_hoz_b + 1) > 15) or ((tetris_lines.current_loc_vert_b - 1) < 1) or ((tetris_lines.current_loc_hoz_c + 1) > 15) or ((tetris_lines.current_loc_vert_c + 1) > 10) or ((tetris_lines.current_loc_hoz_d + 2) > 15) or ((tetris_lines.current_loc_vert_d + 2) > 10):
					pass
				else:
					tetris_lines.current_loc_hoz_b = tetris_lines.current_loc_hoz_b + 1
					tetris_lines.current_loc_vert_b = tetris_lines.current_loc_vert_b - 1
					tetris_lines.current_loc_hoz_c = tetris_lines.current_loc_hoz_c + 1
					tetris_lines.current_loc_vert_c = tetris_lines.current_loc_vert_c + 1
					tetris_lines.current_loc_hoz_d = tetris_lines.current_loc_hoz_d + 2
					tetris_lines.current_loc_vert_d = tetris_lines.current_loc_vert_d + 2
					rotate = 1
		get_node("rotate_timer").start()
		if current_piece == "bl":
			if rotate == 1:
				if ((tetris_lines.current_loc_hoz_b + 1) > 15) or ((tetris_lines.current_loc_vert_b + 1) > 10) or ((tetris_lines.current_loc_hoz_c + 1) > 15) or ((tetris_lines.current_loc_vert_c - 1) < 1) or ((tetris_lines.current_loc_hoz_d + 2) > 15) or ((tetris_lines.current_loc_vert_d - 2) < 1):
					pass
				else:
					tetris_lines.current_loc_hoz_b = tetris_lines.current_loc_hoz_b + 1
					tetris_lines.current_loc_vert_b = tetris_lines.current_loc_vert_b + 1
					tetris_lines.current_loc_hoz_c = tetris_lines.current_loc_hoz_c + 1
					tetris_lines.current_loc_vert_c = tetris_lines.current_loc_vert_c - 1
					tetris_lines.current_loc_hoz_d = tetris_lines.current_loc_hoz_d + 2
					tetris_lines.current_loc_vert_d = tetris_lines.current_loc_vert_d - 2
					rotate = 2
			elif rotate == 2:
				if ((tetris_lines.current_loc_hoz_b + 1) > 15) or ((tetris_lines.current_loc_vert_b - 1) < 1) or ((tetris_lines.current_loc_hoz_c - 1) < 1) or ((tetris_lines.current_loc_vert_c - 1) < 1) or ((tetris_lines.current_loc_hoz_d - 2) < 1) or ((tetris_lines.current_loc_vert_d - 2) < 1):
					pass
				else:
					tetris_lines.current_loc_hoz_b = tetris_lines.current_loc_hoz_b + 1
					tetris_lines.current_loc_vert_b = tetris_lines.current_loc_vert_b - 1
					tetris_lines.current_loc_hoz_c = tetris_lines.current_loc_hoz_c - 1
					tetris_lines.current_loc_vert_c = tetris_lines.current_loc_vert_c - 1
					tetris_lines.current_loc_hoz_d = tetris_lines.current_loc_hoz_d - 2
					tetris_lines.current_loc_vert_d = tetris_lines.current_loc_vert_d - 2
					rotate = 3
			elif rotate == 3:
				if ((tetris_lines.current_loc_hoz_b - 1) < 1) or ((tetris_lines.current_loc_vert_b - 1) < 1) or ((tetris_lines.current_loc_hoz_c - 1) < 1) or ((tetris_lines.current_loc_vert_c + 1) > 10) or ((tetris_lines.current_loc_hoz_d - 2) < 1) or ((tetris_lines.current_loc_vert_d + 2) > 10):
					pass
				else:
					tetris_lines.current_loc_hoz_b = tetris_lines.current_loc_hoz_b - 1
					tetris_lines.current_loc_vert_b = tetris_lines.current_loc_vert_b - 1
					tetris_lines.current_loc_hoz_c = tetris_lines.current_loc_hoz_c - 1
					tetris_lines.current_loc_vert_c = tetris_lines.current_loc_vert_c + 1
					tetris_lines.current_loc_hoz_d = tetris_lines.current_loc_hoz_d - 2
					tetris_lines.current_loc_vert_d = tetris_lines.current_loc_vert_d + 2
					rotate = 4
			elif rotate == 4:
				if ((tetris_lines.current_loc_hoz_b - 1) < 1) or ((tetris_lines.current_loc_vert_b + 1) > 10) or ((tetris_lines.current_loc_hoz_c + 1) > 15) or ((tetris_lines.current_loc_vert_c + 1) > 10) or ((tetris_lines.current_loc_hoz_d + 2) > 15) or ((tetris_lines.current_loc_vert_d + 2) > 10):
					pass
				else:
					tetris_lines.current_loc_hoz_b = tetris_lines.current_loc_hoz_b - 1
					tetris_lines.current_loc_vert_b = tetris_lines.current_loc_vert_b + 1
					tetris_lines.current_loc_hoz_c = tetris_lines.current_loc_hoz_c + 1
					tetris_lines.current_loc_vert_c = tetris_lines.current_loc_vert_c + 1
					tetris_lines.current_loc_hoz_d = tetris_lines.current_loc_hoz_d + 2
					tetris_lines.current_loc_vert_d = tetris_lines.current_loc_vert_d + 2
					rotate = 1
		get_node("rotate_timer").start()
		if current_piece == "z":
			if rotate == 1:
				if ((tetris_lines.current_loc_hoz_a + 1) > 15) or ((tetris_lines.current_loc_vert_a + 3) > 10) or ((tetris_lines.current_loc_vert_b + 2) > 15) or ((tetris_lines.current_loc_hoz_c + 1) > 15) or ((tetris_lines.current_loc_vert_c + 1) > 10):
					pass
				else:
					tetris_lines.current_loc_hoz_a = tetris_lines.current_loc_hoz_a + 1
					tetris_lines.current_loc_vert_a = tetris_lines.current_loc_vert_a + 3
					tetris_lines.current_loc_vert_b = tetris_lines.current_loc_vert_b + 2
					tetris_lines.current_loc_hoz_c = tetris_lines.current_loc_hoz_c + 1
					tetris_lines.current_loc_vert_c = tetris_lines.current_loc_vert_c + 1
					rotate = 2
			elif rotate == 2:
				if ((tetris_lines.current_loc_hoz_a + 3) > 15) or ((tetris_lines.current_loc_vert_a - 1) < 1) or ((tetris_lines.current_loc_hoz_b + 2) > 15) or ((tetris_lines.current_loc_hoz_c + 1) > 15) or ((tetris_lines.current_loc_vert_c - 1) < 1):
					pass
				else:
					tetris_lines.current_loc_hoz_a = tetris_lines.current_loc_hoz_a + 3
					tetris_lines.current_loc_vert_a = tetris_lines.current_loc_vert_a - 1
					tetris_lines.current_loc_hoz_b = tetris_lines.current_loc_hoz_b + 2
					tetris_lines.current_loc_hoz_c = tetris_lines.current_loc_hoz_c + 1
					tetris_lines.current_loc_vert_c = tetris_lines.current_loc_vert_c - 1
					rotate = 3
			elif rotate == 3:
				if ((tetris_lines.current_loc_hoz_a - 1) < 1) or ((tetris_lines.current_loc_vert_a - 3) < 1) or ((tetris_lines.current_loc_vert_b - 2) < 1) or ((tetris_lines.current_loc_hoz_c - 1) < 1) or ((tetris_lines.current_loc_vert_c - 1) < 1):
					pass
				else:
					tetris_lines.current_loc_hoz_a = tetris_lines.current_loc_hoz_a - 1
					tetris_lines.current_loc_vert_a = tetris_lines.current_loc_vert_a - 3
					tetris_lines.current_loc_vert_b = tetris_lines.current_loc_vert_b - 2
					tetris_lines.current_loc_hoz_c = tetris_lines.current_loc_hoz_c - 1
					tetris_lines.current_loc_vert_c = tetris_lines.current_loc_vert_c - 1
					rotate = 4
			elif rotate == 4:
				if ((tetris_lines.current_loc_hoz_a - 3) < 1) or ((tetris_lines.current_loc_vert_a + 1) > 10) or ((tetris_lines.current_loc_hoz_b - 2) < 1) or ((tetris_lines.current_loc_hoz_c - 1) < 1) or ((tetris_lines.current_loc_vert_c + 1) > 10):
					pass
				else:
					tetris_lines.current_loc_hoz_a = tetris_lines.current_loc_hoz_a - 3
					tetris_lines.current_loc_vert_a = tetris_lines.current_loc_vert_a + 1
					tetris_lines.current_loc_hoz_b = tetris_lines.current_loc_hoz_b - 2
					tetris_lines.current_loc_hoz_c = tetris_lines.current_loc_hoz_c - 1
					tetris_lines.current_loc_vert_c = tetris_lines.current_loc_vert_c + 1
					rotate = 1
		get_node("rotate_timer").start()
	if (Input.is_action_pressed("move_left")):
		tetris_lines.check_left()
		if left_timer.get_time_left() == 0 and tetris_lines.left_move == true:
			if tetris_lines.current_loc_hoz_a == 1:
				pass
			elif tetris_lines.current_loc_hoz_a == 2:
				tetris_lines.current_loc_hoz_a = 1
			elif tetris_lines.current_loc_hoz_a == 3:
				tetris_lines.current_loc_hoz_a = 2
			elif tetris_lines.current_loc_hoz_a == 4:
				tetris_lines.current_loc_hoz_a = 3
			elif tetris_lines.current_loc_hoz_a == 5:
				tetris_lines.current_loc_hoz_a = 4
			elif tetris_lines.current_loc_hoz_a == 6:
				tetris_lines.current_loc_hoz_a = 5
			elif tetris_lines.current_loc_hoz_a == 7:
				tetris_lines.current_loc_hoz_a = 6
			elif tetris_lines.current_loc_hoz_a == 8:
				tetris_lines.current_loc_hoz_a = 7
			elif tetris_lines.current_loc_hoz_a == 9:
				tetris_lines.current_loc_hoz_a = 8
			elif tetris_lines.current_loc_hoz_a == 10:
				tetris_lines.current_loc_hoz_a = 9
			elif tetris_lines.current_loc_hoz_a == 11:
				tetris_lines.current_loc_hoz_a = 10
			elif tetris_lines.current_loc_hoz_a == 12:
				tetris_lines.current_loc_hoz_a = 11
			elif tetris_lines.current_loc_hoz_a == 13:
				tetris_lines.current_loc_hoz_a = 12
			elif tetris_lines.current_loc_hoz_a == 14:
				tetris_lines.current_loc_hoz_a = 13
			elif tetris_lines.current_loc_hoz_a == 15:
				tetris_lines.current_loc_hoz_a = 14
			
			if tetris_lines.current_loc_hoz_b == 1:
				pass
			elif tetris_lines.current_loc_hoz_b == 2:
				tetris_lines.current_loc_hoz_b = 1
			elif tetris_lines.current_loc_hoz_b == 3:
				tetris_lines.current_loc_hoz_b = 2
			elif tetris_lines.current_loc_hoz_b == 4:
				tetris_lines.current_loc_hoz_b = 3
			elif tetris_lines.current_loc_hoz_b == 5:
				tetris_lines.current_loc_hoz_b = 4
			elif tetris_lines.current_loc_hoz_b == 6:
				tetris_lines.current_loc_hoz_b = 5
			elif tetris_lines.current_loc_hoz_b == 7:
				tetris_lines.current_loc_hoz_b = 6
			elif tetris_lines.current_loc_hoz_b == 8:
				tetris_lines.current_loc_hoz_b = 7
			elif tetris_lines.current_loc_hoz_b == 9:
				tetris_lines.current_loc_hoz_b = 8
			elif tetris_lines.current_loc_hoz_b == 10:
				tetris_lines.current_loc_hoz_b = 9
			elif tetris_lines.current_loc_hoz_b == 11:
				tetris_lines.current_loc_hoz_b = 10
			elif tetris_lines.current_loc_hoz_b == 12:
				tetris_lines.current_loc_hoz_b = 11
			elif tetris_lines.current_loc_hoz_b == 13:
				tetris_lines.current_loc_hoz_b = 12
			elif tetris_lines.current_loc_hoz_b == 14:
				tetris_lines.current_loc_hoz_b = 13
			elif tetris_lines.current_loc_hoz_b == 15:
				tetris_lines.current_loc_hoz_b = 14
	
			if tetris_lines.current_loc_hoz_c == 1:
				pass
			elif tetris_lines.current_loc_hoz_c == 2:
				tetris_lines.current_loc_hoz_c = 1
			elif tetris_lines.current_loc_hoz_c == 3:
				tetris_lines.current_loc_hoz_c = 2
			elif tetris_lines.current_loc_hoz_c == 4:
				tetris_lines.current_loc_hoz_c = 3
			elif tetris_lines.current_loc_hoz_c == 5:
				tetris_lines.current_loc_hoz_c = 4
			elif tetris_lines.current_loc_hoz_c == 6:
				tetris_lines.current_loc_hoz_c = 5
			elif tetris_lines.current_loc_hoz_c == 7:
				tetris_lines.current_loc_hoz_c = 6
			elif tetris_lines.current_loc_hoz_c == 8:
				tetris_lines.current_loc_hoz_c = 7
			elif tetris_lines.current_loc_hoz_c == 9:
				tetris_lines.current_loc_hoz_c = 8
			elif tetris_lines.current_loc_hoz_c == 10:
				tetris_lines.current_loc_hoz_c = 9
			elif tetris_lines.current_loc_hoz_c == 11:
				tetris_lines.current_loc_hoz_c = 10
			elif tetris_lines.current_loc_hoz_c == 12:
				tetris_lines.current_loc_hoz_c = 11
			elif tetris_lines.current_loc_hoz_c == 13:
				tetris_lines.current_loc_hoz_c = 12
			elif tetris_lines.current_loc_hoz_c == 14:
				tetris_lines.current_loc_hoz_c = 13
			elif tetris_lines.current_loc_hoz_c == 15:
				tetris_lines.current_loc_hoz_c = 14
			
			if tetris_lines.current_loc_hoz_d == 1:
				pass
			elif tetris_lines.current_loc_hoz_d == 2:
				tetris_lines.current_loc_hoz_d = 1
			elif tetris_lines.current_loc_hoz_d == 3:
				tetris_lines.current_loc_hoz_d = 2
			elif tetris_lines.current_loc_hoz_d == 4:
				tetris_lines.current_loc_hoz_d = 3
			elif tetris_lines.current_loc_hoz_d == 5:
				tetris_lines.current_loc_hoz_d = 4
			elif tetris_lines.current_loc_hoz_d == 6:
				tetris_lines.current_loc_hoz_d = 5
			elif tetris_lines.current_loc_hoz_d == 7:
				tetris_lines.current_loc_hoz_d = 6
			elif tetris_lines.current_loc_hoz_d == 8:
				tetris_lines.current_loc_hoz_d = 7
			elif tetris_lines.current_loc_hoz_d == 9:
				tetris_lines.current_loc_hoz_d = 8
			elif tetris_lines.current_loc_hoz_d == 10:
				tetris_lines.current_loc_hoz_d = 9
			elif tetris_lines.current_loc_hoz_d == 11:
				tetris_lines.current_loc_hoz_d = 10
			elif tetris_lines.current_loc_hoz_d == 12:
				tetris_lines.current_loc_hoz_d = 11
			elif tetris_lines.current_loc_hoz_d == 13:
				tetris_lines.current_loc_hoz_d = 12
			elif tetris_lines.current_loc_hoz_d == 14:
				tetris_lines.current_loc_hoz_d = 13
			elif tetris_lines.current_loc_hoz_d == 15:
				tetris_lines.current_loc_hoz_d = 14
			left_timer.start()
		
		
	if (Input.is_action_pressed("move_right")):
		tetris_lines.check_right()
		if right_timer.get_time_left() == 0 and tetris_lines.right_move == true:
			if tetris_lines.current_loc_hoz_a == 1:
				tetris_lines.current_loc_hoz_a = 2
			elif tetris_lines.current_loc_hoz_a == 2:
				tetris_lines.current_loc_hoz_a = 3
			elif tetris_lines.current_loc_hoz_a == 3:
				tetris_lines.current_loc_hoz_a = 4
			elif tetris_lines.current_loc_hoz_a == 4:
				tetris_lines.current_loc_hoz_a = 5
			elif tetris_lines.current_loc_hoz_a == 5:
				tetris_lines.current_loc_hoz_a = 6
			elif tetris_lines.current_loc_hoz_a == 6:
				tetris_lines.current_loc_hoz_a = 7
			elif tetris_lines.current_loc_hoz_a == 7:
				tetris_lines.current_loc_hoz_a = 8
			elif tetris_lines.current_loc_hoz_a == 8:
				tetris_lines.current_loc_hoz_a = 9
			elif tetris_lines.current_loc_hoz_a == 9:
				tetris_lines.current_loc_hoz_a = 10
			elif tetris_lines.current_loc_hoz_a == 10:
				tetris_lines.current_loc_hoz_a = 11
			elif tetris_lines.current_loc_hoz_a == 11:
				tetris_lines.current_loc_hoz_a = 12
			elif tetris_lines.current_loc_hoz_a == 12:
				tetris_lines.current_loc_hoz_a = 13
			elif tetris_lines.current_loc_hoz_a == 13:
				tetris_lines.current_loc_hoz_a = 14
			elif tetris_lines.current_loc_hoz_a == 14:
				tetris_lines.current_loc_hoz_a = 15
			elif tetris_lines.current_loc_hoz_a == 15:
				pass
				
			if tetris_lines.current_loc_hoz_b == 1:
				tetris_lines.current_loc_hoz_b = 2
			elif tetris_lines.current_loc_hoz_b == 2:
				tetris_lines.current_loc_hoz_b = 3
			elif tetris_lines.current_loc_hoz_b == 3:
				tetris_lines.current_loc_hoz_b = 4
			elif tetris_lines.current_loc_hoz_b == 4:
				tetris_lines.current_loc_hoz_b = 5
			elif tetris_lines.current_loc_hoz_b == 5:
				tetris_lines.current_loc_hoz_b = 6
			elif tetris_lines.current_loc_hoz_b == 6:
				tetris_lines.current_loc_hoz_b = 7
			elif tetris_lines.current_loc_hoz_b == 7:
				tetris_lines.current_loc_hoz_b = 8
			elif tetris_lines.current_loc_hoz_b == 8:
				tetris_lines.current_loc_hoz_b = 9
			elif tetris_lines.current_loc_hoz_b == 9:
				tetris_lines.current_loc_hoz_b = 10
			elif tetris_lines.current_loc_hoz_b == 10:
				tetris_lines.current_loc_hoz_b = 11
			elif tetris_lines.current_loc_hoz_b == 11:
				tetris_lines.current_loc_hoz_b = 12
			elif tetris_lines.current_loc_hoz_b == 12:
				tetris_lines.current_loc_hoz_b = 13
			elif tetris_lines.current_loc_hoz_b == 13:
				tetris_lines.current_loc_hoz_b = 14
			elif tetris_lines.current_loc_hoz_b == 14:
				tetris_lines.current_loc_hoz_b = 15
			elif tetris_lines.current_loc_hoz_b == 15:
				pass
			
			if tetris_lines.current_loc_hoz_c == 1:
				tetris_lines.current_loc_hoz_c = 2
			elif tetris_lines.current_loc_hoz_c == 2:
				tetris_lines.current_loc_hoz_c = 3
			elif tetris_lines.current_loc_hoz_c == 3:
				tetris_lines.current_loc_hoz_c = 4
			elif tetris_lines.current_loc_hoz_c == 4:
				tetris_lines.current_loc_hoz_c = 5
			elif tetris_lines.current_loc_hoz_c == 5:
				tetris_lines.current_loc_hoz_c = 6
			elif tetris_lines.current_loc_hoz_c == 6:
				tetris_lines.current_loc_hoz_c = 7
			elif tetris_lines.current_loc_hoz_c == 7:
				tetris_lines.current_loc_hoz_c = 8
			elif tetris_lines.current_loc_hoz_c == 8:
				tetris_lines.current_loc_hoz_c = 9
			elif tetris_lines.current_loc_hoz_c == 9:
				tetris_lines.current_loc_hoz_c = 10
			elif tetris_lines.current_loc_hoz_c == 10:
				tetris_lines.current_loc_hoz_c = 11
			elif tetris_lines.current_loc_hoz_c == 11:
				tetris_lines.current_loc_hoz_c = 12
			elif tetris_lines.current_loc_hoz_c == 12:
				tetris_lines.current_loc_hoz_c = 13
			elif tetris_lines.current_loc_hoz_c == 13:
				tetris_lines.current_loc_hoz_c = 14
			elif tetris_lines.current_loc_hoz_c == 14:
				tetris_lines.current_loc_hoz_c = 15
			elif tetris_lines.current_loc_hoz_c == 15:
				pass
				
			if tetris_lines.current_loc_hoz_d == 1:
				tetris_lines.current_loc_hoz_d = 2
			elif tetris_lines.current_loc_hoz_d == 2:
				tetris_lines.current_loc_hoz_d = 3
			elif tetris_lines.current_loc_hoz_d == 3:
				tetris_lines.current_loc_hoz_d = 4
			elif tetris_lines.current_loc_hoz_d == 4:
				tetris_lines.current_loc_hoz_d = 5
			elif tetris_lines.current_loc_hoz_d == 5:
				tetris_lines.current_loc_hoz_d = 6
			elif tetris_lines.current_loc_hoz_d == 6:
				tetris_lines.current_loc_hoz_d = 7
			elif tetris_lines.current_loc_hoz_d == 7:
				tetris_lines.current_loc_hoz_d = 8
			elif tetris_lines.current_loc_hoz_d == 8:
				tetris_lines.current_loc_hoz_d = 9
			elif tetris_lines.current_loc_hoz_d == 9:
				tetris_lines.current_loc_hoz_d = 10
			elif tetris_lines.current_loc_hoz_d == 10:
				tetris_lines.current_loc_hoz_d = 11
			elif tetris_lines.current_loc_hoz_d == 11:
				tetris_lines.current_loc_hoz_d = 12
			elif tetris_lines.current_loc_hoz_d == 12:
				tetris_lines.current_loc_hoz_d = 13
			elif tetris_lines.current_loc_hoz_d == 13:
				tetris_lines.current_loc_hoz_d = 14
			elif tetris_lines.current_loc_hoz_d == 14:
				tetris_lines.current_loc_hoz_d = 15
			elif tetris_lines.current_loc_hoz_d == 15:
				pass
			right_timer.start()
	set_position()
	
func random_piece():
	rotate = 1
	tetris_array = ["square", "bar", "z", "threesome", "l", "bl"]
	randomize()
	current_piece = tetris_array[randi() % tetris_array.size()]
	get_node("down_timer").start()
	if current_piece == "square":
		tetris_lines.current_loc_hoz_a = 7
		tetris_lines.current_loc_hoz_b = 8
		tetris_lines.current_loc_hoz_c = 7
		tetris_lines.current_loc_hoz_d = 8
		tetris_lines.current_loc_vert_a = 1
		tetris_lines.current_loc_vert_b = 1
		tetris_lines.current_loc_vert_c = 2
		tetris_lines.current_loc_vert_d = 2
		block_a = block_load.instance()
		block_daddy.add_child(block_a)
		block_b = block_load.instance()
		block_daddy.add_child(block_b)
		block_c = block_load.instance()
		block_daddy.add_child(block_c)
		block_d = block_load.instance()
		block_daddy.add_child(block_d)
	if current_piece == "l":
		tetris_lines.current_loc_hoz_a = 7
		tetris_lines.current_loc_hoz_b = 8
		tetris_lines.current_loc_hoz_c = 7
		tetris_lines.current_loc_hoz_d = 7
		tetris_lines.current_loc_vert_a = 1
		tetris_lines.current_loc_vert_b = 1
		tetris_lines.current_loc_vert_c = 2
		tetris_lines.current_loc_vert_d = 3
		block_a = block_load.instance()
		block_daddy.add_child(block_a)
		block_b = block_load.instance()
		block_daddy.add_child(block_b)
		block_c = block_load.instance()
		block_daddy.add_child(block_c)
		block_d = block_load.instance()
		block_daddy.add_child(block_d)
	if current_piece == "bl":
		tetris_lines.current_loc_hoz_a = 8
		tetris_lines.current_loc_hoz_b = 7
		tetris_lines.current_loc_hoz_c = 8
		tetris_lines.current_loc_hoz_d = 8
		tetris_lines.current_loc_vert_a = 1
		tetris_lines.current_loc_vert_b = 1
		tetris_lines.current_loc_vert_c = 2
		tetris_lines.current_loc_vert_d = 3
		block_a = block_load.instance()
		block_daddy.add_child(block_a)
		block_b = block_load.instance()
		block_daddy.add_child(block_b)
		block_c = block_load.instance()
		block_daddy.add_child(block_c)
		block_d = block_load.instance()
		block_daddy.add_child(block_d)
	if current_piece == "bz":
		tetris_lines.current_loc_hoz_a = 7
		tetris_lines.current_loc_hoz_b = 8
		tetris_lines.current_loc_hoz_c = 8
		tetris_lines.current_loc_hoz_d = 9
		tetris_lines.current_loc_vert_a = 2
		tetris_lines.current_loc_vert_b = 2
		tetris_lines.current_loc_vert_c = 1
		tetris_lines.current_loc_vert_d = 1
		block_a = block_load.instance()
		block_daddy.add_child(block_a)
		block_b = block_load.instance()
		block_daddy.add_child(block_b)
		block_c = block_load.instance()
		block_daddy.add_child(block_c)
		block_d = block_load.instance()
		block_daddy.add_child(block_d)
	if current_piece == "threesome":
		tetris_lines.current_loc_hoz_a = 8
		tetris_lines.current_loc_hoz_b = 7
		tetris_lines.current_loc_hoz_c = 8
		tetris_lines.current_loc_hoz_d = 9
		tetris_lines.current_loc_vert_a = 1
		tetris_lines.current_loc_vert_b = 2
		tetris_lines.current_loc_vert_c = 2
		tetris_lines.current_loc_vert_d = 2
		block_a = block_load.instance()
		block_daddy.add_child(block_a)
		block_b = block_load.instance()
		block_daddy.add_child(block_b)
		block_c = block_load.instance()
		block_daddy.add_child(block_c)
		block_d = block_load.instance()
		block_daddy.add_child(block_d)
	if current_piece == "bar":
		tetris_lines.current_loc_hoz_a = 7
		tetris_lines.current_loc_hoz_b = 7
		tetris_lines.current_loc_hoz_c = 7
		tetris_lines.current_loc_hoz_d = 7
		tetris_lines.current_loc_vert_a = 1
		tetris_lines.current_loc_vert_b = 2
		tetris_lines.current_loc_vert_c = 3
		tetris_lines.current_loc_vert_d = 4
		block_a = block_load.instance()
		block_daddy.add_child(block_a)
		block_b = block_load.instance()
		block_daddy.add_child(block_b)
		block_c = block_load.instance()
		block_daddy.add_child(block_c)
		block_d = block_load.instance()
		block_daddy.add_child(block_d)
	if current_piece == "z":
		tetris_lines.current_loc_hoz_a = 7
		tetris_lines.current_loc_hoz_b = 8
		tetris_lines.current_loc_hoz_c = 8
		tetris_lines.current_loc_hoz_d = 9
		tetris_lines.current_loc_vert_a = 1
		tetris_lines.current_loc_vert_b = 1
		tetris_lines.current_loc_vert_c = 2
		tetris_lines.current_loc_vert_d = 2
		block_a = block_load.instance()
		block_daddy.add_child(block_a)
		block_b = block_load.instance()
		block_daddy.add_child(block_b)
		block_c = block_load.instance()
		block_daddy.add_child(block_c)
		block_d = block_load.instance()
		block_daddy.add_child(block_d)
	
func set_position():
	if tetris_lines.current_loc_hoz_a == 1:
		a_x = 53.7808
	if tetris_lines.current_loc_hoz_b == 1:
		b_x = 53.7808
	if tetris_lines.current_loc_hoz_c == 1:
		c_x = 53.7808
	if tetris_lines.current_loc_hoz_d == 1:
		d_x = 53.7808
	if tetris_lines.current_loc_hoz_a == 2:
		a_x = 118.780998
	if tetris_lines.current_loc_hoz_b == 2:
		b_x = 118.780998
	if tetris_lines.current_loc_hoz_c == 2:
		c_x = 118.780998
	if tetris_lines.current_loc_hoz_d == 2:
		d_x = 118.780998
	if tetris_lines.current_loc_hoz_a == 3:
		a_x = 183.781006
	if tetris_lines.current_loc_hoz_b == 3:
		b_x = 183.781006
	if tetris_lines.current_loc_hoz_c == 3:
		c_x = 183.781006
	if tetris_lines.current_loc_hoz_d == 3:
		d_x = 183.781006
	if tetris_lines.current_loc_hoz_a == 4:
		a_x = 247.781006
	if tetris_lines.current_loc_hoz_b == 4:
		b_x = 247.781006
	if tetris_lines.current_loc_hoz_c == 4:
		c_x = 247.781006
	if tetris_lines.current_loc_hoz_d == 4:
		d_x = 247.781006
	if tetris_lines.current_loc_hoz_a == 5:
		a_x = 312.781006
	if tetris_lines.current_loc_hoz_b == 5:
		b_x = 312.781006
	if tetris_lines.current_loc_hoz_c == 5:
		c_x = 312.781006
	if tetris_lines.current_loc_hoz_d == 5:
		d_x = 312.781006
	if tetris_lines.current_loc_hoz_a == 6:
		a_x = 377.781006
	if tetris_lines.current_loc_hoz_b == 6:
		b_x = 377.781006
	if tetris_lines.current_loc_hoz_c == 6:
		c_x = 377.781006
	if tetris_lines.current_loc_hoz_d == 6:
		d_x = 377.781006
	if tetris_lines.current_loc_hoz_a == 7:
		a_x = 442.780762
	if tetris_lines.current_loc_hoz_b == 7:
		b_x = 442.780762
	if tetris_lines.current_loc_hoz_c == 7:
		c_x = 442.780762
	if tetris_lines.current_loc_hoz_d == 7:
		d_x = 442.780762
	if tetris_lines.current_loc_hoz_a == 8:
		a_x = 506.780762
	if tetris_lines.current_loc_hoz_b == 8:
		b_x = 506.780762
	if tetris_lines.current_loc_hoz_c == 8:
		c_x = 506.780762
	if tetris_lines.current_loc_hoz_d == 8:
		d_x = 506.780762
	if tetris_lines.current_loc_hoz_a == 9:
		a_x = 571.781006
	if tetris_lines.current_loc_hoz_b == 9:
		b_x = 571.781006
	if tetris_lines.current_loc_hoz_c == 9:
		c_x = 571.781006
	if tetris_lines.current_loc_hoz_d == 9:
		d_x = 571.781006
	if tetris_lines.current_loc_hoz_a == 10:
		a_x = 636.781006
	if tetris_lines.current_loc_hoz_b == 10:
		b_x = 636.781006
	if tetris_lines.current_loc_hoz_c == 10:
		c_x = 636.781006
	if tetris_lines.current_loc_hoz_d == 10:
		d_x = 636.781006
	if tetris_lines.current_loc_hoz_a == 11:
		a_x = 701.781006
	if tetris_lines.current_loc_hoz_b == 11:
		b_x = 701.781006
	if tetris_lines.current_loc_hoz_c == 11:
		c_x = 701.781006
	if tetris_lines.current_loc_hoz_d == 11:
		d_x = 701.781006
	if tetris_lines.current_loc_hoz_a == 12:
		a_x = 765.781006
	if tetris_lines.current_loc_hoz_b == 12:
		b_x = 765.781006
	if tetris_lines.current_loc_hoz_c == 12:
		c_x = 765.781006
	if tetris_lines.current_loc_hoz_d == 12:
		d_x = 765.781006
	if tetris_lines.current_loc_hoz_a == 13:
		a_x = 830.781006
	if tetris_lines.current_loc_hoz_b == 13:
		b_x = 830.781006
	if tetris_lines.current_loc_hoz_c == 13:
		c_x = 830.781006
	if tetris_lines.current_loc_hoz_d == 13:
		d_x = 830.781006
	if tetris_lines.current_loc_hoz_a == 14:
		a_x = 895.781006
	if tetris_lines.current_loc_hoz_b == 14:
		b_x = 895.781006
	if tetris_lines.current_loc_hoz_c == 14:
		c_x = 895.781006
	if tetris_lines.current_loc_hoz_d == 14:
		d_x = 895.781006
	if tetris_lines.current_loc_hoz_a == 15:
		a_x = 960.781006
	if tetris_lines.current_loc_hoz_b == 15:
		b_x = 960.781006
	if tetris_lines.current_loc_hoz_c == 15:
		c_x = 960.781006
	if tetris_lines.current_loc_hoz_d == 15:
		d_x = 960.781006
	
		

	if tetris_lines.current_loc_vert_a == 1:
		a_y = 29.416815
	if tetris_lines.current_loc_vert_b == 1:
		b_y = 29.416815
	if tetris_lines.current_loc_vert_c == 1:
		c_y = 29.416815
	if tetris_lines.current_loc_vert_d == 1:
		d_y = 29.416815
	if tetris_lines.current_loc_vert_a == 2:
		a_y = 86.416809
	if tetris_lines.current_loc_vert_b == 2:
		b_y = 86.416809
	if tetris_lines.current_loc_vert_c == 2:
		c_y = 86.416809
	if tetris_lines.current_loc_vert_d == 2:
		d_y = 86.416809
	if tetris_lines.current_loc_vert_a == 3:
		a_y = 143.417007
	if tetris_lines.current_loc_vert_b == 3:
		b_y = 143.417007
	if tetris_lines.current_loc_vert_c == 3:
		c_y = 143.417007
	if tetris_lines.current_loc_vert_d == 3:
		d_y = 143.417007
	if tetris_lines.current_loc_vert_a == 4:
		a_y = 200.417007
	if tetris_lines.current_loc_vert_b == 4:
		b_y = 200.417007
	if tetris_lines.current_loc_vert_c == 4:
		c_y = 200.417007
	if tetris_lines.current_loc_vert_d == 4:
		d_y = 200.417007
	if tetris_lines.current_loc_vert_a == 5:
		a_y = 257.416992
	if tetris_lines.current_loc_vert_b == 5:
		b_y = 257.416992
	if tetris_lines.current_loc_vert_c == 5:
		c_y = 257.416992
	if tetris_lines.current_loc_vert_d == 5:
		d_y = 257.416992
	if tetris_lines.current_loc_vert_a == 6:
		a_y = 314.416992
	if tetris_lines.current_loc_vert_b == 6:
		b_y = 314.416992
	if tetris_lines.current_loc_vert_c == 6:
		c_y = 314.416992
	if tetris_lines.current_loc_vert_d == 6:
		d_y = 314.416992
	if tetris_lines.current_loc_vert_a == 7:
		a_y = 371.416992
	if tetris_lines.current_loc_vert_b == 7:
		b_y = 371.416992
	if tetris_lines.current_loc_vert_c == 7:
		c_y = 371.416992
	if tetris_lines.current_loc_vert_d == 7:
		d_y = 371.416992
	if tetris_lines.current_loc_vert_a == 8:
		a_y = 428.416992
	if tetris_lines.current_loc_vert_b == 8:
		b_y = 428.416992
	if tetris_lines.current_loc_vert_c == 8:
		c_y = 428.416992
	if tetris_lines.current_loc_vert_d == 8:
		d_y = 428.416992
	if tetris_lines.current_loc_vert_a == 9:
		a_y = 485.416992
	if tetris_lines.current_loc_vert_b == 9:
		b_y = 485.416992
	if tetris_lines.current_loc_vert_c == 9:
		c_y = 485.416992
	if tetris_lines.current_loc_vert_d == 9:
		d_y = 485.416992
	if tetris_lines.current_loc_vert_a == 10:
		a_y = 542.416992
	if tetris_lines.current_loc_vert_b == 10:
		b_y = 542.416992
	if tetris_lines.current_loc_vert_c == 10:
		c_y = 542.416992
	if tetris_lines.current_loc_vert_d == 10:
		d_y = 542.416992
	
	
	block_a.set_global_pos(Vector2(a_x, a_y))
	block_b.set_global_pos(Vector2(b_x, b_y))
	block_c.set_global_pos(Vector2(c_x, c_y))
	block_d.set_global_pos(Vector2(d_x, d_y))
	

func _on_down_timer_timeout():
	tetris_lines.check_down()
	if tetris_lines.down_move == true:
		if tetris_lines.current_loc_vert_a == 1:
			tetris_lines.current_loc_vert_a = 2
		elif tetris_lines.current_loc_vert_a == 2:
			tetris_lines.current_loc_vert_a = 3
		elif tetris_lines.current_loc_vert_a == 3:
			tetris_lines.current_loc_vert_a = 4
		elif tetris_lines.current_loc_vert_a == 4:
			tetris_lines.current_loc_vert_a = 5
		elif tetris_lines.current_loc_vert_a == 5:
			tetris_lines.current_loc_vert_a = 6
		elif tetris_lines.current_loc_vert_a == 6:
			tetris_lines.current_loc_vert_a = 7
		elif tetris_lines.current_loc_vert_a == 7:
			tetris_lines.current_loc_vert_a = 8
		elif tetris_lines.current_loc_vert_a == 8:
			tetris_lines.current_loc_vert_a = 9
		elif tetris_lines.current_loc_vert_a == 9:
			tetris_lines.current_loc_vert_a = 10
		elif tetris_lines.current_loc_vert_a == 10:
			pass


		if tetris_lines.current_loc_vert_b == 1:
			tetris_lines.current_loc_vert_b = 2
		elif tetris_lines.current_loc_vert_b == 2:
			tetris_lines.current_loc_vert_b = 3
		elif tetris_lines.current_loc_vert_b == 3:
			tetris_lines.current_loc_vert_b = 4
		elif tetris_lines.current_loc_vert_b == 4:
			tetris_lines.current_loc_vert_b = 5
		elif tetris_lines.current_loc_vert_b == 5:
			tetris_lines.current_loc_vert_b = 6
		elif tetris_lines.current_loc_vert_b == 6:
			tetris_lines.current_loc_vert_b = 7
		elif tetris_lines.current_loc_vert_b == 7:
			tetris_lines.current_loc_vert_b = 8
		elif tetris_lines.current_loc_vert_b == 8:
			tetris_lines.current_loc_vert_b = 9
		elif tetris_lines.current_loc_vert_b == 9:
			tetris_lines.current_loc_vert_b = 10
		elif tetris_lines.current_loc_vert_b == 10:
			pass
		
		if tetris_lines.current_loc_vert_c == 1:
			tetris_lines.current_loc_vert_c = 2
		elif tetris_lines.current_loc_vert_c == 2:
			tetris_lines.current_loc_vert_c = 3
		elif tetris_lines.current_loc_vert_c == 3:
			tetris_lines.current_loc_vert_c = 4
		elif tetris_lines.current_loc_vert_c == 4:
			tetris_lines.current_loc_vert_c = 5
		elif tetris_lines.current_loc_vert_c == 5:
			tetris_lines.current_loc_vert_c = 6
		elif tetris_lines.current_loc_vert_c == 6:
			tetris_lines.current_loc_vert_c = 7
		elif tetris_lines.current_loc_vert_c == 7:
			tetris_lines.current_loc_vert_c = 8
		elif tetris_lines.current_loc_vert_c == 8:
			tetris_lines.current_loc_vert_c = 9
		elif tetris_lines.current_loc_vert_c == 9:
			tetris_lines.current_loc_vert_c = 10
		elif tetris_lines.current_loc_vert_c == 10:
			pass
			
		if tetris_lines.current_loc_vert_d == 1:
			tetris_lines.current_loc_vert_d = 2
		elif tetris_lines.current_loc_vert_d == 2:
			tetris_lines.current_loc_vert_d = 3
		elif tetris_lines.current_loc_vert_d == 3:
			tetris_lines.current_loc_vert_d = 4
		elif tetris_lines.current_loc_vert_d == 4:
			tetris_lines.current_loc_vert_d = 5
		elif tetris_lines.current_loc_vert_d == 5:
			tetris_lines.current_loc_vert_d = 6
		elif tetris_lines.current_loc_vert_d == 6:
			tetris_lines.current_loc_vert_d = 7
		elif tetris_lines.current_loc_vert_d == 7:
			tetris_lines.current_loc_vert_d = 8
		elif tetris_lines.current_loc_vert_d == 8:
			tetris_lines.current_loc_vert_d = 9
		elif tetris_lines.current_loc_vert_d == 9:
			tetris_lines.current_loc_vert_d = 10
		elif tetris_lines.current_loc_vert_d == 10:
			pass
		get_node("down_timer").start()
	elif tetris_lines.down_move == false:
		set_to_occupy()
		
		
func set_to_occupy():
	if tetris_lines.current_loc_vert_a == 1 and tetris_lines.current_loc_hoz_a == 1:
		tetris_lines.matrix[0][0] = 1
		block_a.add_to_group("one")
	elif tetris_lines.current_loc_vert_a == 1 and tetris_lines.current_loc_hoz_a == 2:
		tetris_lines.matrix[0][1] = 1
		block_a.add_to_group("one")
	elif tetris_lines.current_loc_vert_a == 1 and tetris_lines.current_loc_hoz_a == 3:
		tetris_lines.matrix[0][2] = 1
		block_a.add_to_group("one")
	elif tetris_lines.current_loc_vert_a == 1 and tetris_lines.current_loc_hoz_a == 4:
		tetris_lines.matrix[0][3] = 1
		block_a.add_to_group("one")
	elif tetris_lines.current_loc_vert_a == 1 and tetris_lines.current_loc_hoz_a == 5:
		tetris_lines.matrix[0][4] = 1
		block_a.add_to_group("one")
	elif tetris_lines.current_loc_vert_a == 1 and tetris_lines.current_loc_hoz_a == 6:
		tetris_lines.matrix[0][5] = 1
		block_a.add_to_group("one")
	elif tetris_lines.current_loc_vert_a == 1 and tetris_lines.current_loc_hoz_a == 7:
		tetris_lines.matrix[0][6] = 1
		block_a.add_to_group("one")
	elif tetris_lines.current_loc_vert_a == 1 and tetris_lines.current_loc_hoz_a == 8:
		tetris_lines.matrix[0][7] = 1
		block_a.add_to_group("one")
	elif tetris_lines.current_loc_vert_a == 1 and tetris_lines.current_loc_hoz_a == 9:
		tetris_lines.matrix[0][8] = 1
		block_a.add_to_group("one")
	elif tetris_lines.current_loc_vert_a == 1 and tetris_lines.current_loc_hoz_a == 10:
		tetris_lines.matrix[0][9] = 1
		block_a.add_to_group("one")
	elif tetris_lines.current_loc_vert_a == 1 and tetris_lines.current_loc_hoz_a == 11:
		tetris_lines.matrix[0][10] = 1
		block_a.add_to_group("one")
	elif tetris_lines.current_loc_vert_a == 1 and tetris_lines.current_loc_hoz_a == 12:
		tetris_lines.matrix[0][11] = 1
		block_a.add_to_group("one")
	elif tetris_lines.current_loc_vert_a == 1 and tetris_lines.current_loc_hoz_a == 13:
		tetris_lines.matrix[0][12] = 1
		block_a.add_to_group("one")
	elif tetris_lines.current_loc_vert_a == 1 and tetris_lines.current_loc_hoz_a == 14:
		tetris_lines.matrix[0][13] = 1
		block_a.add_to_group("one")
	elif tetris_lines.current_loc_vert_a == 1 and tetris_lines.current_loc_hoz_a == 15:
		tetris_lines.matrix[0][14] = 1
		block_a.add_to_group("one")
		
		
	if tetris_lines.current_loc_vert_a == 2 and tetris_lines.current_loc_hoz_a == 1:
		tetris_lines.matrix[1][0] = 1
		block_a.add_to_group("two")
	if tetris_lines.current_loc_vert_a == 2 and tetris_lines.current_loc_hoz_a == 2:
		tetris_lines.matrix[1][1] = 1
		block_a.add_to_group("two")
	if tetris_lines.current_loc_vert_a == 2 and tetris_lines.current_loc_hoz_a == 3:
		tetris_lines.matrix[1][2] = 1
		block_a.add_to_group("two")
	if tetris_lines.current_loc_vert_a == 2 and tetris_lines.current_loc_hoz_a == 4:
		tetris_lines.matrix[1][3] = 1
		block_a.add_to_group("two")
	if tetris_lines.current_loc_vert_a == 2 and tetris_lines.current_loc_hoz_a == 5:
		tetris_lines.matrix[1][4] = 1
		block_a.add_to_group("two")
	if tetris_lines.current_loc_vert_a == 2 and tetris_lines.current_loc_hoz_a == 6:
		tetris_lines.matrix[1][5] = 1
		block_a.add_to_group("two")
	if tetris_lines.current_loc_vert_a == 2 and tetris_lines.current_loc_hoz_a == 7:
		tetris_lines.matrix[1][6] = 1
		block_a.add_to_group("two")
	if tetris_lines.current_loc_vert_a == 2 and tetris_lines.current_loc_hoz_a == 8:
		tetris_lines.matrix[1][7] = 1
		block_a.add_to_group("two")
	if tetris_lines.current_loc_vert_a == 2 and tetris_lines.current_loc_hoz_a == 9:
		tetris_lines.matrix[1][8] = 1
		block_a.add_to_group("two")
	if tetris_lines.current_loc_vert_a == 2 and tetris_lines.current_loc_hoz_a == 10:
		tetris_lines.matrix[1][9] = 1
		block_a.add_to_group("two")
	if tetris_lines.current_loc_vert_a == 2 and tetris_lines.current_loc_hoz_a == 11:
		tetris_lines.matrix[1][10] = 1
		block_a.add_to_group("two")
	if tetris_lines.current_loc_vert_a == 2 and tetris_lines.current_loc_hoz_a == 12:
		tetris_lines.matrix[1][11] = 1
		block_a.add_to_group("two")
	if tetris_lines.current_loc_vert_a == 2 and tetris_lines.current_loc_hoz_a == 13:
		tetris_lines.matrix[1][12] = 1
		block_a.add_to_group("two")
	if tetris_lines.current_loc_vert_a == 2 and tetris_lines.current_loc_hoz_a == 14:
		tetris_lines.matrix[1][13] = 1
		block_a.add_to_group("two")
	if tetris_lines.current_loc_vert_a == 2 and tetris_lines.current_loc_hoz_a == 15:
		tetris_lines.matrix[1][14] = 1
		block_a.add_to_group("two")
		
	if tetris_lines.current_loc_vert_a == 3 and tetris_lines.current_loc_hoz_a == 1:
		tetris_lines.matrix[2][0] = 1
		block_a.add_to_group("three")
	if tetris_lines.current_loc_vert_a == 3 and tetris_lines.current_loc_hoz_a == 2:
		tetris_lines.matrix[2][1] = 1
		block_a.add_to_group("three")
	if tetris_lines.current_loc_vert_a == 3 and tetris_lines.current_loc_hoz_a == 3:
		tetris_lines.matrix[2][2] = 1
		block_a.add_to_group("three")
	if tetris_lines.current_loc_vert_a == 3 and tetris_lines.current_loc_hoz_a == 4:
		tetris_lines.matrix[2][3] = 1
		block_a.add_to_group("three")
	if tetris_lines.current_loc_vert_a == 3 and tetris_lines.current_loc_hoz_a == 5:
		tetris_lines.matrix[2][4] = 1
		block_a.add_to_group("three")
	if tetris_lines.current_loc_vert_a == 3 and tetris_lines.current_loc_hoz_a == 6:
		tetris_lines.matrix[2][5] = 1
		block_a.add_to_group("three")
	if tetris_lines.current_loc_vert_a == 3 and tetris_lines.current_loc_hoz_a == 7:
		tetris_lines.matrix[2][6] = 1
		block_a.add_to_group("three")
	if tetris_lines.current_loc_vert_a == 3 and tetris_lines.current_loc_hoz_a == 8:
		tetris_lines.matrix[2][7] = 1
		block_a.add_to_group("three")
	if tetris_lines.current_loc_vert_a == 3 and tetris_lines.current_loc_hoz_a == 9:
		tetris_lines.matrix[2][8] = 1
		block_a.add_to_group("three")
	if tetris_lines.current_loc_vert_a == 3 and tetris_lines.current_loc_hoz_a == 10:
		tetris_lines.matrix[2][9] = 1
		block_a.add_to_group("three")
	if tetris_lines.current_loc_vert_a == 3 and tetris_lines.current_loc_hoz_a == 11:
		tetris_lines.matrix[2][10] = 1
		block_a.add_to_group("three")
	if tetris_lines.current_loc_vert_a == 3 and tetris_lines.current_loc_hoz_a == 12:
		tetris_lines.matrix[2][11] = 1
		block_a.add_to_group("three")
	if tetris_lines.current_loc_vert_a == 3 and tetris_lines.current_loc_hoz_a == 13:
		tetris_lines.matrix[2][12] = 1
		block_a.add_to_group("three")
	if tetris_lines.current_loc_vert_a == 3 and tetris_lines.current_loc_hoz_a == 14:
		tetris_lines.matrix[2][13] = 1
		block_a.add_to_group("three")
	if tetris_lines.current_loc_vert_a == 3 and tetris_lines.current_loc_hoz_a == 15:
		tetris_lines.matrix[2][14] = 1
		block_a.add_to_group("three")
		
	if tetris_lines.current_loc_vert_a == 4 and tetris_lines.current_loc_hoz_a == 1:
		tetris_lines.matrix[3][0] = 1
		block_a.add_to_group("four")
	if tetris_lines.current_loc_vert_a == 4 and tetris_lines.current_loc_hoz_a == 2:
		tetris_lines.matrix[3][1] = 1
		block_a.add_to_group("four")
	if tetris_lines.current_loc_vert_a == 4 and tetris_lines.current_loc_hoz_a == 3:
		tetris_lines.matrix[3][2] = 1
		block_a.add_to_group("four")
	if tetris_lines.current_loc_vert_a == 4 and tetris_lines.current_loc_hoz_a == 4:
		tetris_lines.matrix[3][3] = 1
		block_a.add_to_group("four")
	if tetris_lines.current_loc_vert_a == 4 and tetris_lines.current_loc_hoz_a == 5:
		tetris_lines.matrix[3][4] = 1
		block_a.add_to_group("four")
	if tetris_lines.current_loc_vert_a == 4 and tetris_lines.current_loc_hoz_a == 6:
		tetris_lines.matrix[3][5] = 1
		block_a.add_to_group("four")
	if tetris_lines.current_loc_vert_a == 4 and tetris_lines.current_loc_hoz_a == 7:
		tetris_lines.matrix[3][6] = 1
		block_a.add_to_group("four")
	if tetris_lines.current_loc_vert_a == 4 and tetris_lines.current_loc_hoz_a == 8:
		tetris_lines.matrix[3][7] = 1
		block_a.add_to_group("four")
	if tetris_lines.current_loc_vert_a == 4 and tetris_lines.current_loc_hoz_a == 9:
		tetris_lines.matrix[3][8] = 1
		block_a.add_to_group("four")
	if tetris_lines.current_loc_vert_a == 4 and tetris_lines.current_loc_hoz_a == 10:
		tetris_lines.matrix[3][9] = 1
		block_a.add_to_group("four")
	if tetris_lines.current_loc_vert_a == 4 and tetris_lines.current_loc_hoz_a == 11:
		tetris_lines.matrix[3][10] = 1
		block_a.add_to_group("four")
	if tetris_lines.current_loc_vert_a == 4 and tetris_lines.current_loc_hoz_a == 12:
		tetris_lines.matrix[3][11] = 1
		block_a.add_to_group("four")
	if tetris_lines.current_loc_vert_a == 4 and tetris_lines.current_loc_hoz_a == 13:
		tetris_lines.matrix[3][12] = 1
		block_a.add_to_group("four")
	if tetris_lines.current_loc_vert_a == 4 and tetris_lines.current_loc_hoz_a == 14:
		tetris_lines.matrix[3][13] = 1
		block_a.add_to_group("four")
	if tetris_lines.current_loc_vert_a == 4 and tetris_lines.current_loc_hoz_a == 15:
		tetris_lines.matrix[3][14] = 1
		block_a.add_to_group("four")
		
	if tetris_lines.current_loc_vert_a == 5 and tetris_lines.current_loc_hoz_a == 1:
		tetris_lines.matrix[4][0] = 1
		block_a.add_to_group("five")
	if tetris_lines.current_loc_vert_a == 5 and tetris_lines.current_loc_hoz_a == 2:
		tetris_lines.matrix[4][1] = 1
		block_a.add_to_group("five")
	if tetris_lines.current_loc_vert_a == 5 and tetris_lines.current_loc_hoz_a == 3:
		tetris_lines.matrix[4][2] = 1
		block_a.add_to_group("five")
	if tetris_lines.current_loc_vert_a == 5 and tetris_lines.current_loc_hoz_a == 4:
		tetris_lines.matrix[4][3] = 1
		block_a.add_to_group("five")
	if tetris_lines.current_loc_vert_a == 5 and tetris_lines.current_loc_hoz_a == 5:
		tetris_lines.matrix[4][4] = 1
		block_a.add_to_group("five")
	if tetris_lines.current_loc_vert_a == 5 and tetris_lines.current_loc_hoz_a == 6:
		tetris_lines.matrix[4][5] = 1
		block_a.add_to_group("five")
	if tetris_lines.current_loc_vert_a == 5 and tetris_lines.current_loc_hoz_a == 7:
		tetris_lines.matrix[4][6] = 1
		block_a.add_to_group("five")
	if tetris_lines.current_loc_vert_a == 5 and tetris_lines.current_loc_hoz_a == 8:
		tetris_lines.matrix[4][7] = 1
		block_a.add_to_group("five")
	if tetris_lines.current_loc_vert_a == 5 and tetris_lines.current_loc_hoz_a == 9:
		tetris_lines.matrix[4][8] = 1
		block_a.add_to_group("five")
	if tetris_lines.current_loc_vert_a == 5 and tetris_lines.current_loc_hoz_a == 10:
		tetris_lines.matrix[4][9] = 1
		block_a.add_to_group("five")
	if tetris_lines.current_loc_vert_a == 5 and tetris_lines.current_loc_hoz_a == 11:
		tetris_lines.matrix[4][10] = 1
		block_a.add_to_group("five")
	if tetris_lines.current_loc_vert_a == 5 and tetris_lines.current_loc_hoz_a == 12:
		tetris_lines.matrix[4][11] = 1
		block_a.add_to_group("five")
	if tetris_lines.current_loc_vert_a == 5 and tetris_lines.current_loc_hoz_a == 13:
		tetris_lines.matrix[4][12] = 1
		block_a.add_to_group("five")
	if tetris_lines.current_loc_vert_a == 5 and tetris_lines.current_loc_hoz_a == 14:
		tetris_lines.matrix[4][13] = 1
		block_a.add_to_group("five")
	if tetris_lines.current_loc_vert_a == 5 and tetris_lines.current_loc_hoz_a == 15:
		tetris_lines.matrix[4][14] = 1
		block_a.add_to_group("five")
		
	if tetris_lines.current_loc_vert_a == 6 and tetris_lines.current_loc_hoz_a == 1:
		tetris_lines.matrix[5][0] = 1
		block_a.add_to_group("six")
	if tetris_lines.current_loc_vert_a == 6 and tetris_lines.current_loc_hoz_a == 2:
		tetris_lines.matrix[5][1] = 1
		block_a.add_to_group("six")
	if tetris_lines.current_loc_vert_a == 6 and tetris_lines.current_loc_hoz_a == 3:
		tetris_lines.matrix[5][2] = 1
		block_a.add_to_group("six")
	if tetris_lines.current_loc_vert_a == 6 and tetris_lines.current_loc_hoz_a == 4:
		tetris_lines.matrix[5][3] = 1
		block_a.add_to_group("six")
	if tetris_lines.current_loc_vert_a == 6 and tetris_lines.current_loc_hoz_a == 5:
		tetris_lines.matrix[5][4] = 1
		block_a.add_to_group("six")
	if tetris_lines.current_loc_vert_a == 6 and tetris_lines.current_loc_hoz_a == 6:
		tetris_lines.matrix[5][5] = 1
		block_a.add_to_group("six")
	if tetris_lines.current_loc_vert_a == 6 and tetris_lines.current_loc_hoz_a == 7:
		tetris_lines.matrix[5][6] = 1
		block_a.add_to_group("six")
	if tetris_lines.current_loc_vert_a == 6 and tetris_lines.current_loc_hoz_a == 8:
		tetris_lines.matrix[5][7] = 1
		block_a.add_to_group("six")
	if tetris_lines.current_loc_vert_a == 6 and tetris_lines.current_loc_hoz_a == 9:
		tetris_lines.matrix[5][8] = 1
		block_a.add_to_group("six")
	if tetris_lines.current_loc_vert_a == 6 and tetris_lines.current_loc_hoz_a == 10:
		tetris_lines.matrix[5][9] = 1
		block_a.add_to_group("six")
	if tetris_lines.current_loc_vert_a == 6 and tetris_lines.current_loc_hoz_a == 11:
		tetris_lines.matrix[5][10] = 1
		block_a.add_to_group("six")
	if tetris_lines.current_loc_vert_a == 6 and tetris_lines.current_loc_hoz_a == 12:
		tetris_lines.matrix[5][11] = 1
		block_a.add_to_group("six")
	if tetris_lines.current_loc_vert_a == 6 and tetris_lines.current_loc_hoz_a == 13:
		tetris_lines.matrix[5][12] = 1
		block_a.add_to_group("six")
	if tetris_lines.current_loc_vert_a == 6 and tetris_lines.current_loc_hoz_a == 14:
		tetris_lines.matrix[5][13] = 1
		block_a.add_to_group("six")
	if tetris_lines.current_loc_vert_a == 6 and tetris_lines.current_loc_hoz_a == 15:
		tetris_lines.matrix[5][14] = 1
		block_a.add_to_group("six")
		
	if tetris_lines.current_loc_vert_a == 7 and tetris_lines.current_loc_hoz_a == 1:
		tetris_lines.matrix[6][0] = 1
		block_a.add_to_group("seven")
	if tetris_lines.current_loc_vert_a == 7 and tetris_lines.current_loc_hoz_a == 2:
		tetris_lines.matrix[6][1] = 1
		block_a.add_to_group("seven")
	if tetris_lines.current_loc_vert_a == 7 and tetris_lines.current_loc_hoz_a == 3:
		tetris_lines.matrix[6][2] = 1
		block_a.add_to_group("seven")
	if tetris_lines.current_loc_vert_a == 7 and tetris_lines.current_loc_hoz_a == 4:
		tetris_lines.matrix[6][3] = 1
		block_a.add_to_group("seven")
	if tetris_lines.current_loc_vert_a == 7 and tetris_lines.current_loc_hoz_a == 5:
		tetris_lines.matrix[6][4] = 1
		block_a.add_to_group("seven")
	if tetris_lines.current_loc_vert_a == 7 and tetris_lines.current_loc_hoz_a == 6:
		tetris_lines.matrix[6][5] = 1
		block_a.add_to_group("seven")
	if tetris_lines.current_loc_vert_a == 7 and tetris_lines.current_loc_hoz_a == 7:
		tetris_lines.matrix[6][6] = 1
		block_a.add_to_group("seven")
	if tetris_lines.current_loc_vert_a == 7 and tetris_lines.current_loc_hoz_a == 8:
		tetris_lines.matrix[6][7] = 1
		block_a.add_to_group("seven")
	if tetris_lines.current_loc_vert_a == 7 and tetris_lines.current_loc_hoz_a == 9:
		tetris_lines.matrix[6][8] = 1
		block_a.add_to_group("seven")
	if tetris_lines.current_loc_vert_a == 7 and tetris_lines.current_loc_hoz_a == 10:
		tetris_lines.matrix[6][9] = 1
		block_a.add_to_group("seven")
	if tetris_lines.current_loc_vert_a == 7 and tetris_lines.current_loc_hoz_a == 11:
		tetris_lines.matrix[6][10] = 1
		block_a.add_to_group("seven")
	if tetris_lines.current_loc_vert_a == 7 and tetris_lines.current_loc_hoz_a == 12:
		tetris_lines.matrix[6][11] = 1
		block_a.add_to_group("seven")
	if tetris_lines.current_loc_vert_a == 7 and tetris_lines.current_loc_hoz_a == 13:
		tetris_lines.matrix[6][12] = 1
		block_a.add_to_group("seven")
	if tetris_lines.current_loc_vert_a == 7 and tetris_lines.current_loc_hoz_a == 14:
		tetris_lines.matrix[6][13] = 1
		block_a.add_to_group("seven")
	if tetris_lines.current_loc_vert_a == 7 and tetris_lines.current_loc_hoz_a == 15:
		tetris_lines.matrix[6][14] = 1
		block_a.add_to_group("seven")
		
	if tetris_lines.current_loc_vert_a == 8 and tetris_lines.current_loc_hoz_a == 1:
		tetris_lines.matrix[7][0] = 1
		block_a.add_to_group("eight")
	if tetris_lines.current_loc_vert_a == 8 and tetris_lines.current_loc_hoz_a == 2:
		tetris_lines.matrix[7][1] = 1
		block_a.add_to_group("eight")
	if tetris_lines.current_loc_vert_a == 8 and tetris_lines.current_loc_hoz_a == 3:
		tetris_lines.matrix[7][2] = 1
		block_a.add_to_group("eight")
	if tetris_lines.current_loc_vert_a == 8 and tetris_lines.current_loc_hoz_a == 4:
		tetris_lines.matrix[7][3] = 1
		block_a.add_to_group("eight")
	if tetris_lines.current_loc_vert_a == 8 and tetris_lines.current_loc_hoz_a == 5:
		tetris_lines.matrix[7][4] = 1
		block_a.add_to_group("eight")
	if tetris_lines.current_loc_vert_a == 8 and tetris_lines.current_loc_hoz_a == 6:
		tetris_lines.matrix[7][5] = 1
		block_a.add_to_group("eight")
	if tetris_lines.current_loc_vert_a == 8 and tetris_lines.current_loc_hoz_a == 7:
		tetris_lines.matrix[7][6] = 1
		block_a.add_to_group("eight")
	if tetris_lines.current_loc_vert_a == 8 and tetris_lines.current_loc_hoz_a == 8:
		tetris_lines.matrix[7][7] = 1
		block_a.add_to_group("eight")
	if tetris_lines.current_loc_vert_a == 8 and tetris_lines.current_loc_hoz_a == 9:
		tetris_lines.matrix[7][8] = 1
		block_a.add_to_group("eight")
	if tetris_lines.current_loc_vert_a == 8 and tetris_lines.current_loc_hoz_a == 10:
		tetris_lines.matrix[7][9] = 1
		block_a.add_to_group("eight")
	if tetris_lines.current_loc_vert_a == 8 and tetris_lines.current_loc_hoz_a == 11:
		tetris_lines.matrix[7][10] = 1
		block_a.add_to_group("eight")
	if tetris_lines.current_loc_vert_a == 8 and tetris_lines.current_loc_hoz_a == 12:
		tetris_lines.matrix[7][11] = 1
		block_a.add_to_group("eight")
	if tetris_lines.current_loc_vert_a == 8 and tetris_lines.current_loc_hoz_a == 13:
		tetris_lines.matrix[7][12] = 1
		block_a.add_to_group("eight")
	if tetris_lines.current_loc_vert_a == 8 and tetris_lines.current_loc_hoz_a == 14:
		tetris_lines.matrix[7][13] = 1
		block_a.add_to_group("eight")
	if tetris_lines.current_loc_vert_a == 8 and tetris_lines.current_loc_hoz_a == 15:
		tetris_lines.matrix[7][14] = 1
		block_a.add_to_group("eight")
		
	if tetris_lines.current_loc_vert_a == 9 and tetris_lines.current_loc_hoz_a == 1:
		tetris_lines.matrix[8][0] = 1
		block_a.add_to_group("nine")
	if tetris_lines.current_loc_vert_a == 9 and tetris_lines.current_loc_hoz_a == 2:
		tetris_lines.matrix[8][1] = 1
		block_a.add_to_group("nine")
	if tetris_lines.current_loc_vert_a == 9 and tetris_lines.current_loc_hoz_a == 3:
		tetris_lines.matrix[8][2] = 1
		block_a.add_to_group("nine")
	if tetris_lines.current_loc_vert_a == 9 and tetris_lines.current_loc_hoz_a == 4:
		tetris_lines.matrix[8][3] = 1
		block_a.add_to_group("nine")
	if tetris_lines.current_loc_vert_a == 9 and tetris_lines.current_loc_hoz_a == 5:
		tetris_lines.matrix[8][4] = 1
		block_a.add_to_group("nine")
	if tetris_lines.current_loc_vert_a == 9 and tetris_lines.current_loc_hoz_a == 6:
		tetris_lines.matrix[8][5] = 1
		block_a.add_to_group("nine")
	if tetris_lines.current_loc_vert_a == 9 and tetris_lines.current_loc_hoz_a == 7:
		tetris_lines.matrix[8][6] = 1
		block_a.add_to_group("nine")
	if tetris_lines.current_loc_vert_a == 9 and tetris_lines.current_loc_hoz_a == 8:
		tetris_lines.matrix[8][7] = 1
		block_a.add_to_group("nine")
	if tetris_lines.current_loc_vert_a == 9 and tetris_lines.current_loc_hoz_a == 9:
		tetris_lines.matrix[8][8] = 1
		block_a.add_to_group("nine")
	if tetris_lines.current_loc_vert_a == 9 and tetris_lines.current_loc_hoz_a == 10:
		tetris_lines.matrix[8][9] = 1
		block_a.add_to_group("nine")
	if tetris_lines.current_loc_vert_a == 9 and tetris_lines.current_loc_hoz_a == 11:
		tetris_lines.matrix[8][10] = 1
		block_a.add_to_group("nine")
	if tetris_lines.current_loc_vert_a == 9 and tetris_lines.current_loc_hoz_a == 12:
		tetris_lines.matrix[8][11] = 1
		block_a.add_to_group("nine")
	if tetris_lines.current_loc_vert_a == 9 and tetris_lines.current_loc_hoz_a == 13:
		tetris_lines.matrix[8][12] = 1
		block_a.add_to_group("nine")
	if tetris_lines.current_loc_vert_a == 9 and tetris_lines.current_loc_hoz_a == 14:
		tetris_lines.matrix[8][13] = 1
		block_a.add_to_group("nine")
	if tetris_lines.current_loc_vert_a == 9 and tetris_lines.current_loc_hoz_a == 15:
		tetris_lines.matrix[8][14] = 1
		block_a.add_to_group("nine")
		
	if tetris_lines.current_loc_vert_a == 10 and tetris_lines.current_loc_hoz_a == 1:
		tetris_lines.matrix[9][0] = 1
		block_a.add_to_group("ten")
	if tetris_lines.current_loc_vert_a == 10 and tetris_lines.current_loc_hoz_a == 2:
		tetris_lines.matrix[9][1] = 1
		block_a.add_to_group("ten")
	if tetris_lines.current_loc_vert_a == 10 and tetris_lines.current_loc_hoz_a == 3:
		tetris_lines.matrix[9][2] = 1
		block_a.add_to_group("ten")
	if tetris_lines.current_loc_vert_a == 10 and tetris_lines.current_loc_hoz_a == 4:
		tetris_lines.matrix[9][3] = 1
		block_a.add_to_group("ten")
	if tetris_lines.current_loc_vert_a == 10 and tetris_lines.current_loc_hoz_a == 5:
		tetris_lines.matrix[9][4] = 1
		block_a.add_to_group("ten")
	if tetris_lines.current_loc_vert_a == 10 and tetris_lines.current_loc_hoz_a == 6:
		tetris_lines.matrix[9][5] = 1
		block_a.add_to_group("ten")
	if tetris_lines.current_loc_vert_a == 10 and tetris_lines.current_loc_hoz_a == 7:
		tetris_lines.matrix[9][6] = 1
		block_a.add_to_group("ten")
	if tetris_lines.current_loc_vert_a == 10 and tetris_lines.current_loc_hoz_a == 8:
		tetris_lines.matrix[9][7] = 1
		block_a.add_to_group("ten")
	if tetris_lines.current_loc_vert_a == 10 and tetris_lines.current_loc_hoz_a == 9:
		tetris_lines.matrix[9][8] = 1
		block_a.add_to_group("ten")
	if tetris_lines.current_loc_vert_a == 10 and tetris_lines.current_loc_hoz_a == 10:
		tetris_lines.matrix[9][9] = 1
		block_a.add_to_group("ten")
	if tetris_lines.current_loc_vert_a == 10 and tetris_lines.current_loc_hoz_a == 11:
		tetris_lines.matrix[9][10] = 1
		block_a.add_to_group("ten")
	if tetris_lines.current_loc_vert_a == 10 and tetris_lines.current_loc_hoz_a == 12:
		tetris_lines.matrix[9][11] = 1
		block_a.add_to_group("ten")
	if tetris_lines.current_loc_vert_a == 10 and tetris_lines.current_loc_hoz_a == 13:
		tetris_lines.matrix[9][12] = 1
		block_a.add_to_group("ten")
	if tetris_lines.current_loc_vert_a == 10 and tetris_lines.current_loc_hoz_a == 14:
		tetris_lines.matrix[9][13] = 1
		block_a.add_to_group("ten")
	if tetris_lines.current_loc_vert_a == 10 and tetris_lines.current_loc_hoz_a == 15:
		tetris_lines.matrix[9][14] = 1
		block_a.add_to_group("ten")
		
	if tetris_lines.current_loc_vert_b == 1 and tetris_lines.current_loc_hoz_b == 1:
		tetris_lines.matrix[0][0] = 1
		block_b.add_to_group("one")
	elif tetris_lines.current_loc_vert_b == 1 and tetris_lines.current_loc_hoz_b == 2:
		tetris_lines.matrix[0][1] = 1
		block_b.add_to_group("one")
	elif tetris_lines.current_loc_vert_b == 1 and tetris_lines.current_loc_hoz_b == 3:
		tetris_lines.matrix[0][2] = 1
		block_b.add_to_group("one")
	elif tetris_lines.current_loc_vert_b == 1 and tetris_lines.current_loc_hoz_b == 4:
		tetris_lines.matrix[0][3] = 1
		block_b.add_to_group("one")
	elif tetris_lines.current_loc_vert_b == 1 and tetris_lines.current_loc_hoz_b == 5:
		tetris_lines.matrix[0][4] = 1
		block_b.add_to_group("one")
	elif tetris_lines.current_loc_vert_b == 1 and tetris_lines.current_loc_hoz_b == 6:
		tetris_lines.matrix[0][5] = 1
		block_b.add_to_group("one")
	elif tetris_lines.current_loc_vert_b == 1 and tetris_lines.current_loc_hoz_b == 7:
		tetris_lines.matrix[0][6] = 1
		block_b.add_to_group("one")
	elif tetris_lines.current_loc_vert_b == 1 and tetris_lines.current_loc_hoz_b == 8:
		tetris_lines.matrix[0][7] = 1
		block_b.add_to_group("one")
	elif tetris_lines.current_loc_vert_b == 1 and tetris_lines.current_loc_hoz_b == 9:
		tetris_lines.matrix[0][8] = 1
		block_b.add_to_group("one")
	elif tetris_lines.current_loc_vert_b == 1 and tetris_lines.current_loc_hoz_b == 10:
		tetris_lines.matrix[0][9] = 1
		block_b.add_to_group("one")
	elif tetris_lines.current_loc_vert_b == 1 and tetris_lines.current_loc_hoz_b == 11:
		tetris_lines.matrix[0][10] = 1
		block_b.add_to_group("one")
	elif tetris_lines.current_loc_vert_b == 1 and tetris_lines.current_loc_hoz_b == 12:
		tetris_lines.matrix[0][11] = 1
		block_b.add_to_group("one")
	elif tetris_lines.current_loc_vert_b == 1 and tetris_lines.current_loc_hoz_b == 13:
		tetris_lines.matrix[0][12] = 1
		block_b.add_to_group("one")
	elif tetris_lines.current_loc_vert_b == 1 and tetris_lines.current_loc_hoz_b == 14:
		tetris_lines.matrix[0][13] = 1
		block_b.add_to_group("one")
	elif tetris_lines.current_loc_vert_b == 1 and tetris_lines.current_loc_hoz_b == 15:
		tetris_lines.matrix[0][14] = 1
		block_b.add_to_group("one")
		
		
	if tetris_lines.current_loc_vert_b == 2 and tetris_lines.current_loc_hoz_b == 1:
		tetris_lines.matrix[1][0] = 1
		block_b.add_to_group("two")
	if tetris_lines.current_loc_vert_b == 2 and tetris_lines.current_loc_hoz_b == 2:
		tetris_lines.matrix[1][1] = 1
		block_b.add_to_group("two")
	if tetris_lines.current_loc_vert_b == 2 and tetris_lines.current_loc_hoz_b == 3:
		tetris_lines.matrix[1][2] = 1
		block_b.add_to_group("two")
	if tetris_lines.current_loc_vert_b == 2 and tetris_lines.current_loc_hoz_b == 4:
		tetris_lines.matrix[1][3] = 1
		block_b.add_to_group("two")
	if tetris_lines.current_loc_vert_b == 2 and tetris_lines.current_loc_hoz_b == 5:
		tetris_lines.matrix[1][4] = 1
		block_b.add_to_group("two")
	if tetris_lines.current_loc_vert_b == 2 and tetris_lines.current_loc_hoz_b == 6:
		tetris_lines.matrix[1][5] = 1
		block_b.add_to_group("two")
	if tetris_lines.current_loc_vert_b == 2 and tetris_lines.current_loc_hoz_b == 7:
		tetris_lines.matrix[1][6] = 1
		block_b.add_to_group("two")
	if tetris_lines.current_loc_vert_b == 2 and tetris_lines.current_loc_hoz_b == 8:
		tetris_lines.matrix[1][7] = 1
		block_b.add_to_group("two")
	if tetris_lines.current_loc_vert_b == 2 and tetris_lines.current_loc_hoz_b == 9:
		tetris_lines.matrix[1][8] = 1
		block_b.add_to_group("two")
	if tetris_lines.current_loc_vert_b == 2 and tetris_lines.current_loc_hoz_b == 10:
		tetris_lines.matrix[1][9] = 1
		block_b.add_to_group("two")
	if tetris_lines.current_loc_vert_b == 2 and tetris_lines.current_loc_hoz_b == 11:
		tetris_lines.matrix[1][10] = 1
		block_b.add_to_group("two")
	if tetris_lines.current_loc_vert_b == 2 and tetris_lines.current_loc_hoz_b == 12:
		tetris_lines.matrix[1][11] = 1
		block_b.add_to_group("two")
	if tetris_lines.current_loc_vert_b == 2 and tetris_lines.current_loc_hoz_b == 13:
		tetris_lines.matrix[1][12] = 1
		block_b.add_to_group("two")
	if tetris_lines.current_loc_vert_b == 2 and tetris_lines.current_loc_hoz_b == 14:
		tetris_lines.matrix[1][13] = 1
		block_b.add_to_group("two")
	if tetris_lines.current_loc_vert_b == 2 and tetris_lines.current_loc_hoz_b == 15:
		tetris_lines.matrix[1][14] = 1
		block_b.add_to_group("two")
		
	if tetris_lines.current_loc_vert_b == 3 and tetris_lines.current_loc_hoz_b == 1:
		tetris_lines.matrix[2][0] = 1
		block_b.add_to_group("three")
	if tetris_lines.current_loc_vert_b == 3 and tetris_lines.current_loc_hoz_b == 2:
		tetris_lines.matrix[2][1] = 1
		block_b.add_to_group("three")
	if tetris_lines.current_loc_vert_b == 3 and tetris_lines.current_loc_hoz_b == 3:
		tetris_lines.matrix[2][2] = 1
		block_b.add_to_group("three")
	if tetris_lines.current_loc_vert_b == 3 and tetris_lines.current_loc_hoz_b == 4:
		tetris_lines.matrix[2][3] = 1
		block_b.add_to_group("three")
	if tetris_lines.current_loc_vert_b == 3 and tetris_lines.current_loc_hoz_b == 5:
		tetris_lines.matrix[2][4] = 1
		block_b.add_to_group("three")
	if tetris_lines.current_loc_vert_b == 3 and tetris_lines.current_loc_hoz_b == 6:
		tetris_lines.matrix[2][5] = 1
		block_b.add_to_group("three")
	if tetris_lines.current_loc_vert_b == 3 and tetris_lines.current_loc_hoz_b == 7:
		tetris_lines.matrix[2][6] = 1
		block_b.add_to_group("three")
	if tetris_lines.current_loc_vert_b == 3 and tetris_lines.current_loc_hoz_b == 8:
		tetris_lines.matrix[2][7] = 1
		block_b.add_to_group("three")
	if tetris_lines.current_loc_vert_b == 3 and tetris_lines.current_loc_hoz_b == 9:
		tetris_lines.matrix[2][8] = 1
		block_b.add_to_group("three")
	if tetris_lines.current_loc_vert_b == 3 and tetris_lines.current_loc_hoz_b == 10:
		tetris_lines.matrix[2][9] = 1
		block_b.add_to_group("three")
	if tetris_lines.current_loc_vert_b == 3 and tetris_lines.current_loc_hoz_b == 11:
		tetris_lines.matrix[2][10] = 1
		block_b.add_to_group("three")
	if tetris_lines.current_loc_vert_b == 3 and tetris_lines.current_loc_hoz_b == 12:
		tetris_lines.matrix[2][11] = 1
		block_b.add_to_group("three")
	if tetris_lines.current_loc_vert_b == 3 and tetris_lines.current_loc_hoz_b == 13:
		tetris_lines.matrix[2][12] = 1
		block_b.add_to_group("three")
	if tetris_lines.current_loc_vert_b == 3 and tetris_lines.current_loc_hoz_b == 14:
		tetris_lines.matrix[2][13] = 1
		block_b.add_to_group("three")
	if tetris_lines.current_loc_vert_b == 3 and tetris_lines.current_loc_hoz_b == 15:
		tetris_lines.matrix[2][14] = 1
		block_b.add_to_group("three")
		
	if tetris_lines.current_loc_vert_b == 4 and tetris_lines.current_loc_hoz_b == 1:
		tetris_lines.matrix[3][0] = 1
		block_b.add_to_group("four")
	if tetris_lines.current_loc_vert_b == 4 and tetris_lines.current_loc_hoz_b == 2:
		tetris_lines.matrix[3][1] = 1
		block_b.add_to_group("four")
	if tetris_lines.current_loc_vert_b == 4 and tetris_lines.current_loc_hoz_b == 3:
		tetris_lines.matrix[3][2] = 1
		block_b.add_to_group("four")
	if tetris_lines.current_loc_vert_b == 4 and tetris_lines.current_loc_hoz_b == 4:
		tetris_lines.matrix[3][3] = 1
		block_b.add_to_group("four")
	if tetris_lines.current_loc_vert_b == 4 and tetris_lines.current_loc_hoz_b == 5:
		tetris_lines.matrix[3][4] = 1
		block_b.add_to_group("four")
	if tetris_lines.current_loc_vert_b == 4 and tetris_lines.current_loc_hoz_b == 6:
		tetris_lines.matrix[3][5] = 1
		block_b.add_to_group("four")
	if tetris_lines.current_loc_vert_b == 4 and tetris_lines.current_loc_hoz_b == 7:
		tetris_lines.matrix[3][6] = 1
		block_b.add_to_group("four")
	if tetris_lines.current_loc_vert_b == 4 and tetris_lines.current_loc_hoz_b == 8:
		tetris_lines.matrix[3][7] = 1
		block_b.add_to_group("four")
	if tetris_lines.current_loc_vert_b == 4 and tetris_lines.current_loc_hoz_b == 9:
		tetris_lines.matrix[3][8] = 1
		block_b.add_to_group("four")
	if tetris_lines.current_loc_vert_b == 4 and tetris_lines.current_loc_hoz_b == 10:
		tetris_lines.matrix[3][9] = 1
		block_b.add_to_group("four")
	if tetris_lines.current_loc_vert_b == 4 and tetris_lines.current_loc_hoz_b == 11:
		tetris_lines.matrix[3][10] = 1
		block_b.add_to_group("four")
	if tetris_lines.current_loc_vert_b == 4 and tetris_lines.current_loc_hoz_b == 12:
		tetris_lines.matrix[3][11] = 1
		block_b.add_to_group("four")
	if tetris_lines.current_loc_vert_b == 4 and tetris_lines.current_loc_hoz_b == 13:
		tetris_lines.matrix[3][12] = 1
		block_b.add_to_group("four")
	if tetris_lines.current_loc_vert_b == 4 and tetris_lines.current_loc_hoz_b == 14:
		tetris_lines.matrix[3][13] = 1
		block_b.add_to_group("four")
	if tetris_lines.current_loc_vert_b == 4 and tetris_lines.current_loc_hoz_b == 15:
		tetris_lines.matrix[3][14] = 1
		block_b.add_to_group("four")
		
	if tetris_lines.current_loc_vert_b == 5 and tetris_lines.current_loc_hoz_b == 1:
		tetris_lines.matrix[4][0] = 1
		block_b.add_to_group("five")
	if tetris_lines.current_loc_vert_b == 5 and tetris_lines.current_loc_hoz_b == 2:
		tetris_lines.matrix[4][1] = 1
		block_b.add_to_group("five")
	if tetris_lines.current_loc_vert_b == 5 and tetris_lines.current_loc_hoz_b == 3:
		tetris_lines.matrix[4][2] = 1
		block_b.add_to_group("five")
	if tetris_lines.current_loc_vert_b == 5 and tetris_lines.current_loc_hoz_b == 4:
		tetris_lines.matrix[4][3] = 1
		block_b.add_to_group("five")
	if tetris_lines.current_loc_vert_b == 5 and tetris_lines.current_loc_hoz_b == 5:
		tetris_lines.matrix[4][4] = 1
		block_b.add_to_group("five")
	if tetris_lines.current_loc_vert_b == 5 and tetris_lines.current_loc_hoz_b == 6:
		tetris_lines.matrix[4][5] = 1
		block_b.add_to_group("five")
	if tetris_lines.current_loc_vert_b == 5 and tetris_lines.current_loc_hoz_b == 7:
		tetris_lines.matrix[4][6] = 1
		block_b.add_to_group("five")
	if tetris_lines.current_loc_vert_b == 5 and tetris_lines.current_loc_hoz_b == 8:
		tetris_lines.matrix[4][7] = 1
		block_b.add_to_group("five")
	if tetris_lines.current_loc_vert_b == 5 and tetris_lines.current_loc_hoz_b == 9:
		tetris_lines.matrix[4][8] = 1
		block_b.add_to_group("five")
	if tetris_lines.current_loc_vert_b == 5 and tetris_lines.current_loc_hoz_b == 10:
		tetris_lines.matrix[4][9] = 1
		block_b.add_to_group("five")
	if tetris_lines.current_loc_vert_b == 5 and tetris_lines.current_loc_hoz_b == 11:
		tetris_lines.matrix[4][10] = 1
		block_b.add_to_group("five")
	if tetris_lines.current_loc_vert_b == 5 and tetris_lines.current_loc_hoz_b == 12:
		tetris_lines.matrix[4][11] = 1
		block_b.add_to_group("five")
	if tetris_lines.current_loc_vert_b == 5 and tetris_lines.current_loc_hoz_b == 13:
		tetris_lines.matrix[4][12] = 1
		block_b.add_to_group("five")
	if tetris_lines.current_loc_vert_b == 5 and tetris_lines.current_loc_hoz_b == 14:
		tetris_lines.matrix[4][13] = 1
		block_b.add_to_group("five")
	if tetris_lines.current_loc_vert_b == 5 and tetris_lines.current_loc_hoz_b == 15:
		tetris_lines.matrix[4][14] = 1
		block_b.add_to_group("five")
		
	if tetris_lines.current_loc_vert_b == 6 and tetris_lines.current_loc_hoz_b == 1:
		tetris_lines.matrix[5][0] = 1
		block_b.add_to_group("six")
	if tetris_lines.current_loc_vert_b == 6 and tetris_lines.current_loc_hoz_b == 2:
		tetris_lines.matrix[5][1] = 1
		block_b.add_to_group("six")
	if tetris_lines.current_loc_vert_b == 6 and tetris_lines.current_loc_hoz_b == 3:
		tetris_lines.matrix[5][2] = 1
		block_b.add_to_group("six")
	if tetris_lines.current_loc_vert_b == 6 and tetris_lines.current_loc_hoz_b == 4:
		tetris_lines.matrix[5][3] = 1
		block_b.add_to_group("six")
	if tetris_lines.current_loc_vert_b == 6 and tetris_lines.current_loc_hoz_b == 5:
		tetris_lines.matrix[5][4] = 1
		block_b.add_to_group("six")
	if tetris_lines.current_loc_vert_b == 6 and tetris_lines.current_loc_hoz_b == 6:
		tetris_lines.matrix[5][5] = 1
		block_b.add_to_group("six")
	if tetris_lines.current_loc_vert_b == 6 and tetris_lines.current_loc_hoz_b == 7:
		tetris_lines.matrix[5][6] = 1
		block_b.add_to_group("six")
	if tetris_lines.current_loc_vert_b == 6 and tetris_lines.current_loc_hoz_b == 8:
		tetris_lines.matrix[5][7] = 1
		block_b.add_to_group("six")
	if tetris_lines.current_loc_vert_b == 6 and tetris_lines.current_loc_hoz_b == 9:
		tetris_lines.matrix[5][8] = 1
		block_b.add_to_group("six")
	if tetris_lines.current_loc_vert_b == 6 and tetris_lines.current_loc_hoz_b == 10:
		tetris_lines.matrix[5][9] = 1
		block_b.add_to_group("six")
	if tetris_lines.current_loc_vert_b == 6 and tetris_lines.current_loc_hoz_b == 11:
		tetris_lines.matrix[5][10] = 1
		block_b.add_to_group("six")
	if tetris_lines.current_loc_vert_b == 6 and tetris_lines.current_loc_hoz_b == 12:
		tetris_lines.matrix[5][11] = 1
		block_b.add_to_group("six")
	if tetris_lines.current_loc_vert_b == 6 and tetris_lines.current_loc_hoz_b == 13:
		tetris_lines.matrix[5][12] = 1
		block_b.add_to_group("six")
	if tetris_lines.current_loc_vert_b == 6 and tetris_lines.current_loc_hoz_b == 14:
		tetris_lines.matrix[5][13] = 1
		block_b.add_to_group("six")
	if tetris_lines.current_loc_vert_b == 6 and tetris_lines.current_loc_hoz_b == 15:
		tetris_lines.matrix[5][14] = 1
		block_b.add_to_group("six")
		
	if tetris_lines.current_loc_vert_b == 7 and tetris_lines.current_loc_hoz_b == 1:
		tetris_lines.matrix[6][0] = 1
		block_b.add_to_group("seven")
	if tetris_lines.current_loc_vert_b == 7 and tetris_lines.current_loc_hoz_b == 2:
		tetris_lines.matrix[6][1] = 1
		block_b.add_to_group("seven")
	if tetris_lines.current_loc_vert_b == 7 and tetris_lines.current_loc_hoz_b == 3:
		tetris_lines.matrix[6][2] = 1
		block_b.add_to_group("seven")
	if tetris_lines.current_loc_vert_b == 7 and tetris_lines.current_loc_hoz_b == 4:
		tetris_lines.matrix[6][3] = 1
		block_b.add_to_group("seven")
	if tetris_lines.current_loc_vert_b == 7 and tetris_lines.current_loc_hoz_b == 5:
		tetris_lines.matrix[6][4] = 1
		block_b.add_to_group("seven")
	if tetris_lines.current_loc_vert_b == 7 and tetris_lines.current_loc_hoz_b == 6:
		tetris_lines.matrix[6][5] = 1
		block_b.add_to_group("seven")
	if tetris_lines.current_loc_vert_b == 7 and tetris_lines.current_loc_hoz_b == 7:
		tetris_lines.matrix[6][6] = 1
		block_b.add_to_group("seven")
	if tetris_lines.current_loc_vert_b == 7 and tetris_lines.current_loc_hoz_b == 8:
		tetris_lines.matrix[6][7] = 1
		block_b.add_to_group("seven")
	if tetris_lines.current_loc_vert_b == 7 and tetris_lines.current_loc_hoz_b == 9:
		tetris_lines.matrix[6][8] = 1
		block_b.add_to_group("seven")
	if tetris_lines.current_loc_vert_b == 7 and tetris_lines.current_loc_hoz_b == 10:
		tetris_lines.matrix[6][9] = 1
		block_b.add_to_group("seven")
	if tetris_lines.current_loc_vert_b == 7 and tetris_lines.current_loc_hoz_b == 11:
		tetris_lines.matrix[6][10] = 1
		block_b.add_to_group("seven")
	if tetris_lines.current_loc_vert_b == 7 and tetris_lines.current_loc_hoz_b == 12:
		tetris_lines.matrix[6][11] = 1
		block_b.add_to_group("seven")
	if tetris_lines.current_loc_vert_b == 7 and tetris_lines.current_loc_hoz_b == 13:
		tetris_lines.matrix[6][12] = 1
		block_b.add_to_group("seven")
	if tetris_lines.current_loc_vert_b == 7 and tetris_lines.current_loc_hoz_b == 14:
		tetris_lines.matrix[6][13] = 1
		block_b.add_to_group("seven")
	if tetris_lines.current_loc_vert_b == 7 and tetris_lines.current_loc_hoz_b == 15:
		tetris_lines.matrix[6][14] = 1
		block_b.add_to_group("seven")
		
	if tetris_lines.current_loc_vert_b == 8 and tetris_lines.current_loc_hoz_b == 1:
		tetris_lines.matrix[7][0] = 1
		block_b.add_to_group("eight")
	if tetris_lines.current_loc_vert_b == 8 and tetris_lines.current_loc_hoz_b == 2:
		tetris_lines.matrix[7][1] = 1
		block_b.add_to_group("eight")
	if tetris_lines.current_loc_vert_b == 8 and tetris_lines.current_loc_hoz_b == 3:
		tetris_lines.matrix[7][2] = 1
		block_b.add_to_group("eight")
	if tetris_lines.current_loc_vert_b == 8 and tetris_lines.current_loc_hoz_b == 4:
		tetris_lines.matrix[7][3] = 1
		block_b.add_to_group("eight")
	if tetris_lines.current_loc_vert_b == 8 and tetris_lines.current_loc_hoz_b == 5:
		tetris_lines.matrix[7][4] = 1
		block_b.add_to_group("eight")
	if tetris_lines.current_loc_vert_b == 8 and tetris_lines.current_loc_hoz_b == 6:
		tetris_lines.matrix[7][5] = 1
		block_b.add_to_group("eight")
	if tetris_lines.current_loc_vert_b == 8 and tetris_lines.current_loc_hoz_b == 7:
		tetris_lines.matrix[7][6] = 1
		block_b.add_to_group("eight")
	if tetris_lines.current_loc_vert_b == 8 and tetris_lines.current_loc_hoz_b == 8:
		tetris_lines.matrix[7][7] = 1
		block_b.add_to_group("eight")
	if tetris_lines.current_loc_vert_b == 8 and tetris_lines.current_loc_hoz_b == 9:
		tetris_lines.matrix[7][8] = 1
		block_b.add_to_group("eight")
	if tetris_lines.current_loc_vert_b == 8 and tetris_lines.current_loc_hoz_b == 10:
		tetris_lines.matrix[7][9] = 1
		block_b.add_to_group("eight")
	if tetris_lines.current_loc_vert_b == 8 and tetris_lines.current_loc_hoz_b == 11:
		tetris_lines.matrix[7][10] = 1
		block_b.add_to_group("eight")
	if tetris_lines.current_loc_vert_b == 8 and tetris_lines.current_loc_hoz_b == 12:
		tetris_lines.matrix[7][11] = 1
		block_b.add_to_group("eight")
	if tetris_lines.current_loc_vert_b == 8 and tetris_lines.current_loc_hoz_b == 13:
		tetris_lines.matrix[7][12] = 1
		block_b.add_to_group("eight")
	if tetris_lines.current_loc_vert_b == 8 and tetris_lines.current_loc_hoz_b == 14:
		tetris_lines.matrix[7][13] = 1
		block_b.add_to_group("eight")
	if tetris_lines.current_loc_vert_b == 8 and tetris_lines.current_loc_hoz_b == 15:
		tetris_lines.matrix[7][14] = 1
		block_b.add_to_group("eight")
		
	if tetris_lines.current_loc_vert_b == 9 and tetris_lines.current_loc_hoz_b == 1:
		tetris_lines.matrix[8][0] = 1
		block_b.add_to_group("nine")
	if tetris_lines.current_loc_vert_b == 9 and tetris_lines.current_loc_hoz_b == 2:
		tetris_lines.matrix[8][1] = 1
		block_b.add_to_group("nine")
	if tetris_lines.current_loc_vert_b == 9 and tetris_lines.current_loc_hoz_b == 3:
		tetris_lines.matrix[8][2] = 1
		block_b.add_to_group("nine")
	if tetris_lines.current_loc_vert_b == 9 and tetris_lines.current_loc_hoz_b == 4:
		tetris_lines.matrix[8][3] = 1
		block_b.add_to_group("nine")
	if tetris_lines.current_loc_vert_b == 9 and tetris_lines.current_loc_hoz_b == 5:
		tetris_lines.matrix[8][4] = 1
		block_b.add_to_group("nine")
	if tetris_lines.current_loc_vert_b == 9 and tetris_lines.current_loc_hoz_b == 6:
		tetris_lines.matrix[8][5] = 1
		block_b.add_to_group("nine")
	if tetris_lines.current_loc_vert_b == 9 and tetris_lines.current_loc_hoz_b == 7:
		tetris_lines.matrix[8][6] = 1
		block_b.add_to_group("nine")
	if tetris_lines.current_loc_vert_b == 9 and tetris_lines.current_loc_hoz_b == 8:
		tetris_lines.matrix[8][7] = 1
		block_b.add_to_group("nine")
	if tetris_lines.current_loc_vert_b == 9 and tetris_lines.current_loc_hoz_b == 9:
		tetris_lines.matrix[8][8] = 1
		block_b.add_to_group("nine")
	if tetris_lines.current_loc_vert_b == 9 and tetris_lines.current_loc_hoz_b == 10:
		tetris_lines.matrix[8][9] = 1
		block_b.add_to_group("nine")
	if tetris_lines.current_loc_vert_b == 9 and tetris_lines.current_loc_hoz_b == 11:
		tetris_lines.matrix[8][10] = 1
		block_b.add_to_group("nine")
	if tetris_lines.current_loc_vert_b == 9 and tetris_lines.current_loc_hoz_b == 12:
		tetris_lines.matrix[8][11] = 1
		block_b.add_to_group("nine")
	if tetris_lines.current_loc_vert_b == 9 and tetris_lines.current_loc_hoz_b == 13:
		tetris_lines.matrix[8][12] = 1
		block_b.add_to_group("nine")
	if tetris_lines.current_loc_vert_b == 9 and tetris_lines.current_loc_hoz_b == 14:
		tetris_lines.matrix[8][13] = 1
		block_b.add_to_group("nine")
	if tetris_lines.current_loc_vert_b == 9 and tetris_lines.current_loc_hoz_b == 15:
		tetris_lines.matrix[8][14] = 1
		block_b.add_to_group("nine")
		
	if tetris_lines.current_loc_vert_b == 10 and tetris_lines.current_loc_hoz_b == 1:
		tetris_lines.matrix[9][0] = 1
		block_b.add_to_group("ten")
	if tetris_lines.current_loc_vert_b == 10 and tetris_lines.current_loc_hoz_b == 2:
		tetris_lines.matrix[9][1] = 1
		block_b.add_to_group("ten")
	if tetris_lines.current_loc_vert_b == 10 and tetris_lines.current_loc_hoz_b == 3:
		tetris_lines.matrix[9][2] = 1
		block_b.add_to_group("ten")
	if tetris_lines.current_loc_vert_b == 10 and tetris_lines.current_loc_hoz_b == 4:
		tetris_lines.matrix[9][3] = 1
		block_b.add_to_group("ten")
	if tetris_lines.current_loc_vert_b == 10 and tetris_lines.current_loc_hoz_b == 5:
		tetris_lines.matrix[9][4] = 1
		block_b.add_to_group("ten")
	if tetris_lines.current_loc_vert_b == 10 and tetris_lines.current_loc_hoz_b == 6:
		tetris_lines.matrix[9][5] = 1
		block_b.add_to_group("ten")
	if tetris_lines.current_loc_vert_b == 10 and tetris_lines.current_loc_hoz_b == 7:
		tetris_lines.matrix[9][6] = 1
		block_b.add_to_group("ten")
	if tetris_lines.current_loc_vert_b == 10 and tetris_lines.current_loc_hoz_b == 8:
		tetris_lines.matrix[9][7] = 1
		block_b.add_to_group("ten")
	if tetris_lines.current_loc_vert_b == 10 and tetris_lines.current_loc_hoz_b == 9:
		tetris_lines.matrix[9][8] = 1
		block_b.add_to_group("ten")
	if tetris_lines.current_loc_vert_b == 10 and tetris_lines.current_loc_hoz_b == 10:
		tetris_lines.matrix[9][9] = 1
		block_b.add_to_group("ten")
	if tetris_lines.current_loc_vert_b == 10 and tetris_lines.current_loc_hoz_b == 11:
		tetris_lines.matrix[9][10] = 1
		block_b.add_to_group("ten")
	if tetris_lines.current_loc_vert_b == 10 and tetris_lines.current_loc_hoz_b == 12:
		tetris_lines.matrix[9][11] = 1
		block_b.add_to_group("ten")
	if tetris_lines.current_loc_vert_b == 10 and tetris_lines.current_loc_hoz_b == 13:
		tetris_lines.matrix[9][12] = 1
		block_b.add_to_group("ten")
	if tetris_lines.current_loc_vert_b == 10 and tetris_lines.current_loc_hoz_b == 14:
		tetris_lines.matrix[9][13] = 1
		block_b.add_to_group("ten")
	if tetris_lines.current_loc_vert_b == 10 and tetris_lines.current_loc_hoz_b == 15:
		tetris_lines.matrix[9][14] = 1
		block_b.add_to_group("ten")
		
	if tetris_lines.current_loc_vert_c == 1 and tetris_lines.current_loc_hoz_c == 1:
		tetris_lines.matrix[0][0] = 1
		block_c.add_to_group("one")
	elif tetris_lines.current_loc_vert_c == 1 and tetris_lines.current_loc_hoz_c == 2:
		tetris_lines.matrix[0][1] = 1
		block_c.add_to_group("one")
	elif tetris_lines.current_loc_vert_c == 1 and tetris_lines.current_loc_hoz_c == 3:
		tetris_lines.matrix[0][2] = 1
		block_c.add_to_group("one")
	elif tetris_lines.current_loc_vert_c == 1 and tetris_lines.current_loc_hoz_c == 4:
		tetris_lines.matrix[0][3] = 1
		block_c.add_to_group("one")
	elif tetris_lines.current_loc_vert_c == 1 and tetris_lines.current_loc_hoz_c == 5:
		tetris_lines.matrix[0][4] = 1
		block_c.add_to_group("one")
	elif tetris_lines.current_loc_vert_c == 1 and tetris_lines.current_loc_hoz_c == 6:
		tetris_lines.matrix[0][5] = 1
		block_c.add_to_group("one")
	elif tetris_lines.current_loc_vert_c == 1 and tetris_lines.current_loc_hoz_c == 7:
		tetris_lines.matrix[0][6] = 1
		block_c.add_to_group("one")
	elif tetris_lines.current_loc_vert_c == 1 and tetris_lines.current_loc_hoz_c == 8:
		tetris_lines.matrix[0][7] = 1
		block_c.add_to_group("one")
	elif tetris_lines.current_loc_vert_c == 1 and tetris_lines.current_loc_hoz_c == 9:
		tetris_lines.matrix[0][8] = 1
		block_c.add_to_group("one")
	elif tetris_lines.current_loc_vert_c == 1 and tetris_lines.current_loc_hoz_c == 10:
		tetris_lines.matrix[0][9] = 1
		block_c.add_to_group("one")
	elif tetris_lines.current_loc_vert_c == 1 and tetris_lines.current_loc_hoz_c == 11:
		tetris_lines.matrix[0][10] = 1
		block_c.add_to_group("one")
	elif tetris_lines.current_loc_vert_c == 1 and tetris_lines.current_loc_hoz_c == 12:
		tetris_lines.matrix[0][11] = 1
		block_c.add_to_group("one")
	elif tetris_lines.current_loc_vert_c == 1 and tetris_lines.current_loc_hoz_c == 13:
		tetris_lines.matrix[0][12] = 1
		block_c.add_to_group("one")
	elif tetris_lines.current_loc_vert_c == 1 and tetris_lines.current_loc_hoz_c == 14:
		tetris_lines.matrix[0][13] = 1
		block_c.add_to_group("one")
	elif tetris_lines.current_loc_vert_c == 1 and tetris_lines.current_loc_hoz_c == 15:
		tetris_lines.matrix[0][14] = 1
		block_c.add_to_group("one")
		
		
	if tetris_lines.current_loc_vert_c == 2 and tetris_lines.current_loc_hoz_c == 1:
		tetris_lines.matrix[1][0] = 1
		block_c.add_to_group("two")
	if tetris_lines.current_loc_vert_c == 2 and tetris_lines.current_loc_hoz_c == 2:
		tetris_lines.matrix[1][1] = 1
		block_c.add_to_group("two")
	if tetris_lines.current_loc_vert_c == 2 and tetris_lines.current_loc_hoz_c == 3:
		tetris_lines.matrix[1][2] = 1
		block_c.add_to_group("two")
	if tetris_lines.current_loc_vert_c == 2 and tetris_lines.current_loc_hoz_c == 4:
		tetris_lines.matrix[1][3] = 1
		block_c.add_to_group("two")
	if tetris_lines.current_loc_vert_c == 2 and tetris_lines.current_loc_hoz_c == 5:
		tetris_lines.matrix[1][4] = 1
		block_c.add_to_group("two")
	if tetris_lines.current_loc_vert_c == 2 and tetris_lines.current_loc_hoz_c == 6:
		tetris_lines.matrix[1][5] = 1
		block_c.add_to_group("two")
	if tetris_lines.current_loc_vert_c == 2 and tetris_lines.current_loc_hoz_c == 7:
		tetris_lines.matrix[1][6] = 1
		block_c.add_to_group("two")
	if tetris_lines.current_loc_vert_c == 2 and tetris_lines.current_loc_hoz_c == 8:
		tetris_lines.matrix[1][7] = 1
		block_c.add_to_group("two")
	if tetris_lines.current_loc_vert_c == 2 and tetris_lines.current_loc_hoz_c == 9:
		tetris_lines.matrix[1][8] = 1
		block_c.add_to_group("two")
	if tetris_lines.current_loc_vert_c == 2 and tetris_lines.current_loc_hoz_c == 10:
		tetris_lines.matrix[1][9] = 1
		block_c.add_to_group("two")
	if tetris_lines.current_loc_vert_c == 2 and tetris_lines.current_loc_hoz_c == 11:
		tetris_lines.matrix[1][10] = 1
		block_c.add_to_group("two")
	if tetris_lines.current_loc_vert_c == 2 and tetris_lines.current_loc_hoz_c == 12:
		tetris_lines.matrix[1][11] = 1
		block_c.add_to_group("two")
	if tetris_lines.current_loc_vert_c == 2 and tetris_lines.current_loc_hoz_c == 13:
		tetris_lines.matrix[1][12] = 1
		block_c.add_to_group("two")
	if tetris_lines.current_loc_vert_c == 2 and tetris_lines.current_loc_hoz_c == 14:
		tetris_lines.matrix[1][13] = 1
		block_c.add_to_group("two")
	if tetris_lines.current_loc_vert_c == 2 and tetris_lines.current_loc_hoz_c == 15:
		tetris_lines.matrix[1][14] = 1
		block_c.add_to_group("two")
		
	if tetris_lines.current_loc_vert_c == 3 and tetris_lines.current_loc_hoz_c == 1:
		tetris_lines.matrix[2][0] = 1
		block_c.add_to_group("three")
	if tetris_lines.current_loc_vert_c == 3 and tetris_lines.current_loc_hoz_c == 2:
		tetris_lines.matrix[2][1] = 1
		block_c.add_to_group("three")
	if tetris_lines.current_loc_vert_c == 3 and tetris_lines.current_loc_hoz_c == 3:
		tetris_lines.matrix[2][2] = 1
		block_c.add_to_group("three")
	if tetris_lines.current_loc_vert_c == 3 and tetris_lines.current_loc_hoz_c == 4:
		tetris_lines.matrix[2][3] = 1
		block_c.add_to_group("three")
	if tetris_lines.current_loc_vert_c == 3 and tetris_lines.current_loc_hoz_c == 5:
		tetris_lines.matrix[2][4] = 1
		block_c.add_to_group("three")
	if tetris_lines.current_loc_vert_c == 3 and tetris_lines.current_loc_hoz_c == 6:
		tetris_lines.matrix[2][5] = 1
		block_c.add_to_group("three")
	if tetris_lines.current_loc_vert_c == 3 and tetris_lines.current_loc_hoz_c == 7:
		tetris_lines.matrix[2][6] = 1
		block_c.add_to_group("three")
	if tetris_lines.current_loc_vert_c == 3 and tetris_lines.current_loc_hoz_c == 8:
		tetris_lines.matrix[2][7] = 1
		block_c.add_to_group("three")
	if tetris_lines.current_loc_vert_c == 3 and tetris_lines.current_loc_hoz_c == 9:
		tetris_lines.matrix[2][8] = 1
		block_c.add_to_group("three")
	if tetris_lines.current_loc_vert_c == 3 and tetris_lines.current_loc_hoz_c == 10:
		tetris_lines.matrix[2][9] = 1
		block_c.add_to_group("three")
	if tetris_lines.current_loc_vert_c == 3 and tetris_lines.current_loc_hoz_c == 11:
		tetris_lines.matrix[2][10] = 1
		block_c.add_to_group("three")
	if tetris_lines.current_loc_vert_c == 3 and tetris_lines.current_loc_hoz_c == 12:
		tetris_lines.matrix[2][11] = 1
		block_c.add_to_group("three")
	if tetris_lines.current_loc_vert_c == 3 and tetris_lines.current_loc_hoz_c == 13:
		tetris_lines.matrix[2][12] = 1
		block_c.add_to_group("three")
	if tetris_lines.current_loc_vert_c == 3 and tetris_lines.current_loc_hoz_c == 14:
		tetris_lines.matrix[2][13] = 1
		block_c.add_to_group("three")
	if tetris_lines.current_loc_vert_c == 3 and tetris_lines.current_loc_hoz_c == 15:
		tetris_lines.matrix[2][14] = 1
		block_c.add_to_group("three")
		
	if tetris_lines.current_loc_vert_c == 4 and tetris_lines.current_loc_hoz_c == 1:
		tetris_lines.matrix[3][0] = 1
		block_c.add_to_group("four")
	if tetris_lines.current_loc_vert_c == 4 and tetris_lines.current_loc_hoz_c == 2:
		tetris_lines.matrix[3][1] = 1
		block_c.add_to_group("four")
	if tetris_lines.current_loc_vert_c == 4 and tetris_lines.current_loc_hoz_c == 3:
		tetris_lines.matrix[3][2] = 1
		block_c.add_to_group("four")
	if tetris_lines.current_loc_vert_c == 4 and tetris_lines.current_loc_hoz_c == 4:
		tetris_lines.matrix[3][3] = 1
		block_c.add_to_group("four")
	if tetris_lines.current_loc_vert_c == 4 and tetris_lines.current_loc_hoz_c == 5:
		tetris_lines.matrix[3][4] = 1
		block_c.add_to_group("four")
	if tetris_lines.current_loc_vert_c == 4 and tetris_lines.current_loc_hoz_c == 6:
		tetris_lines.matrix[3][5] = 1
		block_c.add_to_group("four")
	if tetris_lines.current_loc_vert_c == 4 and tetris_lines.current_loc_hoz_c == 7:
		tetris_lines.matrix[3][6] = 1
		block_c.add_to_group("four")
	if tetris_lines.current_loc_vert_c == 4 and tetris_lines.current_loc_hoz_c == 8:
		tetris_lines.matrix[3][7] = 1
		block_c.add_to_group("four")
	if tetris_lines.current_loc_vert_c == 4 and tetris_lines.current_loc_hoz_c == 9:
		tetris_lines.matrix[3][8] = 1
		block_c.add_to_group("four")
	if tetris_lines.current_loc_vert_c == 4 and tetris_lines.current_loc_hoz_c == 10:
		tetris_lines.matrix[3][9] = 1
		block_c.add_to_group("four")
	if tetris_lines.current_loc_vert_c == 4 and tetris_lines.current_loc_hoz_c == 11:
		tetris_lines.matrix[3][10] = 1
		block_c.add_to_group("four")
	if tetris_lines.current_loc_vert_c == 4 and tetris_lines.current_loc_hoz_c == 12:
		tetris_lines.matrix[3][11] = 1
		block_c.add_to_group("four")
	if tetris_lines.current_loc_vert_c == 4 and tetris_lines.current_loc_hoz_c == 13:
		tetris_lines.matrix[3][12] = 1
		block_c.add_to_group("four")
	if tetris_lines.current_loc_vert_c == 4 and tetris_lines.current_loc_hoz_c == 14:
		tetris_lines.matrix[3][13] = 1
		block_c.add_to_group("four")
	if tetris_lines.current_loc_vert_c == 4 and tetris_lines.current_loc_hoz_c == 15:
		tetris_lines.matrix[3][14] = 1
		block_c.add_to_group("four")
		
	if tetris_lines.current_loc_vert_c == 5 and tetris_lines.current_loc_hoz_c == 1:
		tetris_lines.matrix[4][0] = 1
		block_c.add_to_group("five")
	if tetris_lines.current_loc_vert_c == 5 and tetris_lines.current_loc_hoz_c == 2:
		tetris_lines.matrix[4][1] = 1
		block_c.add_to_group("five")
	if tetris_lines.current_loc_vert_c == 5 and tetris_lines.current_loc_hoz_c == 3:
		tetris_lines.matrix[4][2] = 1
		block_c.add_to_group("five")
	if tetris_lines.current_loc_vert_c == 5 and tetris_lines.current_loc_hoz_c == 4:
		tetris_lines.matrix[4][3] = 1
		block_c.add_to_group("five")
	if tetris_lines.current_loc_vert_c == 5 and tetris_lines.current_loc_hoz_c == 5:
		tetris_lines.matrix[4][4] = 1
		block_c.add_to_group("five")
	if tetris_lines.current_loc_vert_c == 5 and tetris_lines.current_loc_hoz_c == 6:
		tetris_lines.matrix[4][5] = 1
		block_c.add_to_group("five")
	if tetris_lines.current_loc_vert_c == 5 and tetris_lines.current_loc_hoz_c == 7:
		tetris_lines.matrix[4][6] = 1
		block_c.add_to_group("five")
	if tetris_lines.current_loc_vert_c == 5 and tetris_lines.current_loc_hoz_c == 8:
		tetris_lines.matrix[4][7] = 1
		block_c.add_to_group("five")
	if tetris_lines.current_loc_vert_c == 5 and tetris_lines.current_loc_hoz_c == 9:
		tetris_lines.matrix[4][8] = 1
		block_c.add_to_group("five")
	if tetris_lines.current_loc_vert_c == 5 and tetris_lines.current_loc_hoz_c == 10:
		tetris_lines.matrix[4][9] = 1
		block_c.add_to_group("five")
	if tetris_lines.current_loc_vert_c == 5 and tetris_lines.current_loc_hoz_c == 11:
		tetris_lines.matrix[4][10] = 1
		block_c.add_to_group("five")
	if tetris_lines.current_loc_vert_c == 5 and tetris_lines.current_loc_hoz_c == 12:
		tetris_lines.matrix[4][11] = 1
		block_c.add_to_group("five")
	if tetris_lines.current_loc_vert_c == 5 and tetris_lines.current_loc_hoz_c == 13:
		tetris_lines.matrix[4][12] = 1
		block_c.add_to_group("five")
	if tetris_lines.current_loc_vert_c == 5 and tetris_lines.current_loc_hoz_c == 14:
		tetris_lines.matrix[4][13] = 1
		block_c.add_to_group("five")
	if tetris_lines.current_loc_vert_c == 5 and tetris_lines.current_loc_hoz_c == 15:
		tetris_lines.matrix[4][14] = 1
		block_c.add_to_group("five")
		
	if tetris_lines.current_loc_vert_c == 6 and tetris_lines.current_loc_hoz_c == 1:
		tetris_lines.matrix[5][0] = 1
		block_c.add_to_group("six")
	if tetris_lines.current_loc_vert_c == 6 and tetris_lines.current_loc_hoz_c == 2:
		tetris_lines.matrix[5][1] = 1
		block_c.add_to_group("six")
	if tetris_lines.current_loc_vert_c == 6 and tetris_lines.current_loc_hoz_c == 3:
		tetris_lines.matrix[5][2] = 1
		block_c.add_to_group("six")
	if tetris_lines.current_loc_vert_c == 6 and tetris_lines.current_loc_hoz_c == 4:
		tetris_lines.matrix[5][3] = 1
		block_c.add_to_group("six")
	if tetris_lines.current_loc_vert_c == 6 and tetris_lines.current_loc_hoz_c == 5:
		tetris_lines.matrix[5][4] = 1
		block_c.add_to_group("six")
	if tetris_lines.current_loc_vert_c == 6 and tetris_lines.current_loc_hoz_c == 6:
		tetris_lines.matrix[5][5] = 1
		block_c.add_to_group("six")
	if tetris_lines.current_loc_vert_c == 6 and tetris_lines.current_loc_hoz_c == 7:
		tetris_lines.matrix[5][6] = 1
		block_c.add_to_group("six")
	if tetris_lines.current_loc_vert_c == 6 and tetris_lines.current_loc_hoz_c == 8:
		tetris_lines.matrix[5][7] = 1
		block_c.add_to_group("six")
	if tetris_lines.current_loc_vert_c == 6 and tetris_lines.current_loc_hoz_c == 9:
		tetris_lines.matrix[5][8] = 1
		block_c.add_to_group("six")
	if tetris_lines.current_loc_vert_c == 6 and tetris_lines.current_loc_hoz_c == 10:
		tetris_lines.matrix[5][9] = 1
		block_c.add_to_group("six")
	if tetris_lines.current_loc_vert_c == 6 and tetris_lines.current_loc_hoz_c == 11:
		tetris_lines.matrix[5][10] = 1
		block_c.add_to_group("six")
	if tetris_lines.current_loc_vert_c == 6 and tetris_lines.current_loc_hoz_c == 12:
		tetris_lines.matrix[5][11] = 1
		block_c.add_to_group("six")
	if tetris_lines.current_loc_vert_c == 6 and tetris_lines.current_loc_hoz_c == 13:
		tetris_lines.matrix[5][12] = 1
		block_c.add_to_group("six")
	if tetris_lines.current_loc_vert_c == 6 and tetris_lines.current_loc_hoz_c == 14:
		tetris_lines.matrix[5][13] = 1
		block_c.add_to_group("six")
	if tetris_lines.current_loc_vert_c == 6 and tetris_lines.current_loc_hoz_c == 15:
		tetris_lines.matrix[5][14] = 1
		block_c.add_to_group("six")
		
	if tetris_lines.current_loc_vert_c == 7 and tetris_lines.current_loc_hoz_c == 1:
		tetris_lines.matrix[6][0] = 1
		block_c.add_to_group("seven")
	if tetris_lines.current_loc_vert_c == 7 and tetris_lines.current_loc_hoz_c == 2:
		tetris_lines.matrix[6][1] = 1
		block_c.add_to_group("seven")
	if tetris_lines.current_loc_vert_c == 7 and tetris_lines.current_loc_hoz_c == 3:
		tetris_lines.matrix[6][2] = 1
		block_c.add_to_group("seven")
	if tetris_lines.current_loc_vert_c == 7 and tetris_lines.current_loc_hoz_c == 4:
		tetris_lines.matrix[6][3] = 1
		block_c.add_to_group("seven")
	if tetris_lines.current_loc_vert_c == 7 and tetris_lines.current_loc_hoz_c == 5:
		tetris_lines.matrix[6][4] = 1
		block_c.add_to_group("seven")
	if tetris_lines.current_loc_vert_c == 7 and tetris_lines.current_loc_hoz_c == 6:
		tetris_lines.matrix[6][5] = 1
		block_c.add_to_group("seven")
	if tetris_lines.current_loc_vert_c == 7 and tetris_lines.current_loc_hoz_c == 7:
		tetris_lines.matrix[6][6] = 1
		block_c.add_to_group("seven")
	if tetris_lines.current_loc_vert_c == 7 and tetris_lines.current_loc_hoz_c == 8:
		tetris_lines.matrix[6][7] = 1
		block_c.add_to_group("seven")
	if tetris_lines.current_loc_vert_c == 7 and tetris_lines.current_loc_hoz_c == 9:
		tetris_lines.matrix[6][8] = 1
		block_c.add_to_group("seven")
	if tetris_lines.current_loc_vert_c == 7 and tetris_lines.current_loc_hoz_c == 10:
		tetris_lines.matrix[6][9] = 1
		block_c.add_to_group("seven")
	if tetris_lines.current_loc_vert_c == 7 and tetris_lines.current_loc_hoz_c == 11:
		tetris_lines.matrix[6][10] = 1
		block_c.add_to_group("seven")
	if tetris_lines.current_loc_vert_c == 7 and tetris_lines.current_loc_hoz_c == 12:
		tetris_lines.matrix[6][11] = 1
		block_c.add_to_group("seven")
	if tetris_lines.current_loc_vert_c == 7 and tetris_lines.current_loc_hoz_c == 13:
		tetris_lines.matrix[6][12] = 1
		block_c.add_to_group("seven")
	if tetris_lines.current_loc_vert_c == 7 and tetris_lines.current_loc_hoz_c == 14:
		tetris_lines.matrix[6][13] = 1
		block_c.add_to_group("seven")
	if tetris_lines.current_loc_vert_c == 7 and tetris_lines.current_loc_hoz_c == 15:
		tetris_lines.matrix[6][14] = 1
		block_c.add_to_group("seven")
		
	if tetris_lines.current_loc_vert_c == 8 and tetris_lines.current_loc_hoz_c == 1:
		tetris_lines.matrix[7][0] = 1
		block_c.add_to_group("eight")
	if tetris_lines.current_loc_vert_c == 8 and tetris_lines.current_loc_hoz_c == 2:
		tetris_lines.matrix[7][1] = 1
		block_c.add_to_group("eight")
	if tetris_lines.current_loc_vert_c == 8 and tetris_lines.current_loc_hoz_c == 3:
		tetris_lines.matrix[7][2] = 1
		block_c.add_to_group("eight")
	if tetris_lines.current_loc_vert_c == 8 and tetris_lines.current_loc_hoz_c == 4:
		tetris_lines.matrix[7][3] = 1
		block_c.add_to_group("eight")
	if tetris_lines.current_loc_vert_c == 8 and tetris_lines.current_loc_hoz_c == 5:
		tetris_lines.matrix[7][4] = 1
		block_c.add_to_group("eight")
	if tetris_lines.current_loc_vert_c == 8 and tetris_lines.current_loc_hoz_c == 6:
		tetris_lines.matrix[7][5] = 1
		block_c.add_to_group("eight")
	if tetris_lines.current_loc_vert_c == 8 and tetris_lines.current_loc_hoz_c == 7:
		tetris_lines.matrix[7][6] = 1
		block_c.add_to_group("eight")
	if tetris_lines.current_loc_vert_c == 8 and tetris_lines.current_loc_hoz_c == 8:
		tetris_lines.matrix[7][7] = 1
		block_c.add_to_group("eight")
	if tetris_lines.current_loc_vert_c == 8 and tetris_lines.current_loc_hoz_c == 9:
		tetris_lines.matrix[7][8] = 1
		block_c.add_to_group("eight")
	if tetris_lines.current_loc_vert_c == 8 and tetris_lines.current_loc_hoz_c == 10:
		tetris_lines.matrix[7][9] = 1
		block_c.add_to_group("eight")
	if tetris_lines.current_loc_vert_c == 8 and tetris_lines.current_loc_hoz_c == 11:
		tetris_lines.matrix[7][10] = 1
		block_c.add_to_group("eight")
	if tetris_lines.current_loc_vert_c == 8 and tetris_lines.current_loc_hoz_c == 12:
		tetris_lines.matrix[7][11] = 1
		block_c.add_to_group("eight")
	if tetris_lines.current_loc_vert_c == 8 and tetris_lines.current_loc_hoz_c == 13:
		tetris_lines.matrix[7][12] = 1
		block_c.add_to_group("eight")
	if tetris_lines.current_loc_vert_c == 8 and tetris_lines.current_loc_hoz_c == 14:
		tetris_lines.matrix[7][13] = 1
		block_c.add_to_group("eight")
	if tetris_lines.current_loc_vert_c == 8 and tetris_lines.current_loc_hoz_c == 15:
		tetris_lines.matrix[7][14] = 1
		block_c.add_to_group("eight")
		
	if tetris_lines.current_loc_vert_c == 9 and tetris_lines.current_loc_hoz_c == 1:
		tetris_lines.matrix[8][0] = 1
		block_c.add_to_group("nine")
	if tetris_lines.current_loc_vert_c == 9 and tetris_lines.current_loc_hoz_c == 2:
		tetris_lines.matrix[8][1] = 1
		block_c.add_to_group("nine")
	if tetris_lines.current_loc_vert_c == 9 and tetris_lines.current_loc_hoz_c == 3:
		tetris_lines.matrix[8][2] = 1
		block_c.add_to_group("nine")
	if tetris_lines.current_loc_vert_c == 9 and tetris_lines.current_loc_hoz_c == 4:
		tetris_lines.matrix[8][3] = 1
		block_c.add_to_group("nine")
	if tetris_lines.current_loc_vert_c == 9 and tetris_lines.current_loc_hoz_c == 5:
		tetris_lines.matrix[8][4] = 1
		block_c.add_to_group("nine")
	if tetris_lines.current_loc_vert_c == 9 and tetris_lines.current_loc_hoz_c == 6:
		tetris_lines.matrix[8][5] = 1
		block_c.add_to_group("nine")
	if tetris_lines.current_loc_vert_c == 9 and tetris_lines.current_loc_hoz_c == 7:
		tetris_lines.matrix[8][6] = 1
		block_c.add_to_group("nine")
	if tetris_lines.current_loc_vert_c == 9 and tetris_lines.current_loc_hoz_c == 8:
		tetris_lines.matrix[8][7] = 1
		block_c.add_to_group("nine")
	if tetris_lines.current_loc_vert_c == 9 and tetris_lines.current_loc_hoz_c == 9:
		tetris_lines.matrix[8][8] = 1
		block_c.add_to_group("nine")
	if tetris_lines.current_loc_vert_c == 9 and tetris_lines.current_loc_hoz_c == 10:
		tetris_lines.matrix[8][9] = 1
		block_c.add_to_group("nine")
	if tetris_lines.current_loc_vert_c == 9 and tetris_lines.current_loc_hoz_c == 11:
		tetris_lines.matrix[8][10] = 1
		block_c.add_to_group("nine")
	if tetris_lines.current_loc_vert_c == 9 and tetris_lines.current_loc_hoz_c == 12:
		tetris_lines.matrix[8][11] = 1
		block_c.add_to_group("nine")
	if tetris_lines.current_loc_vert_c == 9 and tetris_lines.current_loc_hoz_c == 13:
		tetris_lines.matrix[8][12] = 1
		block_c.add_to_group("nine")
	if tetris_lines.current_loc_vert_c == 9 and tetris_lines.current_loc_hoz_c == 14:
		tetris_lines.matrix[8][13] = 1
		block_c.add_to_group("nine")
	if tetris_lines.current_loc_vert_c == 9 and tetris_lines.current_loc_hoz_c == 15:
		tetris_lines.matrix[8][14] = 1
		block_c.add_to_group("nine")
		
	if tetris_lines.current_loc_vert_c == 10 and tetris_lines.current_loc_hoz_c == 1:
		tetris_lines.matrix[9][0] = 1
		block_c.add_to_group("ten")
	if tetris_lines.current_loc_vert_c == 10 and tetris_lines.current_loc_hoz_c == 2:
		tetris_lines.matrix[9][1] = 1
		block_c.add_to_group("ten")
	if tetris_lines.current_loc_vert_c == 10 and tetris_lines.current_loc_hoz_c == 3:
		tetris_lines.matrix[9][2] = 1
		block_c.add_to_group("ten")
	if tetris_lines.current_loc_vert_c == 10 and tetris_lines.current_loc_hoz_c == 4:
		tetris_lines.matrix[9][3] = 1
		block_c.add_to_group("ten")
	if tetris_lines.current_loc_vert_c == 10 and tetris_lines.current_loc_hoz_c == 5:
		tetris_lines.matrix[9][4] = 1
		block_c.add_to_group("ten")
	if tetris_lines.current_loc_vert_c == 10 and tetris_lines.current_loc_hoz_c == 6:
		tetris_lines.matrix[9][5] = 1
		block_c.add_to_group("ten")
	if tetris_lines.current_loc_vert_c == 10 and tetris_lines.current_loc_hoz_c == 7:
		tetris_lines.matrix[9][6] = 1
		block_c.add_to_group("ten")
	if tetris_lines.current_loc_vert_c == 10 and tetris_lines.current_loc_hoz_c == 8:
		tetris_lines.matrix[9][7] = 1
		block_c.add_to_group("ten")
	if tetris_lines.current_loc_vert_c == 10 and tetris_lines.current_loc_hoz_c == 9:
		tetris_lines.matrix[9][8] = 1
		block_c.add_to_group("ten")
	if tetris_lines.current_loc_vert_c == 10 and tetris_lines.current_loc_hoz_c == 10:
		tetris_lines.matrix[9][9] = 1
		block_c.add_to_group("ten")
	if tetris_lines.current_loc_vert_c == 10 and tetris_lines.current_loc_hoz_c == 11:
		tetris_lines.matrix[9][10] = 1
		block_c.add_to_group("ten")
	if tetris_lines.current_loc_vert_c == 10 and tetris_lines.current_loc_hoz_c == 12:
		tetris_lines.matrix[9][11] = 1
		block_c.add_to_group("ten")
	if tetris_lines.current_loc_vert_c == 10 and tetris_lines.current_loc_hoz_c == 13:
		tetris_lines.matrix[9][12] = 1
		block_c.add_to_group("ten")
	if tetris_lines.current_loc_vert_c == 10 and tetris_lines.current_loc_hoz_c == 14:
		tetris_lines.matrix[9][13] = 1
		block_c.add_to_group("ten")
	if tetris_lines.current_loc_vert_c == 10 and tetris_lines.current_loc_hoz_c == 15:
		tetris_lines.matrix[9][14] = 1
		block_c.add_to_group("ten")
		
	if tetris_lines.current_loc_vert_d == 1 and tetris_lines.current_loc_hoz_d == 1:
		tetris_lines.matrix[0][0] = 1
		block_d.add_to_group("one")
	elif tetris_lines.current_loc_vert_d == 1 and tetris_lines.current_loc_hoz_d == 2:
		tetris_lines.matrix[0][1] = 1
		block_d.add_to_group("one")
	elif tetris_lines.current_loc_vert_d == 1 and tetris_lines.current_loc_hoz_d == 3:
		tetris_lines.matrix[0][2] = 1
		block_d.add_to_group("one")
	elif tetris_lines.current_loc_vert_d == 1 and tetris_lines.current_loc_hoz_d == 4:
		tetris_lines.matrix[0][3] = 1
		block_d.add_to_group("one")
	elif tetris_lines.current_loc_vert_d == 1 and tetris_lines.current_loc_hoz_d == 5:
		tetris_lines.matrix[0][4] = 1
		block_d.add_to_group("one")
	elif tetris_lines.current_loc_vert_d == 1 and tetris_lines.current_loc_hoz_d == 6:
		tetris_lines.matrix[0][5] = 1
		block_d.add_to_group("one")
	elif tetris_lines.current_loc_vert_d == 1 and tetris_lines.current_loc_hoz_d == 7:
		tetris_lines.matrix[0][6] = 1
		block_d.add_to_group("one")
	elif tetris_lines.current_loc_vert_d == 1 and tetris_lines.current_loc_hoz_d == 8:
		tetris_lines.matrix[0][7] = 1
		block_d.add_to_group("one")
	elif tetris_lines.current_loc_vert_d == 1 and tetris_lines.current_loc_hoz_d == 9:
		tetris_lines.matrix[0][8] = 1
		block_d.add_to_group("one")
	elif tetris_lines.current_loc_vert_d == 1 and tetris_lines.current_loc_hoz_d == 10:
		tetris_lines.matrix[0][9] = 1
		block_d.add_to_group("one")
	elif tetris_lines.current_loc_vert_d == 1 and tetris_lines.current_loc_hoz_d == 11:
		tetris_lines.matrix[0][10] = 1
		block_d.add_to_group("one")
	elif tetris_lines.current_loc_vert_d == 1 and tetris_lines.current_loc_hoz_d == 12:
		tetris_lines.matrix[0][11] = 1
		block_d.add_to_group("one")
	elif tetris_lines.current_loc_vert_d == 1 and tetris_lines.current_loc_hoz_d == 13:
		tetris_lines.matrix[0][12] = 1
		block_d.add_to_group("one")
	elif tetris_lines.current_loc_vert_d == 1 and tetris_lines.current_loc_hoz_d == 14:
		tetris_lines.matrix[0][13] = 1
		block_d.add_to_group("one")
	elif tetris_lines.current_loc_vert_d == 1 and tetris_lines.current_loc_hoz_d == 15:
		tetris_lines.matrix[0][14] = 1
		block_d.add_to_group("one")
		
		
	if tetris_lines.current_loc_vert_d == 2 and tetris_lines.current_loc_hoz_d == 1:
		tetris_lines.matrix[1][0] = 1
		block_d.add_to_group("two")
	if tetris_lines.current_loc_vert_d == 2 and tetris_lines.current_loc_hoz_d == 2:
		tetris_lines.matrix[1][1] = 1
		block_d.add_to_group("two")
	if tetris_lines.current_loc_vert_d == 2 and tetris_lines.current_loc_hoz_d == 3:
		tetris_lines.matrix[1][2] = 1
		block_d.add_to_group("two")
	if tetris_lines.current_loc_vert_d == 2 and tetris_lines.current_loc_hoz_d == 4:
		tetris_lines.matrix[1][3] = 1
		block_d.add_to_group("two")
	if tetris_lines.current_loc_vert_d == 2 and tetris_lines.current_loc_hoz_d == 5:
		tetris_lines.matrix[1][4] = 1
		block_d.add_to_group("two")
	if tetris_lines.current_loc_vert_d == 2 and tetris_lines.current_loc_hoz_d == 6:
		tetris_lines.matrix[1][5] = 1
		block_d.add_to_group("two")
	if tetris_lines.current_loc_vert_d == 2 and tetris_lines.current_loc_hoz_d == 7:
		tetris_lines.matrix[1][6] = 1
		block_d.add_to_group("two")
	if tetris_lines.current_loc_vert_d == 2 and tetris_lines.current_loc_hoz_d == 8:
		tetris_lines.matrix[1][7] = 1
		block_d.add_to_group("two")
	if tetris_lines.current_loc_vert_d == 2 and tetris_lines.current_loc_hoz_d == 9:
		tetris_lines.matrix[1][8] = 1
		block_d.add_to_group("two")
	if tetris_lines.current_loc_vert_d == 2 and tetris_lines.current_loc_hoz_d == 10:
		tetris_lines.matrix[1][9] = 1
		block_d.add_to_group("two")
	if tetris_lines.current_loc_vert_d == 2 and tetris_lines.current_loc_hoz_d == 11:
		tetris_lines.matrix[1][10] = 1
		block_d.add_to_group("two")
	if tetris_lines.current_loc_vert_d == 2 and tetris_lines.current_loc_hoz_d == 12:
		tetris_lines.matrix[1][11] = 1
		block_d.add_to_group("two")
	if tetris_lines.current_loc_vert_d == 2 and tetris_lines.current_loc_hoz_d == 13:
		tetris_lines.matrix[1][12] = 1
		block_d.add_to_group("two")
	if tetris_lines.current_loc_vert_d == 2 and tetris_lines.current_loc_hoz_d == 14:
		tetris_lines.matrix[1][13] = 1
		block_d.add_to_group("two")
	if tetris_lines.current_loc_vert_d == 2 and tetris_lines.current_loc_hoz_d == 15:
		tetris_lines.matrix[1][14] = 1
		block_d.add_to_group("two")
		
	if tetris_lines.current_loc_vert_d == 3 and tetris_lines.current_loc_hoz_d == 1:
		tetris_lines.matrix[2][0] = 1
		block_d.add_to_group("three")
	if tetris_lines.current_loc_vert_d == 3 and tetris_lines.current_loc_hoz_d == 2:
		tetris_lines.matrix[2][1] = 1
		block_d.add_to_group("three")
	if tetris_lines.current_loc_vert_d == 3 and tetris_lines.current_loc_hoz_d == 3:
		tetris_lines.matrix[2][2] = 1
		block_d.add_to_group("three")
	if tetris_lines.current_loc_vert_d == 3 and tetris_lines.current_loc_hoz_d == 4:
		tetris_lines.matrix[2][3] = 1
		block_d.add_to_group("three")
	if tetris_lines.current_loc_vert_d == 3 and tetris_lines.current_loc_hoz_d == 5:
		tetris_lines.matrix[2][4] = 1
		block_d.add_to_group("three")
	if tetris_lines.current_loc_vert_d == 3 and tetris_lines.current_loc_hoz_d == 6:
		tetris_lines.matrix[2][5] = 1
		block_d.add_to_group("three")
	if tetris_lines.current_loc_vert_d == 3 and tetris_lines.current_loc_hoz_d == 7:
		tetris_lines.matrix[2][6] = 1
		block_d.add_to_group("three")
	if tetris_lines.current_loc_vert_d == 3 and tetris_lines.current_loc_hoz_d == 8:
		tetris_lines.matrix[2][7] = 1
		block_d.add_to_group("three")
	if tetris_lines.current_loc_vert_d == 3 and tetris_lines.current_loc_hoz_d == 9:
		tetris_lines.matrix[2][8] = 1
		block_d.add_to_group("three")
	if tetris_lines.current_loc_vert_d == 3 and tetris_lines.current_loc_hoz_d == 10:
		tetris_lines.matrix[2][9] = 1
		block_d.add_to_group("three")
	if tetris_lines.current_loc_vert_d == 3 and tetris_lines.current_loc_hoz_d == 11:
		tetris_lines.matrix[2][10] = 1
		block_d.add_to_group("three")
	if tetris_lines.current_loc_vert_d == 3 and tetris_lines.current_loc_hoz_d == 12:
		tetris_lines.matrix[2][11] = 1
		block_d.add_to_group("three")
	if tetris_lines.current_loc_vert_d == 3 and tetris_lines.current_loc_hoz_d == 13:
		tetris_lines.matrix[2][12] = 1
		block_d.add_to_group("three")
	if tetris_lines.current_loc_vert_d == 3 and tetris_lines.current_loc_hoz_d == 14:
		tetris_lines.matrix[2][13] = 1
		block_d.add_to_group("three")
	if tetris_lines.current_loc_vert_d == 3 and tetris_lines.current_loc_hoz_d == 15:
		tetris_lines.matrix[2][14] = 1
		block_d.add_to_group("three")
		
	if tetris_lines.current_loc_vert_d == 4 and tetris_lines.current_loc_hoz_d == 1:
		tetris_lines.matrix[3][0] = 1
		block_d.add_to_group("four")
	if tetris_lines.current_loc_vert_d == 4 and tetris_lines.current_loc_hoz_d == 2:
		tetris_lines.matrix[3][1] = 1
		block_d.add_to_group("four")
	if tetris_lines.current_loc_vert_d == 4 and tetris_lines.current_loc_hoz_d == 3:
		tetris_lines.matrix[3][2] = 1
		block_d.add_to_group("four")
	if tetris_lines.current_loc_vert_d == 4 and tetris_lines.current_loc_hoz_d == 4:
		tetris_lines.matrix[3][3] = 1
		block_d.add_to_group("four")
	if tetris_lines.current_loc_vert_d == 4 and tetris_lines.current_loc_hoz_d == 5:
		tetris_lines.matrix[3][4] = 1
		block_d.add_to_group("four")
	if tetris_lines.current_loc_vert_d == 4 and tetris_lines.current_loc_hoz_d == 6:
		tetris_lines.matrix[3][5] = 1
		block_d.add_to_group("four")
	if tetris_lines.current_loc_vert_d == 4 and tetris_lines.current_loc_hoz_d == 7:
		tetris_lines.matrix[3][6] = 1
		block_d.add_to_group("four")
	if tetris_lines.current_loc_vert_d == 4 and tetris_lines.current_loc_hoz_d == 8:
		tetris_lines.matrix[3][7] = 1
		block_d.add_to_group("four")
	if tetris_lines.current_loc_vert_d == 4 and tetris_lines.current_loc_hoz_d == 9:
		tetris_lines.matrix[3][8] = 1
		block_d.add_to_group("four")
	if tetris_lines.current_loc_vert_d == 4 and tetris_lines.current_loc_hoz_d == 10:
		tetris_lines.matrix[3][9] = 1
		block_d.add_to_group("four")
	if tetris_lines.current_loc_vert_d == 4 and tetris_lines.current_loc_hoz_d == 11:
		tetris_lines.matrix[3][10] = 1
		block_d.add_to_group("four")
	if tetris_lines.current_loc_vert_d == 4 and tetris_lines.current_loc_hoz_d == 12:
		tetris_lines.matrix[3][11] = 1
		block_d.add_to_group("four")
	if tetris_lines.current_loc_vert_d == 4 and tetris_lines.current_loc_hoz_d == 13:
		tetris_lines.matrix[3][12] = 1
		block_d.add_to_group("four")
	if tetris_lines.current_loc_vert_d == 4 and tetris_lines.current_loc_hoz_d == 14:
		tetris_lines.matrix[3][13] = 1
		block_d.add_to_group("four")
	if tetris_lines.current_loc_vert_d == 4 and tetris_lines.current_loc_hoz_d == 15:
		tetris_lines.matrix[3][14] = 1
		block_d.add_to_group("four")
		
	if tetris_lines.current_loc_vert_d == 5 and tetris_lines.current_loc_hoz_d == 1:
		tetris_lines.matrix[4][0] = 1
		block_d.add_to_group("five")
	if tetris_lines.current_loc_vert_d == 5 and tetris_lines.current_loc_hoz_d == 2:
		tetris_lines.matrix[4][1] = 1
		block_d.add_to_group("five")
	if tetris_lines.current_loc_vert_d == 5 and tetris_lines.current_loc_hoz_d == 3:
		tetris_lines.matrix[4][2] = 1
		block_d.add_to_group("five")
	if tetris_lines.current_loc_vert_d == 5 and tetris_lines.current_loc_hoz_d == 4:
		tetris_lines.matrix[4][3] = 1
		block_d.add_to_group("five")
	if tetris_lines.current_loc_vert_d == 5 and tetris_lines.current_loc_hoz_d == 5:
		tetris_lines.matrix[4][4] = 1
		block_d.add_to_group("five")
	if tetris_lines.current_loc_vert_d == 5 and tetris_lines.current_loc_hoz_d == 6:
		tetris_lines.matrix[4][5] = 1
		block_d.add_to_group("five")
	if tetris_lines.current_loc_vert_d == 5 and tetris_lines.current_loc_hoz_d == 7:
		tetris_lines.matrix[4][6] = 1
		block_d.add_to_group("five")
	if tetris_lines.current_loc_vert_d == 5 and tetris_lines.current_loc_hoz_d == 8:
		tetris_lines.matrix[4][7] = 1
		block_d.add_to_group("five")
	if tetris_lines.current_loc_vert_d == 5 and tetris_lines.current_loc_hoz_d == 9:
		tetris_lines.matrix[4][8] = 1
		block_d.add_to_group("five")
	if tetris_lines.current_loc_vert_d == 5 and tetris_lines.current_loc_hoz_d == 10:
		tetris_lines.matrix[4][9] = 1
		block_d.add_to_group("five")
	if tetris_lines.current_loc_vert_d == 5 and tetris_lines.current_loc_hoz_d == 11:
		tetris_lines.matrix[4][10] = 1
		block_d.add_to_group("five")
	if tetris_lines.current_loc_vert_d == 5 and tetris_lines.current_loc_hoz_d == 12:
		tetris_lines.matrix[4][11] = 1
		block_d.add_to_group("five")
	if tetris_lines.current_loc_vert_d == 5 and tetris_lines.current_loc_hoz_d == 13:
		tetris_lines.matrix[4][12] = 1
		block_d.add_to_group("five")
	if tetris_lines.current_loc_vert_d == 5 and tetris_lines.current_loc_hoz_d == 14:
		tetris_lines.matrix[4][13] = 1
		block_d.add_to_group("five")
	if tetris_lines.current_loc_vert_d == 5 and tetris_lines.current_loc_hoz_d == 15:
		tetris_lines.matrix[4][14] = 1
		block_d.add_to_group("five")
		
	if tetris_lines.current_loc_vert_d == 6 and tetris_lines.current_loc_hoz_d == 1:
		tetris_lines.matrix[5][0] = 1
		block_d.add_to_group("six")
	if tetris_lines.current_loc_vert_d == 6 and tetris_lines.current_loc_hoz_d == 2:
		tetris_lines.matrix[5][1] = 1
		block_d.add_to_group("six")
	if tetris_lines.current_loc_vert_d == 6 and tetris_lines.current_loc_hoz_d == 3:
		tetris_lines.matrix[5][2] = 1
		block_d.add_to_group("six")
	if tetris_lines.current_loc_vert_d == 6 and tetris_lines.current_loc_hoz_d == 4:
		tetris_lines.matrix[5][3] = 1
		block_d.add_to_group("six")
	if tetris_lines.current_loc_vert_d == 6 and tetris_lines.current_loc_hoz_d == 5:
		tetris_lines.matrix[5][4] = 1
		block_d.add_to_group("six")
	if tetris_lines.current_loc_vert_d == 6 and tetris_lines.current_loc_hoz_d == 6:
		tetris_lines.matrix[5][5] = 1
		block_d.add_to_group("six")
	if tetris_lines.current_loc_vert_d == 6 and tetris_lines.current_loc_hoz_d == 7:
		tetris_lines.matrix[5][6] = 1
		block_d.add_to_group("six")
	if tetris_lines.current_loc_vert_d == 6 and tetris_lines.current_loc_hoz_d == 8:
		tetris_lines.matrix[5][7] = 1
		block_d.add_to_group("six")
	if tetris_lines.current_loc_vert_d == 6 and tetris_lines.current_loc_hoz_d == 9:
		tetris_lines.matrix[5][8] = 1
		block_d.add_to_group("six")
	if tetris_lines.current_loc_vert_d == 6 and tetris_lines.current_loc_hoz_d == 10:
		tetris_lines.matrix[5][9] = 1
		block_d.add_to_group("six")
	if tetris_lines.current_loc_vert_d == 6 and tetris_lines.current_loc_hoz_d == 11:
		tetris_lines.matrix[5][10] = 1
		block_d.add_to_group("six")
	if tetris_lines.current_loc_vert_d == 6 and tetris_lines.current_loc_hoz_d == 12:
		tetris_lines.matrix[5][11] = 1
		block_d.add_to_group("six")
	if tetris_lines.current_loc_vert_d == 6 and tetris_lines.current_loc_hoz_d == 13:
		tetris_lines.matrix[5][12] = 1
		block_d.add_to_group("six")
	if tetris_lines.current_loc_vert_d == 6 and tetris_lines.current_loc_hoz_d == 14:
		tetris_lines.matrix[5][13] = 1
		block_d.add_to_group("six")
	if tetris_lines.current_loc_vert_d == 6 and tetris_lines.current_loc_hoz_d == 15:
		tetris_lines.matrix[5][14] = 1
		block_d.add_to_group("six")
		
	if tetris_lines.current_loc_vert_d == 7 and tetris_lines.current_loc_hoz_d == 1:
		tetris_lines.matrix[6][0] = 1
		block_d.add_to_group("seven")
	if tetris_lines.current_loc_vert_d == 7 and tetris_lines.current_loc_hoz_d == 2:
		tetris_lines.matrix[6][1] = 1
		block_d.add_to_group("seven")
	if tetris_lines.current_loc_vert_d == 7 and tetris_lines.current_loc_hoz_d == 3:
		tetris_lines.matrix[6][2] = 1
		block_d.add_to_group("seven")
	if tetris_lines.current_loc_vert_d == 7 and tetris_lines.current_loc_hoz_d == 4:
		tetris_lines.matrix[6][3] = 1
		block_d.add_to_group("seven")
	if tetris_lines.current_loc_vert_d == 7 and tetris_lines.current_loc_hoz_d == 5:
		tetris_lines.matrix[6][4] = 1
		block_d.add_to_group("seven")
	if tetris_lines.current_loc_vert_d == 7 and tetris_lines.current_loc_hoz_d == 6:
		tetris_lines.matrix[6][5] = 1
		block_d.add_to_group("seven")
	if tetris_lines.current_loc_vert_d == 7 and tetris_lines.current_loc_hoz_d == 7:
		tetris_lines.matrix[6][6] = 1
		block_d.add_to_group("seven")
	if tetris_lines.current_loc_vert_d == 7 and tetris_lines.current_loc_hoz_d == 8:
		tetris_lines.matrix[6][7] = 1
		block_d.add_to_group("seven")
	if tetris_lines.current_loc_vert_d == 7 and tetris_lines.current_loc_hoz_d == 9:
		tetris_lines.matrix[6][8] = 1
		block_d.add_to_group("seven")
	if tetris_lines.current_loc_vert_d == 7 and tetris_lines.current_loc_hoz_d == 10:
		tetris_lines.matrix[6][9] = 1
		block_d.add_to_group("seven")
	if tetris_lines.current_loc_vert_d == 7 and tetris_lines.current_loc_hoz_d == 11:
		tetris_lines.matrix[6][10] = 1
		block_d.add_to_group("seven")
	if tetris_lines.current_loc_vert_d == 7 and tetris_lines.current_loc_hoz_d == 12:
		tetris_lines.matrix[6][11] = 1
		block_d.add_to_group("seven")
	if tetris_lines.current_loc_vert_d == 7 and tetris_lines.current_loc_hoz_d == 13:
		tetris_lines.matrix[6][12] = 1
		block_d.add_to_group("seven")
	if tetris_lines.current_loc_vert_d == 7 and tetris_lines.current_loc_hoz_d == 14:
		tetris_lines.matrix[6][13] = 1
		block_d.add_to_group("seven")
	if tetris_lines.current_loc_vert_d == 7 and tetris_lines.current_loc_hoz_d == 15:
		tetris_lines.matrix[6][14] = 1
		block_d.add_to_group("seven")
		
	if tetris_lines.current_loc_vert_d == 8 and tetris_lines.current_loc_hoz_d == 1:
		tetris_lines.matrix[7][0] = 1
		block_d.add_to_group("eight")
	if tetris_lines.current_loc_vert_d == 8 and tetris_lines.current_loc_hoz_d == 2:
		tetris_lines.matrix[7][1] = 1
		block_d.add_to_group("eight")
	if tetris_lines.current_loc_vert_d == 8 and tetris_lines.current_loc_hoz_d == 3:
		tetris_lines.matrix[7][2] = 1
		block_d.add_to_group("eight")
	if tetris_lines.current_loc_vert_d == 8 and tetris_lines.current_loc_hoz_d == 4:
		tetris_lines.matrix[7][3] = 1
		block_d.add_to_group("eight")
	if tetris_lines.current_loc_vert_d == 8 and tetris_lines.current_loc_hoz_d == 5:
		tetris_lines.matrix[7][4] = 1
		block_d.add_to_group("eight")
	if tetris_lines.current_loc_vert_d == 8 and tetris_lines.current_loc_hoz_d == 6:
		tetris_lines.matrix[7][5] = 1
		block_d.add_to_group("eight")
	if tetris_lines.current_loc_vert_d == 8 and tetris_lines.current_loc_hoz_d == 7:
		tetris_lines.matrix[7][6] = 1
		block_d.add_to_group("eight")
	if tetris_lines.current_loc_vert_d == 8 and tetris_lines.current_loc_hoz_d == 8:
		tetris_lines.matrix[7][7] = 1
		block_d.add_to_group("eight")
	if tetris_lines.current_loc_vert_d == 8 and tetris_lines.current_loc_hoz_d == 9:
		tetris_lines.matrix[7][8] = 1
		block_d.add_to_group("eight")
	if tetris_lines.current_loc_vert_d == 8 and tetris_lines.current_loc_hoz_d == 10:
		tetris_lines.matrix[7][9] = 1
		block_d.add_to_group("eight")
	if tetris_lines.current_loc_vert_d == 8 and tetris_lines.current_loc_hoz_d == 11:
		tetris_lines.matrix[7][10] = 1
		block_d.add_to_group("eight")
	if tetris_lines.current_loc_vert_d == 8 and tetris_lines.current_loc_hoz_d == 12:
		tetris_lines.matrix[7][11] = 1
		block_d.add_to_group("eight")
	if tetris_lines.current_loc_vert_d == 8 and tetris_lines.current_loc_hoz_d == 13:
		tetris_lines.matrix[7][12] = 1
		block_d.add_to_group("eight")
	if tetris_lines.current_loc_vert_d == 8 and tetris_lines.current_loc_hoz_d == 14:
		tetris_lines.matrix[7][13] = 1
		block_d.add_to_group("eight")
	if tetris_lines.current_loc_vert_d == 8 and tetris_lines.current_loc_hoz_d == 15:
		tetris_lines.matrix[7][14] = 1
		block_d.add_to_group("eight")
		
	if tetris_lines.current_loc_vert_d == 9 and tetris_lines.current_loc_hoz_d == 1:
		tetris_lines.matrix[8][0] = 1
		block_d.add_to_group("nine")
	if tetris_lines.current_loc_vert_d == 9 and tetris_lines.current_loc_hoz_d == 2:
		tetris_lines.matrix[8][1] = 1
		block_d.add_to_group("nine")
	if tetris_lines.current_loc_vert_d == 9 and tetris_lines.current_loc_hoz_d == 3:
		tetris_lines.matrix[8][2] = 1
		block_d.add_to_group("nine")
	if tetris_lines.current_loc_vert_d == 9 and tetris_lines.current_loc_hoz_d == 4:
		tetris_lines.matrix[8][3] = 1
		block_d.add_to_group("nine")
	if tetris_lines.current_loc_vert_d == 9 and tetris_lines.current_loc_hoz_d == 5:
		tetris_lines.matrix[8][4] = 1
		block_d.add_to_group("nine")
	if tetris_lines.current_loc_vert_d == 9 and tetris_lines.current_loc_hoz_d == 6:
		tetris_lines.matrix[8][5] = 1
		block_d.add_to_group("nine")
	if tetris_lines.current_loc_vert_d == 9 and tetris_lines.current_loc_hoz_d == 7:
		tetris_lines.matrix[8][6] = 1
		block_d.add_to_group("nine")
	if tetris_lines.current_loc_vert_d == 9 and tetris_lines.current_loc_hoz_d == 8:
		tetris_lines.matrix[8][7] = 1
		block_d.add_to_group("nine")
	if tetris_lines.current_loc_vert_d == 9 and tetris_lines.current_loc_hoz_d == 9:
		tetris_lines.matrix[8][8] = 1
		block_d.add_to_group("nine")
	if tetris_lines.current_loc_vert_d == 9 and tetris_lines.current_loc_hoz_d == 10:
		tetris_lines.matrix[8][9] = 1
		block_d.add_to_group("nine")
	if tetris_lines.current_loc_vert_d == 9 and tetris_lines.current_loc_hoz_d == 11:
		tetris_lines.matrix[8][10] = 1
		block_d.add_to_group("nine")
	if tetris_lines.current_loc_vert_d == 9 and tetris_lines.current_loc_hoz_d == 12:
		tetris_lines.matrix[8][11] = 1
		block_d.add_to_group("nine")
	if tetris_lines.current_loc_vert_d == 9 and tetris_lines.current_loc_hoz_d == 13:
		tetris_lines.matrix[8][12] = 1
		block_d.add_to_group("nine")
	if tetris_lines.current_loc_vert_d == 9 and tetris_lines.current_loc_hoz_d == 14:
		tetris_lines.matrix[8][13] = 1
		block_d.add_to_group("nine")
	if tetris_lines.current_loc_vert_d == 9 and tetris_lines.current_loc_hoz_d == 15:
		tetris_lines.matrix[8][14] = 1
		block_d.add_to_group("nine")
		
	if tetris_lines.current_loc_vert_d == 10 and tetris_lines.current_loc_hoz_d == 1:
		tetris_lines.matrix[9][0] = 1
		block_d.add_to_group("ten")
	if tetris_lines.current_loc_vert_d == 10 and tetris_lines.current_loc_hoz_d == 2:
		tetris_lines.matrix[9][1] = 1
		block_d.add_to_group("ten")
	if tetris_lines.current_loc_vert_d == 10 and tetris_lines.current_loc_hoz_d == 3:
		tetris_lines.matrix[9][2] = 1
		block_d.add_to_group("ten")
	if tetris_lines.current_loc_vert_d == 10 and tetris_lines.current_loc_hoz_d == 4:
		tetris_lines.matrix[9][3] = 1
		block_d.add_to_group("ten")
	if tetris_lines.current_loc_vert_d == 10 and tetris_lines.current_loc_hoz_d == 5:
		tetris_lines.matrix[9][4] = 1
		block_d.add_to_group("ten")
	if tetris_lines.current_loc_vert_d == 10 and tetris_lines.current_loc_hoz_d == 6:
		tetris_lines.matrix[9][5] = 1
		block_d.add_to_group("ten")
	if tetris_lines.current_loc_vert_d == 10 and tetris_lines.current_loc_hoz_d == 7:
		tetris_lines.matrix[9][6] = 1
		block_d.add_to_group("ten")
	if tetris_lines.current_loc_vert_d == 10 and tetris_lines.current_loc_hoz_d == 8:
		tetris_lines.matrix[9][7] = 1
		block_d.add_to_group("ten")
	if tetris_lines.current_loc_vert_d == 10 and tetris_lines.current_loc_hoz_d == 9:
		tetris_lines.matrix[9][8] = 1
		block_d.add_to_group("ten")
	if tetris_lines.current_loc_vert_d == 10 and tetris_lines.current_loc_hoz_d == 10:
		tetris_lines.matrix[9][9] = 1
		block_d.add_to_group("ten")
	if tetris_lines.current_loc_vert_d == 10 and tetris_lines.current_loc_hoz_d == 11:
		tetris_lines.matrix[9][10] = 1
		block_d.add_to_group("ten")
	if tetris_lines.current_loc_vert_d == 10 and tetris_lines.current_loc_hoz_d == 12:
		tetris_lines.matrix[9][11] = 1
		block_d.add_to_group("ten")
	if tetris_lines.current_loc_vert_d == 10 and tetris_lines.current_loc_hoz_d == 13:
		tetris_lines.matrix[9][12] = 1
		block_d.add_to_group("ten")
	if tetris_lines.current_loc_vert_d == 10 and tetris_lines.current_loc_hoz_d == 14:
		tetris_lines.matrix[9][13] = 1
		block_d.add_to_group("ten")
	if tetris_lines.current_loc_vert_d == 10 and tetris_lines.current_loc_hoz_d == 15:
		tetris_lines.matrix[9][14] = 1
		block_d.add_to_group("ten")
		
	random_piece()
	
	
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


func pixel_small():
	pixel.set_pos(Vector2(896.00531, 85.884323))
	pixel.set_scale(Vector2(1, 0.894361))


func pixel_big():
	pixel.set_pos(Vector2(840.483521, 280.641785))
	pixel.set_scale(Vector2(3.824269, 4.648254))

func _on_day_timer_timeout():
	perk_check()
	get_tree().change_scene("res://strategy.tscn")


func perk_check():
	if (towns.town_select == "fiyork"):
		if (int(perks.perk_goal) <= int(perks.success)):
			if (perks.perk_num == 1):
				supplies.fiyork_freezie_count = supplies.fiyork_freezie_count + 5
				supplies.fiyork_pizza_count = supplies.fiyork_pizza_count + 5
			elif (perks.perk_num == 2):
				customer_math.fiyork_player_marketshare = int(customer_math.fiyork_player_marketshare) + .1
			elif (perks.perk_num == 3):
				money.fiyork_balance = money.fiyork_balance + 50
			elif (perks.perk_num == 4):
				supplies.fiyork_freezie_count = supplies.fiyork_freezie_count + 10
				supplies.fiyork_pizza_count = supplies.fiyork_pizza_count + 10
			elif (perks.perk_num == 5):
				supplies.fiyork_freezie_count = supplies.fiyork_freezie_count + 20
				supplies.fiyork_pizza_count = supplies.fiyork_pizza_count + 20
			elif (perks.perk_num == 6):
				money.fiyork_balance = money.fiyork_balance + 25
			elif (perks.perk_num == 7):
				fiyork.fiyork_arcade_sabatoge_key = false
			elif (perks.perk_num == 8):
				fiyork.fiyork_entertainment_sabatoge_key = false
			elif (perks.perk_num == 9):
				fiyork.fiyork_storefront_sabatoge_key = false
			elif (perks.perk_num == 10):
				fiyork.fiyork_advertising_sabatoge_key = false

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
	get_node("are_you_sure").set_hidden(false)

func _on_return_to_main_menu_button_down():
	get_node("are_you_sure_2").set_hidden(false)
	
func _on_yes_village_button_down():
	get_node("menu").set_hidden(true)
	get_tree().set_pause(false)
	perk_check()
	get_tree().change_scene("res://strategy.tscn")

func _on_no_village_button_down():
	get_node("are_you_sure").set_hidden(true)
	get_node("menu").set_hidden(false)

func _on_yes_main_button_down():
	get_tree().set_pause(false)
	get_tree().change_scene("res://player_selection.tscn")

func _on_no_main_button_down():
	get_node("are_you_sure_2").set_hidden(true)
	get_node("menu").set_hidden(false)