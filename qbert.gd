extends Node2D

var matrix = []

var bert_hoz
var bert_vert

var bert

func _ready():
	bert = get_node("bert/Sprite")
	for x in range(0,8):
		matrix.append([])
		matrix[x] = []
		for y in range(0,8):
			matrix[x].append([])
			matrix[x][y] = 0
	find_bert()
	set_process(true)
	
func _process(delta):
	if Input.is_action_pressed("move_up") and get_node("up_timer").get_time_left() == 0:
		move_up()
	if Input.is_action_pressed("move_right") and get_node("right_timer").get_time_left() == 0:
		move_right()
	if Input.is_action_pressed("move_left") and get_node("left_timer").get_time_left() == 0:
		move_left()
	if Input.is_action_pressed("move_down") and get_node("down_timer").get_time_left() == 0:
		move_down()
	set_display()
	set_position()
	
func set_position():
	if bert_vert == 0 and bert_hoz == 0:
		bert.set_pos(Vector2(494.551666, 47.881542))
	elif bert_vert == 0 and bert_hoz == 1:
		bert.set_pos(Vector2(459.390411, 87.686752))
	elif bert_vert == 0 and bert_hoz == 2:
		bert.set_pos(Vector2(426.219391, 124.174866))
	elif bert_vert == 0 and bert_hoz == 3:
		bert.set_pos(Vector2(392.384949, 163.31665))
	elif bert_vert == 0 and bert_hoz == 4:
		bert.set_pos(Vector2(358.550537, 198.477936))
	elif bert_vert == 0 and bert_hoz == 5:
		bert.set_pos(Vector2(327.369781, 236.956329))
	elif bert_vert == 0 and bert_hoz == 6:
		bert.set_pos(Vector2(294.198761, 274.107849))
	elif bert_vert == 0 and bert_hoz == 7:
		bert.set_pos(Vector2(260.364319, 312.586243))
	elif bert_vert == 1 and bert_hoz == 0:
		bert.set_pos(Vector2(533.734009, 85.732056))
	elif bert_vert == 1 and bert_hoz == 1:
		bert.set_pos(Vector2(500.204742, 125.847427))
	elif bert_vert == 1 and bert_hoz == 2:
		bert.set_pos(Vector2(466.675476, 162.969116))
	elif bert_vert == 1 and bert_hoz == 3:
		bert.set_pos(Vector2(433.744934, 199.492065))
	elif bert_vert == 1 and bert_hoz == 4:
		bert.set_pos(Vector2(400.215698, 236.613754))
	elif bert_vert == 1 and bert_hoz == 5:
		bert.set_pos(Vector2(367.794128, 273.358246))
	elif bert_vert == 1 and bert_hoz == 6:
		bert.set_pos(Vector2(333.751434, 311.183441))
	elif bert_vert == 1 and bert_hoz == 7:
		bert.set_pos(Vector2(299.708771, 346.847198))
	elif bert_vert == 2 and bert_hoz == 0:
		bert.set_pos(Vector2(573.016174, 123.798439))
	elif bert_vert == 2 and bert_hoz == 1:
		bert.set_pos(Vector2(537.818665, 159.898407))
	elif bert_vert == 2 and bert_hoz == 2:
		bert.set_pos(Vector2(507.28302, 197.618835))
	elif bert_vert == 2 and bert_hoz == 3:
		bert.set_pos(Vector2(474.183228, 234.922546))
	elif bert_vert == 2 and bert_hoz == 4:
		bert.set_pos(Vector2(436.978882, 272.424011))
	elif bert_vert == 2 and bert_hoz == 5:
		bert.set_pos(Vector2(408.339447, 310.107513))
	elif bert_vert == 2 and bert_hoz == 6:
		bert.set_pos(Vector2(376.685333, 346.283661))
	elif bert_vert == 2 and bert_hoz == 7:
		bert.set_pos(Vector2(339.001831, 383.967163))
	elif bert_vert == 3 and bert_hoz == 0:
		bert.set_pos(Vector2(613.157166, 158.710098))
	elif bert_vert == 3 and bert_hoz == 1:
		bert.set_pos(Vector2(580.649536, 197.188477))
	elif bert_vert == 3 and bert_hoz == 2:
		bert.set_pos(Vector2(546.151672, 234.340027))
	elif bert_vert == 3 and bert_hoz == 3:
		bert.set_pos(Vector2(514.307495, 272.154999))
	elif bert_vert == 3 and bert_hoz == 4:
		bert.set_pos(Vector2(480.493225, 306.704315))
	elif bert_vert == 3 and bert_hoz == 5:
		bert.set_pos(Vector2(446.678986, 346.399261))
	elif bert_vert == 3 and bert_hoz == 6:
		bert.set_pos(Vector2(415.805145, 383.153839))
	elif bert_vert == 3 and bert_hoz == 7:
		bert.set_pos(Vector2(381.990936, 420.643494))
	elif bert_vert == 4 and bert_hoz == 0:
		bert.set_pos(Vector2(653.763794, 196.520416))
	elif bert_vert == 4 and bert_hoz == 1:
		bert.set_pos(Vector2(621.256226, 233.671951))
	elif bert_vert == 4 and bert_hoz == 2:
		bert.set_pos(Vector2(587.421753, 272.15033))
	elif bert_vert == 4 and bert_hoz == 3:
		bert.set_pos(Vector2(553.58728, 307.975037))
	elif bert_vert == 4 and bert_hoz == 4:
		bert.set_pos(Vector2(519.773071, 346.199799))
	elif bert_vert == 4 and bert_hoz == 5:
		bert.set_pos(Vector2(488.164124, 382.219299))
	elif bert_vert == 4 and bert_hoz == 6:
		bert.set_pos(Vector2(453.614807, 418.2388))
	elif bert_vert == 4 and bert_hoz == 7:
		bert.set_pos(Vector2(422.005859, 456.463593))
	elif bert_vert == 5 and bert_hoz == 0:
		bert.set_pos(Vector2(692.886902, 232.123138))
	elif bert_vert == 5 and bert_hoz == 1:
		bert.set_pos(Vector2(661.197815, 268.653625))
	elif bert_vert == 5 and bert_hoz == 2:
		bert.set_pos(Vector2(627.74823, 306.504517))
	elif bert_vert == 5 and bert_hoz == 3:
		bert.set_pos(Vector2(593.453247, 344.409515))
	elif bert_vert == 5 and bert_hoz == 4:
		bert.set_pos(Vector2(561.865723, 380.509491))
	elif bert_vert == 5 and bert_hoz == 5:
		bert.set_pos(Vector2(527.57074, 418.414459))
	elif bert_vert == 5 and bert_hoz == 6:
		bert.set_pos(Vector2(494.178284, 455.416962))
	elif bert_vert == 5 and bert_hoz == 7:
		bert.set_pos(Vector2(460.785767, 491.516998))
	elif bert_vert == 6 and bert_hoz == 0:
		bert.set_pos(Vector2(734.643188, 267.283936))
	elif bert_vert == 6 and bert_hoz == 1:
		bert.set_pos(Vector2(701.319214, 304.813843))
	elif bert_vert == 6 and bert_hoz == 2:
		bert.set_pos(Vector2(665.993713, 342.534271))
	elif bert_vert == 6 and bert_hoz == 3:
		bert.set_pos(Vector2(633.993713, 378.534271))
	elif bert_vert == 6 and bert_hoz == 4:
		bert.set_pos(Vector2(600.993713, 415.534271))
	elif bert_vert == 6 and bert_hoz == 5:
		bert.set_pos(Vector2(566.993713, 454.534271))
	elif bert_vert == 6 and bert_hoz == 6:
		bert.set_pos(Vector2(535.993713, 491.534271))
	elif bert_vert == 6 and bert_hoz == 7:
		bert.set_pos(Vector2(501.993744, 528.534302))
	elif bert_vert == 7 and bert_hoz == 0:
		bert.set_pos(Vector2(774.022583, 305.130585))
	elif bert_vert == 7 and bert_hoz == 1:
		bert.set_pos(Vector2(740.819031, 342.813965))
	elif bert_vert == 7 and bert_hoz == 2:
		bert.set_pos(Vector2(708.897827, 380.87384))
	elif bert_vert == 7 and bert_hoz == 3:
		bert.set_pos(Vector2(674.52124, 416.47821))
	elif bert_vert == 7 and bert_hoz == 4:
		bert.set_pos(Vector2(642.599976, 454.538055))
	elif bert_vert == 7 and bert_hoz == 5:
		bert.set_pos(Vector2(608.223328, 491.370148))
	elif bert_vert == 7 and bert_hoz == 6:
		bert.set_pos(Vector2(576.302063, 528.202271))
	elif bert_vert == 7 and bert_hoz == 7:
		bert.set_pos(Vector2(541.925415, 566.262146))


