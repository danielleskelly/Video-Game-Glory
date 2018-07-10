extends Node

var down_move = true
var left_move = true
var right_move = true

var matrix = []

var line_one_clear = false
var line_two_clear = false
var line_three_clear = false
var line_four_clear = false
var line_five_clear = false
var line_six_clear = false
var line_seven_clear = false
var line_eight_clear = false
var line_nine_clear = false
var line_ten_clear = false

var current_loc_hoz_a
var current_loc_hoz_b
var current_loc_hoz_c
var current_loc_hoz_d
var current_loc_vert_a
var current_loc_vert_b
var current_loc_vert_c
var current_loc_vert_d

func check_left():
	if current_loc_hoz_a == 1 or current_loc_hoz_b == 1 or current_loc_hoz_c == 1 or current_loc_hoz_d == 1:
		left_move = false
	else:
		left_move = true
		
func check_right():
	if current_loc_hoz_a == 15 or current_loc_hoz_b == 15 or current_loc_hoz_c == 15 or current_loc_hoz_d == 15:
		right_move = false
	else:
		right_move = true

func check_down():
	down_move = true
	if current_loc_vert_a == 1 and current_loc_hoz_a == 1:
		if matrix[1][0] == 1:
			down_move = false
	if current_loc_vert_a == 1 and current_loc_hoz_a == 2:
		if matrix[1][1] == 1:
			down_move = false
	if current_loc_vert_a == 1 and current_loc_hoz_a == 3:
		if matrix[1][2] == 1:
			down_move = false
	if current_loc_vert_a == 1 and current_loc_hoz_a == 4:
		if matrix[1][3] == 1:
			down_move = false
	if current_loc_vert_a == 1 and current_loc_hoz_a == 5:
		if matrix[1][4] == 1:
			down_move = false
	if current_loc_vert_a == 1 and current_loc_hoz_a == 6:
		if matrix[1][5] == 1:
			down_move = false
	if current_loc_vert_a == 1 and current_loc_hoz_a == 7:
		if matrix[1][6] == 1:
			down_move = false
	if current_loc_vert_a == 1 and current_loc_hoz_a == 8:
		if matrix[1][7] == 1:
			down_move = false
	if current_loc_vert_a == 1 and current_loc_hoz_a == 9:
		if matrix[1][8] == 1:
			down_move = false
	if current_loc_vert_a == 1 and current_loc_hoz_a == 10:
		if matrix[1][9] == 1:
			down_move = false
	if current_loc_vert_a == 1 and current_loc_hoz_a == 11:
		if matrix[1][10] == 1:
			down_move = false
	if current_loc_vert_a == 1 and current_loc_hoz_a == 12:
		if matrix[1][11] == 1:
			down_move = false
	if current_loc_vert_a == 1 and current_loc_hoz_a == 13:
		if matrix[1][12] == 1:
			down_move = false
	if current_loc_vert_a == 1 and current_loc_hoz_a == 14:
		if matrix[1][13] == 1:
			down_move = false
	if current_loc_vert_a == 1 and current_loc_hoz_a == 15:
		if matrix[1][14] == 1:
			down_move = false

	if current_loc_vert_a == 2 and current_loc_hoz_a == 1:
		if matrix[2][0] == 1:
			down_move = false
	if current_loc_vert_a == 2 and current_loc_hoz_a == 2:
		if matrix[2][1] == 1:
			down_move = false
	if current_loc_vert_a == 2 and current_loc_hoz_a == 3:
		if matrix[2][2] == 1:
			down_move = false
	if current_loc_vert_a == 2 and current_loc_hoz_a == 4:
		if matrix[2][3] == 1:
			down_move = false
	if current_loc_vert_a == 2 and current_loc_hoz_a == 5:
		if matrix[2][4] == 1:
			down_move = false
	if current_loc_vert_a == 2 and current_loc_hoz_a == 6:
		if matrix[2][5] == 1:
			down_move = false
	if current_loc_vert_a == 2 and current_loc_hoz_a == 7:
		if matrix[2][6] == 1:
			down_move = false
	if current_loc_vert_a == 2 and current_loc_hoz_a == 8:
		if matrix[2][7] == 1:
			down_move = false
	if current_loc_vert_a == 2 and current_loc_hoz_a == 9:
		if matrix[2][8] == 1:
			down_move = false
	if current_loc_vert_a == 2 and current_loc_hoz_a == 10:
		if matrix[2][9] == 1:
			down_move = false
	if current_loc_vert_a == 2 and current_loc_hoz_a == 11:
		if matrix[2][10] == 1:
			down_move = false
	if current_loc_vert_a == 2 and current_loc_hoz_a == 12:
		if matrix[2][11] == 1:
			down_move = false
	if current_loc_vert_a == 2 and current_loc_hoz_a == 13:
		if matrix[2][12] == 1:
			down_move = false
	if current_loc_vert_a == 2 and current_loc_hoz_a == 14:
		if matrix[2][13] == 1:
			down_move = false
	if current_loc_vert_a == 2 and current_loc_hoz_a == 15:
		if matrix[2][14] == 1:
			down_move = false
			

	if current_loc_vert_a == 3 and current_loc_hoz_a == 1:
		if matrix[3][0] == 1:
			down_move = false
	if current_loc_vert_a == 3 and current_loc_hoz_a == 2:
		if matrix[3][1] == 1:
			down_move = false
	if current_loc_vert_a == 3 and current_loc_hoz_a == 3:
		if matrix[3][2] == 1:
			down_move = false
	if current_loc_vert_a == 3 and current_loc_hoz_a == 4:
		if matrix[3][3] == 1:
			down_move = false
	if current_loc_vert_a == 3 and current_loc_hoz_a == 5:
		if matrix[3][4] == 1:
			down_move = false
	if current_loc_vert_a == 3 and current_loc_hoz_a == 6:
		if matrix[3][5] == 1:
			down_move = false
	if current_loc_vert_a == 3 and current_loc_hoz_a == 7:
		if matrix[3][6] == 1:
			down_move = false
	if current_loc_vert_a == 3 and current_loc_hoz_a == 8:
		if matrix[3][7] == 1:
			down_move = false
	if current_loc_vert_a == 3 and current_loc_hoz_a == 9:
		if matrix[3][8] == 1:
			down_move = false
	if current_loc_vert_a == 3 and current_loc_hoz_a == 10:
		if matrix[3][9] == 1:
			down_move = false
	if current_loc_vert_a == 3 and current_loc_hoz_a == 11:
		if matrix[3][10] == 1:
			down_move = false
	if current_loc_vert_a == 3 and current_loc_hoz_a == 12:
		if matrix[3][11] == 1:
			down_move = false
	if current_loc_vert_a == 3 and current_loc_hoz_a == 13:
		if matrix[3][12] == 1:
			down_move = false
	if current_loc_vert_a == 3 and current_loc_hoz_a == 14:
		if matrix[3][13] == 1:
			down_move = false
	if current_loc_vert_a == 3 and current_loc_hoz_a == 15:
		if matrix[3][14] == 1:
			down_move = false


	if current_loc_vert_a == 4 and current_loc_hoz_a == 1:
		if matrix[4][0] == 1:
			down_move = false
	if current_loc_vert_a == 4 and current_loc_hoz_a == 2:
		if matrix[4][1] == 1:
			down_move = false
	if current_loc_vert_a == 4 and current_loc_hoz_a == 3:
		if matrix[4][2] == 1:
			down_move = false
	if current_loc_vert_a == 4 and current_loc_hoz_a == 4:
		if matrix[4][3] == 1:
			down_move = false
	if current_loc_vert_a == 4 and current_loc_hoz_a == 5:
		if matrix[4][4] == 1:
			down_move = false
	if current_loc_vert_a == 4 and current_loc_hoz_a == 6:
		if matrix[4][5] == 1:
			down_move = false
	if current_loc_vert_a == 4 and current_loc_hoz_a == 7:
		if matrix[4][6] == 1:
			down_move = false
	if current_loc_vert_a == 4 and current_loc_hoz_a == 8:
		if matrix[4][7] == 1:
			down_move = false
	if current_loc_vert_a == 4 and current_loc_hoz_a == 9:
		if matrix[4][8] == 1:
			down_move = false
	if current_loc_vert_a == 4 and current_loc_hoz_a == 10:
		if matrix[4][9] == 1:
			down_move = false
	if current_loc_vert_a == 4 and current_loc_hoz_a == 11:
		if matrix[4][10] == 1:
			down_move = false
	if current_loc_vert_a == 4 and current_loc_hoz_a == 12:
		if matrix[4][11] == 1:
			down_move = false
	if current_loc_vert_a == 4 and current_loc_hoz_a == 13:
		if matrix[4][12] == 1:
			down_move = false
	if current_loc_vert_a == 4 and current_loc_hoz_a == 14:
		if matrix[4][13] == 1:
			down_move = false
	if current_loc_vert_a == 4 and current_loc_hoz_a == 15:
		if matrix[4][14] == 1:
			down_move = false


	if current_loc_vert_a == 5 and current_loc_hoz_a == 1:
		if matrix[5][0] == 1:
			down_move = false
	if current_loc_vert_a == 5 and current_loc_hoz_a == 2:
		if matrix[5][1] == 1:
			down_move = false
	if current_loc_vert_a == 5 and current_loc_hoz_a == 3:
		if matrix[5][2] == 1:
			down_move = false
	if current_loc_vert_a == 5 and current_loc_hoz_a == 4:
		if matrix[5][3] == 1:
			down_move = false
	if current_loc_vert_a == 5 and current_loc_hoz_a == 5:
		if matrix[5][4] == 1:
			down_move = false
	if current_loc_vert_a == 5 and current_loc_hoz_a == 6:
		if matrix[5][5] == 1:
			down_move = false
	if current_loc_vert_a == 5 and current_loc_hoz_a == 7:
		if matrix[5][6] == 1:
			down_move = false
	if current_loc_vert_a == 5 and current_loc_hoz_a == 8:
		if matrix[5][7] == 1:
			down_move = false
	if current_loc_vert_a == 5 and current_loc_hoz_a == 9:
		if matrix[5][8] == 1:
			down_move = false
	if current_loc_vert_a == 5 and current_loc_hoz_a == 10:
		if matrix[5][9] == 1:
			down_move = false
	if current_loc_vert_a == 5 and current_loc_hoz_a == 11:
		if matrix[5][10] == 1:
			down_move = false
	if current_loc_vert_a == 5 and current_loc_hoz_a == 12:
		if matrix[5][11] == 1:
			down_move = false
	if current_loc_vert_a == 5 and current_loc_hoz_a == 13:
		if matrix[5][12] == 1:
			down_move = false
	if current_loc_vert_a == 5 and current_loc_hoz_a == 14:
		if matrix[5][13] == 1:
			down_move = false
	if current_loc_vert_a == 5 and current_loc_hoz_a == 15:
		if matrix[5][14] == 1:
			down_move = false
			
	if current_loc_vert_a == 6 and current_loc_hoz_a == 1:
		if matrix[6][0] == 1:
			down_move = false
	if current_loc_vert_a == 6 and current_loc_hoz_a == 2:
		if matrix[6][1] == 1:
			down_move = false
	if current_loc_vert_a == 6 and current_loc_hoz_a == 3:
		if matrix[6][2] == 1:
			down_move = false
	if current_loc_vert_a == 6 and current_loc_hoz_a == 4:
		if matrix[6][3] == 1:
			down_move = false
	if current_loc_vert_a == 6 and current_loc_hoz_a == 5:
		if matrix[6][4] == 1:
			down_move = false
	if current_loc_vert_a == 6 and current_loc_hoz_a == 6:
		if matrix[6][5] == 1:
			down_move = false
	if current_loc_vert_a == 6 and current_loc_hoz_a == 7:
		if matrix[6][6] == 1:
			down_move = false
	if current_loc_vert_a == 6 and current_loc_hoz_a == 8:
		if matrix[6][7] == 1:
			down_move = false
	if current_loc_vert_a == 6 and current_loc_hoz_a == 9:
		if matrix[6][8] == 1:
			down_move = false
	if current_loc_vert_a == 6 and current_loc_hoz_a == 10:
		if matrix[6][9] == 1:
			down_move = false
	if current_loc_vert_a == 6 and current_loc_hoz_a == 11:
		if matrix[6][10] == 1:
			down_move = false
	if current_loc_vert_a == 6 and current_loc_hoz_a == 12:
		if matrix[6][11] == 1:
			down_move = false
	if current_loc_vert_a == 6 and current_loc_hoz_a == 13:
		if matrix[6][12] == 1:
			down_move = false
	if current_loc_vert_a == 6 and current_loc_hoz_a == 14:
		if matrix[6][13] == 1:
			down_move = false
	if current_loc_vert_a == 6 and current_loc_hoz_a == 15:
		if matrix[6][14] == 1:
			down_move = false
			
	if current_loc_vert_a == 7 and current_loc_hoz_a == 1:
		if matrix[7][0] == 1:
			down_move = false
	if current_loc_vert_a == 7 and current_loc_hoz_a == 2:
		if matrix[7][1] == 1:
			down_move = false
	if current_loc_vert_a == 7 and current_loc_hoz_a == 3:
		if matrix[7][2] == 1:
			down_move = false
	if current_loc_vert_a == 7 and current_loc_hoz_a == 4:
		if matrix[7][3] == 1:
			down_move = false
	if current_loc_vert_a == 7 and current_loc_hoz_a == 5:
		if matrix[7][4] == 1:
			down_move = false
	if current_loc_vert_a == 7 and current_loc_hoz_a == 6:
		if matrix[7][5] == 1:
			down_move = false
	if current_loc_vert_a == 7 and current_loc_hoz_a == 7:
		if matrix[7][6] == 1:
			down_move = false
	if current_loc_vert_a == 7 and current_loc_hoz_a == 8:
		if matrix[7][7] == 1:
			down_move = false
	if current_loc_vert_a == 7 and current_loc_hoz_a == 9:
		if matrix[7][8] == 1:
			down_move = false
	if current_loc_vert_a == 7 and current_loc_hoz_a == 10:
		if matrix[7][9] == 1:
			down_move = false
	if current_loc_vert_a == 7 and current_loc_hoz_a == 11:
		if matrix[7][10] == 1:
			down_move = false
	if current_loc_vert_a == 7 and current_loc_hoz_a == 12:
		if matrix[7][11] == 1:
			down_move = false
	if current_loc_vert_a == 7 and current_loc_hoz_a == 13:
		if matrix[7][12] == 1:
			down_move = false
	if current_loc_vert_a == 7 and current_loc_hoz_a == 14:
		if matrix[7][13] == 1:
			down_move = false
	if current_loc_vert_a == 7 and current_loc_hoz_a == 15:
		if matrix[7][14] == 1:
			down_move = false
			
	if current_loc_vert_a == 8 and current_loc_hoz_a == 1:
		if matrix[8][0] == 1:
			down_move = false
	if current_loc_vert_a == 8 and current_loc_hoz_a == 2:
		if matrix[8][1] == 1:
			down_move = false
	if current_loc_vert_a == 8 and current_loc_hoz_a == 3:
		if matrix[8][2] == 1:
			down_move = false
	if current_loc_vert_a == 8 and current_loc_hoz_a == 4:
		if matrix[8][3] == 1:
			down_move = false
	if current_loc_vert_a == 8 and current_loc_hoz_a == 5:
		if matrix[8][4] == 1:
			down_move = false
	if current_loc_vert_a == 8 and current_loc_hoz_a == 6:
		if matrix[8][5] == 1:
			down_move = false
	if current_loc_vert_a == 8 and current_loc_hoz_a == 7:
		if matrix[8][6] == 1:
			down_move = false
	if current_loc_vert_a == 8 and current_loc_hoz_a == 8:
		if matrix[8][7] == 1:
			down_move = false
	if current_loc_vert_a == 8 and current_loc_hoz_a == 9:
		if matrix[8][8] == 1:
			down_move = false
	if current_loc_vert_a == 8 and current_loc_hoz_a == 10:
		if matrix[8][9] == 1:
			down_move = false
	if current_loc_vert_a == 8 and current_loc_hoz_a == 11:
		if matrix[8][10] == 1:
			down_move = false
	if current_loc_vert_a == 8 and current_loc_hoz_a == 12:
		if matrix[8][11] == 1:
			down_move = false
	if current_loc_vert_a == 8 and current_loc_hoz_a == 13:
		if matrix[8][12] == 1:
			down_move = false
	if current_loc_vert_a == 8 and current_loc_hoz_a == 14:
		if matrix[8][13] == 1:
			down_move = false
	if current_loc_vert_a == 8 and current_loc_hoz_a == 15:
		if matrix[8][14] == 1:
			down_move = false
			
	if current_loc_vert_a == 9 and current_loc_hoz_a == 1:
		if matrix[9][0] == 1:
			down_move = false
	if current_loc_vert_a == 9 and current_loc_hoz_a == 2:
		if matrix[9][1] == 1:
			down_move = false
	if current_loc_vert_a == 9 and current_loc_hoz_a == 3:
		if matrix[9][2] == 1:
			down_move = false
	if current_loc_vert_a == 9 and current_loc_hoz_a == 4:
		if matrix[9][3] == 1:
			down_move = false
	if current_loc_vert_a == 9 and current_loc_hoz_a == 5:
		if matrix[9][4] == 1:
			down_move = false
	if current_loc_vert_a == 9 and current_loc_hoz_a == 6:
		if matrix[9][5] == 1:
			down_move = false
	if current_loc_vert_a == 9 and current_loc_hoz_a == 7:
		if matrix[9][6] == 1:
			down_move = false
	if current_loc_vert_a == 9 and current_loc_hoz_a == 8:
		if matrix[9][7] == 1:
			down_move = false
	if current_loc_vert_a == 9 and current_loc_hoz_a == 9:
		if matrix[9][8] == 1:
			down_move = false
	if current_loc_vert_a == 9 and current_loc_hoz_a == 10:
		if matrix[9][9] == 1:
			down_move = false
	if current_loc_vert_a == 9 and current_loc_hoz_a == 11:
		if matrix[9][10] == 1:
			down_move = false
	if current_loc_vert_a == 9 and current_loc_hoz_a == 12:
		if matrix[9][11] == 1:
			down_move = false
	if current_loc_vert_a == 9 and current_loc_hoz_a == 13:
		if matrix[9][12] == 1:
			down_move = false
	if current_loc_vert_a == 9 and current_loc_hoz_a == 14:
		if matrix[9][13] == 1:
			down_move = false
	if current_loc_vert_a == 9 and current_loc_hoz_a == 15:
		if matrix[9][14] == 1:
			down_move = false


	if current_loc_vert_a == 10 and current_loc_hoz_a == 1:
		down_move = false
	if current_loc_vert_a == 10 and current_loc_hoz_a == 2:
		down_move = false
	if current_loc_vert_a == 10 and current_loc_hoz_a == 3:
		down_move = false
	if current_loc_vert_a == 10 and current_loc_hoz_a == 4:
		down_move = false
	if current_loc_vert_a == 10 and current_loc_hoz_a == 5:
		down_move = false
	if current_loc_vert_a == 10 and current_loc_hoz_a == 6:
		down_move = false
	if current_loc_vert_a == 10 and current_loc_hoz_a == 7:
		down_move = false
	if current_loc_vert_a == 10 and current_loc_hoz_a == 8:
		down_move = false
	if current_loc_vert_a == 10 and current_loc_hoz_a == 9:
		down_move = false
	if current_loc_vert_a == 10 and current_loc_hoz_a == 10:
		down_move = false
	if current_loc_vert_a == 10 and current_loc_hoz_a == 11:
		down_move = false
	if current_loc_vert_a == 10 and current_loc_hoz_a == 12:
		down_move = false
	if current_loc_vert_a == 10 and current_loc_hoz_a == 13:
		down_move = false
	if current_loc_vert_a == 10 and current_loc_hoz_a == 14:
		down_move = false
	if current_loc_vert_a == 10 and current_loc_hoz_a == 15:
		down_move = false
			
	if current_loc_vert_b == 1 and current_loc_hoz_b == 1:
		if matrix[1][0] == 1:
			down_move = false
	if current_loc_vert_b == 1 and current_loc_hoz_b == 2:
		if matrix[1][1] == 1:
			down_move = false
	if current_loc_vert_b == 1 and current_loc_hoz_b == 3:
		if matrix[1][2] == 1:
			down_move = false
	if current_loc_vert_b == 1 and current_loc_hoz_b == 4:
		if matrix[1][3] == 1:
			down_move = false
	if current_loc_vert_b == 1 and current_loc_hoz_b == 5:
		if matrix[1][4] == 1:
			down_move = false
	if current_loc_vert_b == 1 and current_loc_hoz_b == 6:
		if matrix[1][5] == 1:
			down_move = false
	if current_loc_vert_b == 1 and current_loc_hoz_b == 7:
		if matrix[1][6] == 1:
			down_move = false
	if current_loc_vert_b == 1 and current_loc_hoz_b == 8:
		if matrix[1][7] == 1:
			down_move = false
	if current_loc_vert_b == 1 and current_loc_hoz_b == 9:
		if matrix[1][8] == 1:
			down_move = false
	if current_loc_vert_b == 1 and current_loc_hoz_b == 10:
		if matrix[1][9] == 1:
			down_move = false
	if current_loc_vert_b == 1 and current_loc_hoz_b == 11:
		if matrix[1][10] == 1:
			down_move = false
	if current_loc_vert_b == 1 and current_loc_hoz_b == 12:
		if matrix[1][11] == 1:
			down_move = false
	if current_loc_vert_b == 1 and current_loc_hoz_b == 13:
		if matrix[1][12] == 1:
			down_move = false
	if current_loc_vert_b == 1 and current_loc_hoz_b == 14:
		if matrix[1][13] == 1:
			down_move = false
	if current_loc_vert_b == 1 and current_loc_hoz_b == 15:
		if matrix[1][14] == 1:
			down_move = false

	if current_loc_vert_b == 2 and current_loc_hoz_b == 1:
		if matrix[2][0] == 1:
			down_move = false
	if current_loc_vert_b == 2 and current_loc_hoz_b == 2:
		if matrix[2][1] == 1:
			down_move = false
	if current_loc_vert_b == 2 and current_loc_hoz_b == 3:
		if matrix[2][2] == 1:
			down_move = false
	if current_loc_vert_b == 2 and current_loc_hoz_b == 4:
		if matrix[2][3] == 1:
			down_move = false
	if current_loc_vert_b == 2 and current_loc_hoz_b == 5:
		if matrix[2][4] == 1:
			down_move = false
	if current_loc_vert_b == 2 and current_loc_hoz_b == 6:
		if matrix[2][5] == 1:
			down_move = false
	if current_loc_vert_b == 2 and current_loc_hoz_b == 7:
		if matrix[2][6] == 1:
			down_move = false
	if current_loc_vert_b == 2 and current_loc_hoz_b == 8:
		if matrix[2][7] == 1:
			down_move = false
	if current_loc_vert_b == 2 and current_loc_hoz_b == 9:
		if matrix[2][8] == 1:
			down_move = false
	if current_loc_vert_b == 2 and current_loc_hoz_b == 10:
		if matrix[2][9] == 1:
			down_move = false
	if current_loc_vert_b == 2 and current_loc_hoz_b == 11:
		if matrix[2][10] == 1:
			down_move = false
	if current_loc_vert_b == 2 and current_loc_hoz_b == 12:
		if matrix[2][11] == 1:
			down_move = false
	if current_loc_vert_b == 2 and current_loc_hoz_b == 13:
		if matrix[2][12] == 1:
			down_move = false
	if current_loc_vert_b == 2 and current_loc_hoz_b == 14:
		if matrix[2][13] == 1:
			down_move = false
	if current_loc_vert_b == 2 and current_loc_hoz_b == 15:
		if matrix[2][14] == 1:
			down_move = false
			

	if current_loc_vert_b == 3 and current_loc_hoz_b == 1:
		if matrix[3][0] == 1:
			down_move = false
	if current_loc_vert_b == 3 and current_loc_hoz_b == 2:
		if matrix[3][1] == 1:
			down_move = false
	if current_loc_vert_b == 3 and current_loc_hoz_b == 3:
		if matrix[3][2] == 1:
			down_move = false
	if current_loc_vert_b == 3 and current_loc_hoz_b == 4:
		if matrix[3][3] == 1:
			down_move = false
	if current_loc_vert_b == 3 and current_loc_hoz_b == 5:
		if matrix[3][4] == 1:
			down_move = false
	if current_loc_vert_b == 3 and current_loc_hoz_b == 6:
		if matrix[3][5] == 1:
			down_move = false
	if current_loc_vert_b == 3 and current_loc_hoz_b == 7:
		if matrix[3][6] == 1:
			down_move = false
	if current_loc_vert_b == 3 and current_loc_hoz_b == 8:
		if matrix[3][7] == 1:
			down_move = false
	if current_loc_vert_b == 3 and current_loc_hoz_b == 9:
		if matrix[3][8] == 1:
			down_move = false
	if current_loc_vert_b == 3 and current_loc_hoz_b == 10:
		if matrix[3][9] == 1:
			down_move = false
	if current_loc_vert_b == 3 and current_loc_hoz_b == 11:
		if matrix[3][10] == 1:
			down_move = false
	if current_loc_vert_b == 3 and current_loc_hoz_b == 12:
		if matrix[3][11] == 1:
			down_move = false
	if current_loc_vert_b == 3 and current_loc_hoz_b == 13:
		if matrix[3][12] == 1:
			down_move = false
	if current_loc_vert_b == 3 and current_loc_hoz_b == 14:
		if matrix[3][13] == 1:
			down_move = false
	if current_loc_vert_b == 3 and current_loc_hoz_b == 15:
		if matrix[3][14] == 1:
			down_move = false


	if current_loc_vert_b == 4 and current_loc_hoz_b == 1:
		if matrix[4][0] == 1:
			down_move = false
	if current_loc_vert_b == 4 and current_loc_hoz_b == 2:
		if matrix[4][1] == 1:
			down_move = false
	if current_loc_vert_b == 4 and current_loc_hoz_b == 3:
		if matrix[4][2] == 1:
			down_move = false
	if current_loc_vert_b == 4 and current_loc_hoz_b == 4:
		if matrix[4][3] == 1:
			down_move = false
	if current_loc_vert_b == 4 and current_loc_hoz_b == 5:
		if matrix[4][4] == 1:
			down_move = false
	if current_loc_vert_b == 4 and current_loc_hoz_b == 6:
		if matrix[4][5] == 1:
			down_move = false
	if current_loc_vert_b == 4 and current_loc_hoz_b == 7:
		if matrix[4][6] == 1:
			down_move = false
	if current_loc_vert_b == 4 and current_loc_hoz_b == 8:
		if matrix[4][7] == 1:
			down_move = false
	if current_loc_vert_b == 4 and current_loc_hoz_b == 9:
		if matrix[4][8] == 1:
			down_move = false
	if current_loc_vert_b == 4 and current_loc_hoz_b == 10:
		if matrix[4][9] == 1:
			down_move = false
	if current_loc_vert_b == 4 and current_loc_hoz_b == 11:
		if matrix[4][10] == 1:
			down_move = false
	if current_loc_vert_b == 4 and current_loc_hoz_b == 12:
		if matrix[4][11] == 1:
			down_move = false
	if current_loc_vert_b == 4 and current_loc_hoz_b == 13:
		if matrix[4][12] == 1:
			down_move = false
	if current_loc_vert_b == 4 and current_loc_hoz_b == 14:
		if matrix[4][13] == 1:
			down_move = false
	if current_loc_vert_b == 4 and current_loc_hoz_b == 15:
		if matrix[4][14] == 1:
			down_move = false


	if current_loc_vert_b == 5 and current_loc_hoz_b == 1:
		if matrix[5][0] == 1:
			down_move = false
	if current_loc_vert_b == 5 and current_loc_hoz_b == 2:
		if matrix[5][1] == 1:
			down_move = false
	if current_loc_vert_b == 5 and current_loc_hoz_b == 3:
		if matrix[5][2] == 1:
			down_move = false
	if current_loc_vert_b == 5 and current_loc_hoz_b == 4:
		if matrix[5][3] == 1:
			down_move = false
	if current_loc_vert_b == 5 and current_loc_hoz_b == 5:
		if matrix[5][4] == 1:
			down_move = false
	if current_loc_vert_b == 5 and current_loc_hoz_b == 6:
		if matrix[5][5] == 1:
			down_move = false
	if current_loc_vert_b == 5 and current_loc_hoz_b == 7:
		if matrix[5][6] == 1:
			down_move = false
	if current_loc_vert_b == 5 and current_loc_hoz_b == 8:
		if matrix[5][7] == 1:
			down_move = false
	if current_loc_vert_b == 5 and current_loc_hoz_b == 9:
		if matrix[5][8] == 1:
			down_move = false
	if current_loc_vert_b == 5 and current_loc_hoz_b == 10:
		if matrix[5][9] == 1:
			down_move = false
	if current_loc_vert_b == 5 and current_loc_hoz_b == 11:
		if matrix[5][10] == 1:
			down_move = false
	if current_loc_vert_b == 5 and current_loc_hoz_b == 12:
		if matrix[5][11] == 1:
			down_move = false
	if current_loc_vert_b == 5 and current_loc_hoz_b == 13:
		if matrix[5][12] == 1:
			down_move = false
	if current_loc_vert_b == 5 and current_loc_hoz_b == 14:
		if matrix[5][13] == 1:
			down_move = false
	if current_loc_vert_b == 5 and current_loc_hoz_b == 15:
		if matrix[5][14] == 1:
			down_move = false
			
	if current_loc_vert_b == 6 and current_loc_hoz_b == 1:
		if matrix[6][0] == 1:
			down_move = false
	if current_loc_vert_b == 6 and current_loc_hoz_b == 2:
		if matrix[6][1] == 1:
			down_move = false
	if current_loc_vert_b == 6 and current_loc_hoz_b == 3:
		if matrix[6][2] == 1:
			down_move = false
	if current_loc_vert_b == 6 and current_loc_hoz_b == 4:
		if matrix[6][3] == 1:
			down_move = false
	if current_loc_vert_b == 6 and current_loc_hoz_b == 5:
		if matrix[6][4] == 1:
			down_move = false
	if current_loc_vert_b == 6 and current_loc_hoz_b == 6:
		if matrix[6][5] == 1:
			down_move = false
	if current_loc_vert_b == 6 and current_loc_hoz_b == 7:
		if matrix[6][6] == 1:
			down_move = false
	if current_loc_vert_b == 6 and current_loc_hoz_b == 8:
		if matrix[6][7] == 1:
			down_move = false
	if current_loc_vert_b == 6 and current_loc_hoz_b == 9:
		if matrix[6][8] == 1:
			down_move = false
	if current_loc_vert_b == 6 and current_loc_hoz_b == 10:
		if matrix[6][9] == 1:
			down_move = false
	if current_loc_vert_b == 6 and current_loc_hoz_b == 11:
		if matrix[6][10] == 1:
			down_move = false
	if current_loc_vert_b == 6 and current_loc_hoz_b == 12:
		if matrix[6][11] == 1:
			down_move = false
	if current_loc_vert_b == 6 and current_loc_hoz_b == 13:
		if matrix[6][12] == 1:
			down_move = false
	if current_loc_vert_b == 6 and current_loc_hoz_b == 14:
		if matrix[6][13] == 1:
			down_move = false
	if current_loc_vert_b == 6 and current_loc_hoz_b == 15:
		if matrix[6][14] == 1:
			down_move = false
			
	if current_loc_vert_b == 7 and current_loc_hoz_b == 1:
		if matrix[7][0] == 1:
			down_move = false
	if current_loc_vert_b == 7 and current_loc_hoz_b == 2:
		if matrix[7][1] == 1:
			down_move = false
	if current_loc_vert_b == 7 and current_loc_hoz_b == 3:
		if matrix[7][2] == 1:
			down_move = false
	if current_loc_vert_b == 7 and current_loc_hoz_b == 4:
		if matrix[7][3] == 1:
			down_move = false
	if current_loc_vert_b == 7 and current_loc_hoz_b == 5:
		if matrix[7][4] == 1:
			down_move = false
	if current_loc_vert_b == 7 and current_loc_hoz_b == 6:
		if matrix[7][5] == 1:
			down_move = false
	if current_loc_vert_b == 7 and current_loc_hoz_b == 7:
		if matrix[7][6] == 1:
			down_move = false
	if current_loc_vert_b == 7 and current_loc_hoz_b == 8:
		if matrix[7][7] == 1:
			down_move = false
	if current_loc_vert_b == 7 and current_loc_hoz_b == 9:
		if matrix[7][8] == 1:
			down_move = false
	if current_loc_vert_b == 7 and current_loc_hoz_b == 10:
		if matrix[7][9] == 1:
			down_move = false
	if current_loc_vert_b == 7 and current_loc_hoz_b == 11:
		if matrix[7][10] == 1:
			down_move = false
	if current_loc_vert_b == 7 and current_loc_hoz_b == 12:
		if matrix[7][11] == 1:
			down_move = false
	if current_loc_vert_b == 7 and current_loc_hoz_b == 13:
		if matrix[7][12] == 1:
			down_move = false
	if current_loc_vert_b == 7 and current_loc_hoz_b == 14:
		if matrix[7][13] == 1:
			down_move = false
	if current_loc_vert_b == 7 and current_loc_hoz_b == 15:
		if matrix[7][14] == 1:
			down_move = false
			
	if current_loc_vert_b == 8 and current_loc_hoz_b == 1:
		if matrix[8][0] == 1:
			down_move = false
	if current_loc_vert_b == 8 and current_loc_hoz_b == 2:
		if matrix[8][1] == 1:
			down_move = false
	if current_loc_vert_b == 8 and current_loc_hoz_b == 3:
		if matrix[8][2] == 1:
			down_move = false
	if current_loc_vert_b == 8 and current_loc_hoz_b == 4:
		if matrix[8][3] == 1:
			down_move = false
	if current_loc_vert_b == 8 and current_loc_hoz_b == 5:
		if matrix[8][4] == 1:
			down_move = false
	if current_loc_vert_b == 8 and current_loc_hoz_b == 6:
		if matrix[8][5] == 1:
			down_move = false
	if current_loc_vert_b == 8 and current_loc_hoz_b == 7:
		if matrix[8][6] == 1:
			down_move = false
	if current_loc_vert_b == 8 and current_loc_hoz_b == 8:
		if matrix[8][7] == 1:
			down_move = false
	if current_loc_vert_b == 8 and current_loc_hoz_b == 9:
		if matrix[8][8] == 1:
			down_move = false
	if current_loc_vert_b == 8 and current_loc_hoz_b == 10:
		if matrix[8][9] == 1:
			down_move = false
	if current_loc_vert_b == 8 and current_loc_hoz_b == 11:
		if matrix[8][10] == 1:
			down_move = false
	if current_loc_vert_b == 8 and current_loc_hoz_b == 12:
		if matrix[8][11] == 1:
			down_move = false
	if current_loc_vert_b == 8 and current_loc_hoz_b == 13:
		if matrix[8][12] == 1:
			down_move = false
	if current_loc_vert_b == 8 and current_loc_hoz_b == 14:
		if matrix[8][13] == 1:
			down_move = false
	if current_loc_vert_b == 8 and current_loc_hoz_b == 15:
		if matrix[8][14] == 1:
			down_move = false
			
	if current_loc_vert_b == 9 and current_loc_hoz_b == 1:
		if matrix[9][0] == 1:
			down_move = false
	if current_loc_vert_b == 9 and current_loc_hoz_b == 2:
		if matrix[9][1] == 1:
			down_move = false
	if current_loc_vert_b == 9 and current_loc_hoz_b == 3:
		if matrix[9][2] == 1:
			down_move = false
	if current_loc_vert_b == 9 and current_loc_hoz_b == 4:
		if matrix[9][3] == 1:
			down_move = false
	if current_loc_vert_b == 9 and current_loc_hoz_b == 5:
		if matrix[9][4] == 1:
			down_move = false
	if current_loc_vert_b == 9 and current_loc_hoz_b == 6:
		if matrix[9][5] == 1:
			down_move = false
	if current_loc_vert_b == 9 and current_loc_hoz_b == 7:
		if matrix[9][6] == 1:
			down_move = false
	if current_loc_vert_b == 9 and current_loc_hoz_b == 8:
		if matrix[9][7] == 1:
			down_move = false
	if current_loc_vert_b == 9 and current_loc_hoz_b == 9:
		if matrix[9][8] == 1:
			down_move = false
	if current_loc_vert_b == 9 and current_loc_hoz_b == 10:
		if matrix[9][9] == 1:
			down_move = false
	if current_loc_vert_b == 9 and current_loc_hoz_b == 11:
		if matrix[9][10] == 1:
			down_move = false
	if current_loc_vert_b == 9 and current_loc_hoz_b == 12:
		if matrix[9][11] == 1:
			down_move = false
	if current_loc_vert_b == 9 and current_loc_hoz_b == 13:
		if matrix[9][12] == 1:
			down_move = false
	if current_loc_vert_b == 9 and current_loc_hoz_b == 14:
		if matrix[9][13] == 1:
			down_move = false
	if current_loc_vert_b == 9 and current_loc_hoz_b == 15:
		if matrix[9][14] == 1:
			down_move = false


	if current_loc_vert_b == 10 and current_loc_hoz_b == 1:
		down_move = false
	if current_loc_vert_b == 10 and current_loc_hoz_b == 2:
		down_move = false
	if current_loc_vert_b == 10 and current_loc_hoz_b == 3:
		down_move = false
	if current_loc_vert_b == 10 and current_loc_hoz_b == 4:
		down_move = false
	if current_loc_vert_b == 10 and current_loc_hoz_b == 5:
		down_move = false
	if current_loc_vert_b == 10 and current_loc_hoz_b == 6:
		down_move = false
	if current_loc_vert_b == 10 and current_loc_hoz_b == 7:
		down_move = false
	if current_loc_vert_b == 10 and current_loc_hoz_b == 8:
		down_move = false
	if current_loc_vert_b == 10 and current_loc_hoz_b == 9:
		down_move = false
	if current_loc_vert_b == 10 and current_loc_hoz_b == 10:
		down_move = false
	if current_loc_vert_b == 10 and current_loc_hoz_b == 11:
		down_move = false
	if current_loc_vert_b == 10 and current_loc_hoz_b == 12:
		down_move = false
	if current_loc_vert_b == 10 and current_loc_hoz_b == 13:
		down_move = false
	if current_loc_vert_b == 10 and current_loc_hoz_b == 14:
		down_move = false
	if current_loc_vert_b == 10 and current_loc_hoz_b == 15:
		down_move = false
		
		
	if current_loc_vert_c == 1 and current_loc_hoz_c == 1:
		if matrix[1][0] == 1:
			down_move = false
	if current_loc_vert_c == 1 and current_loc_hoz_c == 2:
		if matrix[1][1] == 1:
			down_move = false
	if current_loc_vert_c == 1 and current_loc_hoz_c == 3:
		if matrix[1][2] == 1:
			down_move = false
	if current_loc_vert_c == 1 and current_loc_hoz_c == 4:
		if matrix[1][3] == 1:
			down_move = false
	if current_loc_vert_c == 1 and current_loc_hoz_c == 5:
		if matrix[1][4] == 1:
			down_move = false
	if current_loc_vert_c == 1 and current_loc_hoz_c == 6:
		if matrix[1][5] == 1:
			down_move = false
	if current_loc_vert_c == 1 and current_loc_hoz_c == 7:
		if matrix[1][6] == 1:
			down_move = false
	if current_loc_vert_c == 1 and current_loc_hoz_c == 8:
		if matrix[1][7] == 1:
			down_move = false
	if current_loc_vert_c == 1 and current_loc_hoz_c == 9:
		if matrix[1][8] == 1:
			down_move = false
	if current_loc_vert_c == 1 and current_loc_hoz_c == 10:
		if matrix[1][9] == 1:
			down_move = false
	if current_loc_vert_c == 1 and current_loc_hoz_c == 11:
		if matrix[1][10] == 1:
			down_move = false
	if current_loc_vert_c == 1 and current_loc_hoz_c == 12:
		if matrix[1][11] == 1:
			down_move = false
	if current_loc_vert_c == 1 and current_loc_hoz_c == 13:
		if matrix[1][12] == 1:
			down_move = false
	if current_loc_vert_c == 1 and current_loc_hoz_c == 14:
		if matrix[1][13] == 1:
			down_move = false
	if current_loc_vert_c == 1 and current_loc_hoz_c == 15:
		if matrix[1][14] == 1:
			down_move = false

	if current_loc_vert_c == 2 and current_loc_hoz_c == 1:
		if matrix[2][0] == 1:
			down_move = false
	if current_loc_vert_c == 2 and current_loc_hoz_c == 2:
		if matrix[2][1] == 1:
			down_move = false
	if current_loc_vert_c == 2 and current_loc_hoz_c == 3:
		if matrix[2][2] == 1:
			down_move = false
	if current_loc_vert_c == 2 and current_loc_hoz_c == 4:
		if matrix[2][3] == 1:
			down_move = false
	if current_loc_vert_c == 2 and current_loc_hoz_c == 5:
		if matrix[2][4] == 1:
			down_move = false
	if current_loc_vert_c == 2 and current_loc_hoz_c == 6:
		if matrix[2][5] == 1:
			down_move = false
	if current_loc_vert_c == 2 and current_loc_hoz_c == 7:
		if matrix[2][6] == 1:
			down_move = false
	if current_loc_vert_c == 2 and current_loc_hoz_c == 8:
		if matrix[2][7] == 1:
			down_move = false
	if current_loc_vert_c == 2 and current_loc_hoz_c == 9:
		if matrix[2][8] == 1:
			down_move = false
	if current_loc_vert_c == 2 and current_loc_hoz_c == 10:
		if matrix[2][9] == 1:
			down_move = false
	if current_loc_vert_c == 2 and current_loc_hoz_c == 11:
		if matrix[2][10] == 1:
			down_move = false
	if current_loc_vert_c == 2 and current_loc_hoz_c == 12:
		if matrix[2][11] == 1:
			down_move = false
	if current_loc_vert_c == 2 and current_loc_hoz_c == 13:
		if matrix[2][12] == 1:
			down_move = false
	if current_loc_vert_c == 2 and current_loc_hoz_c == 14:
		if matrix[2][13] == 1:
			down_move = false
	if current_loc_vert_c == 2 and current_loc_hoz_c == 15:
		if matrix[2][14] == 1:
			down_move = false
			

	if current_loc_vert_c == 3 and current_loc_hoz_c == 1:
		if matrix[3][0] == 1:
			down_move = false
	if current_loc_vert_c == 3 and current_loc_hoz_c == 2:
		if matrix[3][1] == 1:
			down_move = false
	if current_loc_vert_c == 3 and current_loc_hoz_c == 3:
		if matrix[3][2] == 1:
			down_move = false
	if current_loc_vert_c == 3 and current_loc_hoz_c == 4:
		if matrix[3][3] == 1:
			down_move = false
	if current_loc_vert_c == 3 and current_loc_hoz_c == 5:
		if matrix[3][4] == 1:
			down_move = false
	if current_loc_vert_c == 3 and current_loc_hoz_c == 6:
		if matrix[3][5] == 1:
			down_move = false
	if current_loc_vert_c == 3 and current_loc_hoz_c == 7:
		if matrix[3][6] == 1:
			down_move = false
	if current_loc_vert_c == 3 and current_loc_hoz_c == 8:
		if matrix[3][7] == 1:
			down_move = false
	if current_loc_vert_c == 3 and current_loc_hoz_c == 9:
		if matrix[3][8] == 1:
			down_move = false
	if current_loc_vert_c == 3 and current_loc_hoz_c == 10:
		if matrix[3][9] == 1:
			down_move = false
	if current_loc_vert_c == 3 and current_loc_hoz_c == 11:
		if matrix[3][10] == 1:
			down_move = false
	if current_loc_vert_c == 3 and current_loc_hoz_c == 12:
		if matrix[3][11] == 1:
			down_move = false
	if current_loc_vert_c == 3 and current_loc_hoz_c == 13:
		if matrix[3][12] == 1:
			down_move = false
	if current_loc_vert_c == 3 and current_loc_hoz_c == 14:
		if matrix[3][13] == 1:
			down_move = false
	if current_loc_vert_c == 3 and current_loc_hoz_c == 15:
		if matrix[3][14] == 1:
			down_move = false


	if current_loc_vert_c == 4 and current_loc_hoz_c == 1:
		if matrix[4][0] == 1:
			down_move = false
	if current_loc_vert_c == 4 and current_loc_hoz_c == 2:
		if matrix[4][1] == 1:
			down_move = false
	if current_loc_vert_c == 4 and current_loc_hoz_c == 3:
		if matrix[4][2] == 1:
			down_move = false
	if current_loc_vert_c == 4 and current_loc_hoz_c == 4:
		if matrix[4][3] == 1:
			down_move = false
	if current_loc_vert_c == 4 and current_loc_hoz_c == 5:
		if matrix[4][4] == 1:
			down_move = false
	if current_loc_vert_c == 4 and current_loc_hoz_c == 6:
		if matrix[4][5] == 1:
			down_move = false
	if current_loc_vert_c == 4 and current_loc_hoz_c == 7:
		if matrix[4][6] == 1:
			down_move = false
	if current_loc_vert_c == 4 and current_loc_hoz_c == 8:
		if matrix[4][7] == 1:
			down_move = false
	if current_loc_vert_c == 4 and current_loc_hoz_c == 9:
		if matrix[4][8] == 1:
			down_move = false
	if current_loc_vert_c == 4 and current_loc_hoz_c == 10:
		if matrix[4][9] == 1:
			down_move = false
	if current_loc_vert_c == 4 and current_loc_hoz_c == 11:
		if matrix[4][10] == 1:
			down_move = false
	if current_loc_vert_c == 4 and current_loc_hoz_c == 12:
		if matrix[4][11] == 1:
			down_move = false
	if current_loc_vert_c == 4 and current_loc_hoz_c == 13:
		if matrix[4][12] == 1:
			down_move = false
	if current_loc_vert_c == 4 and current_loc_hoz_c == 14:
		if matrix[4][13] == 1:
			down_move = false
	if current_loc_vert_c == 4 and current_loc_hoz_c == 15:
		if matrix[4][14] == 1:
			down_move = false


	if current_loc_vert_c == 5 and current_loc_hoz_c == 1:
		if matrix[5][0] == 1:
			down_move = false
	if current_loc_vert_c == 5 and current_loc_hoz_c == 2:
		if matrix[5][1] == 1:
			down_move = false
	if current_loc_vert_c == 5 and current_loc_hoz_c == 3:
		if matrix[5][2] == 1:
			down_move = false
	if current_loc_vert_c == 5 and current_loc_hoz_c == 4:
		if matrix[5][3] == 1:
			down_move = false
	if current_loc_vert_c == 5 and current_loc_hoz_c == 5:
		if matrix[5][4] == 1:
			down_move = false
	if current_loc_vert_c == 5 and current_loc_hoz_c == 6:
		if matrix[5][5] == 1:
			down_move = false
	if current_loc_vert_c == 5 and current_loc_hoz_c == 7:
		if matrix[5][6] == 1:
			down_move = false
	if current_loc_vert_c == 5 and current_loc_hoz_c == 8:
		if matrix[5][7] == 1:
			down_move = false
	if current_loc_vert_c == 5 and current_loc_hoz_c == 9:
		if matrix[5][8] == 1:
			down_move = false
	if current_loc_vert_c == 5 and current_loc_hoz_c == 10:
		if matrix[5][9] == 1:
			down_move = false
	if current_loc_vert_c == 5 and current_loc_hoz_c == 11:
		if matrix[5][10] == 1:
			down_move = false
	if current_loc_vert_c == 5 and current_loc_hoz_c == 12:
		if matrix[5][11] == 1:
			down_move = false
	if current_loc_vert_c == 5 and current_loc_hoz_c == 13:
		if matrix[5][12] == 1:
			down_move = false
	if current_loc_vert_c == 5 and current_loc_hoz_c == 14:
		if matrix[5][13] == 1:
			down_move = false
	if current_loc_vert_c == 5 and current_loc_hoz_c == 15:
		if matrix[5][14] == 1:
			down_move = false
			
	if current_loc_vert_c == 6 and current_loc_hoz_c == 1:
		if matrix[6][0] == 1:
			down_move = false
	if current_loc_vert_c == 6 and current_loc_hoz_c == 2:
		if matrix[6][1] == 1:
			down_move = false
	if current_loc_vert_c == 6 and current_loc_hoz_c == 3:
		if matrix[6][2] == 1:
			down_move = false
	if current_loc_vert_c == 6 and current_loc_hoz_c == 4:
		if matrix[6][3] == 1:
			down_move = false
	if current_loc_vert_c == 6 and current_loc_hoz_c == 5:
		if matrix[6][4] == 1:
			down_move = false
	if current_loc_vert_c == 6 and current_loc_hoz_c == 6:
		if matrix[6][5] == 1:
			down_move = false
	if current_loc_vert_c == 6 and current_loc_hoz_c == 7:
		if matrix[6][6] == 1:
			down_move = false
	if current_loc_vert_c == 6 and current_loc_hoz_c == 8:
		if matrix[6][7] == 1:
			down_move = false
	if current_loc_vert_c == 6 and current_loc_hoz_c == 9:
		if matrix[6][8] == 1:
			down_move = false
	if current_loc_vert_c == 6 and current_loc_hoz_c == 10:
		if matrix[6][9] == 1:
			down_move = false
	if current_loc_vert_c == 6 and current_loc_hoz_c == 11:
		if matrix[6][10] == 1:
			down_move = false
	if current_loc_vert_c == 6 and current_loc_hoz_c == 12:
		if matrix[6][11] == 1:
			down_move = false
	if current_loc_vert_c == 6 and current_loc_hoz_c == 13:
		if matrix[6][12] == 1:
			down_move = false
	if current_loc_vert_c == 6 and current_loc_hoz_c == 14:
		if matrix[6][13] == 1:
			down_move = false
	if current_loc_vert_c == 6 and current_loc_hoz_c == 15:
		if matrix[6][14] == 1:
			down_move = false
			
	if current_loc_vert_c == 7 and current_loc_hoz_c == 1:
		if matrix[7][0] == 1:
			down_move = false
	if current_loc_vert_c == 7 and current_loc_hoz_c == 2:
		if matrix[7][1] == 1:
			down_move = false
	if current_loc_vert_c == 7 and current_loc_hoz_c == 3:
		if matrix[7][2] == 1:
			down_move = false
	if current_loc_vert_c == 7 and current_loc_hoz_c == 4:
		if matrix[7][3] == 1:
			down_move = false
	if current_loc_vert_c == 7 and current_loc_hoz_c == 5:
		if matrix[7][4] == 1:
			down_move = false
	if current_loc_vert_c == 7 and current_loc_hoz_c == 6:
		if matrix[7][5] == 1:
			down_move = false
	if current_loc_vert_c == 7 and current_loc_hoz_c == 7:
		if matrix[7][6] == 1:
			down_move = false
	if current_loc_vert_c == 7 and current_loc_hoz_c == 8:
		if matrix[7][7] == 1:
			down_move = false
	if current_loc_vert_c == 7 and current_loc_hoz_c == 9:
		if matrix[7][8] == 1:
			down_move = false
	if current_loc_vert_c == 7 and current_loc_hoz_c == 10:
		if matrix[7][9] == 1:
			down_move = false
	if current_loc_vert_c == 7 and current_loc_hoz_c == 11:
		if matrix[7][10] == 1:
			down_move = false
	if current_loc_vert_c == 7 and current_loc_hoz_c == 12:
		if matrix[7][11] == 1:
			down_move = false
	if current_loc_vert_c == 7 and current_loc_hoz_c == 13:
		if matrix[7][12] == 1:
			down_move = false
	if current_loc_vert_c == 7 and current_loc_hoz_c == 14:
		if matrix[7][13] == 1:
			down_move = false
	if current_loc_vert_c == 7 and current_loc_hoz_c == 15:
		if matrix[7][14] == 1:
			down_move = false
			
	if current_loc_vert_c == 8 and current_loc_hoz_c == 1:
		if matrix[8][0] == 1:
			down_move = false
	if current_loc_vert_c == 8 and current_loc_hoz_c == 2:
		if matrix[8][1] == 1:
			down_move = false
	if current_loc_vert_c == 8 and current_loc_hoz_c == 3:
		if matrix[8][2] == 1:
			down_move = false
	if current_loc_vert_c == 8 and current_loc_hoz_c == 4:
		if matrix[8][3] == 1:
			down_move = false
	if current_loc_vert_c == 8 and current_loc_hoz_c == 5:
		if matrix[8][4] == 1:
			down_move = false
	if current_loc_vert_c == 8 and current_loc_hoz_c == 6:
		if matrix[8][5] == 1:
			down_move = false
	if current_loc_vert_c == 8 and current_loc_hoz_c == 7:
		if matrix[8][6] == 1:
			down_move = false
	if current_loc_vert_c == 8 and current_loc_hoz_c == 8:
		if matrix[8][7] == 1:
			down_move = false
	if current_loc_vert_c == 8 and current_loc_hoz_c == 9:
		if matrix[8][8] == 1:
			down_move = false
	if current_loc_vert_c == 8 and current_loc_hoz_c == 10:
		if matrix[8][9] == 1:
			down_move = false
	if current_loc_vert_c == 8 and current_loc_hoz_c == 11:
		if matrix[8][10] == 1:
			down_move = false
	if current_loc_vert_c == 8 and current_loc_hoz_c == 12:
		if matrix[8][11] == 1:
			down_move = false
	if current_loc_vert_c == 8 and current_loc_hoz_c == 13:
		if matrix[8][12] == 1:
			down_move = false
	if current_loc_vert_c == 8 and current_loc_hoz_c == 14:
		if matrix[8][13] == 1:
			down_move = false
	if current_loc_vert_c == 8 and current_loc_hoz_c == 15:
		if matrix[8][14] == 1:
			down_move = false
			
	if current_loc_vert_c == 9 and current_loc_hoz_c == 1:
		if matrix[9][0] == 1:
			down_move = false
	if current_loc_vert_c == 9 and current_loc_hoz_c == 2:
		if matrix[9][1] == 1:
			down_move = false
	if current_loc_vert_c == 9 and current_loc_hoz_c == 3:
		if matrix[9][2] == 1:
			down_move = false
	if current_loc_vert_c == 9 and current_loc_hoz_c == 4:
		if matrix[9][3] == 1:
			down_move = false
	if current_loc_vert_c == 9 and current_loc_hoz_c == 5:
		if matrix[9][4] == 1:
			down_move = false
	if current_loc_vert_c == 9 and current_loc_hoz_c == 6:
		if matrix[9][5] == 1:
			down_move = false
	if current_loc_vert_c == 9 and current_loc_hoz_c == 7:
		if matrix[9][6] == 1:
			down_move = false
	if current_loc_vert_c == 9 and current_loc_hoz_c == 8:
		if matrix[9][7] == 1:
			down_move = false
	if current_loc_vert_c == 9 and current_loc_hoz_c == 9:
		if matrix[9][8] == 1:
			down_move = false
	if current_loc_vert_c == 9 and current_loc_hoz_c == 10:
		if matrix[9][9] == 1:
			down_move = false
	if current_loc_vert_c == 9 and current_loc_hoz_c == 11:
		if matrix[9][10] == 1:
			down_move = false
	if current_loc_vert_c == 9 and current_loc_hoz_c == 12:
		if matrix[9][11] == 1:
			down_move = false
	if current_loc_vert_c == 9 and current_loc_hoz_c == 13:
		if matrix[9][12] == 1:
			down_move = false
	if current_loc_vert_c == 9 and current_loc_hoz_c == 14:
		if matrix[9][13] == 1:
			down_move = false
	if current_loc_vert_c == 9 and current_loc_hoz_c == 15:
		if matrix[9][14] == 1:
			down_move = false


	if current_loc_vert_c == 10 and current_loc_hoz_c == 1:
		down_move = false
	if current_loc_vert_c == 10 and current_loc_hoz_c == 2:
		down_move = false
	if current_loc_vert_c == 10 and current_loc_hoz_c == 3:
		down_move = false
	if current_loc_vert_c == 10 and current_loc_hoz_c == 4:
		down_move = false
	if current_loc_vert_c == 10 and current_loc_hoz_c == 5:
		down_move = false
	if current_loc_vert_c == 10 and current_loc_hoz_c == 6:
		down_move = false
	if current_loc_vert_c == 10 and current_loc_hoz_c == 7:
		down_move = false
	if current_loc_vert_c == 10 and current_loc_hoz_c == 8:
		down_move = false
	if current_loc_vert_c == 10 and current_loc_hoz_c == 9:
		down_move = false
	if current_loc_vert_c == 10 and current_loc_hoz_c == 10:
		down_move = false
	if current_loc_vert_c == 10 and current_loc_hoz_c == 11:
		down_move = false
	if current_loc_vert_c == 10 and current_loc_hoz_c == 12:
		down_move = false
	if current_loc_vert_c == 10 and current_loc_hoz_c == 13:
		down_move = false
	if current_loc_vert_c == 10 and current_loc_hoz_c == 14:
		down_move = false
	if current_loc_vert_c == 10 and current_loc_hoz_c == 15:
		down_move = false
		
	if current_loc_vert_d == 1 and current_loc_hoz_d == 1:
		if matrix[1][0] == 1:
			down_move = false
	if current_loc_vert_d == 1 and current_loc_hoz_d == 2:
		if matrix[1][1] == 1:
			down_move = false
	if current_loc_vert_d == 1 and current_loc_hoz_d == 3:
		if matrix[1][2] == 1:
			down_move = false
	if current_loc_vert_d == 1 and current_loc_hoz_d == 4:
		if matrix[1][3] == 1:
			down_move = false
	if current_loc_vert_d == 1 and current_loc_hoz_d == 5:
		if matrix[1][4] == 1:
			down_move = false
	if current_loc_vert_d == 1 and current_loc_hoz_d == 6:
		if matrix[1][5] == 1:
			down_move = false
	if current_loc_vert_d == 1 and current_loc_hoz_d == 7:
		if matrix[1][6] == 1:
			down_move = false
	if current_loc_vert_d == 1 and current_loc_hoz_d == 8:
		if matrix[1][7] == 1:
			down_move = false
	if current_loc_vert_d == 1 and current_loc_hoz_d == 9:
		if matrix[1][8] == 1:
			down_move = false
	if current_loc_vert_d == 1 and current_loc_hoz_d == 10:
		if matrix[1][9] == 1:
			down_move = false
	if current_loc_vert_d == 1 and current_loc_hoz_d == 11:
		if matrix[1][10] == 1:
			down_move = false
	if current_loc_vert_d == 1 and current_loc_hoz_d == 12:
		if matrix[1][11] == 1:
			down_move = false
	if current_loc_vert_d == 1 and current_loc_hoz_d == 13:
		if matrix[1][12] == 1:
			down_move = false
	if current_loc_vert_d == 1 and current_loc_hoz_d == 14:
		if matrix[1][13] == 1:
			down_move = false
	if current_loc_vert_d == 1 and current_loc_hoz_d == 15:
		if matrix[1][14] == 1:
			down_move = false

	if current_loc_vert_d == 2 and current_loc_hoz_d == 1:
		if matrix[2][0] == 1:
			down_move = false
	if current_loc_vert_d == 2 and current_loc_hoz_d == 2:
		if matrix[2][1] == 1:
			down_move = false
	if current_loc_vert_d == 2 and current_loc_hoz_d == 3:
		if matrix[2][2] == 1:
			down_move = false
	if current_loc_vert_d == 2 and current_loc_hoz_d == 4:
		if matrix[2][3] == 1:
			down_move = false
	if current_loc_vert_d == 2 and current_loc_hoz_d == 5:
		if matrix[2][4] == 1:
			down_move = false
	if current_loc_vert_d == 2 and current_loc_hoz_d == 6:
		if matrix[2][5] == 1:
			down_move = false
	if current_loc_vert_d == 2 and current_loc_hoz_d == 7:
		if matrix[2][6] == 1:
			down_move = false
	if current_loc_vert_d == 2 and current_loc_hoz_d == 8:
		if matrix[2][7] == 1:
			down_move = false
	if current_loc_vert_d == 2 and current_loc_hoz_d == 9:
		if matrix[2][8] == 1:
			down_move = false
	if current_loc_vert_d == 2 and current_loc_hoz_d == 10:
		if matrix[2][9] == 1:
			down_move = false
	if current_loc_vert_d == 2 and current_loc_hoz_d == 11:
		if matrix[2][10] == 1:
			down_move = false
	if current_loc_vert_d == 2 and current_loc_hoz_d == 12:
		if matrix[2][11] == 1:
			down_move = false
	if current_loc_vert_d == 2 and current_loc_hoz_d == 13:
		if matrix[2][12] == 1:
			down_move = false
	if current_loc_vert_d == 2 and current_loc_hoz_d == 14:
		if matrix[2][13] == 1:
			down_move = false
	if current_loc_vert_d == 2 and current_loc_hoz_d == 15:
		if matrix[2][14] == 1:
			down_move = false
			

	if current_loc_vert_d == 3 and current_loc_hoz_d == 1:
		if matrix[3][0] == 1:
			down_move = false
	if current_loc_vert_d == 3 and current_loc_hoz_d == 2:
		if matrix[3][1] == 1:
			down_move = false
	if current_loc_vert_d == 3 and current_loc_hoz_d == 3:
		if matrix[3][2] == 1:
			down_move = false
	if current_loc_vert_d == 3 and current_loc_hoz_d == 4:
		if matrix[3][3] == 1:
			down_move = false
	if current_loc_vert_d == 3 and current_loc_hoz_d == 5:
		if matrix[3][4] == 1:
			down_move = false
	if current_loc_vert_d == 3 and current_loc_hoz_d == 6:
		if matrix[3][5] == 1:
			down_move = false
	if current_loc_vert_d == 3 and current_loc_hoz_d == 7:
		if matrix[3][6] == 1:
			down_move = false
	if current_loc_vert_d == 3 and current_loc_hoz_d == 8:
		if matrix[3][7] == 1:
			down_move = false
	if current_loc_vert_d == 3 and current_loc_hoz_d == 9:
		if matrix[3][8] == 1:
			down_move = false
	if current_loc_vert_d == 3 and current_loc_hoz_d == 10:
		if matrix[3][9] == 1:
			down_move = false
	if current_loc_vert_d == 3 and current_loc_hoz_d == 11:
		if matrix[3][10] == 1:
			down_move = false
	if current_loc_vert_d == 3 and current_loc_hoz_d == 12:
		if matrix[3][11] == 1:
			down_move = false
	if current_loc_vert_d == 3 and current_loc_hoz_d == 13:
		if matrix[3][12] == 1:
			down_move = false
	if current_loc_vert_d == 3 and current_loc_hoz_d == 14:
		if matrix[3][13] == 1:
			down_move = false
	if current_loc_vert_d == 3 and current_loc_hoz_d == 15:
		if matrix[3][14] == 1:
			down_move = false


	if current_loc_vert_d == 4 and current_loc_hoz_d == 1:
		if matrix[4][0] == 1:
			down_move = false
	if current_loc_vert_d == 4 and current_loc_hoz_d == 2:
		if matrix[4][1] == 1:
			down_move = false
	if current_loc_vert_d == 4 and current_loc_hoz_d == 3:
		if matrix[4][2] == 1:
			down_move = false
	if current_loc_vert_d == 4 and current_loc_hoz_d == 4:
		if matrix[4][3] == 1:
			down_move = false
	if current_loc_vert_d == 4 and current_loc_hoz_d == 5:
		if matrix[4][4] == 1:
			down_move = false
	if current_loc_vert_d == 4 and current_loc_hoz_d == 6:
		if matrix[4][5] == 1:
			down_move = false
	if current_loc_vert_d == 4 and current_loc_hoz_d == 7:
		if matrix[4][6] == 1:
			down_move = false
	if current_loc_vert_d == 4 and current_loc_hoz_d == 8:
		if matrix[4][7] == 1:
			down_move = false
	if current_loc_vert_d == 4 and current_loc_hoz_d == 9:
		if matrix[4][8] == 1:
			down_move = false
	if current_loc_vert_d == 4 and current_loc_hoz_d == 10:
		if matrix[4][9] == 1:
			down_move = false
	if current_loc_vert_d == 4 and current_loc_hoz_d == 11:
		if matrix[4][10] == 1:
			down_move = false
	if current_loc_vert_d == 4 and current_loc_hoz_d == 12:
		if matrix[4][11] == 1:
			down_move = false
	if current_loc_vert_d == 4 and current_loc_hoz_d == 13:
		if matrix[4][12] == 1:
			down_move = false
	if current_loc_vert_d == 4 and current_loc_hoz_d == 14:
		if matrix[4][13] == 1:
			down_move = false
	if current_loc_vert_d == 4 and current_loc_hoz_d == 15:
		if matrix[4][14] == 1:
			down_move = false


	if current_loc_vert_d == 5 and current_loc_hoz_d == 1:
		if matrix[5][0] == 1:
			down_move = false
	if current_loc_vert_d == 5 and current_loc_hoz_d == 2:
		if matrix[5][1] == 1:
			down_move = false
	if current_loc_vert_d == 5 and current_loc_hoz_d == 3:
		if matrix[5][2] == 1:
			down_move = false
	if current_loc_vert_d == 5 and current_loc_hoz_d == 4:
		if matrix[5][3] == 1:
			down_move = false
	if current_loc_vert_d == 5 and current_loc_hoz_d == 5:
		if matrix[5][4] == 1:
			down_move = false
	if current_loc_vert_d == 5 and current_loc_hoz_d == 6:
		if matrix[5][5] == 1:
			down_move = false
	if current_loc_vert_d == 5 and current_loc_hoz_d == 7:
		if matrix[5][6] == 1:
			down_move = false
	if current_loc_vert_d == 5 and current_loc_hoz_d == 8:
		if matrix[5][7] == 1:
			down_move = false
	if current_loc_vert_d == 5 and current_loc_hoz_d == 9:
		if matrix[5][8] == 1:
			down_move = false
	if current_loc_vert_d == 5 and current_loc_hoz_d == 10:
		if matrix[5][9] == 1:
			down_move = false
	if current_loc_vert_d == 5 and current_loc_hoz_d == 11:
		if matrix[5][10] == 1:
			down_move = false
	if current_loc_vert_d == 5 and current_loc_hoz_d == 12:
		if matrix[5][11] == 1:
			down_move = false
	if current_loc_vert_d == 5 and current_loc_hoz_d == 13:
		if matrix[5][12] == 1:
			down_move = false
	if current_loc_vert_d == 5 and current_loc_hoz_d == 14:
		if matrix[5][13] == 1:
			down_move = false
	if current_loc_vert_d == 5 and current_loc_hoz_d == 15:
		if matrix[5][14] == 1:
			down_move = false
			
	if current_loc_vert_d == 6 and current_loc_hoz_d == 1:
		if matrix[6][0] == 1:
			down_move = false
	if current_loc_vert_d == 6 and current_loc_hoz_d == 2:
		if matrix[6][1] == 1:
			down_move = false
	if current_loc_vert_d == 6 and current_loc_hoz_d == 3:
		if matrix[6][2] == 1:
			down_move = false
	if current_loc_vert_d == 6 and current_loc_hoz_d == 4:
		if matrix[6][3] == 1:
			down_move = false
	if current_loc_vert_d == 6 and current_loc_hoz_d == 5:
		if matrix[6][4] == 1:
			down_move = false
	if current_loc_vert_d == 6 and current_loc_hoz_d == 6:
		if matrix[6][5] == 1:
			down_move = false
	if current_loc_vert_d == 6 and current_loc_hoz_d == 7:
		if matrix[6][6] == 1:
			down_move = false
	if current_loc_vert_d == 6 and current_loc_hoz_d == 8:
		if matrix[6][7] == 1:
			down_move = false
	if current_loc_vert_d == 6 and current_loc_hoz_d == 9:
		if matrix[6][8] == 1:
			down_move = false
	if current_loc_vert_d == 6 and current_loc_hoz_d == 10:
		if matrix[6][9] == 1:
			down_move = false
	if current_loc_vert_d == 6 and current_loc_hoz_d == 11:
		if matrix[6][10] == 1:
			down_move = false
	if current_loc_vert_d == 6 and current_loc_hoz_d == 12:
		if matrix[6][11] == 1:
			down_move = false
	if current_loc_vert_d == 6 and current_loc_hoz_d == 13:
		if matrix[6][12] == 1:
			down_move = false
	if current_loc_vert_d == 6 and current_loc_hoz_d == 14:
		if matrix[6][13] == 1:
			down_move = false
	if current_loc_vert_d == 6 and current_loc_hoz_d == 15:
		if matrix[6][14] == 1:
			down_move = false
			
	if current_loc_vert_d == 7 and current_loc_hoz_d == 1:
		if matrix[7][0] == 1:
			down_move = false
	if current_loc_vert_d == 7 and current_loc_hoz_d == 2:
		if matrix[7][1] == 1:
			down_move = false
	if current_loc_vert_d == 7 and current_loc_hoz_d == 3:
		if matrix[7][2] == 1:
			down_move = false
	if current_loc_vert_d == 7 and current_loc_hoz_d == 4:
		if matrix[7][3] == 1:
			down_move = false
	if current_loc_vert_d == 7 and current_loc_hoz_d == 5:
		if matrix[7][4] == 1:
			down_move = false
	if current_loc_vert_d == 7 and current_loc_hoz_d == 6:
		if matrix[7][5] == 1:
			down_move = false
	if current_loc_vert_d == 7 and current_loc_hoz_d == 7:
		if matrix[7][6] == 1:
			down_move = false
	if current_loc_vert_d == 7 and current_loc_hoz_d == 8:
		if matrix[7][7] == 1:
			down_move = false
	if current_loc_vert_d == 7 and current_loc_hoz_d == 9:
		if matrix[7][8] == 1:
			down_move = false
	if current_loc_vert_d == 7 and current_loc_hoz_d == 10:
		if matrix[7][9] == 1:
			down_move = false
	if current_loc_vert_d == 7 and current_loc_hoz_d == 11:
		if matrix[7][10] == 1:
			down_move = false
	if current_loc_vert_d == 7 and current_loc_hoz_d == 12:
		if matrix[7][11] == 1:
			down_move = false
	if current_loc_vert_d == 7 and current_loc_hoz_d == 13:
		if matrix[7][12] == 1:
			down_move = false
	if current_loc_vert_d == 7 and current_loc_hoz_d == 14:
		if matrix[7][13] == 1:
			down_move = false
	if current_loc_vert_d == 7 and current_loc_hoz_d == 15:
		if matrix[7][14] == 1:
			down_move = false
			
	if current_loc_vert_d == 8 and current_loc_hoz_d == 1:
		if matrix[8][0] == 1:
			down_move = false
	if current_loc_vert_d == 8 and current_loc_hoz_d == 2:
		if matrix[8][1] == 1:
			down_move = false
	if current_loc_vert_d == 8 and current_loc_hoz_d == 3:
		if matrix[8][2] == 1:
			down_move = false
	if current_loc_vert_d == 8 and current_loc_hoz_d == 4:
		if matrix[8][3] == 1:
			down_move = false
	if current_loc_vert_d == 8 and current_loc_hoz_d == 5:
		if matrix[8][4] == 1:
			down_move = false
	if current_loc_vert_d == 8 and current_loc_hoz_d == 6:
		if matrix[8][5] == 1:
			down_move = false
	if current_loc_vert_d == 8 and current_loc_hoz_d == 7:
		if matrix[8][6] == 1:
			down_move = false
	if current_loc_vert_d == 8 and current_loc_hoz_d == 8:
		if matrix[8][7] == 1:
			down_move = false
	if current_loc_vert_d == 8 and current_loc_hoz_d == 9:
		if matrix[8][8] == 1:
			down_move = false
	if current_loc_vert_d == 8 and current_loc_hoz_d == 10:
		if matrix[8][9] == 1:
			down_move = false
	if current_loc_vert_d == 8 and current_loc_hoz_d == 11:
		if matrix[8][10] == 1:
			down_move = false
	if current_loc_vert_d == 8 and current_loc_hoz_d == 12:
		if matrix[8][11] == 1:
			down_move = false
	if current_loc_vert_d == 8 and current_loc_hoz_d == 13:
		if matrix[8][12] == 1:
			down_move = false
	if current_loc_vert_d == 8 and current_loc_hoz_d == 14:
		if matrix[8][13] == 1:
			down_move = false
	if current_loc_vert_d == 8 and current_loc_hoz_d == 15:
		if matrix[8][14] == 1:
			down_move = false
			
	if current_loc_vert_d == 9 and current_loc_hoz_d == 1:
		if matrix[9][0] == 1:
			down_move = false
	if current_loc_vert_d == 9 and current_loc_hoz_d == 2:
		if matrix[9][1] == 1:
			down_move = false
	if current_loc_vert_d == 9 and current_loc_hoz_d == 3:
		if matrix[9][2] == 1:
			down_move = false
	if current_loc_vert_d == 9 and current_loc_hoz_d == 4:
		if matrix[9][3] == 1:
			down_move = false
	if current_loc_vert_d == 9 and current_loc_hoz_d == 5:
		if matrix[9][4] == 1:
			down_move = false
	if current_loc_vert_d == 9 and current_loc_hoz_d == 6:
		if matrix[9][5] == 1:
			down_move = false
	if current_loc_vert_d == 9 and current_loc_hoz_d == 7:
		if matrix[9][6] == 1:
			down_move = false
	if current_loc_vert_d == 9 and current_loc_hoz_d == 8:
		if matrix[9][7] == 1:
			down_move = false
	if current_loc_vert_d == 9 and current_loc_hoz_d == 9:
		if matrix[9][8] == 1:
			down_move = false
	if current_loc_vert_d == 9 and current_loc_hoz_d == 10:
		if matrix[9][9] == 1:
			down_move = false
	if current_loc_vert_d == 9 and current_loc_hoz_d == 11:
		if matrix[9][10] == 1:
			down_move = false
	if current_loc_vert_d == 9 and current_loc_hoz_d == 12:
		if matrix[9][11] == 1:
			down_move = false
	if current_loc_vert_d == 9 and current_loc_hoz_d == 13:
		if matrix[9][12] == 1:
			down_move = false
	if current_loc_vert_d == 9 and current_loc_hoz_d == 14:
		if matrix[9][13] == 1:
			down_move = false
	if current_loc_vert_d == 9 and current_loc_hoz_d == 15:
		if matrix[9][14] == 1:
			down_move = false


	if current_loc_vert_d == 10 and current_loc_hoz_d == 1:
		down_move = false
	if current_loc_vert_d == 10 and current_loc_hoz_d == 2:
		down_move = false
	if current_loc_vert_d == 10 and current_loc_hoz_d == 3:
		down_move = false
	if current_loc_vert_d == 10 and current_loc_hoz_d == 4:
		down_move = false
	if current_loc_vert_d == 10 and current_loc_hoz_d == 5:
		down_move = false
	if current_loc_vert_d == 10 and current_loc_hoz_d == 6:
		down_move = false
	if current_loc_vert_d == 10 and current_loc_hoz_d == 7:
		down_move = false
	if current_loc_vert_d == 10 and current_loc_hoz_d == 8:
		down_move = false
	if current_loc_vert_d == 10 and current_loc_hoz_d == 9:
		down_move = false
	if current_loc_vert_d == 10 and current_loc_hoz_d == 10:
		down_move = false
	if current_loc_vert_d == 10 and current_loc_hoz_d == 11:
		down_move = false
	if current_loc_vert_d == 10 and current_loc_hoz_d == 12:
		down_move = false
	if current_loc_vert_d == 10 and current_loc_hoz_d == 13:
		down_move = false
	if current_loc_vert_d == 10 and current_loc_hoz_d == 14:
		down_move = false
	if current_loc_vert_d == 10 and current_loc_hoz_d == 15:
		down_move = false
		