func set_display():
	if matrix[0][0] == 0:
		get_node("zerozero_white").hide()
		get_node("zerozero_gray").show()
	elif matrix[0][0] == 1:
		get_node("zerozero_white").show()
		get_node("zerozero_gray").hide()
	if matrix[0][1] == 0:
		get_node("zeroone_white").hide()
		get_node("zeroone_gray").show()
	elif matrix[0][1] == 1:
		get_node("zeroone_white").show()
		get_node("zeroone_gray").hide()
	if matrix[0][2] == 0:
		get_node("zerotwo_white").hide()
		get_node("zerotwo_gray").show()
	elif matrix[0][2] == 1:
		get_node("zerotwo_white").show()
		get_node("zerotwo_gray").hide()
	if matrix[0][3] == 0:
		get_node("zerothree_white").hide()
		get_node("zerothree_gray").show()
	elif matrix[0][3] == 1:
		get_node("zerothree_white").show()
		get_node("zerothree_gray").hide()
	if matrix[0][4] == 0:
		get_node("zerofour_white").hide()
		get_node("zerofour_gray").show()
	elif matrix[0][4] == 1:
		get_node("zerofour_white").show()
		get_node("zerofour_gray").hide()
	if matrix[0][5] == 0:
		get_node("zerofive_white").hide()
		get_node("zerofive_gray").show()
	elif matrix[0][5] == 1:
		get_node("zerofive_white").show()
		get_node("zerofive_gray").hide()
	if matrix[0][6] == 0:
		get_node("zerosix_white").hide()
		get_node("zerosix_gray").show()
	elif matrix[0][6] == 1:
		get_node("zerosix_white").show()
		get_node("zerosix_gray").hide()
	if matrix[0][7] == 0:
		get_node("zeroseven_white").hide()
		get_node("zeroseven_gray").show()
	elif matrix[0][7] == 1:
		get_node("zeroseven_white").show()
		get_node("zeroseven_gray").hide()
	if matrix[1][0] == 0:
		get_node("onezero_white").hide()
		get_node("onezero_gray").show()
	elif matrix[1][0] == 1:
		get_node("onezero_white").show()
		get_node("onezero_gray").hide()
	if matrix[1][1] == 0:
		get_node("oneone_white").hide()
		get_node("oneone_gray").show()
	elif matrix[1][1] == 1:
		get_node("oneone_white").show()
		get_node("oneone_gray").hide()
	if matrix[1][2] == 0:
		get_node("onetwo_white").hide()
		get_node("onetwo_gray").show()
	elif matrix[1][2] == 1:
		get_node("onetwo_white").show()
		get_node("onetwo_gray").hide()
	if matrix[1][3] == 0:
		get_node("onethree_white").hide()
		get_node("onethree_gray").show()
	elif matrix[1][3] == 1:
		get_node("onethree_white").show()
		get_node("onethree_gray").hide()
	if matrix[1][4] == 0:
		get_node("onefour_white").hide()
		get_node("onefour_gray").show()
	elif matrix[1][4] == 1:
		get_node("onefour_white").show()
		get_node("onefour_gray").hide()
	if matrix[1][5] == 0:
		get_node("onefive_white").hide()
		get_node("onefive_gray").show()
	elif matrix[1][5] == 1:
		get_node("onefive_white").show()
		get_node("onefive_gray").hide()
	if matrix[1][6] == 0:
		get_node("onesix_white").hide()
		get_node("onesix_gray").show()
	elif matrix[1][6] == 1:
		get_node("onesix_white").show()
		get_node("onesix_gray").hide()
	if matrix[1][7] == 0:
		get_node("oneseven_white").hide()
		get_node("oneseven_gray").show()
	elif matrix[1][7] == 1:
		get_node("oneseven_white").show()
		get_node("oneseven_gray").hide()
	if matrix[2][0] == 0:
		get_node("twozero_white").hide()
		get_node("twozero_gray").show()
	elif matrix[2][0] == 1:
		get_node("twozero_white").show()
		get_node("twozero_gray").hide()
	if matrix[2][1] == 0:
		get_node("twoone_white").hide()
		get_node("twoone_gray").show()
	elif matrix[2][1] == 1:
		get_node("twoone_white").show()
		get_node("twoone_gray").hide()
	if matrix[2][2] == 0:
		get_node("twotwo_white").hide()
		get_node("twotwo_gray").show()
	elif matrix[2][2] == 1:
		get_node("twotwo_white").show()
		get_node("twotwo_gray").hide()
	if matrix[2][3] == 0:
		get_node("twothree_white").hide()
		get_node("twothree_gray").show()
	elif matrix[2][3] == 1:
		get_node("twothree_white").show()
		get_node("twothree_gray").hide()
	if matrix[2][4] == 0:
		get_node("twofour_white").hide()
		get_node("twofour_gray").show()
	elif matrix[2][4] == 1:
		get_node("twofour_white").show()
		get_node("twofour_gray").hide()
	if matrix[2][5] == 0:
		get_node("twofive_white").hide()
		get_node("twofive_gray").show()
	elif matrix[2][5] == 1:
		get_node("twofive_white").show()
		get_node("twofive_gray").hide()
	if matrix[2][6] == 0:
		get_node("twosix_white").hide()
		get_node("twosix_gray").show()
	elif matrix[2][6] == 1:
		get_node("twosix_white").show()
		get_node("twosix_gray").hide()
	if matrix[2][7] == 0:
		get_node("twoseven_white").hide()
		get_node("twoseven_gray").show()
	elif matrix[2][7] == 1:
		get_node("twoseven_white").show()
		get_node("twoseven_gray").hide()
	if matrix[3][0] == 0:
		get_node("threezero_white").hide()
		get_node("threezero_gray").show()
	elif matrix[3][0] == 1:
		get_node("threezero_white").show()
		get_node("threezero_gray").hide()
	if matrix[3][1] == 0:
		get_node("threeone_white").hide()
		get_node("threeone_gray").show()
	elif matrix[3][1] == 1:
		get_node("threeone_white").show()
		get_node("threeone_gray").hide()
	if matrix[3][2] == 0:
		get_node("threetwo_white").hide()
		get_node("threetwo_gray").show()
	elif matrix[3][2] == 1:
		get_node("threetwo_white").show()
		get_node("threetwo_gray").hide()
	if matrix[3][3] == 0:
		get_node("threethree_white").hide()
		get_node("threethree_gray").show()
	elif matrix[3][3] == 1:
		get_node("threethree_white").show()
		get_node("threethree_gray").hide()
	if matrix[3][4] == 0:
		get_node("threefour_white").hide()
		get_node("threefour_gray").show()
	elif matrix[3][4] == 1:
		get_node("threefour_white").show()
		get_node("threefour_gray").hide()
	if matrix[3][5] == 0:
		get_node("threefive_white").hide()
		get_node("threefive_gray").show()
	elif matrix[3][5] == 1:
		get_node("threefive_white").show()
		get_node("threefive_gray").hide()
	if matrix[3][6] == 0:
		get_node("threesix_white").hide()
		get_node("threesix_gray").show()
	elif matrix[3][6] == 1:
		get_node("threesix_white").show()
		get_node("threesix_gray").hide()
	if matrix[3][7] == 0:
		get_node("threeseven_white").hide()
		get_node("threeseven_gray").show()
	elif matrix[3][7] == 1:
		get_node("threeseven_white").show()
		get_node("threeseven_gray").hide()
	if matrix[4][0] == 0:
		get_node("fourzero_white").hide()
		get_node("fourzero_gray").show()
	elif matrix[4][0] == 1:
		get_node("fourzero_white").show()
		get_node("fourzero_gray").hide()
	if matrix[4][1] == 0:
		get_node("fourone_white").hide()
		get_node("fourone_gray").show()
	elif matrix[4][1] == 1:
		get_node("fourone_white").show()
		get_node("fourone_gray").hide()
	if matrix[4][2] == 0:
		get_node("fourtwo_white").hide()
		get_node("fourtwo_gray").show()
	elif matrix[4][2] == 1:
		get_node("fourtwo_white").show()
		get_node("fourtwo_gray").hide()
	if matrix[4][3] == 0:
		get_node("fourthree_white").hide()
		get_node("fourthree_gray").show()
	elif matrix[4][3] == 1:
		get_node("fourthree_white").show()
		get_node("fourthree_gray").hide()
	if matrix[4][4] == 0:
		get_node("fourfour_white").hide()
		get_node("fourfour_gray").show()
	elif matrix[4][4] == 1:
		get_node("fourfour_white").show()
		get_node("fourfour_gray").hide()
	if matrix[4][5] == 0:
		get_node("fourfive_white").hide()
		get_node("fourfive_gray").show()
	elif matrix[4][5] == 1:
		get_node("fourfive_white").show()
		get_node("fourfive_gray").hide()
	if matrix[4][6] == 0:
		get_node("foursix_white").hide()
		get_node("foursix_gray").show()
	elif matrix[4][6] == 1:
		get_node("foursix_white").show()
		get_node("foursix_gray").hide()
	if matrix[4][7] == 0:
		get_node("fourseven_white").hide()
		get_node("fourseven_gray").show()
	elif matrix[4][7] == 1:
		get_node("fourseven_white").show()
		get_node("fourseven_gray").hide()
	if matrix[5][0] == 0:
		get_node("fivezero_white").hide()
		get_node("fivezero_gray").show()
	elif matrix[5][0] == 1:
		get_node("fivezero_white").show()
		get_node("fivezero_gray").hide()
	if matrix[5][1] == 0:
		get_node("fiveone_white").hide()
		get_node("fiveone_gray").show()
	elif matrix[5][1] == 1:
		get_node("fiveone_white").show()
		get_node("fiveone_gray").hide()
	if matrix[5][2] == 0:
		get_node("fivetwo_white").hide()
		get_node("fivetwo_gray").show()
	elif matrix[5][2] == 1:
		get_node("fivetwo_white").show()
		get_node("fivetwo_gray").hide()
	if matrix[5][3] == 0:
		get_node("fivethree_white").hide()
		get_node("fivethree_gray").show()
	elif matrix[5][3] == 1:
		get_node("fivethree_white").show()
		get_node("fivethree_gray").hide()
	if matrix[5][4] == 0:
		get_node("fivefour_white").hide()
		get_node("fivefour_gray").show()
	elif matrix[5][4] == 1:
		get_node("fivefour_white").show()
		get_node("fivefour_gray").hide()
	if matrix[5][5] == 0:
		get_node("fivefive_white").hide()
		get_node("fivefive_gray").show()
	elif matrix[5][5] == 1:
		get_node("fivefive_white").show()
		get_node("fivefive_gray").hide()
	if matrix[5][6] == 0:
		get_node("fivesix_white").hide()
		get_node("fivesix_gray").show()
	elif matrix[5][6] == 1:
		get_node("fivesix_white").show()
		get_node("fivesix_gray").hide()
	if matrix[5][7] == 0:
		get_node("fiveseven_white").hide()
		get_node("fiveseven_gray").show()
	elif matrix[5][7] == 1:
		get_node("fiveseven_white").show()
		get_node("fiveseven_gray").hide()
	if matrix[6][0] == 0:
		get_node("sixzero_white").hide()
		get_node("sixzero_gray").show()
	elif matrix[6][0] == 1:
		get_node("sixzero_white").show()
		get_node("sixzero_gray").hide()
	if matrix[6][1] == 0:
		get_node("sixone_white").hide()
		get_node("sixone_gray").show()
	elif matrix[6][1] == 1:
		get_node("sixone_white").show()
		get_node("sixone_gray").hide()
	if matrix[6][2] == 0:
		get_node("sixtwo_white").hide()
		get_node("sixtwo_gray").show()
	elif matrix[6][2] == 1:
		get_node("sixtwo_white").show()
		get_node("sixtwo_gray").hide()
	if matrix[6][3] == 0:
		get_node("sixthree_white").hide()
		get_node("sixthree_gray").show()
	elif matrix[6][3] == 1:
		get_node("sixthree_white").show()
		get_node("sixthree_gray").hide()
	if matrix[6][4] == 0:
		get_node("sixfour_white").hide()
		get_node("sixfour_gray").show()
	elif matrix[6][4] == 1:
		get_node("sixfour_white").show()
		get_node("sixfour_gray").hide()
	if matrix[6][5] == 0:
		get_node("sixfive_white").hide()
		get_node("sixfive_gray").show()
	elif matrix[6][5] == 1:
		get_node("sixfive_white").show()
		get_node("sixfive_gray").hide()
	if matrix[6][6] == 0:
		get_node("sixsix_white").hide()
		get_node("sixsix_gray").show()
	elif matrix[6][6] == 1:
		get_node("sixsix_white").show()
		get_node("sixsix_gray").hide()
	if matrix[6][7] == 0:
		get_node("sixseven_white").hide()
		get_node("sixseven_gray").show()
	elif matrix[6][7] == 1:
		get_node("sixseven_white").show()
		get_node("sixseven_gray").hide()
	if matrix[7][0] == 0:
		get_node("sevenzero_white").hide()
		get_node("sevenzero_gray").show()
	elif matrix[7][0] == 1:
		get_node("sevenzero_white").show()
		get_node("sevenzero_gray").hide()
	if matrix[7][1] == 0:
		get_node("sevenone_white").hide()
		get_node("sevenone_gray").show()
	elif matrix[7][1] == 1:
		get_node("sevenone_white").show()
		get_node("sevenone_gray").hide()
	if matrix[7][2] == 0:
		get_node("seventwo_white").hide()
		get_node("seventwo_gray").show()
	elif matrix[7][2] == 1:
		get_node("seventwo_white").show()
		get_node("seventwo_gray").hide()
	if matrix[7][3] == 0:
		get_node("seventhree_white").hide()
		get_node("seventhree_gray").show()
	elif matrix[7][3] == 1:
		get_node("seventhree_white").show()
		get_node("seventhree_gray").hide()
	if matrix[7][4] == 0:
		get_node("sevenfour_white").hide()
		get_node("sevenfour_gray").show()
	elif matrix[7][4] == 1:
		get_node("sevenfour_white").show()
		get_node("sevenfour_gray").hide()
	if matrix[7][5] == 0:
		get_node("sevenfive_white").hide()
		get_node("sevenfive_gray").show()
	elif matrix[7][5] == 1:
		get_node("sevenfive_white").show()
		get_node("sevenfive_gray").hide()
	if matrix[7][6] == 0:
		get_node("sevensix_white").hide()
		get_node("sevensix_gray").show()
	elif matrix[7][6] == 1:
		get_node("sevensix_white").show()
		get_node("sevensix_gray").hide()
	if matrix[7][7] == 0:
		get_node("sevenseven_white").hide()
		get_node("sevenseven_gray").show()
	elif matrix[7][7] == 1:
		get_node("sevenseven_white").show()
		get_node("sevenseven_gray").hide()
	
	
func move_left():
	if bert_hoz == 0 and bert_vert == 0:
		bert_hoz = 1
		bert_vert = 0
		if matrix[1][0] == 0:
			matrix[1][0] = 1
		elif matrix[1][0] == 1:
			matrix[1][0] = 0
	elif bert_hoz == 0 and bert_vert == 1:
		bert_hoz = 1
		bert_vert = 1
		if matrix[1][1] == 0:
			matrix[1][1] = 1
		elif matrix[1][1] == 1:
			matrix[1][1] = 0
	elif bert_hoz == 0 and bert_vert == 2:
		bert_hoz = 1
		bert_vert = 2
		if matrix[1][2] == 0:
			matrix[1][2] = 1
		elif matrix[1][2] == 1:
			matrix[1][2] = 0
	elif bert_hoz == 0 and bert_vert == 3:
		bert_hoz = 1
		bert_vert = 3
		if matrix[1][3] == 0:
			matrix[1][3] = 1
		elif matrix[1][3] == 1:
			matrix[1][3] = 0
	elif bert_hoz == 0 and bert_vert == 4:
		bert_hoz = 1
		bert_vert = 4
		if matrix[1][4] == 0:
			matrix[1][4] = 1
		elif matrix[1][4] == 1:
			matrix[1][4] = 0
	elif bert_hoz == 0 and bert_vert == 5:
		bert_hoz = 1
		bert_vert = 5
		if matrix[1][5] == 0:
			matrix[1][5] = 1
		elif matrix[1][5] == 1:
			matrix[1][5] = 0
	elif bert_hoz == 0 and bert_vert == 6:
		bert_hoz = 1
		bert_vert = 6
		if matrix[1][6] == 0:
			matrix[1][6] = 1
		elif matrix[1][6] == 1:
			matrix[1][6] = 0
	elif bert_hoz == 0 and bert_vert == 7:
		bert_hoz = 1
		bert_vert = 7
		if matrix[1][7] == 0:
			matrix[1][7] = 1
		elif matrix[1][7] == 1:
			matrix[1][7] = 0
	
	elif bert_hoz == 1 and bert_vert == 0:
		bert_hoz = 2
		bert_vert = 0
		if matrix[2][0] == 0:
			matrix[2][0] = 1
		elif matrix[2][0] == 1:
			matrix[2][0] = 0
	elif bert_hoz == 1 and bert_vert == 1:
		bert_hoz = 2
		bert_vert = 1
		if matrix[2][1] == 0:
			matrix[2][1] = 1
		elif matrix[2][1] == 1:
			matrix[2][1] = 0
	elif bert_hoz == 1 and bert_vert == 2:
		bert_hoz = 2
		bert_vert = 2
		if matrix[2][2] == 0:
			matrix[2][2] = 1
		elif matrix[2][2] == 1:
			matrix[2][2] = 0
	elif bert_hoz == 1 and bert_vert == 3:
		bert_hoz = 2
		bert_vert = 3
		if matrix[2][3] == 0:
			matrix[2][3] = 1
		elif matrix[2][3] == 1:
			matrix[2][3] = 0
	elif bert_hoz == 1 and bert_vert == 4:
		bert_hoz = 2
		bert_vert = 4
		if matrix[2][4] == 0:
			matrix[2][4] = 1
		elif matrix[2][4] == 1:
			matrix[2][4] = 0
	elif bert_hoz == 1 and bert_vert == 5:
		bert_hoz = 2
		bert_vert = 5
		if matrix[2][5] == 0:
			matrix[2][5] = 1
		elif matrix[2][5] == 1:
			matrix[2][5] = 0
	elif bert_hoz == 1 and bert_vert == 6:
		bert_hoz = 2
		bert_vert = 6
		if matrix[2][6] == 0:
			matrix[2][6] = 1
		elif matrix[2][6] == 1:
			matrix[2][6] = 0
	elif bert_hoz == 1 and bert_vert == 7:
		bert_hoz = 2
		bert_vert = 7
		if matrix[2][7] == 0:
			matrix[2][7] = 1
		elif matrix[2][7] == 1:
			matrix[2][7] = 0
	
	elif bert_hoz == 2 and bert_vert == 0:
		bert_hoz = 3
		bert_vert = 0
		if matrix[3][0] == 0:
			matrix[3][0] = 1
		elif matrix[3][0] == 1:
			matrix[3][0] = 0
	elif bert_hoz == 2 and bert_vert == 1:
		bert_hoz = 3
		bert_vert = 1
		if matrix[3][1] == 0:
			matrix[3][1] = 1
		elif matrix[3][1] == 1:
			matrix[3][1] = 0
	elif bert_hoz == 2 and bert_vert == 2:
		bert_hoz = 3
		bert_vert = 2
		if matrix[3][2] == 0:
			matrix[3][2] = 1
		elif matrix[3][2] == 1:
			matrix[3][2] = 0
	elif bert_hoz == 2 and bert_vert == 3:
		bert_hoz = 3
		bert_vert = 3
		if matrix[3][3] == 0:
			matrix[3][3] = 1
		elif matrix[3][3] == 1:
			matrix[3][3] = 0
	elif bert_hoz == 2 and bert_vert == 4:
		bert_hoz = 3
		bert_vert = 4
		if matrix[3][4] == 0:
			matrix[3][4] = 1
		elif matrix[3][4] == 1:
			matrix[3][4] = 0
	elif bert_hoz == 2 and bert_vert == 5:
		bert_hoz = 3
		bert_vert = 5
		if matrix[3][5] == 0:
			matrix[3][5] = 1
		elif matrix[3][5] == 1:
			matrix[3][5] = 0
	elif bert_hoz == 2 and bert_vert == 6:
		bert_hoz = 3
		bert_vert = 6
		if matrix[3][6] == 0:
			matrix[3][6] = 1
		elif matrix[3][6] == 1:
			matrix[3][6] = 0
	elif bert_hoz == 2 and bert_vert == 7:
		bert_hoz = 3
		bert_vert = 7
		if matrix[3][7] == 0:
			matrix[3][7] = 1
		elif matrix[3][7] == 1:
			matrix[3][7] = 0
			
	elif bert_hoz == 3 and bert_vert == 0:
		bert_hoz = 4
		bert_vert = 0
		if matrix[4][0] == 0:
			matrix[4][0] = 1
		elif matrix[4][0] == 1:
			matrix[4][0] = 0
	elif bert_hoz == 3 and bert_vert == 1:
		bert_hoz = 4
		bert_vert = 1
		if matrix[4][1] == 0:
			matrix[4][1] = 1
		elif matrix[4][1] == 1:
			matrix[4][1] = 0
	elif bert_hoz == 3 and bert_vert == 2:
		bert_hoz = 4
		bert_vert = 2
		if matrix[4][2] == 0:
			matrix[4][2] = 1
		elif matrix[4][2] == 1:
			matrix[4][2] = 0
	elif bert_hoz == 3 and bert_vert == 3:
		bert_hoz = 4
		bert_vert = 3
		if matrix[4][3] == 0:
			matrix[4][3] = 1
		elif matrix[4][3] == 1:
			matrix[4][3] = 0
	elif bert_hoz == 3 and bert_vert == 4:
		bert_hoz = 4
		bert_vert = 4
		if matrix[4][4] == 0:
			matrix[4][4] = 1
		elif matrix[4][4] == 1:
			matrix[4][4] = 0
	elif bert_hoz == 3 and bert_vert == 5:
		bert_hoz = 4
		bert_vert = 5
		if matrix[4][5] == 0:
			matrix[4][5] = 1
		elif matrix[4][5] == 1:
			matrix[4][5] = 0
	elif bert_hoz == 3 and bert_vert == 6:
		bert_hoz = 4
		bert_vert = 6
		if matrix[4][6] == 0:
			matrix[4][6] = 1
		elif matrix[4][6] == 1:
			matrix[4][6] = 0
	elif bert_hoz == 3 and bert_vert == 7:
		bert_hoz = 4
		bert_vert = 7
		if matrix[4][7] == 0:
			matrix[4][7] = 1
		elif matrix[4][7] == 1:
			matrix[4][7] = 0
	
	elif bert_hoz == 4 and bert_vert == 0:
		bert_hoz = 5
		bert_vert = 0
		if matrix[5][0] == 0:
			matrix[5][0] = 1
		elif matrix[5][0] == 1:
			matrix[5][0] = 0
	elif bert_hoz == 4 and bert_vert == 1:
		bert_hoz = 5
		bert_vert = 1
		if matrix[5][1] == 0:
			matrix[5][1] = 1
		elif matrix[5][1] == 1:
			matrix[5][1] = 0
	elif bert_hoz == 4 and bert_vert == 2:
		bert_hoz = 5
		bert_vert = 2
		if matrix[5][2] == 0:
			matrix[5][2] = 1
		elif matrix[5][2] == 1:
			matrix[5][2] = 0
	elif bert_hoz == 4 and bert_vert == 3:
		bert_hoz = 5
		bert_vert = 3
		if matrix[5][3] == 0:
			matrix[5][3] = 1
		elif matrix[5][3] == 1:
			matrix[5][3] = 0
	elif bert_hoz == 4 and bert_vert == 4:
		bert_hoz = 5
		bert_vert = 4
		if matrix[5][4] == 0:
			matrix[5][4] = 1
		elif matrix[5][4] == 1:
			matrix[5][4] = 0
	elif bert_hoz == 4 and bert_vert == 5:
		bert_hoz = 5
		bert_vert = 5
		if matrix[5][5] == 0:
			matrix[5][5] = 1
		elif matrix[5][5] == 1:
			matrix[5][5] = 0
	elif bert_hoz == 4 and bert_vert == 6:
		bert_hoz = 5
		bert_vert = 6
		if matrix[5][6] == 0:
			matrix[5][6] = 1
		elif matrix[5][6] == 1:
			matrix[5][6] = 0
	elif bert_hoz == 4 and bert_vert == 7:
		bert_hoz = 5
		bert_vert = 7
		if matrix[5][7] == 0:
			matrix[5][7] = 1
		elif matrix[5][7] == 1:
			matrix[5][7] = 0
	
	elif bert_hoz == 5 and bert_vert == 0:
		bert_hoz = 6
		bert_vert = 0
		if matrix[6][0] == 0:
			matrix[6][0] = 1
		elif matrix[6][0] == 1:
			matrix[6][0] = 0
	elif bert_hoz == 5 and bert_vert == 1:
		bert_hoz = 6
		bert_vert = 1
		if matrix[6][1] == 0:
			matrix[6][1] = 1
		elif matrix[6][1] == 1:
			matrix[6][1] = 0
	elif bert_hoz == 5 and bert_vert == 2:
		bert_hoz = 6
		bert_vert = 2
		if matrix[6][2] == 0:
			matrix[6][2] = 1
		elif matrix[6][2] == 1:
			matrix[6][2] = 0
	elif bert_hoz == 5 and bert_vert == 3:
		bert_hoz = 6
		bert_vert = 3
		if matrix[6][3] == 0:
			matrix[6][3] = 1
		elif matrix[6][3] == 1:
			matrix[6][3] = 0
	elif bert_hoz == 5 and bert_vert == 4:
		bert_hoz = 6
		bert_vert = 4
		if matrix[6][4] == 0:
			matrix[6][4] = 1
		elif matrix[6][4] == 1:
			matrix[6][4] = 0
	elif bert_hoz == 5 and bert_vert == 5:
		bert_hoz = 6
		bert_vert = 5
		if matrix[6][5] == 0:
			matrix[6][5] = 1
		elif matrix[6][5] == 1:
			matrix[6][5] = 0
	elif bert_hoz == 5 and bert_vert == 6:
		bert_hoz = 6
		bert_vert = 6
		if matrix[6][6] == 0:
			matrix[6][6] = 1
		elif matrix[6][6] == 1:
			matrix[6][6] = 0
	elif bert_hoz == 5 and bert_vert == 7:
		bert_hoz = 6
		bert_vert = 7
		if matrix[6][7] == 0:
			matrix[6][7] = 1
		elif matrix[6][7] == 1:
			matrix[6][7] = 0
	
	elif bert_hoz == 6 and bert_vert == 0:
		bert_hoz = 7
		bert_vert = 0
		if matrix[7][0] == 0:
			matrix[7][0] = 1
		elif matrix[7][0] == 1:
			matrix[7][0] = 0
	elif bert_hoz == 6 and bert_vert == 1:
		bert_hoz = 7
		bert_vert = 1
		if matrix[7][1] == 0:
			matrix[7][1] = 1
		elif matrix[7][1] == 1:
			matrix[7][1] = 0
	elif bert_hoz == 6 and bert_vert == 2:
		bert_hoz = 7
		bert_vert = 2
		if matrix[7][2] == 0:
			matrix[7][2] = 1
		elif matrix[7][2] == 1:
			matrix[7][2] = 0
	elif bert_hoz == 6 and bert_vert == 3:
		bert_hoz = 7
		bert_vert = 3
		if matrix[7][3] == 0:
			matrix[7][3] = 1
		elif matrix[7][3] == 1:
			matrix[7][3] = 0
	elif bert_hoz == 6 and bert_vert == 4:
		bert_hoz = 7
		bert_vert = 4
		if matrix[7][4] == 0:
			matrix[7][4] = 1
		elif matrix[7][4] == 1:
			matrix[7][4] = 0
	elif bert_hoz == 6 and bert_vert == 5:
		bert_hoz = 7
		bert_vert = 5
		if matrix[7][5] == 0:
			matrix[7][5] = 1
		elif matrix[7][5] == 1:
			matrix[7][5] = 0
	elif bert_hoz == 6 and bert_vert == 6:
		bert_hoz = 7
		bert_vert = 6
		if matrix[7][6] == 0:
			matrix[7][6] = 1
		elif matrix[7][6] == 1:
			matrix[7][6] = 0
	elif bert_hoz == 6 and bert_vert == 7:
		bert_hoz = 7
		bert_vert = 7
		if matrix[7][7] == 0:
			matrix[7][7] = 1
		elif matrix[7][7] == 1:
			matrix[7][7] = 0
	
	get_node("left_timer").start()
	