func line_check():
	line_ten_clear = true
	for x in matrix[9]:
		if x == 0:
			line_ten_clear = false
	if line_ten_clear == true:
		for y in range(0,15):
			matrix[9][y] = 0
		var ten = get_tree().get_nodes_in_group("ten")
		for x in ten:
			x.queue_free()
		perks.success = perks.success + 15
		var nine = get_tree().get_nodes_in_group("nine")
		if nine.empty() == false:
			for x in nine:
				var pos = x.get_global_position()
				print(get_tree().get_root().get_child(6).get_name())
				print(get_tree().get_root().get_child(6).get_children())
				x.set_global_position(Vector2(pos.x, get_tree().get_root().get_child(6).get_node("1_10").get_global_position().y))
				x.remove_from_group("nine")
				x.add_to_group("ten")
		var eight = get_tree().get_nodes_in_group("eight")
		for x in eight:
			var pos = x.get_global_position()
			x.set_global_position(Vector2(pos.x, get_tree().get_root().get_child(6).get_node("19").get_global_position().y))
			x.remove_from_group("eight")
			x.add_to_group("nine")
		var seven = get_tree().get_nodes_in_group("seven")
		for x in seven:
			var pos = x.get_global_position()
			x.set_global_position(Vector2(pos.x, get_tree().get_root().get_child(6).get_node("18").get_global_position().y))
			x.remove_from_group("seven")
			x.add_to_group("eight")
		var six = get_tree().get_nodes_in_group("six")
		for x in six:
			var pos = x.get_global_position()
			x.set_global_position(Vector2(pos.x, get_tree().get_root().get_child(6).get_node("17").get_global_position().y))
			x.remove_from_group("six")
			x.add_to_group("seven")
		var five = get_tree().get_nodes_in_group("five")
		for x in five:
			var pos = x.get_global_position()
			x.set_global_position(Vector2(pos.x, get_tree().get_root().get_child(6).get_node("16").get_global_position().y))
			x.remove_from_group("five")
			x.add_to_group("six")
		var four = get_tree().get_nodes_in_group("four")
		for x in four:
			var pos = x.get_global_position()
			x.set_global_position(Vector2(pos.x, get_tree().get_root().get_child(6).get_node("15").get_global_position().y))
			x.remove_from_group("four")
			x.add_to_group("five")
		var three = get_tree().get_nodes_in_group("three")
		for x in three:
			var pos = x.get_global_position()
			x.set_global_position(Vector2(pos.x, get_tree().get_root().get_child(6).get_node("14").get_global_position().y))
			x.remove_from_group("three")
			x.add_to_group("four")
		var two = get_tree().get_nodes_in_group("two")
		for x in two:
			var pos = x.get_global_position()
			x.set_global_position(Vector2(pos.x, get_tree().get_root().get_child(6).get_node("13").get_global_position().y))
			x.remove_from_group("two")
			x.add_to_group("three")
		var one = get_tree().get_nodes_in_group("one")
		for x in one:
			var pos = x.get_global_position()
			x.set_global_position(Vector2(pos.x, get_tree().get_root().get_child(6).get_node("12").get_global_position().y))
			x.remove_from_group("one")
			x.add_to_group("two")
		for y in range(0,15):
			if matrix[8][y] == 1:
				matrix[8][y] = 0
				matrix[9][y] = 1
			if matrix[7][y] == 1:
				matrix[7][y] = 0
				matrix[8][y] = 1
			if matrix[6][y] == 1:
				matrix[6][y] = 0
				matrix[7][y] = 1
			if matrix[5][y] == 1:
				matrix[5][y] = 0
				matrix[6][y] = 1
			if matrix[4][y] == 1:
				matrix[4][y] = 0
				matrix[5][y] = 1
			if matrix[3][y] == 1:
				matrix[3][y] = 0
				matrix[4][y] = 1
			if matrix[2][y] == 1:
				matrix[2][y] = 0
				matrix[3][y] = 1
			if matrix[1][y] == 1:
				matrix[1][y] = 0
				matrix[2][y] = 1
			if matrix[0][y] == 1:
				matrix[0][y] = 0
				matrix[1][y] = 1
		line_check()
	line_nine_clear = true
	for x in matrix[8]:
		if x == 0:
			line_nine_clear = false
	if line_nine_clear == true:
		for y in range(0,15):
			matrix[8][y] = 0
		var nine = get_tree().get_nodes_in_group("nine")
		for x in nine:
			x.queue_free()
		perks.success = perks.success + 15
		var eight = get_tree().get_nodes_in_group("eight")
		for x in eight:
			var pos = x.get_global_position()
			x.set_global_position(Vector2(pos.x, get_tree().get_root().get_child(6).get_node("19").get_global_position().y))
			x.remove_from_group("eight")
			x.add_to_group("nine")
		var seven = get_tree().get_nodes_in_group("seven")
		for x in seven:
			var pos = x.get_global_position()
			x.set_global_position(Vector2(pos.x, get_tree().get_root().get_child(6).get_node("18").get_global_position().y))
			x.remove_from_group("seven")
			x.add_to_group("eight")
		var six = get_tree().get_nodes_in_group("six")
		for x in six:
			var pos = x.get_global_position()
			x.set_global_position(Vector2(pos.x, get_tree().get_root().get_child(6).get_node("17").get_global_position().y))
			x.remove_from_group("six")
			x.add_to_group("seven")
		var five = get_tree().get_nodes_in_group("five")
		for x in five:
			var pos = x.get_global_position()
			x.set_global_position(Vector2(pos.x, get_tree().get_root().get_child(6).get_node("16").get_global_position().y))
			x.remove_from_group("five")
			x.add_to_group("six")
		var four = get_tree().get_nodes_in_group("four")
		for x in four:
			var pos = x.get_global_position()
			x.set_global_position(Vector2(pos.x, get_tree().get_root().get_child(6).get_node("15").get_global_position().y))
			x.remove_from_group("four")
			x.add_to_group("five")
		var three = get_tree().get_nodes_in_group("three")
		for x in three:
			var pos = x.get_global_position()
			x.set_global_position(Vector2(pos.x, get_tree().get_root().get_child(6).get_node("14").get_global_position().y))
			x.remove_from_group("three")
			x.add_to_group("four")
		var two = get_tree().get_nodes_in_group("two")
		for x in two:
			var pos = x.get_global_position()
			x.set_global_position(Vector2(pos.x, get_tree().get_root().get_child(6).get_node("13").get_global_position().y))
			x.remove_from_group("two")
			x.add_to_group("three")
		var one = get_tree().get_nodes_in_group("one")
		for x in one:
			var pos = x.get_global_position()
			x.set_global_position(Vector2(pos.x, get_tree().get_root().get_child(6).get_node("12").get_global_position().y))
			x.remove_from_group("one")
			x.add_to_group("two")
		for y in range(0,15):
			if matrix[7][y] == 1:
				matrix[7][y] = 0
				matrix[8][y] = 1
			if matrix[6][y] == 1:
				matrix[6][y] = 0
				matrix[7][y] = 1
			if matrix[5][y] == 1:
				matrix[5][y] = 0
				matrix[6][y] = 1
			if matrix[4][y] == 1:
				matrix[4][y] = 0
				matrix[5][y] = 1
			if matrix[3][y] == 1:
				matrix[3][y] = 0
				matrix[4][y] = 1
			if matrix[2][y] == 1:
				matrix[2][y] = 0
				matrix[3][y] = 1
			if matrix[1][y] == 1:
				matrix[1][y] = 0
				matrix[2][y] = 1
			if matrix[0][y] == 1:
				matrix[0][y] = 0
				matrix[1][y] = 1
		line_check()
	line_eight_clear = true
	for x in matrix[7]:
		if x == 0:
			line_eight_clear = false
	if line_eight_clear == true:
		for y in range(0,15):
			matrix[7][y] = 0
		var eight = get_tree().get_nodes_in_group("eight")
		for x in eight:
			x.queue_free()
		perks.success = perks.success + 15
		var seven = get_tree().get_nodes_in_group("seven")
		for x in seven:
			var pos = x.get_global_position()
			x.set_global_position(Vector2(pos.x, get_tree().get_root().get_child(6).get_node("18").get_global_position().y))
			x.remove_from_group("seven")
			x.add_to_group("eight")
		var six = get_tree().get_nodes_in_group("six")
		for x in six:
			var pos = x.get_global_position()
			x.set_global_position(Vector2(pos.x, get_tree().get_root().get_child(6).get_node("17").get_global_position().y))
			x.remove_from_group("six")
			x.add_to_group("seven")
		var five = get_tree().get_nodes_in_group("five")
		for x in five:
			var pos = x.get_global_position()
			x.set_global_position(Vector2(pos.x, get_tree().get_root().get_child(6).get_node("16").get_global_position().y))
			x.remove_from_group("five")
			x.add_to_group("six")
		var four = get_tree().get_nodes_in_group("four")
		for x in four:
			var pos = x.get_global_position()
			x.set_global_position(Vector2(pos.x, get_tree().get_root().get_child(6).get_node("15").get_global_position().y))
			x.remove_from_group("four")
			x.add_to_group("five")
		var three = get_tree().get_nodes_in_group("three")
		for x in three:
			var pos = x.get_global_position()
			x.set_global_position(Vector2(pos.x, get_tree().get_root().get_child(6).get_node("14").get_global_position().y))
			x.remove_from_group("three")
			x.add_to_group("four")
		var two = get_tree().get_nodes_in_group("two")
		for x in two:
			var pos = x.get_global_position()
			x.set_global_position(Vector2(pos.x, get_tree().get_root().get_child(6).get_node("13").get_global_position().y))
			x.remove_from_group("two")
			x.add_to_group("three")
		var one = get_tree().get_nodes_in_group("one")
		for x in one:
			var pos = x.get_global_position()
			x.set_global_position(Vector2(pos.x, get_tree().get_root().get_child(6).get_node("12").get_global_position().y))
			x.remove_from_group("one")
			x.add_to_group("two")
		for y in range(0,15):
			if matrix[6][y] == 1:
				matrix[6][y] = 0
				matrix[7][y] = 1
			if matrix[5][y] == 1:
				matrix[5][y] = 0
				matrix[6][y] = 1
			if matrix[4][y] == 1:
				matrix[4][y] = 0
				matrix[5][y] = 1
			if matrix[3][y] == 1:
				matrix[3][y] = 0
				matrix[4][y] = 1
			if matrix[2][y] == 1:
				matrix[2][y] = 0
				matrix[3][y] = 1
			if matrix[1][y] == 1:
				matrix[1][y] = 0
				matrix[2][y] = 1
			if matrix[0][y] == 1:
				matrix[0][y] = 0
				matrix[1][y] = 1
		line_check()
	line_seven_clear = true
	for x in matrix[6]:
		if x == 0:
			line_seven_clear = false
	if line_seven_clear == true:
		for y in range(0,15):
			matrix[6][y] = 0
		var seven = get_tree().get_nodes_in_group("seven")
		for x in seven:
			x.queue_free()
		perks.success = perks.success + 15
		var six = get_tree().get_nodes_in_group("six")
		for x in six:
			var pos = x.get_global_position()
			x.set_global_position(Vector2(pos.x, get_tree().get_root().get_child(6).get_node("17").get_global_position().y))
			x.remove_from_group("six")
			x.add_to_group("seven")
		var five = get_tree().get_nodes_in_group("five")
		for x in five:
			var pos = x.get_global_position()
			x.set_global_position(Vector2(pos.x, get_tree().get_root().get_child(6).get_node("16").get_global_position().y))
			x.remove_from_group("five")
			x.add_to_group("six")
		var four = get_tree().get_nodes_in_group("four")
		for x in four:
			var pos = x.get_global_position()
			x.set_global_position(Vector2(pos.x, get_tree().get_root().get_child(6).get_node("15").get_global_position().y))
			x.remove_from_group("four")
			x.add_to_group("five")
		var three = get_tree().get_nodes_in_group("three")
		for x in three:
			var pos = x.get_global_position()
			x.set_global_position(Vector2(pos.x, get_tree().get_root().get_child(6).get_node("14").get_global_position().y))
			x.remove_from_group("three")
			x.add_to_group("four")
		var two = get_tree().get_nodes_in_group("two")
		for x in two:
			var pos = x.get_global_position()
			x.set_global_position(Vector2(pos.x, get_tree().get_root().get_child(6).get_node("13").get_global_position().y))
			x.remove_from_group("two")
			x.add_to_group("three")
		var one = get_tree().get_nodes_in_group("one")
		for x in one:
			var pos = x.get_global_position()
			x.set_global_position(Vector2(pos.x, get_tree().get_root().get_child(6).get_node("12").get_global_position().y))
			x.remove_from_group("one")
			x.add_to_group("two")
		for y in range(0,15):
			if matrix[5][y] == 1:
				matrix[5][y] = 0
				matrix[6][y] = 1
			if matrix[4][y] == 1:
				matrix[4][y] = 0
				matrix[5][y] = 1
			if matrix[3][y] == 1:
				matrix[3][y] = 0
				matrix[4][y] = 1
			if matrix[2][y] == 1:
				matrix[2][y] = 0
				matrix[3][y] = 1
			if matrix[1][y] == 1:
				matrix[1][y] = 0
				matrix[2][y] = 1
			if matrix[0][y] == 1:
				matrix[0][y] = 0
				matrix[1][y] = 1
		line_check()
	line_six_clear = true
	for x in matrix[5]:
		if x == 0:
			line_six_clear = false
	if line_six_clear == true:
		for y in range(0,15):
			matrix[5][y] = 0
		var six = get_tree().get_nodes_in_group("six")
		for x in six:
			x.queue_free()
		perks.success = perks.success + 15
		var five = get_tree().get_nodes_in_group("five")
		for x in five:
			var pos = x.get_global_position()
			x.set_global_position(Vector2(pos.x, get_tree().get_root().get_child(6).get_node("16").get_global_position().y))
			x.remove_from_group("five")
			x.add_to_group("six")
		var four = get_tree().get_nodes_in_group("four")
		for x in four:
			var pos = x.get_global_position()
			x.set_global_position(Vector2(pos.x, get_tree().get_root().get_child(6).get_node("15").get_global_position().y))
			x.remove_from_group("four")
			x.add_to_group("five")
		var three = get_tree().get_nodes_in_group("three")
		for x in three:
			var pos = x.get_global_position()
			x.set_global_position(Vector2(pos.x, get_tree().get_root().get_child(6).get_node("14").get_global_position().y))
			x.remove_from_group("three")
			x.add_to_group("four")
		var two = get_tree().get_nodes_in_group("two")
		for x in two:
			var pos = x.get_global_position()
			x.set_global_position(Vector2(pos.x, get_tree().get_root().get_child(6).get_node("13").get_global_position().y))
			x.remove_from_group("two")
			x.add_to_group("three")
		var one = get_tree().get_nodes_in_group("one")
		for x in one:
			var pos = x.get_global_position()
			x.set_global_position(Vector2(pos.x, get_tree().get_root().get_child(6).get_node("12").get_global_position().y))
			x.remove_from_group("one")
			x.add_to_group("two")
		for y in range(0,15):
			if matrix[4][y] == 1:
				matrix[4][y] = 0
				matrix[5][y] = 1
			if matrix[3][y] == 1:
				matrix[3][y] = 0
				matrix[4][y] = 1
			if matrix[2][y] == 1:
				matrix[2][y] = 0
				matrix[3][y] = 1
			if matrix[1][y] == 1:
				matrix[1][y] = 0
				matrix[2][y] = 1
			if matrix[0][y] == 1:
				matrix[0][y] = 0
				matrix[1][y] = 1
		line_check()
	line_five_clear = true
	for x in matrix[4]:
		if x == 0:
			line_five_clear = false
	if line_five_clear == true:
		for y in range(0,15):
			matrix[4][y] = 0
		var five = get_tree().get_nodes_in_group("five")
		for x in five:
			x.queue_free()
		perks.success = perks.success + 15
		var four = get_tree().get_nodes_in_group("four")
		for x in four:
			var pos = x.get_global_position()
			x.set_global_position(Vector2(pos.x, get_tree().get_root().get_child(6).get_node("15").get_global_position().y))
			x.remove_from_group("four")
			x.add_to_group("five")
		var three = get_tree().get_nodes_in_group("three")
		for x in three:
			var pos = x.get_global_position()
			x.set_global_position(Vector2(pos.x, get_tree().get_root().get_child(6).get_node("14").get_global_position().y))
			x.remove_from_group("three")
			x.add_to_group("four")
		var two = get_tree().get_nodes_in_group("two")
		for x in two:
			var pos = x.get_global_position()
			x.set_global_position(Vector2(pos.x, get_tree().get_root().get_child(6).get_node("13").get_global_position().y))
			x.remove_from_group("two")
			x.add_to_group("three")
		var one = get_tree().get_nodes_in_group("one")
		for x in one:
			var pos = x.get_global_position()
			x.set_global_position(Vector2(pos.x, get_tree().get_root().get_child(6).get_node("12").get_global_position().y))
			x.remove_from_group("one")
			x.add_to_group("two")
		for y in range(0,15):
			if matrix[3][y] == 1:
				matrix[3][y] = 0
				matrix[4][y] = 1
			if matrix[2][y] == 1:
				matrix[2][y] = 0
				matrix[3][y] = 1
			if matrix[1][y] == 1:
				matrix[1][y] = 0
				matrix[2][y] = 1
			if matrix[0][y] == 1:
				matrix[0][y] = 0
				matrix[1][y] = 1
		line_check()
	line_four_clear = true
	for x in matrix[3]:
		if x == 0:
			line_four_clear = false
	if line_four_clear == true:
		for y in range(0,15):
			matrix[3][y] = 0
		var four = get_tree().get_nodes_in_group("four")
		for x in four:
			x.queue_free()
		perks.success = perks.success + 15
		var three = get_tree().get_nodes_in_group("three")
		for x in three:
			var pos = x.get_global_position()
			x.set_global_position(Vector2(pos.x, get_tree().get_root().get_child(6).get_node("14").get_global_position().y))
			x.remove_from_group("three")
			x.add_to_group("four")
		var two = get_tree().get_nodes_in_group("two")
		for x in two:
			var pos = x.get_global_position()
			x.set_global_position(Vector2(pos.x, get_tree().get_root().get_child(6).get_node("13").get_global_position().y))
			x.remove_from_group("two")
			x.add_to_group("three")
		var one = get_tree().get_nodes_in_group("one")
		for x in one:
			var pos = x.get_global_position()
			x.set_global_position(Vector2(pos.x, get_tree().get_root().get_child(6).get_node("12").get_global_position().y))
			x.remove_from_group("one")
			x.add_to_group("two")
		for y in range(0,15):
			if matrix[2][y] == 1:
				matrix[2][y] = 0
				matrix[3][y] = 1
			if matrix[1][y] == 1:
				matrix[1][y] = 0
				matrix[2][y] = 1
			if matrix[0][y] == 1:
				matrix[0][y] = 0
				matrix[1][y] = 1
		line_check()
	line_three_clear = true
	for x in matrix[2]:
		if x == 0:
			line_three_clear = false
	if line_three_clear == true:
		for y in range(0,15):
			matrix[2][y] = 0
		var three = get_tree().get_nodes_in_group("three")
		for x in three:
			x.queue_free()
		perks.success = perks.success + 15
		var two = get_tree().get_nodes_in_group("two")
		for x in two:
			var pos = x.get_global_position()
			x.set_global_position(Vector2(pos.x, get_tree().get_root().get_child(6).get_node("13").get_global_position().y))
			x.remove_from_group("two")
			x.add_to_group("three")
		var one = get_tree().get_nodes_in_group("one")
		for x in one:
			var pos = x.get_global_position()
			x.set_global_position(Vector2(pos.x, get_tree().get_root().get_child(6).get_node("12").get_global_position().y))
			x.remove_from_group("one")
			x.add_to_group("two")
		for y in range(0,15):
			if matrix[1][y] == 1:
				matrix[1][y] = 0
				matrix[2][y] = 1
			if matrix[0][y] == 1:
				matrix[0][y] = 0
				matrix[1][y] = 1
		line_check()
	line_two_clear = true
	for x in matrix[1]:
		if x == 0:
			line_two_clear = false
	if line_two_clear == true:
		for y in range(0,15):
			matrix[1][y] = 0
		var two = get_tree().get_nodes_in_group("two")
		for x in two:
			x.queue_free()
		perks.success = perks.success + 15
		var one = get_tree().get_nodes_in_group("one")
		for x in one:
			var pos = x.get_global_position()
			x.set_global_position(Vector2(pos.x, get_tree().get_root().get_child(6).get_node("12").get_global_position().y))
			x.remove_from_group("one")
			x.add_to_group("two")
		for y in range(0,15):
			if matrix[0][y] == 1:
				matrix[0][y] = 0
				matrix[1][y] = 1
		line_check()
	line_one_clear = true
	for x in matrix[0]:
		if x == 0:
			line_one_clear = false
	if line_one_clear == true:
		for y in range(0,15):
			matrix[0][y] = 0
		var one = get_tree().get_nodes_in_group("one")
		for x in one:
			x.queue_free()
		perks.success = perks.success + 15
		line_check()
		
		
		
		
		
		
		
		
		
		