func move_down():
	if bert_hoz == 0 and bert_vert == 0:
		bert_hoz = 0
		bert_vert = 1
		if matrix[0][1] == 0:
			matrix[0][1] = 1
		elif matrix[0][1] == 1:
			matrix[0][1] = 0
	elif bert_hoz == 0 and bert_vert == 1:
		bert_hoz = 0
		bert_vert = 2
		if matrix[0][2] == 0:
			matrix[0][2] = 1
		elif matrix[0][2] == 1:
			matrix[0][2] = 0
	elif bert_hoz == 0 and bert_vert == 2:
		bert_hoz = 0
		bert_vert = 3
		if matrix[0][3] == 0:
			matrix[0][3] = 1
		elif matrix[0][3] == 1:
			matrix[0][3] = 0
	elif bert_hoz == 0 and bert_vert == 3:
		bert_hoz = 0
		bert_vert = 4
		if matrix[0][4] == 0:
			matrix[0][4] = 1
		elif matrix[0][4] == 1:
			matrix[0][4] = 0
	elif bert_hoz == 0 and bert_vert == 4:
		bert_hoz = 0
		bert_vert = 5
		if matrix[0][5] == 0:
			matrix[0][5] = 1
		elif matrix[0][5] == 1:
			matrix[0][5] = 0
	elif bert_hoz == 0 and bert_vert == 5:
		bert_hoz = 0
		bert_vert = 6
		if matrix[0][6] == 0:
			matrix[0][6] = 1
		elif matrix[0][6] == 1:
			matrix[0][6] = 0
	elif bert_hoz == 0 and bert_vert == 6:
		bert_hoz = 0
		bert_vert = 7
		if matrix[0][7] == 0:
			matrix[0][7] = 1
		elif matrix[0][7] == 1:
			matrix[0][7] = 0
	
	elif bert_hoz == 1 and bert_vert == 0:
		bert_hoz = 1
		bert_vert = 1
		if matrix[1][1] == 0:
			matrix[1][1] = 1
		elif matrix[1][1] == 1:
			matrix[1][1] = 0
	elif bert_hoz == 1 and bert_vert == 1:
		bert_hoz = 1
		bert_vert = 2
		if matrix[1][2] == 0:
			matrix[1][2] = 1
		elif matrix[1][2] == 1:
			matrix[1][2] = 0
	elif bert_hoz == 1 and bert_vert == 2:
		bert_hoz = 1
		bert_vert = 3
		if matrix[1][3] == 0:
			matrix[1][3] = 1
		elif matrix[1][3] == 1:
			matrix[1][3] = 0
	elif bert_hoz == 1 and bert_vert == 3:
		bert_hoz = 1
		bert_vert = 4
		if matrix[1][4] == 0:
			matrix[1][4] = 1
		elif matrix[1][4] == 1:
			matrix[1][4] = 0
	elif bert_hoz == 1 and bert_vert == 4:
		bert_hoz = 1
		bert_vert = 5
		if matrix[1][5] == 0:
			matrix[1][5] = 1
		elif matrix[1][5] == 1:
			matrix[1][5] = 0
	elif bert_hoz == 1 and bert_vert == 5:
		bert_hoz = 1
		bert_vert = 6
		if matrix[1][6] == 0:
			matrix[1][6] = 1
		elif matrix[1][6] == 1:
			matrix[1][6] = 0
	elif bert_hoz == 1 and bert_vert == 6:
		bert_hoz = 1
		bert_vert = 7
		if matrix[1][7] == 0:
			matrix[1][7] = 1
		elif matrix[1][7] == 1:
			matrix[1][7] = 0
	
	elif bert_hoz == 2 and bert_vert == 0:
		bert_hoz = 2
		bert_vert = 1
		if matrix[2][1] == 0:
			matrix[2][1] = 1
		elif matrix[2][1] == 1:
			matrix[2][1] = 0
	elif bert_hoz == 2 and bert_vert == 1:
		bert_hoz = 2
		bert_vert = 2
		if matrix[2][2] == 0:
			matrix[2][2] = 1
		elif matrix[2][2] == 1:
			matrix[2][2] = 0
	elif bert_hoz == 2 and bert_vert == 2:
		bert_hoz = 2
		bert_vert = 3
		if matrix[2][3] == 0:
			matrix[2][3] = 1
		elif matrix[2][3] == 1:
			matrix[2][3] = 0
	elif bert_hoz == 2 and bert_vert == 3:
		bert_hoz = 2
		bert_vert = 4
		if matrix[2][4] == 0:
			matrix[2][4] = 1
		elif matrix[2][4] == 1:
			matrix[2][4] = 0
	elif bert_hoz == 2 and bert_vert == 4:
		bert_hoz = 2
		bert_vert = 5
		if matrix[2][5] == 0:
			matrix[2][5] = 1
		elif matrix[2][5] == 1:
			matrix[2][5] = 0
	elif bert_hoz == 2 and bert_vert == 5:
		bert_hoz = 2
		bert_vert = 6
		if matrix[2][6] == 0:
			matrix[2][6] = 1
		elif matrix[2][6] == 1:
			matrix[2][6] = 0
	elif bert_hoz == 2 and bert_vert == 6:
		bert_hoz = 2
		bert_vert = 7
		if matrix[2][7] == 0:
			matrix[2][7] = 1
		elif matrix[2][7] == 1:
			matrix[2][7] = 0
			
	elif bert_hoz == 3 and bert_vert == 0:
		bert_hoz = 3
		bert_vert = 1
		if matrix[3][1] == 0:
			matrix[3][1] = 1
		elif matrix[3][1] == 1:
			matrix[3][1] = 0
	elif bert_hoz == 3 and bert_vert == 1:
		bert_hoz = 3
		bert_vert = 2
		if matrix[3][2] == 0:
			matrix[3][2] = 1
		elif matrix[3][2] == 1:
			matrix[3][2] = 0
	elif bert_hoz == 3 and bert_vert == 2:
		bert_hoz = 3
		bert_vert = 3
		if matrix[3][3] == 0:
			matrix[3][3] = 1
		elif matrix[3][3] == 1:
			matrix[3][3] = 0
	elif bert_hoz == 3 and bert_vert == 3:
		bert_hoz = 3
		bert_vert = 4
		if matrix[3][4] == 0:
			matrix[3][4] = 1
		elif matrix[3][4] == 1:
			matrix[3][4] = 0
	elif bert_hoz == 3 and bert_vert == 4:
		bert_hoz = 3
		bert_vert = 5
		if matrix[3][5] == 0:
			matrix[3][5] = 1
		elif matrix[3][5] == 1:
			matrix[3][5] = 0
	elif bert_hoz == 3 and bert_vert == 5:
		bert_hoz = 3
		bert_vert = 6
		if matrix[3][6] == 0:
			matrix[3][6] = 1
		elif matrix[3][6] == 1:
			matrix[3][6] = 0
	elif bert_hoz == 3 and bert_vert == 6:
		bert_hoz = 3
		bert_vert = 7
		if matrix[3][7] == 0:
			matrix[3][7] = 1
		elif matrix[3][7] == 1:
			matrix[3][7] = 0
	
	elif bert_hoz == 4 and bert_vert == 0:
		bert_hoz = 4
		bert_vert = 1
		if matrix[4][1] == 0:
			matrix[4][1] = 1
		elif matrix[4][1] == 1:
			matrix[4][1] = 0
	elif bert_hoz == 4 and bert_vert == 1:
		bert_hoz = 4
		bert_vert = 2
		if matrix[4][2] == 0:
			matrix[4][2] = 1
		elif matrix[4][2] == 1:
			matrix[4][2] = 0
	elif bert_hoz == 4 and bert_vert == 2:
		bert_hoz = 4
		bert_vert = 3
		if matrix[4][3] == 0:
			matrix[4][3] = 1
		elif matrix[4][3] == 1:
			matrix[4][3] = 0
	elif bert_hoz == 4 and bert_vert == 3:
		bert_hoz = 4
		bert_vert = 4
		if matrix[4][4] == 0:
			matrix[4][4] = 1
		elif matrix[4][4] == 1:
			matrix[4][4] = 0
	elif bert_hoz == 4 and bert_vert == 4:
		bert_hoz = 4
		bert_vert = 5
		if matrix[4][5] == 0:
			matrix[4][5] = 1
		elif matrix[4][5] == 1:
			matrix[4][5] = 0
	elif bert_hoz == 4 and bert_vert == 5:
		bert_hoz = 5
		bert_vert = 5
		if matrix[5][5] == 0:
			matrix[5][5] = 1
		elif matrix[5][5] == 1:
			matrix[5][5] = 0
	elif bert_hoz == 4 and bert_vert == 6:
		bert_hoz = 4
		bert_vert = 7
		if matrix[4][7] == 0:
			matrix[4][7] = 1
		elif matrix[4][7] == 1:
			matrix[4][7] = 0
	
	elif bert_hoz == 5 and bert_vert == 0:
		bert_hoz = 5
		bert_vert = 1
		if matrix[5][1] == 0:
			matrix[5][1] = 1
		elif matrix[5][1] == 1:
			matrix[5][1] = 0
	elif bert_hoz == 5 and bert_vert == 1:
		bert_hoz = 5
		bert_vert = 2
		if matrix[5][2] == 0:
			matrix[5][2] = 1
		elif matrix[5][2] == 1:
			matrix[5][2] = 0
	elif bert_hoz == 5 and bert_vert == 2:
		bert_hoz = 5
		bert_vert = 3
		if matrix[5][3] == 0:
			matrix[5][3] = 1
		elif matrix[5][3] == 1:
			matrix[5][3] = 0
	elif bert_hoz == 5 and bert_vert == 3:
		bert_hoz = 5
		bert_vert = 4
		if matrix[5][4] == 0:
			matrix[5][4] = 1
		elif matrix[5][4] == 1:
			matrix[5][4] = 0
	elif bert_hoz == 5 and bert_vert == 4:
		bert_hoz = 5
		bert_vert = 5
		if matrix[5][5] == 0:
			matrix[5][5] = 1
		elif matrix[5][5] == 1:
			matrix[5][5] = 0
	elif bert_hoz == 5 and bert_vert == 5:
		bert_hoz = 5
		bert_vert = 6
		if matrix[5][6] == 0:
			matrix[5][6] = 1
		elif matrix[5][6] == 1:
			matrix[5][6] = 0
	elif bert_hoz == 5 and bert_vert == 6:
		bert_hoz = 5
		bert_vert = 7
		if matrix[5][7] == 0:
			matrix[5][7] = 1
		elif matrix[5][7] == 1:
			matrix[5][7] = 0
	
	elif bert_hoz == 6 and bert_vert == 0:
		bert_hoz = 6
		bert_vert = 1
		if matrix[6][1] == 0:
			matrix[6][1] = 1
		elif matrix[6][1] == 1:
			matrix[6][1] = 0
	elif bert_hoz == 6 and bert_vert == 1:
		bert_hoz = 6
		bert_vert = 2
		if matrix[6][2] == 0:
			matrix[6][2] = 1
		elif matrix[6][2] == 1:
			matrix[6][2] = 0
	elif bert_hoz == 6 and bert_vert == 2:
		bert_hoz = 6
		bert_vert = 3
		if matrix[6][3] == 0:
			matrix[6][3] = 1
		elif matrix[6][3] == 1:
			matrix[6][3] = 0
	elif bert_hoz == 6 and bert_vert == 3:
		bert_hoz = 6
		bert_vert = 4
		if matrix[6][4] == 0:
			matrix[6][4] = 1
		elif matrix[6][4] == 1:
			matrix[6][4] = 0
	elif bert_hoz == 6 and bert_vert == 4:
		bert_hoz = 6
		bert_vert = 5
		if matrix[6][5] == 0:
			matrix[6][5] = 1
		elif matrix[6][5] == 1:
			matrix[6][5] = 0
	elif bert_hoz == 6 and bert_vert == 5:
		bert_hoz = 6
		bert_vert = 6
		if matrix[6][6] == 0:
			matrix[6][6] = 1
		elif matrix[6][6] == 1:
			matrix[6][6] = 0
	elif bert_hoz == 6 and bert_vert == 6:
		bert_hoz = 6
		bert_vert = 7
		if matrix[6][7] == 0:
			matrix[6][7] = 1
		elif matrix[6][7] == 1:
			matrix[6][7] = 0

	elif bert_hoz == 7 and bert_vert == 0:
		bert_hoz = 7
		bert_vert = 1
		if matrix[7][1] == 0:
			matrix[7][1] = 1
		elif matrix[7][1] == 1:
			matrix[7][1] = 0
	elif bert_hoz == 7 and bert_vert == 1:
		bert_hoz = 7
		bert_vert = 2
		if matrix[7][2] == 0:
			matrix[7][2] = 1
		elif matrix[7][2] == 1:
			matrix[7][2] = 0
	elif bert_hoz == 7 and bert_vert == 2:
		bert_hoz = 7
		bert_vert = 3
		if matrix[7][3] == 0:
			matrix[7][3] = 1
		elif matrix[7][3] == 1:
			matrix[7][3] = 0
	elif bert_hoz == 7 and bert_vert == 3:
		bert_hoz = 7
		bert_vert = 4
		if matrix[7][4] == 0:
			matrix[7][4] = 1
		elif matrix[7][4] == 1:
			matrix[7][4] = 0
	elif bert_hoz == 7 and bert_vert == 4:
		bert_hoz = 7
		bert_vert = 5
		if matrix[7][5] == 0:
			matrix[7][5] = 1
		elif matrix[7][5] == 1:
			matrix[7][5] = 0
	elif bert_hoz == 7 and bert_vert == 5:
		bert_hoz = 7
		bert_vert = 6
		if matrix[7][6] == 0:
			matrix[7][6] = 1
		elif matrix[7][6] == 1:
			matrix[7][6] = 0
	elif bert_hoz == 7 and bert_vert == 6:
		bert_hoz = 7
		bert_vert = 7
		if matrix[7][7] == 0:
			matrix[7][7] = 1
		elif matrix[7][7] == 1:
			matrix[7][7] = 0

	get_node("down_timer").start()
		
func move_up():
	if bert_hoz == 0 and bert_vert == 1:
		bert_hoz = 0
		bert_vert = 0
		if matrix[0][0] == 0:
			matrix[0][0] = 1
		elif matrix[0][0] == 1:
			matrix[0][0] = 0
	elif bert_hoz == 0 and bert_vert == 2:
		bert_hoz = 0
		bert_vert = 1
		if matrix[0][1] == 0:
			matrix[0][1] = 1
		elif matrix[0][1] == 1:
			matrix[0][1] = 0
	elif bert_hoz == 0 and bert_vert == 3:
		bert_hoz = 0
		bert_vert = 2
		if matrix[0][2] == 0:
			matrix[0][2] = 1
		elif matrix[0][2] == 1:
			matrix[0][2] = 0
	elif bert_hoz == 0 and bert_vert == 4:
		bert_hoz = 0
		bert_vert = 3
		if matrix[0][3] == 0:
			matrix[0][3] = 1
		elif matrix[0][3] == 1:
			matrix[0][3] = 0
	elif bert_hoz == 0 and bert_vert == 5:
		bert_hoz = 0
		bert_vert = 4
		if matrix[0][4] == 0:
			matrix[0][4] = 1
		elif matrix[0][4] == 1:
			matrix[0][4] = 0
	elif bert_hoz == 0 and bert_vert == 6:
		bert_hoz = 0
		bert_vert = 5
		if matrix[0][5] == 0:
			matrix[0][5] = 1
		elif matrix[0][5] == 1:
			matrix[0][5] = 0
	elif bert_hoz == 0 and bert_vert == 7:
		bert_hoz = 0
		bert_vert = 6
		if matrix[0][6] == 0:
			matrix[0][6] = 1
		elif matrix[0][6] == 1:
			matrix[0][6] = 0
	
	elif bert_hoz == 1 and bert_vert == 1:
		bert_hoz = 1
		bert_vert = 0
		if matrix[1][0] == 0:
			matrix[1][0] = 1
		elif matrix[1][0] == 1:
			matrix[1][0] = 0
	elif bert_hoz == 1 and bert_vert == 2:
		bert_hoz = 1
		bert_vert = 1
		if matrix[1][1] == 0:
			matrix[1][1] = 1
		elif matrix[1][1] == 1:
			matrix[1][1] = 0
	elif bert_hoz == 1 and bert_vert == 3:
		bert_hoz = 1
		bert_vert = 2
		if matrix[1][2] == 0:
			matrix[1][2] = 1
		elif matrix[1][2] == 1:
			matrix[1][2] = 0
	elif bert_hoz == 1 and bert_vert == 4:
		bert_hoz = 1
		bert_vert = 3
		if matrix[1][3] == 0:
			matrix[1][3] = 1
		elif matrix[1][3] == 1:
			matrix[1][3] = 0
	elif bert_hoz == 1 and bert_vert == 5:
		bert_hoz = 1
		bert_vert = 4
		if matrix[1][4] == 0:
			matrix[1][4] = 1
		elif matrix[1][4] == 1:
			matrix[1][4] = 0
	elif bert_hoz == 1 and bert_vert == 6:
		bert_hoz = 1
		bert_vert = 5
		if matrix[1][5] == 0:
			matrix[1][5] = 1
		elif matrix[1][5] == 1:
			matrix[1][5] = 0
	elif bert_hoz == 1 and bert_vert == 7:
		bert_hoz = 1
		bert_vert = 6
		if matrix[1][6] == 0:
			matrix[1][6] = 1
		elif matrix[1][6] == 1:
			matrix[1][6] = 0
	
	elif bert_hoz == 2 and bert_vert == 1:
		bert_hoz = 2
		bert_vert = 0
		if matrix[2][0] == 0:
			matrix[2][0] = 1
		elif matrix[2][0] == 1:
			matrix[2][0] = 0
	elif bert_hoz == 2 and bert_vert == 2:
		bert_hoz = 2
		bert_vert = 1
		if matrix[2][1] == 0:
			matrix[2][1] = 1
		elif matrix[2][1] == 1:
			matrix[2][1] = 0
	elif bert_hoz == 2 and bert_vert == 3:
		bert_hoz = 2
		bert_vert = 2
		if matrix[2][2] == 0:
			matrix[2][2] = 1
		elif matrix[2][2] == 1:
			matrix[2][2] = 0
	elif bert_hoz == 2 and bert_vert == 4:
		bert_hoz = 2
		bert_vert = 3
		if matrix[2][3] == 0:
			matrix[2][3] = 1
		elif matrix[2][3] == 1:
			matrix[2][3] = 0
	elif bert_hoz == 2 and bert_vert == 5:
		bert_hoz = 2
		bert_vert = 4
		if matrix[2][4] == 0:
			matrix[2][4] = 1
		elif matrix[2][4] == 1:
			matrix[2][4] = 0
	elif bert_hoz == 2 and bert_vert == 6:
		bert_hoz = 2
		bert_vert = 5
		if matrix[2][5] == 0:
			matrix[2][5] = 1
		elif matrix[2][5] == 1:
			matrix[2][5] = 0
	elif bert_hoz == 2 and bert_vert == 7:
		bert_hoz = 2
		bert_vert = 6
		if matrix[2][6] == 0:
			matrix[2][6] = 1
		elif matrix[2][6] == 1:
			matrix[2][6] = 0
			
	elif bert_hoz == 3 and bert_vert == 1:
		bert_hoz = 3
		bert_vert = 0
		if matrix[3][0] == 0:
			matrix[3][0] = 1
		elif matrix[3][0] == 1:
			matrix[3][0] = 0
	elif bert_hoz == 3 and bert_vert == 2:
		bert_hoz = 3
		bert_vert = 1
		if matrix[3][1] == 0:
			matrix[3][1] = 1
		elif matrix[3][1] == 1:
			matrix[3][1] = 0
	elif bert_hoz == 3 and bert_vert == 3:
		bert_hoz = 3
		bert_vert = 2
		if matrix[3][2] == 0:
			matrix[3][2] = 1
		elif matrix[3][2] == 1:
			matrix[3][2] = 0
	elif bert_hoz == 3 and bert_vert == 4:
		bert_hoz = 3
		bert_vert = 3
		if matrix[3][3] == 0:
			matrix[3][3] = 1
		elif matrix[3][3] == 1:
			matrix[3][3] = 0
	elif bert_hoz == 3 and bert_vert == 5:
		bert_hoz = 3
		bert_vert = 4
		if matrix[3][4] == 0:
			matrix[3][4] = 1
		elif matrix[3][4] == 1:
			matrix[3][4] = 0
	elif bert_hoz == 3 and bert_vert == 6:
		bert_hoz = 3
		bert_vert = 5
		if matrix[3][5] == 0:
			matrix[3][5] = 1
		elif matrix[3][5] == 1:
			matrix[3][5] = 0
	elif bert_hoz == 3 and bert_vert == 7:
		bert_hoz = 3
		bert_vert = 6
		if matrix[3][6] == 0:
			matrix[3][6] = 1
		elif matrix[3][6] == 1:
			matrix[3][6] = 0
	
	elif bert_hoz == 4 and bert_vert == 1:
		bert_hoz = 4
		bert_vert = 0
		if matrix[4][0] == 0:
			matrix[4][0] = 1
		elif matrix[4][0] == 1:
			matrix[4][0] = 0
	elif bert_hoz == 4 and bert_vert == 2:
		bert_hoz = 4
		bert_vert = 1
		if matrix[4][1] == 0:
			matrix[4][1] = 1
		elif matrix[4][1] == 1:
			matrix[4][1] = 0
	elif bert_hoz == 4 and bert_vert == 3:
		bert_hoz = 4
		bert_vert = 2
		if matrix[4][2] == 0:
			matrix[4][2] = 1
		elif matrix[4][2] == 1:
			matrix[4][2] = 0
	elif bert_hoz == 4 and bert_vert == 4:
		bert_hoz = 4
		bert_vert = 3
		if matrix[4][3] == 0:
			matrix[4][3] = 1
		elif matrix[4][3] == 1:
			matrix[4][3] = 0
	elif bert_hoz == 4 and bert_vert == 5:
		bert_hoz = 4
		bert_vert = 4
		if matrix[4][4] == 0:
			matrix[4][4] = 1
		elif matrix[4][4] == 1:
			matrix[4][4] = 0
	elif bert_hoz == 4 and bert_vert == 6:
		bert_hoz = 4
		bert_vert = 5
		if matrix[4][5] == 0:
			matrix[4][5] = 1
		elif matrix[4][5] == 1:
			matrix[4][5] = 0
	elif bert_hoz == 4 and bert_vert == 7:
		bert_hoz = 4
		bert_vert = 6
		if matrix[4][6] == 0:
			matrix[4][6] = 1
		elif matrix[4][6] == 1:
			matrix[4][6] = 0
	
	elif bert_hoz == 5 and bert_vert == 1:
		bert_hoz = 5
		bert_vert = 0
		if matrix[5][0] == 0:
			matrix[5][0] = 1
		elif matrix[5][0] == 1:
			matrix[5][0] = 0
	elif bert_hoz == 5 and bert_vert == 2:
		bert_hoz = 5
		bert_vert = 1
		if matrix[5][1] == 0:
			matrix[5][1] = 1
		elif matrix[5][1] == 1:
			matrix[5][1] = 0
	elif bert_hoz == 5 and bert_vert == 3:
		bert_hoz = 5
		bert_vert = 2
		if matrix[5][2] == 0:
			matrix[5][2] = 1
		elif matrix[5][2] == 1:
			matrix[5][2] = 0
	elif bert_hoz == 5 and bert_vert == 4:
		bert_hoz = 5
		bert_vert = 3
		if matrix[5][3] == 0:
			matrix[5][3] = 1
		elif matrix[5][3] == 1:
			matrix[5][3] = 0
	elif bert_hoz == 5 and bert_vert == 5:
		bert_hoz = 5
		bert_vert = 4
		if matrix[5][4] == 0:
			matrix[5][4] = 1
		elif matrix[5][4] == 1:
			matrix[5][4] = 0
	elif bert_hoz == 5 and bert_vert == 6:
		bert_hoz = 5
		bert_vert = 5
		if matrix[5][5] == 0:
			matrix[5][5] = 1
		elif matrix[5][5] == 1:
			matrix[5][5] = 0
	elif bert_hoz == 5 and bert_vert == 7:
		bert_hoz = 5
		bert_vert = 6
		if matrix[5][6] == 0:
			matrix[5][6] = 1
		elif matrix[5][6] == 1:
			matrix[5][6] = 0
	
	elif bert_hoz == 6 and bert_vert == 1:
		bert_hoz = 6
		bert_vert = 0
		if matrix[6][0] == 0:
			matrix[6][0] = 1
		elif matrix[6][0] == 1:
			matrix[6][0] = 0
	elif bert_hoz == 6 and bert_vert == 2:
		bert_hoz = 6
		bert_vert = 1
		if matrix[6][1] == 0:
			matrix[6][1] = 1
		elif matrix[6][1] == 1:
			matrix[6][1] = 0
	elif bert_hoz == 6 and bert_vert == 3:
		bert_hoz = 6
		bert_vert = 2
		if matrix[6][2] == 0:
			matrix[6][2] = 1
		elif matrix[6][2] == 1:
			matrix[6][2] = 0
	elif bert_hoz == 6 and bert_vert == 4:
		bert_hoz = 6
		bert_vert = 3
		if matrix[6][3] == 0:
			matrix[6][3] = 1
		elif matrix[6][3] == 1:
			matrix[6][3] = 0
	elif bert_hoz == 6 and bert_vert == 5:
		bert_hoz = 6
		bert_vert = 4
		if matrix[6][4] == 0:
			matrix[6][4] = 1
		elif matrix[6][4] == 1:
			matrix[6][4] = 0
	elif bert_hoz == 6 and bert_vert == 6:
		bert_hoz = 6
		bert_vert = 5
		if matrix[6][5] == 0:
			matrix[6][5] = 1
		elif matrix[6][5] == 1:
			matrix[6][5] = 0
	elif bert_hoz == 6 and bert_vert == 7:
		bert_hoz = 6
		bert_vert = 6
		if matrix[6][6] == 0:
			matrix[6][6] = 1
		elif matrix[6][6] == 1:
			matrix[6][6] = 0

	elif bert_hoz == 7 and bert_vert == 1:
		bert_hoz = 7
		bert_vert = 0
		if matrix[7][0] == 0:
			matrix[7][0] = 1
		elif matrix[7][0] == 1:
			matrix[7][0] = 0
	elif bert_hoz == 7 and bert_vert == 2:
		bert_hoz = 7
		bert_vert = 1
		if matrix[7][1] == 0:
			matrix[7][1] = 1
		elif matrix[7][1] == 1:
			matrix[7][1] = 0
	elif bert_hoz == 7 and bert_vert == 3:
		bert_hoz = 7
		bert_vert = 2
		if matrix[7][2] == 0:
			matrix[7][2] = 1
		elif matrix[7][2] == 1:
			matrix[7][2] = 0
	elif bert_hoz == 7 and bert_vert == 4:
		bert_hoz = 7
		bert_vert = 3
		if matrix[7][3] == 0:
			matrix[7][3] = 1
		elif matrix[7][3] == 1:
			matrix[7][3] = 0
	elif bert_hoz == 7 and bert_vert == 5:
		bert_hoz = 7
		bert_vert = 4
		if matrix[7][4] == 0:
			matrix[7][4] = 1
		elif matrix[7][4] == 1:
			matrix[7][4] = 0
	elif bert_hoz == 7 and bert_vert == 6:
		bert_hoz = 7
		bert_vert = 5
		if matrix[7][5] == 0:
			matrix[7][5] = 1
		elif matrix[7][5] == 1:
			matrix[7][5] = 0
	elif bert_hoz == 7 and bert_vert == 7:
		bert_hoz = 7
		bert_vert = 6
		if matrix[7][6] == 0:
			matrix[7][6] = 1
		elif matrix[7][6] == 1:
			matrix[7][6] = 0

	get_node("up_timer").start()
		

func move_right():
	if bert_hoz == 1 and bert_vert == 0:
		bert_hoz = 0
		bert_vert = 0
		if matrix[0][0] == 0:
			matrix[0][0] = 1
		elif matrix[0][0] == 1:
			matrix[0][0] = 0
	elif bert_hoz == 1 and bert_vert == 1:
		bert_hoz = 0
		bert_vert = 1
		if matrix[0][1] == 0:
			matrix[0][1] = 1
		elif matrix[0][1] == 1:
			matrix[0][1] = 0
	elif bert_hoz == 1 and bert_vert == 2:
		bert_hoz = 0
		bert_vert = 2
		if matrix[0][2] == 0:
			matrix[0][2] = 1
		elif matrix[0][2] == 1:
			matrix[0][2] = 0
	elif bert_hoz == 1 and bert_vert == 3:
		bert_hoz = 0
		bert_vert = 3
		if matrix[0][3] == 0:
			matrix[0][3] = 1
		elif matrix[0][3] == 1:
			matrix[0][3] = 0
	elif bert_hoz == 1 and bert_vert == 4:
		bert_hoz = 0
		bert_vert = 4
		if matrix[0][4] == 0:
			matrix[0][4] = 1
		elif matrix[0][4] == 1:
			matrix[0][4] = 0
	elif bert_hoz == 1 and bert_vert == 5:
		bert_hoz = 0
		bert_vert = 5
		if matrix[0][5] == 0:
			matrix[0][5] = 1
		elif matrix[0][5] == 1:
			matrix[0][5] = 0
	elif bert_hoz == 1 and bert_vert == 6:
		bert_hoz = 0
		bert_vert = 6
		if matrix[0][6] == 0:
			matrix[0][6] = 1
		elif matrix[0][6] == 1:
			matrix[0][6] = 0
	elif bert_hoz == 1 and bert_vert == 7:
		bert_hoz = 0
		bert_vert = 7
		if matrix[0][7] == 0:
			matrix[0][7] = 1
		elif matrix[0][7] == 1:
			matrix[0][7] = 0
	
	elif bert_hoz == 2 and bert_vert == 0:
		bert_hoz = 1
		bert_vert = 0
		if matrix[1][0] == 0:
			matrix[1][0] = 1
		elif matrix[1][0] == 1:
			matrix[1][0] = 0
	elif bert_hoz == 1 and bert_vert == 1:
		bert_hoz = 1
		bert_vert = 1
		if matrix[1][1] == 0:
			matrix[1][1] = 1
		elif matrix[1][1] == 1:
			matrix[1][1] = 0
	elif bert_hoz == 2 and bert_vert == 2:
		bert_hoz = 1
		bert_vert = 2
		if matrix[1][2] == 0:
			matrix[1][2] = 1
		elif matrix[1][2] == 1:
			matrix[1][2] = 0
	elif bert_hoz == 2 and bert_vert == 3:
		bert_hoz = 1
		bert_vert = 3
		if matrix[1][3] == 0:
			matrix[1][3] = 1
		elif matrix[1][3] == 1:
			matrix[1][3] = 0
	elif bert_hoz == 2 and bert_vert == 4:
		bert_hoz = 1
		bert_vert = 4
		if matrix[1][4] == 0:
			matrix[1][4] = 1
		elif matrix[1][4] == 1:
			matrix[1][4] = 0
	elif bert_hoz == 2 and bert_vert == 5:
		bert_hoz = 1
		bert_vert = 5
		if matrix[1][5] == 0:
			matrix[1][5] = 1
		elif matrix[1][5] == 1:
			matrix[1][5] = 0
	elif bert_hoz == 2 and bert_vert == 6:
		bert_hoz = 1
		bert_vert = 6
		if matrix[1][6] == 0:
			matrix[1][6] = 1
		elif matrix[1][6] == 1:
			matrix[1][6] = 0
	elif bert_hoz == 2 and bert_vert == 7:
		bert_hoz = 1
		bert_vert = 7
		if matrix[1][7] == 0:
			matrix[1][7] = 1
		elif matrix[1][7] == 1:
			matrix[1][7] = 0
			
	elif bert_hoz == 3 and bert_vert == 0:
		bert_hoz = 2
		bert_vert = 0
		if matrix[2][0] == 0:
			matrix[2][0] = 1
		elif matrix[2][0] == 1:
			matrix[2][0] = 0
	elif bert_hoz == 3 and bert_vert == 1:
		bert_hoz = 2
		bert_vert = 1
		if matrix[2][1] == 0:
			matrix[2][1] = 1
		elif matrix[2][1] == 1:
			matrix[2][1] = 0
	elif bert_hoz == 3 and bert_vert == 2:
		bert_hoz = 2
		bert_vert = 2
		if matrix[2][2] == 0:
			matrix[2][2] = 1
		elif matrix[2][2] == 1:
			matrix[2][2] = 0
	elif bert_hoz == 3 and bert_vert == 3:
		bert_hoz = 2
		bert_vert = 3
		if matrix[2][3] == 0:
			matrix[2][3] = 1
		elif matrix[2][3] == 1:
			matrix[2][3] = 0
	elif bert_hoz == 3 and bert_vert == 4:
		bert_hoz = 2
		bert_vert = 4
		if matrix[2][4] == 0:
			matrix[2][4] = 1
		elif matrix[2][4] == 1:
			matrix[2][4] = 0
	elif bert_hoz == 3 and bert_vert == 5:
		bert_hoz = 2
		bert_vert = 5
		if matrix[2][5] == 0:
			matrix[2][5] = 1
		elif matrix[2][5] == 1:
			matrix[2][5] = 0
	elif bert_hoz == 3 and bert_vert == 6:
		bert_hoz = 2
		bert_vert = 6
		if matrix[2][6] == 0:
			matrix[2][6] = 1
		elif matrix[2][6] == 1:
			matrix[2][6] = 0
	elif bert_hoz == 3 and bert_vert == 7:
		bert_hoz = 2
		bert_vert = 7
		if matrix[2][7] == 0:
			matrix[2][7] = 1
		elif matrix[2][7] == 1:
			matrix[2][7] = 0
	
	elif bert_hoz == 4 and bert_vert == 0:
		bert_hoz = 3
		bert_vert = 0
		if matrix[3][0] == 0:
			matrix[3][0] = 1
		elif matrix[3][0] == 1:
			matrix[3][0] = 0
	elif bert_hoz == 4 and bert_vert == 1:
		bert_hoz = 3
		bert_vert = 1
		if matrix[3][1] == 0:
			matrix[3][1] = 1
		elif matrix[3][1] == 1:
			matrix[3][1] = 0
	elif bert_hoz == 4 and bert_vert == 2:
		bert_hoz = 3
		bert_vert = 2
		if matrix[3][2] == 0:
			matrix[3][2] = 1
		elif matrix[3][2] == 1:
			matrix[3][2] = 0
	elif bert_hoz == 4 and bert_vert == 3:
		bert_hoz = 3
		bert_vert = 3
		if matrix[3][3] == 0:
			matrix[3][3] = 1
		elif matrix[3][3] == 1:
			matrix[3][3] = 0
	elif bert_hoz == 4 and bert_vert == 4:
		bert_hoz = 3
		bert_vert = 4
		if matrix[3][4] == 0:
			matrix[3][4] = 1
		elif matrix[3][4] == 1:
			matrix[3][4] = 0
	elif bert_hoz == 4 and bert_vert == 5:
		bert_hoz = 3
		bert_vert = 5
		if matrix[3][5] == 0:
			matrix[3][5] = 1
		elif matrix[3][5] == 1:
			matrix[3][5] = 0
	elif bert_hoz == 4 and bert_vert == 6:
		bert_hoz = 3
		bert_vert = 6
		if matrix[3][6] == 0:
			matrix[3][6] = 1
		elif matrix[3][6] == 1:
			matrix[3][6] = 0
	elif bert_hoz == 4 and bert_vert == 7:
		bert_hoz = 3
		bert_vert = 7
		if matrix[3][7] == 0:
			matrix[3][7] = 1
		elif matrix[3][7] == 1:
			matrix[3][7] = 0
	
	elif bert_hoz == 5 and bert_vert == 0:
		bert_hoz = 4
		bert_vert = 0
		if matrix[4][0] == 0:
			matrix[4][0] = 1
		elif matrix[4][0] == 1:
			matrix[4][0] = 0
	elif bert_hoz == 5 and bert_vert == 1:
		bert_hoz = 4
		bert_vert = 1
		if matrix[4][1] == 0:
			matrix[4][1] = 1
		elif matrix[4][1] == 1:
			matrix[4][1] = 0
	elif bert_hoz == 5 and bert_vert == 2:
		bert_hoz = 4
		bert_vert = 2
		if matrix[4][2] == 0:
			matrix[4][2] = 1
		elif matrix[4][2] == 1:
			matrix[4][2] = 0
	elif bert_hoz == 5 and bert_vert == 3:
		bert_hoz = 4
		bert_vert = 3
		if matrix[4][3] == 0:
			matrix[4][3] = 1
		elif matrix[4][3] == 1:
			matrix[4][3] = 0
	elif bert_hoz == 5 and bert_vert == 4:
		bert_hoz = 4
		bert_vert = 4
		if matrix[4][4] == 0:
			matrix[4][4] = 1
		elif matrix[4][4] == 1:
			matrix[4][4] = 0
	elif bert_hoz == 5 and bert_vert == 5:
		bert_hoz = 4
		bert_vert = 5
		if matrix[4][5] == 0:
			matrix[4][5] = 1
		elif matrix[4][5] == 1:
			matrix[4][5] = 0
	elif bert_hoz == 5 and bert_vert == 6:
		bert_hoz = 4
		bert_vert = 6
		if matrix[4][6] == 0:
			matrix[4][6] = 1
		elif matrix[4][6] == 1:
			matrix[4][6] = 0
	elif bert_hoz == 5 and bert_vert == 7:
		bert_hoz = 4
		bert_vert = 7
		if matrix[4][7] == 0:
			matrix[4][7] = 1
		elif matrix[4][7] == 1:
			matrix[4][7] = 0
	
	elif bert_hoz == 6 and bert_vert == 0:
		bert_hoz = 5
		bert_vert = 0
		if matrix[5][0] == 0:
			matrix[5][0] = 1
		elif matrix[5][0] == 1:
			matrix[5][0] = 0
	elif bert_hoz == 6 and bert_vert == 1:
		bert_hoz = 5
		bert_vert = 1
		if matrix[5][1] == 0:
			matrix[5][1] = 1
		elif matrix[5][1] == 1:
			matrix[5][1] = 0
	elif bert_hoz == 6 and bert_vert == 2:
		bert_hoz = 5
		bert_vert = 2
		if matrix[5][2] == 0:
			matrix[5][2] = 1
		elif matrix[5][2] == 1:
			matrix[5][2] = 0
	elif bert_hoz == 6 and bert_vert == 3:
		bert_hoz = 5
		bert_vert = 3
		if matrix[5][3] == 0:
			matrix[5][3] = 1
		elif matrix[5][3] == 1:
			matrix[5][3] = 0
	elif bert_hoz == 6 and bert_vert == 4:
		bert_hoz = 5
		bert_vert = 4
		if matrix[5][4] == 0:
			matrix[5][4] = 1
		elif matrix[5][4] == 1:
			matrix[5][4] = 0
	elif bert_hoz == 6 and bert_vert == 5:
		bert_hoz = 5
		bert_vert = 5
		if matrix[5][5] == 0:
			matrix[5][5] = 1
		elif matrix[5][5] == 1:
			matrix[5][5] = 0
	elif bert_hoz == 6 and bert_vert == 6:
		bert_hoz = 5
		bert_vert = 6
		if matrix[5][6] == 0:
			matrix[5][6] = 1
		elif matrix[5][6] == 1:
			matrix[5][6] = 0
	elif bert_hoz == 6 and bert_vert == 6:
		bert_hoz = 5
		bert_vert = 6
		if matrix[5][6] == 0:
			matrix[5][6] = 1
		elif matrix[5][6] == 1:
			matrix[5][6] = 0
	elif bert_hoz == 6 and bert_vert == 7:
		bert_hoz = 5
		bert_vert = 7
		if matrix[5][7] == 0:
			matrix[5][7] = 1
		elif matrix[5][7] == 1:
			matrix[5][7] = 0

	elif bert_hoz == 7 and bert_vert == 0:
		bert_hoz = 6
		bert_vert = 0
		if matrix[6][0] == 0:
			matrix[6][0] = 1
		elif matrix[6][0] == 1:
			matrix[6][0] = 0
	elif bert_hoz == 7 and bert_vert == 1:
		bert_hoz = 6
		bert_vert = 1
		if matrix[6][1] == 0:
			matrix[6][1] = 1
		elif matrix[6][1] == 1:
			matrix[6][1] = 0
	elif bert_hoz == 7 and bert_vert == 2:
		bert_hoz = 6
		bert_vert = 2
		if matrix[6][2] == 0:
			matrix[6][2] = 1
		elif matrix[6][2] == 1:
			matrix[6][2] = 0
	elif bert_hoz == 7 and bert_vert == 3:
		bert_hoz = 6
		bert_vert = 3
		if matrix[6][3] == 0:
			matrix[6][3] = 1
		elif matrix[6][3] == 1:
			matrix[6][3] = 0
	elif bert_hoz == 7 and bert_vert == 4:
		bert_hoz = 6
		bert_vert = 4
		if matrix[6][4] == 0:
			matrix[6][4] = 1
		elif matrix[6][4] == 1:
			matrix[6][4] = 0
	elif bert_hoz == 7 and bert_vert == 5:
		bert_hoz = 6
		bert_vert = 5
		if matrix[6][5] == 0:
			matrix[6][5] = 1
		elif matrix[6][5] == 1:
			matrix[6][5] = 0
	elif bert_hoz == 7 and bert_vert == 6:
		bert_hoz = 6
		bert_vert = 6
		if matrix[6][6] == 0:
			matrix[6][6] = 1
		elif matrix[6][6] == 1:
			matrix[6][6] = 0
	elif bert_hoz == 7 and bert_vert == 6:
		bert_hoz = 6
		bert_vert = 6
		if matrix[6][6] == 0:
			matrix[6][6] = 1
		elif matrix[6][6] == 1:
			matrix[6][6] = 0
	elif bert_hoz == 7 and bert_vert == 7:
		bert_hoz = 6
		bert_vert = 7
		if matrix[6][7] == 0:
			matrix[6][7] = 1
		elif matrix[6][7] == 1:
			matrix[6][7] = 0

	get_node("right_timer").start()
	
func find_bert():
	randomize()
	var range_bert_hoz = [0,1,2,3,4,5,6,7]
	var range_bert_vert = [0,1,2,3,4,5,6,7] 
	var hoz = range_bert_hoz[randi() % range_bert_hoz.size()]
	var vert = range_bert_vert[randi() % range_bert_vert.size()]
	matrix[hoz][vert] = 1
	bert_hoz = hoz
	bert_vert = vert