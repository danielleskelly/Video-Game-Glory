extends Node2D

#matrix[left/right][up/down]
#hoz = left/right vert = up/down

var zerozero_green = preload("res://zero_zero_green.png")
var zeroone_green = preload("res://zero_one_green.png")
var zerotwo_green = preload("res://zero_two_green.png")
var zerothree_green = preload("res://zero_three_green.png")
var zerofour_green = preload("res://zero_four_green.png")
var zerofive_green = preload("res://zero_five_green.png")
var zerosix_green = preload("res://zero_six_green.png")
var zeroseven_green = preload("res://zero_seven_green.png")
var zeroeight_green = preload("res://zero_eight_green.png")
var zeronine_green = preload("res://zero_nine_green.png")

var onezero_green = preload("res://one_zero_green.png")
var oneone_green = preload("res://one_one_green.png")
var onetwo_green = preload("res://one_two_green.png")
var onethree_green = preload("res://one_three_green.png")
var onefour_green = preload("res://one_four_green.png")
var onefive_green = preload("res://one_five_green.png")
var onesix_green = preload("res://one_six_green.png")
var oneseven_green = preload("res://one_seven_green.png")
var oneeight_green = preload("res://one_eight_green.png")
var onenine_green = preload("res://one_nine_green.png")

var twozero_green = preload("res://two_zero_green.png")
var twoone_green = preload("res://two_one_green.png")
var twotwo_green = preload("res://two_two_green.png")
var twothree_green = preload("res://two_three_green.png")
var twofour_green = preload("res://two_four_green.png")
var twofive_green = preload("res://two_five_green.png")
var twosix_green = preload("res://two_six_green.png")
var twoseven_green = preload("res://two_seven_green.png")
var twoeight_green = preload("res://two_eight_green.png")
var twonine_green = preload("res://two_nine_green.png")

var threezero_green = preload("res://three_zero_green.png")
var threeone_green = preload("res://three_one_green.png")
var threetwo_green = preload("res://three_two_green.png")
var threethree_green = preload("res://three_three_green.png")
var threefour_green = preload("res://three_four_green.png")
var threefive_green = preload("res://three_five_green.png")
var threesix_green = preload("res://three_six_green.png")
var threeseven_green = preload("res://three_seven_green.png")
var threeeight_green = preload("res://three_eight_green.png")
var threenine_green = preload("res://three_nine_green.png")

var fourzero_green = preload("res://four_zero_green.png")
var fourone_green = preload("res://four_one_green.png")
var fourtwo_green = preload("res://four_two_green.png")
var fourthree_green = preload("res://four_three_green.png")
var fourfour_green = preload("res://four_four_green.png")
var fourfive_green = preload("res://four_five_green.png")
var foursix_green = preload("res://four_six_green.png")
var fourseven_green = preload("res://four_seven_green.png")
var foureight_green = preload("res://four_eight_green.png")
var fournine_green = preload("res://four_nine_green.png")

var fivezero_green = preload("res://five_zero_green.png")
var fiveone_green = preload("res://five_one_green.png")
var fivetwo_green = preload("res://five_two_green.png")
var fivethree_green = preload("res://five_three_green.png")
var fivefour_green = preload("res://five_four_green.png")
var fivefive_green = preload("res://five_five_green.png")
var fivesix_green = preload("res://five_six_green.png")
var fiveseven_green = preload("res://five_seven_green.png")
var fiveeight_green = preload("res://five_eight_green.png")
var fivenine_green = preload("res://five_nine_green.png")

var sixzero_green = preload("res://six_zero_green.png")
var sixone_green = preload("res://six_one_green.png")
var sixtwo_green = preload("res://six_two_green.png")
var sixthree_green = preload("res://six_three_green.png")
var sixfour_green = preload("res://six_extra_green.png")
var sixfive_green = preload("res://six_four_green.png")
var sixsix_green = preload("res://six_five_green.png")
var sixseven_green = preload("res://six_six_green.png")
var sixeight_green = preload("res://six_eight_green.png")
var sixnine_green = preload("res://six_nine_green.png")

var sevenzero_green = preload("res://seven_zero_green.png")
var sevenone_green = preload("res://seven_one_green.png")
var seventwo_green = preload("res://seven_two_green.png")
var seventhree_green = preload("res://seven_three_green.png")
var sevenfour_green = preload("res://seven_four_green.png")
var sevenfive_green = preload("res://seven_five_green.png")
var sevensix_green = preload("res://seven_six_green.png")
var sevenseven_green = preload("res://seven_seven_green.png")
var seveneight_green = preload("res://seven_eight_green.png")
var sevennine_green = preload("res://seven_nine_green.png")

var eightzero_green = preload("res://eight_zero_green.png")
var eightone_green = preload("res://eight_one_green.png")
var eighttwo_green = preload("res://eight_two_green.png")
var eightthree_green = preload("res://eight_three_green.png")
var eightfour_green = preload("res://eight_four_green.png")
var eightfive_green = preload("res://eight_five_green.png")
var eightsix_green = preload("res://eight_six_green.png")
var eightseven_green = preload("res://eight_seven_green.png")
var eighteight_green = preload("res://eight_eight_green.png")
var eightnine_green = preload("res://eight_nine_green.png")

var ninezero_green = preload("res://nine_zero_green.png")
var nineone_green = preload("res://nine_one_green.png")
var ninetwo_green = preload("res://nine_two_green.png")
var ninethree_green = preload("res://nine_three_green.png")
var ninefour_green = preload("res://nine_four_green.png")
var ninefive_green = preload("res://nine_five_green.png")
var ninesix_green = preload("res://nine_six_green.png")
var nineseven_green = preload("res://nine_seven_green.png")
var nineeight_green = preload("res://nine_eight_green.png")
var ninenine_green = preload("res://nine_nine_green.png")

var zerozero_purple = preload("res://zero_zero_purple.png")
var zeroone_purple = preload("res://zero_one_purple.png")
var zerotwo_purple = preload("res://zero_two_purple.png")
var zerothree_purple = preload("res://zero_three_purple.png")
var zerofour_purple = preload("res://zero_four_purple.png")
var zerofive_purple = preload("res://zero_five_purple.png")
var zerosix_purple = preload("res://zero_six_purple.png")
var zeroseven_purple = preload("res://zero_seven_purple.png")
var zeroeight_purple = preload("res://zero_eight_purple.png")
var zeronine_purple = preload("res://zero_nine_purple.png")

var onezero_purple = preload("res://one_zero_purple.png")
var oneone_purple = preload("res://one_one_purple.png")
var onetwo_purple = preload("res://one_two_purple.png")
var onethree_purple = preload("res://one_three_purple.png")
var onefour_purple = preload("res://one_four_purple.png")
var onefive_purple = preload("res://one_five_purple.png")
var onesix_purple = preload("res://one_six_purple.png")
var oneseven_purple = preload("res://one_seven_purple.png")
var oneeight_purple = preload("res://one_eight_purple.png")
var onenine_purple = preload("res://one_nine_purple.png")

var twozero_purple = preload("res://two_zero_purple.png")
var twoone_purple = preload("res://two_one_purple.png")
var twotwo_purple = preload("res://two_two_purple.png")
var twothree_purple = preload("res://two_three_purple.png")
var twofour_purple = preload("res://two_four_purple.png")
var twofive_purple = preload("res://two_five_purple.png")
var twosix_purple = preload("res://two_six_purple.png")
var twoseven_purple = preload("res://two_seven_purple.png")
var twoeight_purple = preload("res://two_eight_purple.png")
var twonine_purple = preload("res://two_nine_purple.png")

var threezero_purple = preload("res://three_zero_purple.png")
var threeone_purple = preload("res://three_one_purple.png")
var threetwo_purple = preload("res://three_two_purple.png")
var threethree_purple = preload("res://three_three_purple.png")
var threefour_purple = preload("res://three_four_purple.png")
var threefive_purple = preload("res://three_five_purple.png")
var threesix_purple = preload("res://three_six_purple.png")
var threeseven_purple = preload("res://three_seven_purple.png")
var threeeight_purple = preload("res://three_eight_purple.png")
var threenine_purple = preload("res://three_nine_purple.png")

var fourzero_purple = preload("res://four_zero_purple.png")
var fourone_purple = preload("res://four_one_purple.png")
var fourtwo_purple = preload("res://four_two_purple.png")
var fourthree_purple = preload("res://four_three_purple.png")
var fourfour_purple = preload("res://four_four_purple.png")
var fourfive_purple = preload("res://four_five_purple.png")
var foursix_purple = preload("res://four_six_purple.png")
var fourseven_purple = preload("res://four_seven_purple.png")
var foureight_purple = preload("res://four_eight_purple.png")
var fournine_purple = preload("res://four_nine_purple.png")

var fivezero_purple = preload("res://five_zero_purple.png")
var fiveone_purple = preload("res://five_one_purple.png")
var fivetwo_purple = preload("res://five_two_purple.png")
var fivethree_purple = preload("res://five_three_purple.png")
var fivefour_purple = preload("res://five_four_purple.png")
var fivefive_purple = preload("res://five_five_purple.png")
var fivesix_purple = preload("res://five_six_purple.png")
var fiveseven_purple = preload("res://five_seven_purple.png")
var fiveeight_purple = preload("res://five_eight_purple.png")
var fivenine_purple = preload("res://five_nine_purple.png")

var sixzero_purple = preload("res://six_zero_purple.png")
var sixone_purple = preload("res://six_one_purple.png")
var sixtwo_purple = preload("res://six_two_purple.png")
var sixthree_purple = preload("res://six_three_purple.png")
var sixfour_purple = preload("res://six_extra_purple.png")
var sixfive_purple = preload("res://six_four_purple.png")
var sixsix_purple = preload("res://six_five_purple.png")
var sixseven_purple = preload("res://six_six_purple.png")
var sixeight_purple = preload("res://six_eight_purple.png")
var sixnine_purple = preload("res://six_nine_purple.png")

var sevenzero_purple = preload("res://seven_zero_purple.png")
var sevenone_purple = preload("res://seven_one_purple.png")
var seventwo_purple = preload("res://seven_two_purple.png")
var seventhree_purple = preload("res://seven_three_purple.png")
var sevenfour_purple = preload("res://seven_four_purple.png")
var sevenfive_purple = preload("res://seven_five_purple.png")
var sevensix_purple = preload("res://seven_six_purple.png")
var sevenseven_purple = preload("res://seven_seven_purple.png")
var seveneight_purple = preload("res://seven_eight_purple.png")
var sevennine_purple = preload("res://seven_nine_purple.png")

var eightzero_purple = preload("res://eight_zero_purple.png")
var eightone_purple = preload("res://eight_one_purple.png")
var eighttwo_purple = preload("res://eight_two_purple.png")
var eightthree_purple = preload("res://eight_three_purple.png")
var eightfour_purple = preload("res://eight_four_purple.png")
var eightfive_purple = preload("res://eight_five_purple.png")
var eightsix_purple = preload("res://eight_six_purple.png")
var eightseven_purple = preload("res://eight_seven_purple.png")
var eighteight_purple = preload("res://eight_eight_purple.png")
var eightnine_purple = preload("res://eight_nine_purple.png")

var ninezero_purple = preload("res://nine_zero_purple.png")
var nineone_purple = preload("res://nine_one_purple.png")
var ninetwo_purple = preload("res://nine_two_purple.png")
var ninethree_purple = preload("res://nine_three_purple.png")
var ninefour_purple = preload("res://nine_four_purple.png")
var ninefive_purple = preload("res://nine_five_purple.png")
var ninesix_purple = preload("res://nine_six_purple.png")
var nineseven_purple = preload("res://nine_seven_purple.png")
var nineeight_purple = preload("res://nine_eight_purple.png")
var ninenine_purple = preload("res://nine_nine_purple.png")


var hundreds
var tens
var ones

var sam_hundreds
var sam_tens
var sam_ones

var sam_points = 0

var new_volume

onready var pixel = get_node("pixel")

onready var countdown_timer = get_node("countdown_timer")

var matrix = []

var bert_hoz
var bert_vert
var sam_hoz
var sam_vert

var bert
var sam

func _ready():
	if global.sales_made != 0:
		var time = 120/global.sales_made
		get_node("customer_display/customer").set_wait_time(time)
		get_node("customer_display/customer").start()
	else:
		pass
	if global.slatten_tutorial == false:
		global.slatten_tutorial = true
		get_node("tutorial").show()
		get_tree().set_pause(true)
	else:
		get_tree().set_pause(true)
		countin()
	get_node("StreamPlayer").set_volume(sound.volume)
	sam = get_node("sam/Sprite")
	bert = get_node("bert/Sprite")
	for x in range(0,10):
		matrix.append([])
		matrix[x] = []
		for y in range(0,10):
			matrix[x].append([])
			matrix[x][y] = 0
	find_bert()
	find_sam()
	set_process(true)
	
func _process(delta):
	hundreds = get_node("success_background/hundreths")
	tens = get_node("success_background/tens")
	ones = get_node("success_background/ones")
	sam_hundreds = get_node("sam_points/hundreths")
	sam_tens = get_node("sam_points/tens")
	sam_ones = get_node("sam_points/ones")
	point_display()
	countdown_timer.clear()
	countdown_timer.add_text(str(int(get_node("day_timer").get_time_left())))
	if Input.is_action_pressed("move_up") and get_node("up_timer").get_time_left() == 0:
		move_up()
	if Input.is_action_pressed("move_right") and get_node("right_timer").get_time_left() == 0:
		move_right()
	if Input.is_action_pressed("move_left") and get_node("left_timer").get_time_left() == 0:
		move_left()
	if Input.is_action_pressed("move_down") and get_node("down_timer").get_time_left() == 0:
		move_down()
	set_display()
	set_sam_position()
	set_position()
	check_together()
	
func point_display():
	var one_ones_digit = ((perks.success)) % 10
	var one_tens_digit = ((perks.success) / 10) % 10
	var one_hunds_digit = ((perks.success) / 100) % 10
	var sam_one_ones_digit = ((sam_points)) % 10
	var sam_one_tens_digit = ((sam_points) / 10) % 10
	var sam_one_hunds_digit = ((sam_points) / 100) % 10
	sam_hundreds.clear()
	sam_hundreds.add_text(str(sam_one_hunds_digit))
	hundreds.clear()
	hundreds.add_text(str(one_hunds_digit))
	sam_tens.clear()
	sam_tens.add_text(str(sam_one_tens_digit))
	tens.clear()
	tens.add_text(str(one_tens_digit))
	ones.clear()
	ones.add_text(str(one_ones_digit))
	sam_ones.clear()
	sam_ones.add_text(str(sam_one_ones_digit))

	
func check_together():
	if bert_hoz == sam_hoz and bert_vert == sam_vert and get_node("perk_kill_timer").get_time_left() == 0:
		if perks.success > 20:
			perks.success -= 10
			sam_points += 10
		get_node("perk_kill_timer").start()
	
func set_position():
	if bert_vert == 0 and bert_hoz == 0:
		bert.set_pos(Vector2(319.839447, 64.357765))
	elif bert_vert == 0 and bert_hoz == 1:
		bert.set_pos(Vector2(372.839447, 64.357765))
	elif bert_vert == 0 and bert_hoz == 2:
		bert.set_pos(Vector2(427.839447, 64.357765))
	elif bert_vert == 0 and bert_hoz == 3:
		bert.set_pos(Vector2(481.839447, 64.357765))
	elif bert_vert == 0 and bert_hoz == 4:
		bert.set_pos(Vector2(537.839478, 64.357765))
	elif bert_vert == 0 and bert_hoz == 5:
		bert.set_pos(Vector2(589.839478, 64.357765))
	elif bert_vert == 0 and bert_hoz == 6:
		bert.set_pos(Vector2(644.839478, 64.357765))
	elif bert_vert == 0 and bert_hoz == 7:
		bert.set_pos(Vector2(698.839478, 64.357765))
	elif bert_vert == 0 and bert_hoz == 8:
		bert.set_pos(Vector2(757.168091, 64.357765))
	elif bert_vert == 0 and bert_hoz == 9:
		bert.set_pos(Vector2(807.839478, 64.357765))
	
	
	elif bert_vert == 1 and bert_hoz == 0:
		bert.set_pos(Vector2(319.839447, 120.357765))
	elif bert_vert == 1 and bert_hoz == 1:
		bert.set_pos(Vector2(372.839447, 120.357765))
	elif bert_vert == 1 and bert_hoz == 2:
		bert.set_pos(Vector2(427.839447, 120.357765))
	elif bert_vert == 1 and bert_hoz == 3:
		bert.set_pos(Vector2(481.839447, 120.357765))
	elif bert_vert == 1 and bert_hoz == 4:
		bert.set_pos(Vector2(537.839478, 120.357765))
	elif bert_vert == 1 and bert_hoz == 5:
		bert.set_pos(Vector2(589.839478, 120.357765))
	elif bert_vert == 1 and bert_hoz == 6:
		bert.set_pos(Vector2(644.839478, 120.357765))
	elif bert_vert == 1 and bert_hoz == 7:
		bert.set_pos(Vector2(698.839478, 120.357765))
	elif bert_vert == 1 and bert_hoz == 8:
		bert.set_pos(Vector2(757.168091, 120.357765))
	elif bert_vert == 1 and bert_hoz == 9:
		bert.set_pos(Vector2(807.839478, 120.357765))
	
	
	elif bert_vert == 2 and bert_hoz == 0:
		bert.set_pos(Vector2(319.839447, 174.357773))
	elif bert_vert == 2 and bert_hoz == 1:
		bert.set_pos(Vector2(372.839447, 174.357773))
	elif bert_vert == 2 and bert_hoz == 2:
		bert.set_pos(Vector2(427.839447, 174.357773))
	elif bert_vert == 2 and bert_hoz == 3:
		bert.set_pos(Vector2(481.839447, 174.357773))
	elif bert_vert == 2 and bert_hoz == 4:
		bert.set_pos(Vector2(537.839478, 174.357773))
	elif bert_vert == 2 and bert_hoz == 5:
		bert.set_pos(Vector2(589.839478, 174.357773))
	elif bert_vert == 2 and bert_hoz == 6:
		bert.set_pos(Vector2(644.839478, 174.357773))
	elif bert_vert == 2 and bert_hoz == 7:
		bert.set_pos(Vector2(698.839478, 174.357773))
	elif bert_vert == 2 and bert_hoz == 8:
		bert.set_pos(Vector2(757.168091, 174.357773))
	elif bert_vert == 2 and bert_hoz == 9:
		bert.set_pos(Vector2(807.839478, 174.357773))
		
	elif bert_vert == 3 and bert_hoz == 0:
		bert.set_pos(Vector2(319.839447, 228.357773))
	elif bert_vert == 3 and bert_hoz == 1:
		bert.set_pos(Vector2(372.839447, 228.357773))
	elif bert_vert == 3 and bert_hoz == 2:
		bert.set_pos(Vector2(427.839447, 228.357773))
	elif bert_vert == 3 and bert_hoz == 3:
		bert.set_pos(Vector2(481.839447, 228.357773))
	elif bert_vert == 3 and bert_hoz == 4:
		bert.set_pos(Vector2(537.839478, 228.357773))
	elif bert_vert == 3 and bert_hoz == 5:
		bert.set_pos(Vector2(589.839478, 228.357773))
	elif bert_vert == 3 and bert_hoz == 6:
		bert.set_pos(Vector2(644.839478, 228.357773))
	elif bert_vert == 3 and bert_hoz == 7:
		bert.set_pos(Vector2(698.839478, 228.357773))
	elif bert_vert == 3 and bert_hoz == 8:
		bert.set_pos(Vector2(757.168091, 228.357773))
	elif bert_vert == 3 and bert_hoz == 9:
		bert.set_pos(Vector2(807.839478, 228.357773))
		
		
	elif bert_vert == 4 and bert_hoz == 0:
		bert.set_pos(Vector2(319.839447, 282.357788))
	elif bert_vert == 4 and bert_hoz == 1:
		bert.set_pos(Vector2(372.839447, 282.357788))
	elif bert_vert == 4 and bert_hoz == 2:
		bert.set_pos(Vector2(427.839447, 282.357788))
	elif bert_vert == 4 and bert_hoz == 3:
		bert.set_pos(Vector2(481.839447, 282.357788))
	elif bert_vert == 4 and bert_hoz == 4:
		bert.set_pos(Vector2(537.839478, 282.357788))
	elif bert_vert == 4 and bert_hoz == 5:
		bert.set_pos(Vector2(589.839478, 282.357788))
	elif bert_vert == 4 and bert_hoz == 6:
		bert.set_pos(Vector2(644.839478, 282.357788))
	elif bert_vert == 4 and bert_hoz == 7:
		bert.set_pos(Vector2(698.839478, 282.357788))
	elif bert_vert == 4 and bert_hoz == 8:
		bert.set_pos(Vector2(757.168091, 282.357788))
	elif bert_vert == 4 and bert_hoz == 9:
		bert.set_pos(Vector2(807.839478, 282.357788))
		
		
	elif bert_vert == 5 and bert_hoz == 0:
		bert.set_pos(Vector2(319.839447, 335.357788))
	elif bert_vert == 5 and bert_hoz == 1:
		bert.set_pos(Vector2(372.839447, 335.357788))
	elif bert_vert == 5 and bert_hoz == 2:
		bert.set_pos(Vector2(427.839447, 335.357788))
	elif bert_vert == 5 and bert_hoz == 3:
		bert.set_pos(Vector2(481.839447, 335.357788))
	elif bert_vert == 5 and bert_hoz == 4:
		bert.set_pos(Vector2(537.839478, 335.357788))
	elif bert_vert == 5 and bert_hoz == 5:
		bert.set_pos(Vector2(589.839478, 335.357788))
	elif bert_vert == 5 and bert_hoz == 6:
		bert.set_pos(Vector2(644.839478, 335.357788))
	elif bert_vert == 5 and bert_hoz == 7:
		bert.set_pos(Vector2(698.839478, 335.357788))
	elif bert_vert == 5 and bert_hoz == 8:
		bert.set_pos(Vector2(757.168091, 335.357788))
	elif bert_vert == 5 and bert_hoz == 9:
		bert.set_pos(Vector2(807.839478, 335.357788))


	elif bert_vert == 6 and bert_hoz == 0:
		bert.set_pos(Vector2(319.839447, 392.357788))
	elif bert_vert == 6 and bert_hoz == 1:
		bert.set_pos(Vector2(372.839447, 392.357788))
	elif bert_vert == 6 and bert_hoz == 2:
		bert.set_pos(Vector2(427.839447, 392.357788))
	elif bert_vert == 6 and bert_hoz == 3:
		bert.set_pos(Vector2(481.839447, 392.357788))
	elif bert_vert == 6 and bert_hoz == 4:
		bert.set_pos(Vector2(537.839478, 392.357788))
	elif bert_vert == 6 and bert_hoz == 5:
		bert.set_pos(Vector2(589.839478, 392.357788))
	elif bert_vert == 6 and bert_hoz == 6:
		bert.set_pos(Vector2(644.839478, 392.357788))
	elif bert_vert == 6 and bert_hoz == 7:
		bert.set_pos(Vector2(698.839478, 392.357788))
	elif bert_vert == 6 and bert_hoz == 8:
		bert.set_pos(Vector2(757.168091, 392.357788))
	elif bert_vert == 6 and bert_hoz == 9:
		bert.set_pos(Vector2(807.839478, 392.357788))


	elif bert_vert == 7 and bert_hoz == 0:
		bert.set_pos(Vector2(319.839447, 446.357788))
	elif bert_vert == 7 and bert_hoz == 1:
		bert.set_pos(Vector2(372.839447, 446.357788))
	elif bert_vert == 7 and bert_hoz == 2:
		bert.set_pos(Vector2(427.839447, 446.357788))
	elif bert_vert == 7 and bert_hoz == 3:
		bert.set_pos(Vector2(481.839447, 446.357788))
	elif bert_vert == 7 and bert_hoz == 4:
		bert.set_pos(Vector2(537.839478, 446.357788))
	elif bert_vert == 7 and bert_hoz == 5:
		bert.set_pos(Vector2(589.839478, 446.357788))
	elif bert_vert == 7 and bert_hoz == 6:
		bert.set_pos(Vector2(644.839478, 446.357788))
	elif bert_vert == 7 and bert_hoz == 7:
		bert.set_pos(Vector2(698.839478, 446.357788))
	elif bert_vert == 7 and bert_hoz == 8:
		bert.set_pos(Vector2(757.168091, 446.357788))
	elif bert_vert == 7 and bert_hoz == 9:
		bert.set_pos(Vector2(807.839478, 446.357788))
		
		
	elif bert_vert == 8 and bert_hoz == 0:
		bert.set_pos(Vector2(319.839447, 499.357788))
	elif bert_vert == 8 and bert_hoz == 1:
		bert.set_pos(Vector2(372.839447, 499.357788))
	elif bert_vert == 8 and bert_hoz == 2:
		bert.set_pos(Vector2(427.839447, 499.357788))
	elif bert_vert == 8 and bert_hoz == 3:
		bert.set_pos(Vector2(481.839447, 499.357788))
	elif bert_vert == 8 and bert_hoz == 4:
		bert.set_pos(Vector2(537.839478, 499.357788))
	elif bert_vert == 8 and bert_hoz == 5:
		bert.set_pos(Vector2(589.839478, 499.357788))
	elif bert_vert == 8 and bert_hoz == 6:
		bert.set_pos(Vector2(644.839478, 499.357788))
	elif bert_vert == 8 and bert_hoz == 7:
		bert.set_pos(Vector2(698.839478, 499.357788))
	elif bert_vert == 8 and bert_hoz == 8:
		bert.set_pos(Vector2(757.168091, 499.357788))
	elif bert_vert == 8 and bert_hoz == 9:
		bert.set_pos(Vector2(807.839478, 499.357788))
		
		
	elif bert_vert == 9 and bert_hoz == 0:
		bert.set_pos(Vector2(319.839447, 553.357788))
	elif bert_vert == 9 and bert_hoz == 1:
		bert.set_pos(Vector2(372.839447, 553.357788))
	elif bert_vert == 9 and bert_hoz == 2:
		bert.set_pos(Vector2(427.839447, 553.357788))
	elif bert_vert == 9 and bert_hoz == 3:
		bert.set_pos(Vector2(481.839447, 553.357788))
	elif bert_vert == 9 and bert_hoz == 4:
		bert.set_pos(Vector2(537.839478, 553.357788))
	elif bert_vert == 9 and bert_hoz == 5:
		bert.set_pos(Vector2(589.839478, 553.357788))
	elif bert_vert == 9 and bert_hoz == 6:
		bert.set_pos(Vector2(644.839478, 553.357788))
	elif bert_vert == 9 and bert_hoz == 7:
		bert.set_pos(Vector2(698.839478, 553.357788))
	elif bert_vert == 9 and bert_hoz == 8:
		bert.set_pos(Vector2(757.168091, 553.357788))
	elif bert_vert == 9 and bert_hoz == 9:
		bert.set_pos(Vector2(807.839478, 553.357788))
		
func set_sam_position():
	if sam_vert == 0 and sam_hoz == 0:
		sam.set_pos(Vector2(319.839447, 64.357765))
	elif sam_vert == 0 and sam_hoz == 1:
		sam.set_pos(Vector2(372.839447, 64.357765))
	elif sam_vert == 0 and sam_hoz == 2:
		sam.set_pos(Vector2(427.839447, 64.357765))
	elif sam_vert == 0 and sam_hoz == 3:
		sam.set_pos(Vector2(481.839447, 64.357765))
	elif sam_vert == 0 and sam_hoz == 4:
		sam.set_pos(Vector2(537.839478, 64.357765))
	elif sam_vert == 0 and sam_hoz == 5:
		sam.set_pos(Vector2(589.839478, 64.357765))
	elif sam_vert == 0 and sam_hoz == 6:
		sam.set_pos(Vector2(644.839478, 64.357765))
	elif sam_vert == 0 and sam_hoz == 7:
		sam.set_pos(Vector2(698.839478, 64.357765))
	elif sam_vert == 0 and sam_hoz == 8:
		sam.set_pos(Vector2(757.168091, 64.357765))
	elif sam_vert == 0 and sam_hoz == 9:
		sam.set_pos(Vector2(807.839478, 64.357765))
	
	
	elif sam_vert == 1 and sam_hoz == 0:
		sam.set_pos(Vector2(319.839447, 120.357765))
	elif sam_vert == 1 and sam_hoz == 1:
		sam.set_pos(Vector2(372.839447, 120.357765))
	elif sam_vert == 1 and sam_hoz == 2:
		sam.set_pos(Vector2(427.839447, 120.357765))
	elif sam_vert == 1 and sam_hoz == 3:
		sam.set_pos(Vector2(481.839447, 120.357765))
	elif sam_vert == 1 and sam_hoz == 4:
		sam.set_pos(Vector2(537.839478, 120.357765))
	elif sam_vert == 1 and sam_hoz == 5:
		sam.set_pos(Vector2(589.839478, 120.357765))
	elif sam_vert == 1 and sam_hoz == 6:
		sam.set_pos(Vector2(644.839478, 120.357765))
	elif sam_vert == 1 and sam_hoz == 7:
		sam.set_pos(Vector2(698.839478, 120.357765))
	elif sam_vert == 1 and sam_hoz == 8:
		sam.set_pos(Vector2(757.168091, 120.357765))
	elif sam_vert == 1 and sam_hoz == 9:
		sam.set_pos(Vector2(807.839478, 120.357765))
	
	
	elif sam_vert == 2 and sam_hoz == 0:
		sam.set_pos(Vector2(319.839447, 174.357773))
	elif sam_vert == 2 and sam_hoz == 1:
		sam.set_pos(Vector2(372.839447, 174.357773))
	elif sam_vert == 2 and sam_hoz == 2:
		sam.set_pos(Vector2(427.839447, 174.357773))
	elif sam_vert == 2 and sam_hoz == 3:
		sam.set_pos(Vector2(481.839447, 174.357773))
	elif sam_vert == 2 and sam_hoz == 4:
		sam.set_pos(Vector2(537.839478, 174.357773))
	elif sam_vert == 2 and sam_hoz == 5:
		sam.set_pos(Vector2(589.839478, 174.357773))
	elif sam_vert == 2 and sam_hoz == 6:
		sam.set_pos(Vector2(644.839478, 174.357773))
	elif sam_vert == 2 and sam_hoz == 7:
		sam.set_pos(Vector2(698.839478, 174.357773))
	elif sam_vert == 2 and sam_hoz == 8:
		sam.set_pos(Vector2(757.168091, 174.357773))
	elif sam_vert == 2 and sam_hoz == 9:
		sam.set_pos(Vector2(807.839478, 174.357773))
		
	elif sam_vert == 3 and sam_hoz == 0:
		sam.set_pos(Vector2(319.839447, 228.357773))
	elif sam_vert == 3 and sam_hoz == 1:
		sam.set_pos(Vector2(372.839447, 228.357773))
	elif sam_vert == 3 and sam_hoz == 2:
		sam.set_pos(Vector2(427.839447, 228.357773))
	elif sam_vert == 3 and sam_hoz == 3:
		sam.set_pos(Vector2(481.839447, 228.357773))
	elif sam_vert == 3 and sam_hoz == 4:
		sam.set_pos(Vector2(537.839478, 228.357773))
	elif sam_vert == 3 and sam_hoz == 5:
		sam.set_pos(Vector2(589.839478, 228.357773))
	elif sam_vert == 3 and sam_hoz == 6:
		sam.set_pos(Vector2(644.839478, 228.357773))
	elif sam_vert == 3 and sam_hoz == 7:
		sam.set_pos(Vector2(698.839478, 228.357773))
	elif sam_vert == 3 and sam_hoz == 8:
		sam.set_pos(Vector2(757.168091, 228.357773))
	elif sam_vert == 3 and sam_hoz == 9:
		sam.set_pos(Vector2(807.839478, 228.357773))
		
		
	elif sam_vert == 4 and sam_hoz == 0:
		sam.set_pos(Vector2(319.839447, 282.357788))
	elif sam_vert == 4 and sam_hoz == 1:
		sam.set_pos(Vector2(372.839447, 282.357788))
	elif sam_vert == 4 and sam_hoz == 2:
		sam.set_pos(Vector2(427.839447, 282.357788))
	elif sam_vert == 4 and sam_hoz == 3:
		sam.set_pos(Vector2(481.839447, 282.357788))
	elif sam_vert == 4 and sam_hoz == 4:
		sam.set_pos(Vector2(537.839478, 282.357788))
	elif sam_vert == 4 and sam_hoz == 5:
		sam.set_pos(Vector2(589.839478, 282.357788))
	elif sam_vert == 4 and sam_hoz == 6:
		sam.set_pos(Vector2(644.839478, 282.357788))
	elif sam_vert == 4 and sam_hoz == 7:
		sam.set_pos(Vector2(698.839478, 282.357788))
	elif sam_vert == 4 and sam_hoz == 8:
		sam.set_pos(Vector2(757.168091, 282.357788))
	elif sam_vert == 4 and sam_hoz == 9:
		sam.set_pos(Vector2(807.839478, 282.357788))
		
		
	elif sam_vert == 5 and sam_hoz == 0:
		sam.set_pos(Vector2(319.839447, 335.357788))
	elif sam_vert == 5 and sam_hoz == 1:
		sam.set_pos(Vector2(372.839447, 335.357788))
	elif sam_vert == 5 and sam_hoz == 2:
		sam.set_pos(Vector2(427.839447, 335.357788))
	elif sam_vert == 5 and sam_hoz == 3:
		sam.set_pos(Vector2(481.839447, 335.357788))
	elif sam_vert == 5 and sam_hoz == 4:
		sam.set_pos(Vector2(537.839478, 335.357788))
	elif sam_vert == 5 and sam_hoz == 5:
		sam.set_pos(Vector2(589.839478, 335.357788))
	elif sam_vert == 5 and sam_hoz == 6:
		sam.set_pos(Vector2(644.839478, 335.357788))
	elif sam_vert == 5 and sam_hoz == 7:
		sam.set_pos(Vector2(698.839478, 335.357788))
	elif sam_vert == 5 and sam_hoz == 8:
		sam.set_pos(Vector2(757.168091, 335.357788))
	elif sam_vert == 5 and sam_hoz == 9:
		sam.set_pos(Vector2(807.839478, 335.357788))


	elif sam_vert == 6 and sam_hoz == 0:
		sam.set_pos(Vector2(319.839447, 392.357788))
	elif sam_vert == 6 and sam_hoz == 1:
		sam.set_pos(Vector2(372.839447, 392.357788))
	elif sam_vert == 6 and sam_hoz == 2:
		sam.set_pos(Vector2(427.839447, 392.357788))
	elif sam_vert == 6 and sam_hoz == 3:
		sam.set_pos(Vector2(481.839447, 392.357788))
	elif sam_vert == 6 and sam_hoz == 4:
		sam.set_pos(Vector2(537.839478, 392.357788))
	elif sam_vert == 6 and sam_hoz == 5:
		sam.set_pos(Vector2(589.839478, 392.357788))
	elif sam_vert == 6 and sam_hoz == 6:
		sam.set_pos(Vector2(644.839478, 392.357788))
	elif sam_vert == 6 and sam_hoz == 7:
		sam.set_pos(Vector2(698.839478, 392.357788))
	elif sam_vert == 6 and sam_hoz == 8:
		sam.set_pos(Vector2(757.168091, 392.357788))
	elif sam_vert == 6 and sam_hoz == 9:
		sam.set_pos(Vector2(807.839478, 392.357788))


	elif sam_vert == 7 and sam_hoz == 0:
		sam.set_pos(Vector2(319.839447, 446.357788))
	elif sam_vert == 7 and sam_hoz == 1:
		sam.set_pos(Vector2(372.839447, 446.357788))
	elif sam_vert == 7 and sam_hoz == 2:
		sam.set_pos(Vector2(427.839447, 446.357788))
	elif sam_vert == 7 and sam_hoz == 3:
		sam.set_pos(Vector2(481.839447, 446.357788))
	elif sam_vert == 7 and sam_hoz == 4:
		sam.set_pos(Vector2(537.839478, 446.357788))
	elif sam_vert == 7 and sam_hoz == 5:
		sam.set_pos(Vector2(589.839478, 446.357788))
	elif sam_vert == 7 and sam_hoz == 6:
		sam.set_pos(Vector2(644.839478, 446.357788))
	elif sam_vert == 7 and sam_hoz == 7:
		sam.set_pos(Vector2(698.839478, 446.357788))
	elif sam_vert == 7 and sam_hoz == 8:
		sam.set_pos(Vector2(757.168091, 446.357788))
	elif sam_vert == 7 and sam_hoz == 9:
		sam.set_pos(Vector2(807.839478, 446.357788))
		
		
	elif sam_vert == 8 and sam_hoz == 0:
		sam.set_pos(Vector2(319.839447, 499.357788))
	elif sam_vert == 8 and sam_hoz == 1:
		sam.set_pos(Vector2(372.839447, 499.357788))
	elif sam_vert == 8 and sam_hoz == 2:
		sam.set_pos(Vector2(427.839447, 499.357788))
	elif sam_vert == 8 and sam_hoz == 3:
		sam.set_pos(Vector2(481.839447, 499.357788))
	elif sam_vert == 8 and sam_hoz == 4:
		sam.set_pos(Vector2(537.839478, 499.357788))
	elif sam_vert == 8 and sam_hoz == 5:
		sam.set_pos(Vector2(589.839478, 499.357788))
	elif sam_vert == 8 and sam_hoz == 6:
		sam.set_pos(Vector2(644.839478, 499.357788))
	elif sam_vert == 8 and sam_hoz == 7:
		sam.set_pos(Vector2(698.839478, 499.357788))
	elif sam_vert == 8 and sam_hoz == 8:
		sam.set_pos(Vector2(757.168091, 499.357788))
	elif sam_vert == 8 and sam_hoz == 9:
		sam.set_pos(Vector2(807.839478, 499.357788))
		
		
	elif sam_vert == 9 and sam_hoz == 0:
		sam.set_pos(Vector2(319.839447, 553.357788))
	elif sam_vert == 9 and sam_hoz == 1:
		sam.set_pos(Vector2(372.839447, 553.357788))
	elif sam_vert == 9 and sam_hoz == 2:
		sam.set_pos(Vector2(427.839447, 553.357788))
	elif sam_vert == 9 and sam_hoz == 3:
		sam.set_pos(Vector2(481.839447, 553.357788))
	elif sam_vert == 9 and sam_hoz == 4:
		sam.set_pos(Vector2(537.839478, 553.357788))
	elif sam_vert == 9 and sam_hoz == 5:
		sam.set_pos(Vector2(589.839478, 553.357788))
	elif sam_vert == 9 and sam_hoz == 6:
		sam.set_pos(Vector2(644.839478, 553.357788))
	elif sam_vert == 9 and sam_hoz == 7:
		sam.set_pos(Vector2(698.839478, 553.357788))
	elif sam_vert == 9 and sam_hoz == 8:
		sam.set_pos(Vector2(757.168091, 553.357788))
	elif sam_vert == 9 and sam_hoz == 9:
		sam.set_pos(Vector2(807.839478, 553.357788))


func set_display():
	if matrix[0][0] == 0:
		get_node("zerozero").set_texture(null)
	elif matrix[0][0] == 1:
		get_node("zerozero").set_texture(zerozero_green)
	elif matrix[0][0] == 2:
		get_node("zerozero").set_texture(zerozero_purple)
		
	if matrix[1][0] == 0:
		get_node("zeroone").set_texture(null)
	elif matrix[1][0] == 1:
		get_node("zeroone").set_texture(zeroone_green)
	elif matrix[1][0] == 2:
		get_node("zeroone").set_texture(zeroone_purple)
	
	if matrix[2][0] == 0:
		get_node("zerotwo").set_texture(null)
	elif matrix[2][0] == 1:
		get_node("zerotwo").set_texture(zerotwo_green)
	elif matrix[2][0] == 2:
		get_node("zerotwo").set_texture(zerotwo_purple)
		
	if matrix[3][0] == 0:
		get_node("zerothree").set_texture(null)
	elif matrix[3][0] == 1:
		get_node("zerothree").set_texture(zerothree_green)
	elif matrix[3][0] == 2:
		get_node("zerothree").set_texture(zerothree_purple)
		
	if matrix[4][0] == 0:
		get_node("zerofour").set_texture(null)
	elif matrix[4][0] == 1:
		get_node("zerofour").set_texture(zerofour_green)
	elif matrix[4][0] == 2:
		get_node("zerofour").set_texture(zerofour_purple)
		
	if matrix[5][0] == 0:
		get_node("zerofive").set_texture(null)
	elif matrix[5][0] == 1:
		get_node("zerofive").set_texture(zerofive_green)
	elif matrix[5][0] == 2:
		get_node("zerofive").set_texture(zerofive_purple)
		
	if matrix[6][0] == 0:
		get_node("zerosix").set_texture(null)
	elif matrix[6][0] == 1:
		get_node("zerosix").set_texture(zerosix_green)
	elif matrix[6][0] == 2:
		get_node("zerosix").set_texture(zerosix_purple)
		
	if matrix[7][0] == 0:
		get_node("zeroseven").set_texture(null)
	elif matrix[7][0] == 1:
		get_node("zeroseven").set_texture(zeroseven_green)
	elif matrix[7][0] == 2:
		get_node("zeroseven").set_texture(zeroseven_purple)
		
	if matrix[8][0] == 0:
		get_node("zeroeight").set_texture(null)
	elif matrix[8][0] == 1:
		get_node("zeroeight").set_texture(zeroeight_green)
	elif matrix[8][0] == 2:
		get_node("zeroeight").set_texture(zeroeight_purple)
		
	if matrix[9][0] == 0:
		get_node("zeronine").set_texture(null)
	elif matrix[9][0] == 1:
		get_node("zeronine").set_texture(zeronine_green)
	elif matrix[9][0] == 2:
		get_node("zeronine").set_texture(zeronine_purple)
	
	
	#
	if matrix[0][1] == 0:
		get_node("onezero").set_texture(null)
	elif matrix[0][1] == 1:
		get_node("onezero").set_texture(onezero_green)
	elif matrix[0][1] == 2:
		get_node("onezero").set_texture(onezero_purple)
		
	if matrix[1][1] == 0:
		get_node("oneone").set_texture(null)
	elif matrix[1][1] == 1:
		get_node("oneone").set_texture(oneone_green)
	elif matrix[1][1] == 2:
		get_node("oneone").set_texture(oneone_purple)
	
	if matrix[2][1] == 0:
		get_node("onetwo").set_texture(null)
	elif matrix[2][1] == 1:
		get_node("onetwo").set_texture(onetwo_green)
	elif matrix[2][1] == 2:
		get_node("onetwo").set_texture(onetwo_purple)
		
	if matrix[3][1] == 0:
		get_node("onethree").set_texture(null)
	elif matrix[3][1] == 1:
		get_node("onethree").set_texture(onethree_green)
	elif matrix[3][1] == 2:
		get_node("onethree").set_texture(onethree_purple)
		
	if matrix[4][1] == 0:
		get_node("onefour").set_texture(null)
	elif matrix[4][1] == 1:
		get_node("onefour").set_texture(onefour_green)
	elif matrix[4][1] == 2:
		get_node("onefour").set_texture(onefour_purple)
		
	if matrix[5][1] == 0:
		get_node("onefive").set_texture(null)
	elif matrix[5][1] == 1:
		get_node("onefive").set_texture(onefive_green)
	elif matrix[5][1] == 2:
		get_node("onefive").set_texture(onefive_purple)
		
	if matrix[6][1] == 0:
		get_node("onesix").set_texture(null)
	elif matrix[6][1] == 1:
		get_node("onesix").set_texture(onesix_green)
	elif matrix[6][1] == 2:
		get_node("onesix").set_texture(onesix_purple)
		
	if matrix[7][1] == 0:
		get_node("oneseven").set_texture(null)
	elif matrix[7][1] == 1:
		get_node("oneseven").set_texture(oneseven_green)
	elif matrix[7][1] == 2:
		get_node("oneseven").set_texture(oneseven_purple)
		
	if matrix[8][1] == 0:
		get_node("oneeight").set_texture(null)
	elif matrix[8][1] == 1:
		get_node("oneeight").set_texture(oneeight_green)
	elif matrix[8][1] == 2:
		get_node("oneeight").set_texture(oneeight_purple)
		
	if matrix[9][1] == 0:
		get_node("onenine").set_texture(null)
	elif matrix[9][1] == 1:
		get_node("onenine").set_texture(onenine_green)
	elif matrix[9][1] == 2:
		get_node("onenine").set_texture(onenine_purple)
	
	#
	if matrix[0][2] == 0:
		get_node("twozero").set_texture(null)
	elif matrix[0][2] == 1:
		get_node("twozero").set_texture(twozero_green)
	elif matrix[0][2] == 2:
		get_node("twozero").set_texture(twozero_purple)
		
	if matrix[1][2] == 0:
		get_node("twoone").set_texture(null)
	elif matrix[1][2] == 1:
		get_node("twoone").set_texture(twoone_green)
	elif matrix[1][2] == 2:
		get_node("twoone").set_texture(twoone_purple)
	
	if matrix[2][2] == 0:
		get_node("twotwo").set_texture(null)
	elif matrix[2][2] == 1:
		get_node("twotwo").set_texture(twotwo_green)
	elif matrix[2][2] == 2:
		get_node("twotwo").set_texture(twotwo_purple)
		
	if matrix[3][2] == 0:
		get_node("twothree").set_texture(null)
	elif matrix[3][2] == 1:
		get_node("twothree").set_texture(twothree_green)
	elif matrix[3][2] == 2:
		get_node("twothree").set_texture(twothree_purple)
		
	if matrix[4][2] == 0:
		get_node("twofour").set_texture(null)
	elif matrix[4][2] == 1:
		get_node("twofour").set_texture(twofour_green)
	elif matrix[4][2] == 2:
		get_node("twofour").set_texture(twofour_purple)
		
	if matrix[5][2] == 0:
		get_node("twofive").set_texture(null)
	elif matrix[5][2] == 1:
		get_node("twofive").set_texture(twofive_green)
	elif matrix[5][2] == 2:
		get_node("twofive").set_texture(twofive_purple)
		
	if matrix[6][2] == 0:
		get_node("twosix").set_texture(null)
	elif matrix[6][2] == 1:
		get_node("twosix").set_texture(twosix_green)
	elif matrix[6][2] == 2:
		get_node("twosix").set_texture(twosix_purple)
		
	if matrix[7][2] == 0:
		get_node("twoseven").set_texture(null)
	elif matrix[7][2] == 1:
		get_node("twoseven").set_texture(twoseven_green)
	elif matrix[7][2] == 2:
		get_node("twoseven").set_texture(twoseven_purple)
		
	if matrix[8][2] == 0:
		get_node("twoeight").set_texture(null)
	elif matrix[8][2] == 1:
		get_node("twoeight").set_texture(twoeight_green)
	elif matrix[8][2] == 2:
		get_node("twoeight").set_texture(twoeight_purple)
		
	if matrix[9][2] == 0:
		get_node("twonine").set_texture(null)
	elif matrix[9][2] == 1:
		get_node("twonine").set_texture(twonine_green)
	elif matrix[9][2] == 2:
		get_node("twonine").set_texture(twonine_purple)
	
	#
	if matrix[0][3] == 0:
		get_node("threezero").set_texture(null)
	elif matrix[0][3] == 1:
		get_node("threezero").set_texture(threezero_green)
	elif matrix[0][3] == 2:
		get_node("threezero").set_texture(threezero_purple)
		
	if matrix[1][3] == 0:
		get_node("threeone").set_texture(null)
	elif matrix[1][3] == 1:
		get_node("threeone").set_texture(threeone_green)
	elif matrix[1][3] == 2:
		get_node("threeone").set_texture(threeone_purple)
	
	if matrix[2][3] == 0:
		get_node("threetwo").set_texture(null)
	elif matrix[2][3] == 1:
		get_node("threetwo").set_texture(threetwo_green)
	elif matrix[2][3] == 2:
		get_node("threetwo").set_texture(threetwo_purple)
		
	if matrix[3][3] == 0:
		get_node("threethree").set_texture(null)
	elif matrix[3][3] == 1:
		get_node("threethree").set_texture(threethree_green)
	elif matrix[3][3] == 2:
		get_node("threethree").set_texture(threethree_purple)
		
	if matrix[4][3] == 0:
		get_node("threefour").set_texture(null)
	elif matrix[4][3] == 1:
		get_node("threefour").set_texture(threefour_green)
	elif matrix[4][3] == 2:
		get_node("threefour").set_texture(threefour_purple)
		
	if matrix[5][3] == 0:
		get_node("threefive").set_texture(null)
	elif matrix[5][3] == 1:
		get_node("threefive").set_texture(threefive_green)
	elif matrix[5][3] == 2:
		get_node("threefive").set_texture(threefive_purple)
		
	if matrix[6][3] == 0:
		get_node("threesix").set_texture(null)
	elif matrix[6][3] == 1:
		get_node("threesix").set_texture(threesix_green)
	elif matrix[6][3] == 2:
		get_node("threesix").set_texture(threesix_purple)
		
	if matrix[7][3] == 0:
		get_node("threeseven").set_texture(null)
	elif matrix[7][3] == 1:
		get_node("threeseven").set_texture(threeseven_green)
	elif matrix[7][3] == 2:
		get_node("threeseven").set_texture(threeseven_purple)
		
	if matrix[7][3] == 0:
		get_node("threeseven").set_texture(null)
	elif matrix[7][3] == 1:
		get_node("threeseven").set_texture(threeseven_green)
	elif matrix[7][3] == 2:
		get_node("threeseven").set_texture(threeseven_purple)
		
	if matrix[8][3] == 0:
		get_node("threeeight").set_texture(null)
	elif matrix[8][3] == 1:
		get_node("threeeight").set_texture(threeeight_green)
	elif matrix[8][3] == 2:
		get_node("threeeight").set_texture(threeeight_purple)
		
	if matrix[9][3] == 0:
		get_node("threenine").set_texture(null)
	elif matrix[9][3] == 1:
		get_node("threenine").set_texture(threenine_green)
	elif matrix[9][3] == 2:
		get_node("threenine").set_texture(threenine_purple)
	
	#
	if matrix[0][4] == 0:
		get_node("fourzero").set_texture(null)
	elif matrix[0][4] == 1:
		get_node("fourzero").set_texture(fourzero_green)
	elif matrix[0][4] == 2:
		get_node("fourzero").set_texture(fourzero_purple)
		
	if matrix[1][4] == 0:
		get_node("fourone").set_texture(null)
	elif matrix[1][4] == 1:
		get_node("fourone").set_texture(fourone_green)
	elif matrix[1][4] == 2:
		get_node("fourone").set_texture(fourone_purple)
	
	if matrix[2][4] == 0:
		get_node("fourtwo").set_texture(null)
	elif matrix[2][4] == 1:
		get_node("fourtwo").set_texture(fourtwo_green)
	elif matrix[2][4] == 2:
		get_node("fourtwo").set_texture(fourtwo_purple)
		
	if matrix[3][4] == 0:
		get_node("fourthree").set_texture(null)
	elif matrix[3][4] == 1:
		get_node("fourthree").set_texture(fourthree_green)
	elif matrix[3][4] == 2:
		get_node("fourthree").set_texture(fourthree_purple)
		
	if matrix[4][4] == 0:
		get_node("fourfour").set_texture(null)
	elif matrix[4][4] == 1:
		get_node("fourfour").set_texture(fourfour_green)
	elif matrix[4][4] == 2:
		get_node("fourfour").set_texture(fourfour_purple)
		
	if matrix[5][4] == 0:
		get_node("fourfive").set_texture(null)
	elif matrix[5][4] == 1:
		get_node("fourfive").set_texture(fourfive_green)
	elif matrix[5][4] == 2:
		get_node("fourfive").set_texture(fourfive_purple)
		
	if matrix[6][4] == 0:
		get_node("foursix").set_texture(null)
	elif matrix[6][4] == 1:
		get_node("foursix").set_texture(foursix_green)
	elif matrix[6][4] == 2:
		get_node("foursix").set_texture(foursix_purple)
		
	if matrix[7][4] == 0:
		get_node("fourseven").set_texture(null)
	elif matrix[7][4] == 1:
		get_node("fourseven").set_texture(fourseven_green)
	elif matrix[7][4] == 2:
		get_node("fourseven").set_texture(fourseven_purple)
		
	if matrix[8][4] == 0:
		get_node("foureight").set_texture(null)
	elif matrix[8][4] == 1:
		get_node("foureight").set_texture(foureight_green)
	elif matrix[8][4] == 2:
		get_node("foureight").set_texture(foureight_purple)
		
	if matrix[9][4] == 0:
		get_node("fournine").set_texture(null)
	elif matrix[9][4] == 1:
		get_node("fournine").set_texture(fournine_green)
	elif matrix[9][4] == 2:
		get_node("fournine").set_texture(fournine_purple)
	
	
	#
	if matrix[0][5] == 0:
		get_node("fivezero").set_texture(null)
	elif matrix[0][5] == 1:
		get_node("fivezero").set_texture(fivezero_green)
	elif matrix[0][5] == 2:
		get_node("fivezero").set_texture(fivezero_purple)
		
	if matrix[1][5] == 0:
		get_node("fiveone").set_texture(null)
	elif matrix[1][5] == 1:
		get_node("fiveone").set_texture(fiveone_green)
	elif matrix[1][5] == 2:
		get_node("fiveone").set_texture(fiveone_purple)
	
	if matrix[2][5] == 0:
		get_node("fivetwo").set_texture(null)
	elif matrix[2][5] == 1:
		get_node("fivetwo").set_texture(fivetwo_green)
	elif matrix[2][5] == 2:
		get_node("fivetwo").set_texture(fivetwo_purple)
		
	if matrix[3][5] == 0:
		get_node("fivethree").set_texture(null)
	elif matrix[3][5] == 1:
		get_node("fivethree").set_texture(fivethree_green)
	elif matrix[3][5] == 2:
		get_node("fivethree").set_texture(fivethree_purple)
		
	if matrix[4][4] == 0:
		get_node("fivefour").set_texture(null)
	elif matrix[4][5] == 1:
		get_node("fivefour").set_texture(fivefour_green)
	elif matrix[4][5] == 2:
		get_node("fivefour").set_texture(fivefour_purple)
		
	if matrix[5][5] == 0:
		get_node("fivefive").set_texture(null)
	elif matrix[5][5] == 1:
		get_node("fivefive").set_texture(fivefive_green)
	elif matrix[5][5] == 2:
		get_node("fivefive").set_texture(fivefive_purple)
		
	if matrix[6][5] == 0:
		get_node("fivesix").set_texture(null)
	elif matrix[6][5] == 1:
		get_node("fivesix").set_texture(fivesix_green)
	elif matrix[6][5] == 2:
		get_node("fivesix").set_texture(fivesix_purple)
		
	if matrix[7][5] == 0:
		get_node("fiveseven").set_texture(null)
	elif matrix[7][5] == 1:
		get_node("fiveseven").set_texture(fiveseven_green)
	elif matrix[7][5] == 2:
		get_node("fiveseven").set_texture(fiveseven_purple)
		
	if matrix[8][5] == 0:
		get_node("fiveeight").set_texture(null)
	elif matrix[8][5] == 1:
		get_node("fiveeight").set_texture(fiveeight_green)
	elif matrix[8][5] == 2:
		get_node("fiveeight").set_texture(fiveeight_purple)
		
	if matrix[9][5] == 0:
		get_node("fivenine").set_texture(null)
	elif matrix[9][5] == 1:
		get_node("fivenine").set_texture(fivenine_green)
	elif matrix[9][5] == 2:
		get_node("fivenine").set_texture(fivenine_purple)
	
	
	#
	if matrix[0][6] == 0:
		get_node("sixzero").set_texture(null)
	elif matrix[0][6] == 1:
		get_node("sixzero").set_texture(sixzero_green)
	elif matrix[0][6] == 2:
		get_node("sixzero").set_texture(sixzero_purple)
		
	if matrix[1][6] == 0:
		get_node("sixone").set_texture(null)
	elif matrix[1][6] == 1:
		get_node("sixone").set_texture(sixone_green)
	elif matrix[1][6] == 2:
		get_node("sixone").set_texture(sixone_purple)
	
	if matrix[2][6] == 0:
		get_node("sixtwo").set_texture(null)
	elif matrix[2][6] == 1:
		get_node("sixtwo").set_texture(sixtwo_green)
	elif matrix[2][6] == 2:
		get_node("sixtwo").set_texture(sixtwo_purple)
		
	if matrix[3][6] == 0:
		get_node("sixthree").set_texture(null)
	elif matrix[3][6] == 1:
		get_node("sixthree").set_texture(sixthree_green)
	elif matrix[3][6] == 2:
		get_node("sixthree").set_texture(sixthree_purple)
		
	if matrix[4][6] == 0:
		get_node("sixfour").set_texture(null)
	elif matrix[4][6] == 1:
		get_node("sixfour").set_texture(sixfour_green)
	elif matrix[4][6] == 2:
		get_node("sixfour").set_texture(sixfour_purple)
		
	if matrix[5][6] == 0:
		get_node("sixfive").set_texture(null)
	elif matrix[5][6] == 1:
		get_node("sixfive").set_texture(sixfive_green)
	elif matrix[5][6] == 2:
		get_node("sixfive").set_texture(sixfive_purple)
		
	if matrix[6][6] == 0:
		get_node("sixsix").set_texture(null)
	elif matrix[6][6] == 1:
		get_node("sixsix").set_texture(sixsix_green)
	elif matrix[6][6] == 2:
		get_node("sixsix").set_texture(sixsix_purple)
		
	if matrix[7][6] == 0:
		get_node("sixseven").set_texture(null)
	elif matrix[7][6] == 1:
		get_node("sixseven").set_texture(sixseven_green)
	elif matrix[7][6] == 2:
		get_node("sixseven").set_texture(sixseven_purple)
		
	if matrix[8][6] == 0:
		get_node("sixeight").set_texture(null)
	elif matrix[8][6] == 1:
		get_node("sixeight").set_texture(sixeight_green)
	elif matrix[8][6] == 2:
		get_node("sixeight").set_texture(sixeight_purple)
		
	if matrix[9][6] == 0:
		get_node("sixnine").set_texture(null)
	elif matrix[9][6] == 1:
		get_node("sixnine").set_texture(sixnine_green)
	elif matrix[9][6] == 2:
		get_node("sixnine").set_texture(sixnine_purple)
	
	#
	if matrix[0][7] == 0:
		get_node("sevenzero").set_texture(null)
	elif matrix[0][7] == 1:
		get_node("sevenzero").set_texture(sevenzero_green)
	elif matrix[0][7] == 2:
		get_node("sevenzero").set_texture(sevenzero_purple)
		
	if matrix[1][7] == 0:
		get_node("sevenone").set_texture(null)
	elif matrix[1][7] == 1:
		get_node("sevenone").set_texture(sevenone_green)
	elif matrix[1][7] == 2:
		get_node("sevenone").set_texture(sevenone_purple)
	
	if matrix[2][7] == 0:
		get_node("seventwo").set_texture(null)
	elif matrix[2][7] == 1:
		get_node("seventwo").set_texture(seventwo_green)
	elif matrix[2][7] == 2:
		get_node("seventwo").set_texture(seventwo_purple)
		
	if matrix[3][7] == 0:
		get_node("seventhree").set_texture(null)
	elif matrix[3][7] == 1:
		get_node("seventhree").set_texture(seventhree_green)
	elif matrix[3][7] == 2:
		get_node("seventhree").set_texture(seventhree_purple)
		
	if matrix[4][7] == 0:
		get_node("sevenfour").set_texture(null)
	elif matrix[4][7] == 1:
		get_node("sevenfour").set_texture(sevenfour_green)
	elif matrix[4][7] == 2:
		get_node("sevenfour").set_texture(sevenfour_purple)
		
	if matrix[5][7] == 0:
		get_node("sevenfive").set_texture(null)
	elif matrix[5][7] == 1:
		get_node("sevenfive").set_texture(sevenfive_green)
	elif matrix[5][7] == 2:
		get_node("sevenfive").set_texture(sevenfive_purple)
		
	if matrix[6][7] == 0:
		get_node("sevensix").set_texture(null)
	elif matrix[6][7] == 1:
		get_node("sevensix").set_texture(sevensix_green)
	elif matrix[6][7] == 2:
		get_node("sevensix").set_texture(sevensix_purple)
		
	if matrix[7][7] == 0:
		get_node("sevenseven").set_texture(null)
	elif matrix[7][7] == 1:
		get_node("sevenseven").set_texture(sevenseven_green)
	elif matrix[7][7] == 2:
		get_node("sevenseven").set_texture(sevenseven_purple)
		
	if matrix[8][7] == 0:
		get_node("seveneight").set_texture(null)
	elif matrix[8][7] == 1:
		get_node("seveneight").set_texture(seveneight_green)
	elif matrix[8][7] == 2:
		get_node("seveneight").set_texture(seveneight_purple)
		
	if matrix[9][7] == 0:
		get_node("sevennine").set_texture(null)
	elif matrix[9][7] == 1:
		get_node("sevennine").set_texture(sevennine_green)
	elif matrix[9][7] == 2:
		get_node("sevennine").set_texture(sevennine_purple)
		
	#
	if matrix[0][8] == 0:
		get_node("eightzero").set_texture(null)
	elif matrix[0][8] == 1:
		get_node("eightzero").set_texture(eightzero_green)
	elif matrix[0][8] == 2:
		get_node("eightzero").set_texture(eightzero_purple)
		
	if matrix[1][8] == 0:
		get_node("eightone").set_texture(null)
	elif matrix[1][8] == 1:
		get_node("eightone").set_texture(eightone_green)
	elif matrix[1][8] == 2:
		get_node("eightone").set_texture(eightone_purple)
	
	if matrix[2][8] == 0:
		get_node("eighttwo").set_texture(null)
	elif matrix[2][8] == 1:
		get_node("eighttwo").set_texture(eighttwo_green)
	elif matrix[2][8] == 2:
		get_node("eighttwo").set_texture(eighttwo_purple)
		
	if matrix[3][8] == 0:
		get_node("eightthree").set_texture(null)
	elif matrix[3][8] == 1:
		get_node("eightthree").set_texture(eightthree_green)
	elif matrix[3][8] == 2:
		get_node("eightthree").set_texture(eightthree_purple)
		
	if matrix[4][8] == 0:
		get_node("eightfour").set_texture(null)
	elif matrix[4][8] == 1:
		get_node("eightfour").set_texture(eightfour_green)
	elif matrix[4][8] == 2:
		get_node("eightfour").set_texture(eightfour_purple)
		
	if matrix[5][8] == 0:
		get_node("eightfive").set_texture(null)
	elif matrix[5][8] == 1:
		get_node("eightfive").set_texture(eightfive_green)
	elif matrix[5][8] == 2:
		get_node("eightfive").set_texture(eightfive_purple)
		
	if matrix[6][8] == 0:
		get_node("eightsix").set_texture(null)
	elif matrix[6][8] == 1:
		get_node("eightsix").set_texture(eightsix_green)
	elif matrix[6][8] == 2:
		get_node("eightsix").set_texture(eightsix_purple)
		
	if matrix[7][8] == 0:
		get_node("eightseven").set_texture(null)
	elif matrix[7][8] == 1:
		get_node("eightseven").set_texture(eightseven_green)
	elif matrix[7][8] == 2:
		get_node("eightseven").set_texture(eightseven_purple)
		
	if matrix[8][8] == 0:
		get_node("eighteight").set_texture(null)
	elif matrix[8][8] == 1:
		get_node("eighteight").set_texture(eighteight_green)
	elif matrix[8][8] == 2:
		get_node("eighteight").set_texture(eighteight_purple)
		
	if matrix[9][8] == 0:
		get_node("eightnine").set_texture(null)
	elif matrix[9][8] == 1:
		get_node("eightnine").set_texture(eightnine_green)
	elif matrix[9][8] == 2:
		get_node("eightnine").set_texture(eightnine_purple)
	
	#
	if matrix[0][9] == 0:
		get_node("ninezero").set_texture(null)
	elif matrix[0][9] == 1:
		get_node("ninezero").set_texture(ninezero_green)
	elif matrix[0][9] == 2:
		get_node("ninezero").set_texture(ninezero_purple)
		
	if matrix[1][9] == 0:
		get_node("nineone").set_texture(null)
	elif matrix[1][9] == 1:
		get_node("nineone").set_texture(nineone_green)
	elif matrix[1][9] == 2:
		get_node("nineone").set_texture(nineone_purple)
	
	if matrix[2][9] == 0:
		get_node("ninetwo").set_texture(null)
	elif matrix[2][9] == 1:
		get_node("ninetwo").set_texture(ninetwo_green)
	elif matrix[2][9] == 2:
		get_node("ninetwo").set_texture(ninetwo_purple)
		
	if matrix[3][9] == 0:
		get_node("ninethree").set_texture(null)
	elif matrix[3][9] == 1:
		get_node("ninethree").set_texture(ninethree_green)
	elif matrix[3][9] == 2:
		get_node("ninethree").set_texture(ninethree_purple)
		
	if matrix[4][9] == 0:
		get_node("ninefour").set_texture(null)
	elif matrix[4][9] == 1:
		get_node("ninefour").set_texture(ninefour_green)
	elif matrix[4][9] == 2:
		get_node("ninefour").set_texture(ninefour_purple)
		
	if matrix[5][9] == 0:
		get_node("ninefive").set_texture(null)
	elif matrix[5][9] == 1:
		get_node("ninefive").set_texture(ninefive_green)
	elif matrix[5][9] == 2:
		get_node("ninefive").set_texture(ninefive_purple)
		
	if matrix[6][9] == 0:
		get_node("ninesix").set_texture(null)
	elif matrix[6][9] == 1:
		get_node("ninesix").set_texture(ninesix_green)
	elif matrix[6][9] == 2:
		get_node("ninesix").set_texture(ninesix_purple)
		
	if matrix[7][9] == 0:
		get_node("nineseven").set_texture(null)
	elif matrix[7][9] == 1:
		get_node("nineseven").set_texture(nineseven_green)
	elif matrix[7][9] == 2:
		get_node("nineseven").set_texture(nineseven_purple)
		
	if matrix[8][9] == 0:
		get_node("nineeight").set_texture(null)
	elif matrix[8][9] == 1:
		get_node("nineeight").set_texture(nineeight_green)
	elif matrix[8][9] == 2:
		get_node("nineeight").set_texture(nineeight_purple)
		
	if matrix[9][9] == 0:
		get_node("ninenine").set_texture(null)
	elif matrix[9][9] == 1:
		get_node("ninenine").set_texture(ninenine_green)
	elif matrix[9][9] == 2:
		get_node("ninenine").set_texture(ninenine_purple)
	
func move_up():
	if bert_hoz == 0 and bert_vert == 0:
		pass
	elif bert_hoz == 0 and bert_vert == 1:
		bert_hoz = 0
		bert_vert = 0
		if matrix[0][0] == 0:
			matrix[0][0] = 1
			matrix[1][0] = 1
			matrix[0][1] = 1
			perks.success = perks.success + 5
		elif matrix[0][1] == 1:
			pass
		elif matrix[0][0] == 2:
			matrix[0][0] = 1
			perks.success = perks.success + 1
	elif bert_hoz == 0 and bert_vert == 2:
		bert_hoz = 0
		bert_vert = 1
		if matrix[0][1] == 0:
			matrix[0][1] = 1
			matrix[0][0] = 1
			matrix[1][1] = 1
			matrix[0][2] = 1
			perks.success = perks.success + 5
		elif matrix[0][1] == 1:
			pass
		elif matrix[0][1] == 2:
			matrix[0][1] = 1
			perks.success += 1
	elif bert_hoz == 0 and bert_vert == 3:
		bert_hoz = 0
		bert_vert = 2
		if matrix[0][2] == 0:
			matrix[0][2] = 1
			matrix[0][1] = 1
			matrix[0][3] = 1
			matrix[1][2] = 1
			perks.success += 5
		elif matrix[0][2] == 1:
			pass
		elif matrix[0][2] == 2:
			matrix[0][2] = 1
			perks.success += 1
	elif bert_hoz == 0 and bert_vert == 4:
		bert_hoz = 0
		bert_vert = 3
		if matrix[0][3] == 0:
			matrix[0][3] = 1
			matrix[0][2] = 1
			matrix[0][4] = 1
			matrix[1][3] = 1
			perks.success += 5
		elif matrix[0][3] == 1:
			pass
		elif matrix[0][3] == 2:
			matrix[0][3] = 1
			perks.success += 1
	elif bert_hoz == 0 and bert_vert == 5:
		bert_hoz = 0
		bert_vert = 4
		if matrix[0][4] == 0:
			matrix[0][4] = 1
			matrix[0][3] = 1
			matrix[0][5] = 1
			matrix[1][4] = 1
			perks.success += 5
		elif matrix[0][4] == 1:
			pass
		elif matrix[0][4] == 2:
			matrix[0][4] = 1
			perks.success += 1
	elif bert_hoz == 0 and bert_vert == 6:
		bert_hoz = 0
		bert_vert = 5
		if matrix[0][5] == 0:
			matrix[0][5] = 1
			matrix[0][4] = 1
			matrix[0][6] = 1
			matrix[1][5] = 1
			perks.success += 5
		elif matrix[0][5] == 1:
			pass
		elif matrix[0][5] == 2:
			matrix[0][5] = 1
			perks.success += 1
	elif bert_hoz == 0 and bert_vert == 7:
		bert_hoz = 0
		bert_vert = 6
		if matrix[0][6] == 0:
			matrix[0][6] = 1
			matrix[0][5] = 1
			matrix[0][7] = 1
			matrix[1][6] = 1
			perks.success += 5
		elif matrix[0][6] == 1:
			pass
		elif matrix[0][6] == 2:
			matrix[0][6] = 1
			perks.success += 1
	elif bert_hoz == 0 and bert_vert == 8:
		bert_hoz = 0
		bert_vert = 7
		if matrix[0][7] == 0:
			matrix[0][7] = 1
			matrix[0][6] = 1
			matrix[0][8] = 1
			matrix[1][7] = 1
			perks.success += 5
		elif matrix[0][7] == 1:
			pass
		elif matrix[0][7] == 2:
			matrix[0][7] = 1
			perks.success += 1
	elif bert_hoz == 0 and bert_vert == 9:
		bert_hoz = 0
		bert_vert = 8
		if matrix[0][8] == 0:
			matrix[0][8] = 1
			matrix[0][7] = 1
			matrix[0][9] = 1
			matrix[1][8] = 1
			perks.success += 5
		elif matrix[0][8] == 1:
			pass
		elif matrix[0][8] == 2:
			matrix[0][8] = 1
			perks.success += 1
			
	elif bert_hoz == 1 and bert_vert == 0:
		pass
	elif bert_hoz == 1 and bert_vert == 1:
		bert_hoz = 1
		bert_vert = 0
		if matrix[1][0] == 0:
			matrix[0][0] = 1
			matrix[1][0] = 1
			matrix[2][0] = 1
			matrix[1][1] = 1
			perks.success += 5
		elif matrix[1][0] == 1:
			pass
		elif matrix[1][0] == 2:
			matrix[1][0] = 1
			perks.success += 1
	elif bert_hoz == 1 and bert_vert == 2:
		bert_hoz = 1
		bert_vert = 1
		if matrix[1][1] == 0:
			matrix[0][1] = 1
			matrix[1][1] = 1
			matrix[1][0] = 1
			matrix[2][1] = 1
			matrix[1][2] = 1
			perks.success += 5
		elif matrix[1][1] == 1:
			pass
		elif matrix[1][1] == 2:
			matrix[1][1] = 1
			perks.success += 1
	elif bert_hoz == 1 and bert_vert == 3:
		bert_hoz = 1
		bert_vert = 2
		if matrix[1][2] == 0:
			matrix[0][2] = 1
			matrix[1][2] = 1
			matrix[1][1] = 1
			matrix[1][3] = 1
			matrix[2][2] = 1
			perks.success += 5
		elif matrix[1][2] == 1:
			pass
		elif matrix[1][2] == 2:
			matrix[1][2] = 1
			perks.success += 1
	elif bert_hoz == 1 and bert_vert == 4:
		bert_hoz = 1
		bert_vert = 3
		if matrix[1][3] == 0:
			matrix[0][3] = 1
			matrix[1][3] = 1
			matrix[1][2] = 1
			matrix[1][4] = 1
			matrix[2][3] = 1
			perks.success += 5
		elif matrix[1][3] == 1:
			pass
		elif matrix[1][3] == 2:
			matrix[1][3] = 1
			perks.success += 1
	elif bert_hoz == 1 and bert_vert == 5:
		bert_hoz = 1
		bert_vert = 4
		if matrix[1][4] == 0:
			matrix[0][4] = 1
			matrix[1][4] = 1
			matrix[1][3] = 1
			matrix[1][5] = 1
			matrix[2][4] = 1
			perks.success += 5
		elif matrix[1][4] == 1:
			pass
		elif matrix[1][4] == 2:
			matrix[1][4] = 1
			perks.success += 1
	elif bert_hoz == 1 and bert_vert == 6:
		bert_hoz = 1
		bert_vert = 5
		if matrix[1][5] == 0:
			matrix[0][5] = 1
			matrix[1][5] = 1
			matrix[1][4] = 1
			matrix[1][6] = 1
			matrix[2][5] = 1
			perks.success += 5
		elif matrix[1][5] == 1:
			pass
		elif matrix[1][5] == 2:
			matrix[1][5] = 1
			perks.success += 1
	elif bert_hoz == 1 and bert_vert == 7:
		bert_hoz = 1
		bert_vert = 6
		if matrix[1][6] == 0:
			matrix[0][6] = 1
			matrix[1][6] = 1
			matrix[1][5] = 1
			matrix[1][7] = 1
			matrix[2][6] = 1
			perks.success += 5
		elif matrix[1][6] == 1:
			pass
		elif matrix[1][6] == 2:
			matrix[1][6] = 1
			perks.success += 1
	elif bert_hoz == 1 and bert_vert == 8:
		bert_hoz = 1
		bert_vert = 7
		if matrix[1][7] == 0:
			matrix[0][7] = 1
			matrix[1][7] = 1
			matrix[1][6] = 1
			matrix[1][8] = 1
			matrix[2][7] = 1
			perks.success += 5
		elif matrix[1][7] == 1:
			pass
		elif matrix[1][7] == 2:
			matrix[1][7] = 1
			perks.success += 1
	elif bert_hoz == 1 and bert_vert == 9:
		bert_hoz = 1
		bert_vert = 8
		if matrix[1][8] == 0:
			matrix[0][8] = 1
			matrix[1][8] = 1
			matrix[1][7] = 1
			matrix[1][9] = 1
			matrix[2][8] = 1
			perks.success += 5
		elif matrix[1][8] == 1:
			pass
		elif matrix[1][8] == 2:
			matrix[1][8] = 1
			perks.success += 1
	
	elif bert_hoz == 2 and bert_vert == 0:
		pass
	elif bert_hoz == 2 and bert_vert == 1:
		bert_hoz = 2
		bert_vert = 0
		if matrix[2][0] == 0:
			matrix[1][0] = 1
			matrix[2][0] = 1
			matrix[3][0] = 1
			matrix[2][1] = 1
			perks.success += 5
		elif matrix[2][0] == 1:
			pass
		elif matrix[2][0] == 2:
			matrix[2][0] = 1
			perks.success += 1
	elif bert_hoz == 2 and bert_vert == 2:
		bert_hoz = 2
		bert_vert = 1
		if matrix[2][1] == 0:
			matrix[1][1] = 1
			matrix[2][1] = 1
			matrix[2][0] = 1
			matrix[3][1] = 1
			matrix[2][2] = 1
			perks.success += 5
		elif matrix[2][1] == 1:
			pass
		elif matrix[2][1] == 2:
			matrix[2][1] = 1
			perks.success += 1
	elif bert_hoz == 2 and bert_vert == 3:
		bert_hoz = 2
		bert_vert = 2
		if matrix[2][2] == 0:
			matrix[1][2] = 1
			matrix[2][2] = 1
			matrix[2][1] = 1
			matrix[2][3] = 1
			matrix[3][2] = 1
			perks.success += 5
		elif matrix[2][2] == 1:
			pass
		elif matrix[2][2] == 2:
			matrix[2][2] = 1
			perks.success += 1
	elif bert_hoz == 2 and bert_vert == 4:
		bert_hoz = 2
		bert_vert = 3
		if matrix[2][3] == 0:
			matrix[1][3] = 1
			matrix[2][3] = 1
			matrix[2][2] = 1
			matrix[2][4] = 1
			matrix[3][3] = 1
			perks.success += 5
		elif matrix[2][3] == 1:
			pass
		elif matrix[2][3] == 2:
			matrix[2][3] = 1
			perks.success += 1
	elif bert_hoz == 2 and bert_vert == 5:
		bert_hoz = 2
		bert_vert = 4
		if matrix[2][4] == 0:
			matrix[1][4] = 1
			matrix[2][4] = 1
			matrix[2][3] = 1
			matrix[2][5] = 1
			matrix[3][4] = 1
			perks.success += 5
		elif matrix[2][4] == 1:
			pass
		elif matrix[2][4] == 2:
			matrix[2][4] = 1
			perks.success += 1
	elif bert_hoz == 2 and bert_vert == 6:
		bert_hoz = 2
		bert_vert = 5
		if matrix[2][5] == 0:
			matrix[1][5] = 1
			matrix[2][5] = 1
			matrix[2][4] = 1
			matrix[2][6] = 1
			matrix[3][5] = 1
			perks.success += 5
		elif matrix[2][5] == 1:
			pass
		elif matrix[2][5] == 2:
			matrix[2][5] = 1
			perks.success += 1
	elif bert_hoz == 2 and bert_vert == 7:
		bert_hoz = 2
		bert_vert = 6
		if matrix[2][6] == 0:
			matrix[1][6] = 1
			matrix[2][6] = 1
			matrix[2][5] = 1
			matrix[2][7] = 1
			matrix[3][6] = 1
			perks.success += 5
		elif matrix[2][6] == 1:
			pass
		elif matrix[2][6] == 2:
			matrix[2][6] = 1
			perks.success += 1
	elif bert_hoz == 2 and bert_vert == 8:
		bert_hoz = 2
		bert_vert = 7
		if matrix[2][7] == 0:
			matrix[1][7] = 1
			matrix[2][7] = 1
			matrix[2][6] = 1
			matrix[2][8] = 1
			matrix[3][7] = 1
			perks.success += 5
		elif matrix[2][7] == 1:
			pass
		elif matrix[2][7] == 2:
			matrix[2][7] = 1
			perks.success += 1
	elif bert_hoz == 2 and bert_vert == 9:
		bert_hoz = 2
		bert_vert = 8
		if matrix[2][8] == 0:
			matrix[1][8] = 1
			matrix[2][8] = 1
			matrix[2][7] = 1
			matrix[2][9] = 1
			matrix[3][8] = 1
			perks.success += 5
		elif matrix[2][8] == 1:
			pass
		elif matrix[2][8] == 2:
			matrix[2][8] = 1
			perks.success += 1
	
	elif bert_hoz == 3 and bert_vert == 0:
		pass
	elif bert_hoz == 3 and bert_vert == 1:
		bert_hoz = 3
		bert_vert = 0
		if matrix[3][0] == 0:
			matrix[2][0] = 1
			matrix[3][0] = 1
			matrix[4][0] = 1
			matrix[3][1] = 1
			perks.success += 5
		elif matrix[3][0] == 1:
			pass
		elif matrix[3][0] == 2:
			matrix[3][0] = 1
			perks.success += 1
	elif bert_hoz == 3 and bert_vert == 2:
		bert_hoz = 3
		bert_vert = 1
		if matrix[3][1] == 0:
			matrix[2][1] = 1
			matrix[3][1] = 1
			matrix[3][0] = 1
			matrix[4][1] = 1
			matrix[3][2] = 1
			perks.success += 5
		elif matrix[3][1] == 1:
			pass
		elif matrix[3][1] == 2:
			matrix[3][1] = 1
			perks.success += 1
	elif bert_hoz == 3 and bert_vert == 3:
		bert_hoz = 3
		bert_vert = 2
		if matrix[3][2] == 0:
			matrix[2][2] = 1
			matrix[3][2] = 1
			matrix[3][1] = 1
			matrix[3][3] = 1
			matrix[4][2] = 1
			perks.success += 5
		elif matrix[3][2] == 1:
			pass
		elif matrix[3][2] == 2:
			matrix[3][2] = 1
			perks.success += 1
	elif bert_hoz == 3 and bert_vert == 4:
		bert_hoz = 3
		bert_vert = 3
		if matrix[3][3] == 0:
			matrix[2][3] = 1
			matrix[3][3] = 1
			matrix[3][2] = 1
			matrix[3][4] = 1
			matrix[4][3] = 1
			perks.success += 5
		elif matrix[3][3] == 1:
			pass
		elif matrix[3][3] == 2:
			matrix[3][3] = 1
			perks.success += 1
	elif bert_hoz == 3 and bert_vert == 5:
		bert_hoz = 3
		bert_vert = 4
		if matrix[3][4] == 0:
			matrix[2][4] = 1
			matrix[3][4] = 1
			matrix[3][3] = 1
			matrix[3][5] = 1
			matrix[4][4] = 1
			perks.success += 5
		elif matrix[3][4] == 1:
			pass
		elif matrix[3][4] == 2:
			matrix[3][4] = 1
			perks.success += 1
	elif bert_hoz == 3 and bert_vert == 6:
		bert_hoz = 3
		bert_vert = 5
		if matrix[3][5] == 0:
			matrix[2][5] = 1
			matrix[3][5] = 1
			matrix[3][4] = 1
			matrix[3][6] = 1
			matrix[4][5] = 1
			perks.success += 5
		elif matrix[3][5] == 1:
			pass
		elif matrix[3][5] == 2:
			matrix[3][5] = 1
			perks.success += 1
	elif bert_hoz == 3 and bert_vert == 7:
		bert_hoz = 3
		bert_vert = 6
		if matrix[3][6] == 0:
			matrix[2][6] = 1
			matrix[3][6] = 1
			matrix[3][5] = 1
			matrix[3][7] = 1
			matrix[4][6] = 1
			perks.success += 5
		elif matrix[3][6] == 1:
			pass
		elif matrix[3][6] == 2:
			matrix[3][6] = 1
			perks.success += 1
	elif bert_hoz == 3 and bert_vert == 8:
		bert_hoz = 3
		bert_vert = 7
		if matrix[3][7] == 0:
			matrix[2][7] = 1
			matrix[3][7] = 1
			matrix[3][6] = 1
			matrix[3][8] = 1
			matrix[4][7] = 1
			perks.success += 5
		elif matrix[3][7] == 1:
			pass
		elif matrix[3][7] == 2:
			matrix[3][7] = 1
			perks.success += 1
	elif bert_hoz == 3 and bert_vert == 9:
		bert_hoz = 3
		bert_vert = 8
		if matrix[3][8] == 0:
			matrix[2][8] = 1
			matrix[3][8] = 1
			matrix[3][7] = 1
			matrix[3][9] = 1
			matrix[4][8] = 1
			perks.success += 5
		elif matrix[3][8] == 1:
			pass
		elif matrix[3][8] == 2:
			matrix[3][8] = 1
			perks.success += 1
	
	elif bert_hoz == 4 and bert_vert == 0:
		pass
	elif bert_hoz == 4 and bert_vert == 1:
		bert_hoz = 4
		bert_vert = 0
		if matrix[4][0] == 0:
			matrix[3][0] = 1
			matrix[4][0] = 1
			matrix[5][0] = 1
			matrix[4][1] = 1
			perks.success += 5
		elif matrix[4][0] == 1:
			pass
		elif matrix[4][0] == 2:
			matrix[4][0] = 1
			perks.success += 1
	elif bert_hoz == 4 and bert_vert == 2:
		bert_hoz = 4
		bert_vert = 1
		if matrix[4][1] == 0:
			matrix[3][1] = 1
			matrix[4][1] = 1
			matrix[4][0] = 1
			matrix[5][1] = 1
			matrix[4][2] = 1
			perks.success += 5
		elif matrix[4][1] == 1:
			pass
		elif matrix[4][1] == 2:
			matrix[4][1] = 1
			perks.success += 1
	elif bert_hoz == 4 and bert_vert == 3:
		bert_hoz = 4
		bert_vert = 2
		if matrix[4][2] == 0:
			matrix[3][2] = 1
			matrix[4][2] = 1
			matrix[4][1] = 1
			matrix[4][3] = 1
			matrix[5][2] = 1
			perks.success += 5
		elif matrix[4][2] == 1:
			pass
		elif matrix[4][2] == 2:
			matrix[4][2] = 1
			perks.success += 1
	elif bert_hoz == 4 and bert_vert == 4:
		bert_hoz = 4
		bert_vert = 3
		if matrix[4][3] == 0:
			matrix[3][3] = 1
			matrix[4][3] = 1
			matrix[4][2] = 1
			matrix[4][4] = 1
			matrix[5][3] = 1
			perks.success += 5
		elif matrix[4][3] == 1:
			pass
		elif matrix[4][3] == 2:
			matrix[4][3] = 1
			perks.success += 1
	elif bert_hoz == 4 and bert_vert == 5:
		bert_hoz = 4
		bert_vert = 4
		if matrix[4][4] == 0:
			matrix[3][4] = 1
			matrix[4][4] = 1
			matrix[4][3] = 1
			matrix[4][5] = 1
			matrix[5][4] = 1
			perks.success += 5
		elif matrix[4][4] == 1:
			pass
		elif matrix[4][4] == 2:
			matrix[4][4] = 1
			perks.success += 1
	elif bert_hoz == 4 and bert_vert == 6:
		bert_hoz = 4
		bert_vert = 5
		if matrix[4][5] == 0:
			matrix[3][5] = 1
			matrix[4][5] = 1
			matrix[4][4] = 1
			matrix[4][6] = 1
			matrix[5][5] = 1
			perks.success += 5
		elif matrix[4][5] == 1:
			pass
		elif matrix[4][5] == 2:
			matrix[4][5] = 1
			perks.success += 1
	elif bert_hoz == 4 and bert_vert == 7:
		bert_hoz = 4
		bert_vert = 6
		if matrix[4][6] == 0:
			matrix[3][6] = 1
			matrix[4][6] = 1
			matrix[4][5] = 1
			matrix[4][7] = 1
			matrix[5][6] = 1
			perks.success += 5
		elif matrix[4][6] == 1:
			pass
		elif matrix[4][6] == 2:
			matrix[4][6] = 1
			perks.success += 1
	elif bert_hoz == 4 and bert_vert == 8:
		bert_hoz = 4
		bert_vert = 7
		if matrix[4][7] == 0:
			matrix[3][7] = 1
			matrix[4][7] = 1
			matrix[4][6] = 1
			matrix[4][8] = 1
			matrix[5][7] = 1
			perks.success += 5
		elif matrix[4][7] == 1:
			pass
		elif matrix[4][7] == 2:
			matrix[4][7] = 1
			perks.success += 1
	elif bert_hoz == 4 and bert_vert == 9:
		bert_hoz = 4
		bert_vert = 8
		if matrix[4][8] == 0:
			matrix[3][8] = 1
			matrix[4][8] = 1
			matrix[4][7] = 1
			matrix[4][9] = 1
			matrix[5][8] = 1
			perks.success += 5
		elif matrix[4][8] == 1:
			pass
		elif matrix[4][8] == 2:
			matrix[4][8] = 1
			perks.success += 1
	
	
	elif bert_hoz == 5 and bert_vert == 0:
		pass
	elif bert_hoz == 5 and bert_vert == 1:
		bert_hoz = 5
		bert_vert = 0
		if matrix[5][0] == 0:
			matrix[4][0] = 1
			matrix[5][0] = 1
			matrix[6][0] = 1
			matrix[5][1] = 1
			perks.success += 5
		elif matrix[5][0] == 1:
			pass
		elif matrix[5][0] == 2:
			matrix[5][0] = 1
			perks.success += 1
	elif bert_hoz == 5 and bert_vert == 2:
		bert_hoz = 5
		bert_vert = 1
		if matrix[5][1] == 0:
			matrix[4][1] = 1
			matrix[5][1] = 1
			matrix[5][0] = 1
			matrix[6][1] = 1
			matrix[5][2] = 1
			perks.success += 5
		elif matrix[5][1] == 1:
			pass
		elif matrix[5][1] == 2:
			matrix[5][1] = 1
			perks.success += 1
	elif bert_hoz == 5 and bert_vert == 3:
		bert_hoz = 5
		bert_vert = 2
		if matrix[5][2] == 0:
			matrix[4][2] = 1
			matrix[5][2] = 1
			matrix[5][1] = 1
			matrix[5][3] = 1
			matrix[6][2] = 1
			perks.success += 5
		elif matrix[5][2] == 1:
			pass
		elif matrix[5][2] == 2:
			matrix[5][2] = 1
			perks.success += 1
	elif bert_hoz == 5 and bert_vert == 4:
		bert_hoz = 5
		bert_vert = 3
		if matrix[5][3] == 0:
			matrix[4][3] = 1
			matrix[5][3] = 1
			matrix[5][2] = 1
			matrix[5][4] = 1
			matrix[6][3] = 1
			perks.success += 5
		elif matrix[5][3] == 1:
			pass
		elif matrix[5][3] == 2:
			matrix[5][3] = 1
			perks.success += 1
	elif bert_hoz == 5 and bert_vert == 5:
		bert_hoz = 5
		bert_vert = 4
		if matrix[5][4] == 0:
			matrix[4][4] = 1
			matrix[5][4] = 1
			matrix[5][3] = 1
			matrix[5][5] = 1
			matrix[6][4] = 1
			perks.success += 5
		elif matrix[5][4] == 1:
			pass
		elif matrix[5][4] == 2:
			matrix[5][4] = 1
			perks.success += 1
	elif bert_hoz == 5 and bert_vert == 6:
		bert_hoz = 5
		bert_vert = 5
		if matrix[5][5] == 0:
			matrix[4][5] = 1
			matrix[5][5] = 1
			matrix[5][4] = 1
			matrix[5][6] = 1
			matrix[6][5] = 1
			perks.success += 5
		elif matrix[5][5] == 1:
			pass
		elif matrix[5][5] == 2:
			matrix[5][5] = 1
			perks.success += 1
	elif bert_hoz == 5 and bert_vert == 7:
		bert_hoz = 5
		bert_vert = 6
		if matrix[5][6] == 0:
			matrix[4][6] = 1
			matrix[5][6] = 1
			matrix[5][5] = 1
			matrix[5][7] = 1
			matrix[6][6] = 1
			perks.success += 5
		elif matrix[5][6] == 1:
			pass
		elif matrix[5][6] == 2:
			matrix[5][6] = 1
			perks.success += 1
	elif bert_hoz == 5 and bert_vert == 8:
		bert_hoz = 5
		bert_vert = 7
		if matrix[5][7] == 0:
			matrix[4][7] = 1
			matrix[5][7] = 1
			matrix[5][6] = 1
			matrix[6][8] = 1
			matrix[6][7] = 1
			perks.success += 5
		elif matrix[5][7] == 1:
			pass
		elif matrix[5][7] == 2:
			matrix[5][7] = 1
			perks.success += 1
	elif bert_hoz == 5 and bert_vert == 9:
		bert_hoz = 5
		bert_vert = 8
		if matrix[5][8] == 0:
			matrix[4][8] = 1
			matrix[5][8] = 1
			matrix[5][7] = 1
			matrix[5][9] = 1
			matrix[6][8] = 1
			perks.success += 5
		elif matrix[5][8] == 1:
			pass
		elif matrix[5][8] == 2:
			matrix[5][8] = 1
			perks.success += 1
	
	elif bert_hoz == 6 and bert_vert == 0:
		pass
	elif bert_hoz == 6 and bert_vert == 1:
		bert_hoz = 6
		bert_vert = 0
		if matrix[6][0] == 0:
			matrix[5][0] = 1
			matrix[6][0] = 1
			matrix[7][0] = 1
			matrix[6][1] = 1
			perks.success += 5
		elif matrix[6][0] == 1:
			pass
		elif matrix[6][0] == 2:
			matrix[6][0] = 1
			perks.success += 1
	elif bert_hoz == 6 and bert_vert == 2:
		bert_hoz = 6
		bert_vert = 1
		if matrix[6][1] == 0:
			matrix[5][1] = 1
			matrix[6][1] = 1
			matrix[6][0] = 1
			matrix[7][1] = 1
			matrix[6][2] = 1
			perks.success += 5
		elif matrix[6][1] == 1:
			pass
		elif matrix[6][1] == 2:
			matrix[6][1] = 1
			perks.success += 1
	elif bert_hoz == 6 and bert_vert == 3:
		bert_hoz = 6
		bert_vert = 2
		if matrix[6][2] == 0:
			matrix[5][2] = 1
			matrix[6][2] = 1
			matrix[6][1] = 1
			matrix[6][3] = 1
			matrix[7][2] = 1
			perks.success += 5
		elif matrix[6][2] == 1:
			pass
		elif matrix[6][2] == 2:
			matrix[6][2] = 1
			perks.success += 1
	elif bert_hoz == 6 and bert_vert == 4:
		bert_hoz = 6
		bert_vert = 3
		if matrix[6][3] == 0:
			matrix[5][3] = 1
			matrix[6][3] = 1
			matrix[6][2] = 1
			matrix[6][4] = 1
			matrix[7][3] = 1
			perks.success += 5
		elif matrix[6][3] == 1:
			pass
		elif matrix[6][3] == 2:
			matrix[6][3] = 1
			perks.success += 1
	elif bert_hoz == 6 and bert_vert == 5:
		bert_hoz = 6
		bert_vert = 4
		if matrix[6][4] == 0:
			matrix[5][4] = 1
			matrix[6][4] = 1
			matrix[6][3] = 1
			matrix[6][5] = 1
			matrix[7][4] = 1
			perks.success += 5
		elif matrix[6][4] == 1:
			pass
		elif matrix[6][4] == 2:
			matrix[6][4] = 1
			perks.success += 1
	elif bert_hoz == 6 and bert_vert == 6:
		bert_hoz = 6
		bert_vert = 5
		if matrix[6][5] == 0:
			matrix[5][5] = 1
			matrix[6][5] = 1
			matrix[6][4] = 1
			matrix[6][6] = 1
			matrix[7][5] = 1
			perks.success += 5
		elif matrix[6][5] == 1:
			pass
		elif matrix[6][5] == 2:
			matrix[6][5] = 1
			perks.success += 1
	elif bert_hoz == 6 and bert_vert == 7:
		bert_hoz = 6
		bert_vert = 6
		if matrix[6][6] == 0:
			matrix[5][6] = 1
			matrix[6][6] = 1
			matrix[6][5] = 1
			matrix[6][7] = 1
			matrix[7][6] = 1
			perks.success += 5
		elif matrix[6][6] == 1:
			pass
		elif matrix[6][6] == 2:
			matrix[6][6] = 1
			perks.success += 1
	elif bert_hoz == 6 and bert_vert == 8:
		bert_hoz = 6
		bert_vert = 7
		if matrix[6][7] == 0:
			matrix[5][7] = 1
			matrix[6][7] = 1
			matrix[6][6] = 1
			matrix[7][8] = 1
			matrix[6][7] = 1
			perks.success += 5
		elif matrix[6][7] == 1:
			pass
		elif matrix[6][7] == 2:
			matrix[6][7] = 1
			perks.success += 1
	elif bert_hoz == 6 and bert_vert == 9:
		bert_hoz = 6
		bert_vert = 8
		if matrix[6][8] == 0:
			matrix[5][8] = 1
			matrix[6][8] = 1
			matrix[6][7] = 1
			matrix[6][9] = 1
			matrix[7][8] = 1
			perks.success += 5
		elif matrix[6][8] == 1:
			pass
		elif matrix[6][8] == 2:
			matrix[6][8] = 1
			perks.success += 1


	elif bert_hoz == 7 and bert_vert == 0:
		pass
	elif bert_hoz == 7 and bert_vert == 1:
		bert_hoz = 7
		bert_vert = 0
		if matrix[7][0] == 0:
			matrix[6][0] = 1
			matrix[7][0] = 1
			matrix[8][0] = 1
			matrix[7][1] = 1
			perks.success += 5
		elif matrix[7][0] == 1:
			pass
		elif matrix[7][0] == 2:
			matrix[7][0] = 1
			perks.success += 1
	elif bert_hoz == 7 and bert_vert == 2:
		bert_hoz = 7
		bert_vert = 1
		if matrix[7][1] == 0:
			matrix[6][1] = 1
			matrix[7][1] = 1
			matrix[7][0] = 1
			matrix[8][1] = 1
			matrix[7][2] = 1
			perks.success += 5
		elif matrix[7][1] == 1:
			pass
		elif matrix[7][1] == 2:
			matrix[7][1] = 1
			perks.success += 1
	elif bert_hoz == 7 and bert_vert == 3:
		bert_hoz = 7
		bert_vert = 2
		if matrix[7][2] == 0:
			matrix[6][2] = 1
			matrix[7][2] = 1
			matrix[7][1] = 1
			matrix[7][3] = 1
			matrix[8][2] = 1
			perks.success += 5
		elif matrix[7][2] == 1:
			pass
		elif matrix[7][2] == 2:
			matrix[7][2] = 1
			perks.success += 1
	elif bert_hoz == 7 and bert_vert == 4:
		bert_hoz = 7
		bert_vert = 3
		if matrix[7][3] == 0:
			matrix[6][3] = 1
			matrix[7][3] = 1
			matrix[7][2] = 1
			matrix[7][4] = 1
			matrix[8][3] = 1
			perks.success += 5
		elif matrix[7][3] == 1:
			pass
		elif matrix[7][3] == 2:
			matrix[7][3] = 1
			perks.success += 1
	elif bert_hoz == 7 and bert_vert == 5:
		bert_hoz = 7
		bert_vert = 4
		if matrix[7][4] == 0:
			matrix[6][4] = 1
			matrix[7][4] = 1
			matrix[7][3] = 1
			matrix[7][5] = 1
			matrix[8][4] = 1
			perks.success += 5
		elif matrix[7][4] == 1:
			pass
		elif matrix[7][4] == 2:
			matrix[7][4] = 1
			perks.success += 1
	elif bert_hoz == 7 and bert_vert == 6:
		bert_hoz = 7
		bert_vert = 5
		if matrix[7][5] == 0:
			matrix[6][5] = 1
			matrix[7][5] = 1
			matrix[7][4] = 1
			matrix[7][6] = 1
			matrix[8][5] = 1
			perks.success += 5
		elif matrix[7][5] == 1:
			pass
		elif matrix[7][5] == 2:
			matrix[7][5] = 1
			perks.success += 1
	elif bert_hoz == 7 and bert_vert == 7:
		bert_hoz = 7
		bert_vert = 6
		if matrix[7][6] == 0:
			matrix[6][6] = 1
			matrix[7][6] = 1
			matrix[7][5] = 1
			matrix[7][7] = 1
			matrix[8][6] = 1
			perks.success += 5
		elif matrix[7][6] == 1:
			pass
		elif matrix[7][6] == 2:
			matrix[7][6] = 1
			perks.success += 1
	elif bert_hoz == 7 and bert_vert == 8:
		bert_hoz = 7
		bert_vert = 7
		if matrix[7][7] == 0:
			matrix[6][7] = 1
			matrix[7][7] = 1
			matrix[7][6] = 1
			matrix[8][8] = 1
			matrix[7][7] = 1
			perks.success += 5
		elif matrix[7][7] == 1:
			pass
		elif matrix[7][7] == 2:
			matrix[7][7] = 1
			perks.success += 1
	elif bert_hoz == 7 and bert_vert == 9:
		bert_hoz = 7
		bert_vert = 8
		if matrix[7][8] == 0:
			matrix[6][8] = 1
			matrix[7][8] = 1
			matrix[7][7] = 1
			matrix[7][9] = 1
			matrix[8][8] = 1
			perks.success += 5
		elif matrix[7][8] == 1:
			pass
		elif matrix[7][8] == 2:
			matrix[7][8] = 1
			perks.success += 1
			
	elif bert_hoz == 8 and bert_vert == 0:
		pass
	elif bert_hoz == 8 and bert_vert == 1:
		bert_hoz = 8
		bert_vert = 0
		if matrix[8][0] == 0:
			matrix[7][0] = 1
			matrix[8][0] = 1
			matrix[9][0] = 1
			matrix[8][1] = 1
			perks.success += 5
		elif matrix[8][0] == 1:
			pass
		elif matrix[8][0] == 2:
			matrix[8][0] = 1
			perks.success += 1
	elif bert_hoz == 8 and bert_vert == 2:
		bert_hoz = 8
		bert_vert = 1
		if matrix[8][1] == 0:
			matrix[7][1] = 1
			matrix[8][1] = 1
			matrix[8][0] = 1
			matrix[9][1] = 1
			matrix[8][2] = 1
			perks.success += 5
		elif matrix[8][1] == 1:
			pass
		elif matrix[8][1] == 2:
			matrix[8][1] = 1
			perks.success += 1
	elif bert_hoz == 8 and bert_vert == 3:
		bert_hoz = 8
		bert_vert = 2
		if matrix[8][2] == 0:
			matrix[7][2] = 1
			matrix[8][2] = 1
			matrix[8][1] = 1
			matrix[8][3] = 1
			matrix[9][2] = 1
			perks.success += 5
		elif matrix[8][2] == 1:
			pass
		elif matrix[8][2] == 2:
			matrix[8][2] = 1
			perks.success += 1
	elif bert_hoz == 8 and bert_vert == 4:
		bert_hoz = 8
		bert_vert = 3
		if matrix[8][3] == 0:
			matrix[7][3] = 1
			matrix[8][3] = 1
			matrix[8][2] = 1
			matrix[8][4] = 1
			matrix[9][3] = 1
			perks.success += 5
		elif matrix[8][3] == 1:
			pass
		elif matrix[8][3] == 2:
			matrix[8][3] = 1
			perks.success += 1
	elif bert_hoz == 8 and bert_vert == 5:
		bert_hoz = 8
		bert_vert = 4
		if matrix[8][4] == 0:
			matrix[7][4] = 1
			matrix[8][4] = 1
			matrix[8][3] = 1
			matrix[8][5] = 1
			matrix[9][4] = 1
			perks.success += 5
		elif matrix[8][4] == 1:
			pass
		elif matrix[8][4] == 2:
			matrix[8][4] = 1
			perks.success += 1
	elif bert_hoz == 8 and bert_vert == 6:
		bert_hoz = 8
		bert_vert = 5
		if matrix[8][5] == 0:
			matrix[7][5] = 1
			matrix[8][5] = 1
			matrix[8][4] = 1
			matrix[8][6] = 1
			matrix[9][5] = 1
			perks.success += 5
		elif matrix[8][5] == 1:
			pass
		elif matrix[8][5] == 2:
			matrix[8][5] = 1
			perks.success += 1
	elif bert_hoz == 8 and bert_vert == 7:
		bert_hoz = 8
		bert_vert = 6
		if matrix[8][6] == 0:
			matrix[7][6] = 1
			matrix[8][6] = 1
			matrix[8][5] = 1
			matrix[8][7] = 1
			matrix[9][6] = 1
			perks.success += 5
		elif matrix[8][6] == 1:
			pass
		elif matrix[8][6] == 2:
			matrix[8][6] = 1
			perks.success += 1
	elif bert_hoz == 8 and bert_vert == 8:
		bert_hoz = 8
		bert_vert = 7
		if matrix[8][7] == 0:
			matrix[7][7] = 1
			matrix[8][7] = 1
			matrix[8][6] = 1
			matrix[9][8] = 1
			matrix[8][7] = 1
			perks.success += 5
		elif matrix[8][7] == 1:
			pass
		elif matrix[8][7] == 2:
			matrix[8][7] = 1
			perks.success += 1
	elif bert_hoz == 8 and bert_vert == 9:
		bert_hoz = 8
		bert_vert = 8
		if matrix[8][8] == 0:
			matrix[7][8] = 1
			matrix[8][8] = 1
			matrix[8][7] = 1
			matrix[8][9] = 1
			matrix[9][8] = 1
			perks.success += 5
		elif matrix[8][8] == 1:
			pass
		elif matrix[8][8] == 2:
			matrix[8][8] = 1
			perks.success += 1
			
	elif bert_hoz == 9 and bert_vert == 0:
		pass
	elif bert_hoz == 9 and bert_vert == 1:
		bert_hoz = 9
		bert_vert = 0
		if matrix[9][0] == 0:
			matrix[8][0] = 1
			matrix[9][0] = 1
			matrix[9][1] = 1
			perks.success += 5
		elif matrix[9][0] == 1:
			pass
		elif matrix[9][0] == 2:
			matrix[9][0] = 1
			perks.success += 1
	elif bert_hoz == 9 and bert_vert == 2:
		bert_hoz = 9
		bert_vert = 1
		if matrix[9][1] == 0:
			matrix[8][1] = 1
			matrix[9][1] = 1
			matrix[9][0] = 1
			matrix[9][2] = 1
			perks.success += 5
		elif matrix[9][1] == 1:
			pass
		elif matrix[9][1] == 2:
			matrix[9][1] = 1
			perks.success += 1
	elif bert_hoz == 9 and bert_vert == 3:
		bert_hoz = 9
		bert_vert = 2
		if matrix[9][2] == 0:
			matrix[8][2] = 1
			matrix[9][2] = 1
			matrix[9][1] = 1
			matrix[9][3] = 1
			perks.success += 5
		elif matrix[9][2] == 1:
			pass
		elif matrix[9][2] == 2:
			matrix[9][2] = 1
			perks.success += 1
	elif bert_hoz == 9 and bert_vert == 4:
		bert_hoz = 9
		bert_vert = 3
		if matrix[9][3] == 0:
			matrix[8][3] = 1
			matrix[9][3] = 1
			matrix[9][2] = 1
			matrix[9][4] = 1
			perks.success += 5
		elif matrix[9][3] == 1:
			pass
		elif matrix[9][3] == 2:
			matrix[9][3] = 1
			perks.success += 1
	elif bert_hoz == 9 and bert_vert == 5:
		bert_hoz = 9
		bert_vert = 4
		if matrix[9][4] == 0:
			matrix[8][4] = 1
			matrix[9][4] = 1
			matrix[9][3] = 1
			matrix[9][5] = 1
			perks.success += 5
		elif matrix[9][4] == 1:
			pass
		elif matrix[9][4] == 2:
			matrix[9][4] = 1
			perks.success += 1
	elif bert_hoz == 9 and bert_vert == 6:
		bert_hoz = 9
		bert_vert = 5
		if matrix[9][5] == 0:
			matrix[8][5] = 1
			matrix[9][5] = 1
			matrix[9][4] = 1
			matrix[9][6] = 1
			perks.success += 5
		elif matrix[9][5] == 1:
			pass
		elif matrix[9][5] == 2:
			matrix[9][5] = 1
			perks.success += 1
	elif bert_hoz == 9 and bert_vert == 7:
		bert_hoz = 9
		bert_vert = 6
		if matrix[9][6] == 0:
			matrix[8][6] = 1
			matrix[9][6] = 1
			matrix[9][5] = 1
			matrix[9][7] = 1
			perks.success += 5
		elif matrix[9][6] == 1:
			pass
		elif matrix[9][6] == 2:
			matrix[9][6] = 1
			perks.success += 1
	elif bert_hoz == 9 and bert_vert == 8:
		bert_hoz = 9
		bert_vert = 7
		if matrix[9][7] == 0:
			matrix[8][7] = 1
			matrix[9][7] = 1
			matrix[9][6] = 1
			matrix[9][7] = 1
			perks.success += 5
		elif matrix[9][7] == 1:
			pass
		elif matrix[9][7] == 2:
			matrix[9][7] = 1
			perks.success += 1
	elif bert_hoz == 9 and bert_vert == 9:
		bert_hoz = 9
		bert_vert = 8
		if matrix[9][8] == 0:
			matrix[8][8] = 1
			matrix[9][8] = 1
			matrix[9][7] = 1
			matrix[9][9] = 1
			perks.success += 5
		elif matrix[9][8] == 1:
			pass
		elif matrix[9][8] == 2:
			matrix[9][8] = 1
			perks.success += 1
	
	get_node("up_timer").start()


func move_right():
	if bert_hoz == 0 and bert_vert == 0:
		bert_hoz = 1
		bert_vert = 0
		if matrix[1][0] == 0:
			matrix[1][0] = 1
			matrix[0][0] = 1
			matrix[2][0] = 1
			matrix[1][1] = 1
			perks.success += 5
		elif matrix[1][0] == 1:
			pass
		elif matrix[1][0] == 2:
			matrix[1][0] = 1
			perks.success += 1
	elif bert_hoz == 0 and bert_vert == 1:
		bert_hoz = 1
		bert_vert = 1
		if matrix[1][1] == 0:
			matrix[1][1] = 1
			matrix[0][1] = 1
			matrix[2][1] = 1
			matrix[1][0] = 1
			matrix[1][2] = 1
			perks.success += 5
		elif matrix[1][1] == 1:
			pass
		elif matrix[1][1] == 2:
			matrix[1][1] = 1
			perks.success += 1
	elif bert_hoz == 0 and bert_vert == 2:
		bert_hoz = 1
		bert_vert = 2
		if matrix[1][2] == 0:
			matrix[1][2] = 1
			matrix[0][2] = 1
			matrix[2][2] = 1
			matrix[1][1] = 1
			matrix[1][3] = 1
			perks.success += 5
		elif matrix[1][2] == 1:
			pass
		elif matrix[1][2] == 2:
			matrix[1][2] = 1
			perks.success += 1
	elif bert_hoz == 0 and bert_vert == 3:
		bert_hoz = 1
		bert_vert = 3
		if matrix[1][3] == 0:
			matrix[1][3] = 1
			matrix[0][3] = 1
			matrix[2][3] = 1
			matrix[1][2] = 1
			matrix[1][4] = 1
			perks.success += 5
		elif matrix[1][3] == 1:
			pass
		elif matrix[1][3] == 2:
			matrix[1][3] = 1
			perks.success += 1
	elif bert_hoz == 0 and bert_vert == 4:
		bert_hoz = 1
		bert_vert = 4
		if matrix[1][4] == 0:
			matrix[1][4] = 1
			matrix[2][4] = 1
			matrix[0][4] = 1
			matrix[1][3] = 1
			matrix[1][5] = 1
			perks.success += 5
		elif matrix[1][4] == 1:
			pass
		elif matrix[1][4] == 2:
			matrix[1][4] = 1
			perks.success += 1
	elif bert_hoz == 0 and bert_vert == 5:
		bert_hoz = 1
		bert_vert = 5
		if matrix[1][5] == 0:
			matrix[1][5] = 1
			matrix[2][5] = 1
			matrix[0][5] = 1
			matrix[1][4] = 1
			matrix[1][6] = 1
			perks.success += 5
		elif matrix[1][5] == 1:
			pass
		elif matrix[1][5] == 2:
			matrix[1][5] = 1
			perks.success += 1
	elif bert_hoz == 0 and bert_vert == 6:
		bert_hoz = 1
		bert_vert = 6
		if matrix[1][6] == 0:
			matrix[1][6] = 1
			matrix[2][6] = 1
			matrix[0][6] = 1
			matrix[1][5] = 1
			matrix[1][7] = 1
			perks.success += 5
		elif matrix[1][6] == 1:
			pass
		elif matrix[1][6] == 2:
			matrix[1][6] = 1
			perks.success += 1
	elif bert_hoz == 0 and bert_vert == 7:
		bert_hoz = 1
		bert_vert = 7
		if matrix[1][7] == 0:
			matrix[1][7] = 1
			matrix[2][7] = 1
			matrix[0][7] = 1
			matrix[1][6] = 1
			matrix[1][8] = 1
			perks.success += 5
		elif matrix[1][7] == 1:
			pass
		elif matrix[1][7] == 2:
			matrix[1][7] = 1
			perks.success += 1
	elif bert_hoz == 0 and bert_vert == 8:
		bert_hoz = 1
		bert_vert = 8
		if matrix[1][8] == 0:
			matrix[1][8] = 1
			matrix[2][8] = 1
			matrix[0][8] = 1
			matrix[1][7] = 1
			matrix[1][9] = 1
			perks.success += 5
		elif matrix[1][8] == 1:
			pass
		elif matrix[1][8] == 2:
			matrix[1][8] = 1
			perks.success += 1
	elif bert_hoz == 0 and bert_vert == 9:
		bert_hoz = 1
		bert_vert = 9
		if matrix[1][9] == 0:
			matrix[1][9] = 1
			matrix[2][9] = 1
			matrix[0][9] = 1
			matrix[1][8] = 1
			perks.success += 5
		elif matrix[1][9] == 1:
			pass
		elif matrix[1][9] == 2:
			matrix[1][9] = 1
			perks.success += 1


	elif bert_hoz == 1 and bert_vert == 0:
		bert_hoz = 2
		bert_vert = 0
		if matrix[2][0] == 0:
			matrix[2][0] = 1
			matrix[1][0] = 1
			matrix[3][0] = 1
			matrix[2][1] = 1
			perks.success += 5
		elif matrix[2][0] == 1:
			pass
		elif matrix[2][0] == 2:
			matrix[2][0] = 1
			perks.success += 1
	elif bert_hoz == 1 and bert_vert == 1:
		bert_hoz = 2
		bert_vert = 1
		if matrix[2][1] == 0:
			matrix[2][1] = 1
			matrix[1][1] = 1
			matrix[3][1] = 1
			matrix[2][0] = 1
			matrix[2][2] = 1
			perks.success += 5
		elif matrix[2][1] == 1:
			pass
		elif matrix[2][1] == 2:
			matrix[2][1] = 1
			perks.success += 1
	elif bert_hoz == 1 and bert_vert == 2:
		bert_hoz = 2
		bert_vert = 2
		if matrix[2][2] == 0:
			matrix[2][2] = 1
			matrix[1][2] = 1
			matrix[3][2] = 1
			matrix[2][1] = 1
			matrix[2][3] = 1
			perks.success += 5
		elif matrix[2][2] == 1:
			pass
		elif matrix[2][2] == 2:
			matrix[2][2] = 1
			perks.success += 1
	elif bert_hoz == 1 and bert_vert == 3:
		bert_hoz = 2
		bert_vert = 3
		if matrix[2][3] == 0:
			matrix[2][3] = 1
			matrix[1][3] = 1
			matrix[3][3] = 1
			matrix[2][2] = 1
			matrix[2][4] = 1
			perks.success += 5
		elif matrix[2][3] == 1:
			pass
		elif matrix[2][3] == 2:
			matrix[2][3] = 1
			perks.success += 1
	elif bert_hoz == 1 and bert_vert == 4:
		bert_hoz = 2
		bert_vert = 4
		if matrix[2][4] == 0:
			matrix[2][4] = 1
			matrix[3][4] = 1
			matrix[1][4] = 1
			matrix[2][3] = 1
			matrix[2][5] = 1
			perks.success += 5
		elif matrix[2][4] == 1:
			pass
		elif matrix[2][4] == 2:
			matrix[2][4] = 1
			perks.success += 1
	elif bert_hoz == 1 and bert_vert == 5:
		bert_hoz = 2
		bert_vert = 5
		if matrix[2][5] == 0:
			matrix[2][5] = 1
			matrix[3][5] = 1
			matrix[1][5] = 1
			matrix[2][4] = 1
			matrix[2][6] = 1
			perks.success += 5
		elif matrix[2][5] == 1:
			pass
		elif matrix[2][5] == 2:
			matrix[2][5] = 1
			perks.success += 1
	elif bert_hoz == 1 and bert_vert == 6:
		bert_hoz = 2
		bert_vert = 6
		if matrix[2][6] == 0:
			matrix[2][6] = 1
			matrix[3][6] = 1
			matrix[1][6] = 1
			matrix[2][5] = 1
			matrix[2][7] = 1
			perks.success += 5
		elif matrix[2][6] == 1:
			pass
		elif matrix[2][6] == 2:
			matrix[2][6] = 1
			perks.success += 1
	elif bert_hoz == 1 and bert_vert == 7:
		bert_hoz = 2
		bert_vert = 7
		if matrix[2][7] == 0:
			matrix[2][7] = 1
			matrix[3][7] = 1
			matrix[1][7] = 1
			matrix[2][6] = 1
			matrix[2][8] = 1
			perks.success += 5
		elif matrix[2][7] == 1:
			pass
		elif matrix[2][7] == 2:
			matrix[2][7] = 1
			perks.success += 1
	elif bert_hoz == 1 and bert_vert == 8:
		bert_hoz = 2
		bert_vert = 8
		if matrix[2][8] == 0:
			matrix[2][8] = 1
			matrix[3][8] = 1
			matrix[1][8] = 1
			matrix[2][7] = 1
			matrix[2][9] = 1
			perks.success += 5
		elif matrix[2][8] == 1:
			pass
		elif matrix[2][8] == 2:
			matrix[2][8] = 1
			perks.success += 1
	elif bert_hoz == 1 and bert_vert == 9:
		bert_hoz = 2
		bert_vert = 9
		if matrix[2][9] == 0:
			matrix[2][9] = 1
			matrix[3][9] = 1
			matrix[1][9] = 1
			matrix[2][8] = 1
			perks.success += 5
		elif matrix[2][9] == 1:
			pass
		elif matrix[2][9] == 2:
			matrix[2][9] = 1
			perks.success += 1
	
	elif bert_hoz == 2 and bert_vert == 0:
		bert_hoz = 3
		bert_vert = 0
		if matrix[3][0] == 0:
			matrix[3][0] = 1
			matrix[2][0] = 1
			matrix[4][0] = 1
			matrix[3][1] = 1
			perks.success += 5
		elif matrix[3][0] == 1:
			pass
		elif matrix[3][0] == 2:
			matrix[3][0] = 1
			perks.success += 1
	elif bert_hoz == 2 and bert_vert == 1:
		bert_hoz = 3
		bert_vert = 1
		if matrix[3][1] == 0:
			matrix[3][1] = 1
			matrix[2][1] = 1
			matrix[4][1] = 1
			matrix[3][0] = 1
			matrix[3][2] = 1
			perks.success += 5
		elif matrix[3][1] == 1:
			pass
		elif matrix[3][1] == 2:
			matrix[3][1] = 1
			perks.success += 1
	elif bert_hoz == 2 and bert_vert == 2:
		bert_hoz = 3
		bert_vert = 2
		if matrix[3][2] == 0:
			matrix[3][2] = 1
			matrix[2][2] = 1
			matrix[4][2] = 1
			matrix[3][1] = 1
			matrix[3][3] = 1
			perks.success += 5
		elif matrix[3][2] == 1:
			pass
		elif matrix[3][2] == 2:
			matrix[3][2] = 1
			perks.success += 1
	elif bert_hoz == 2 and bert_vert == 3:
		bert_hoz = 3
		bert_vert = 3
		if matrix[3][3] == 0:
			matrix[3][3] = 1
			matrix[2][3] = 1
			matrix[4][3] = 1
			matrix[3][2] = 1
			matrix[3][4] = 1
			perks.success += 5
		elif matrix[3][3] == 1:
			pass
		elif matrix[3][3] == 2:
			matrix[3][3] = 1
			perks.success += 1
	elif bert_hoz == 2 and bert_vert == 4:
		bert_hoz = 3
		bert_vert = 4
		if matrix[3][4] == 0:
			matrix[3][4] = 1
			matrix[4][4] = 1
			matrix[2][4] = 1
			matrix[3][3] = 1
			matrix[3][5] = 1
			perks.success += 5
		elif matrix[3][4] == 1:
			pass
		elif matrix[3][4] == 2:
			matrix[3][4] = 1
			perks.success += 1
	elif bert_hoz == 2 and bert_vert == 5:
		bert_hoz = 3
		bert_vert = 5
		if matrix[3][5] == 0:
			matrix[3][5] = 1
			matrix[4][5] = 1
			matrix[2][5] = 1
			matrix[3][4] = 1
			matrix[3][6] = 1
			perks.success += 5
		elif matrix[3][5] == 1:
			pass
		elif matrix[3][5] == 2:
			matrix[3][5] = 1
			perks.success += 1
	elif bert_hoz == 2 and bert_vert == 6:
		bert_hoz = 3
		bert_vert = 6
		if matrix[3][6] == 0:
			matrix[3][6] = 1
			matrix[4][6] = 1
			matrix[2][6] = 1
			matrix[3][5] = 1
			matrix[3][7] = 1
			perks.success += 5
		elif matrix[3][6] == 1:
			pass
		elif matrix[3][6] == 2:
			matrix[3][6] = 1
			perks.success += 1
	elif bert_hoz == 2 and bert_vert == 7:
		bert_hoz = 3
		bert_vert = 7
		if matrix[3][7] == 0:
			matrix[3][7] = 1
			matrix[4][7] = 1
			matrix[2][7] = 1
			matrix[3][6] = 1
			matrix[3][8] = 1
			perks.success += 5
		elif matrix[3][7] == 1:
			pass
		elif matrix[3][7] == 2:
			matrix[3][7] = 1
			perks.success += 1
	elif bert_hoz == 2 and bert_vert == 8:
		bert_hoz = 3
		bert_vert = 8
		if matrix[3][8] == 0:
			matrix[3][8] = 1
			matrix[4][8] = 1
			matrix[2][8] = 1
			matrix[3][7] = 1
			matrix[3][9] = 1
			perks.success += 5
		elif matrix[3][8] == 1:
			pass
		elif matrix[3][8] == 2:
			matrix[3][8] = 1
			perks.success += 1
	elif bert_hoz == 2 and bert_vert == 9:
		bert_hoz = 3
		bert_vert = 9
		if matrix[3][9] == 0:
			matrix[3][9] = 1
			matrix[4][9] = 1
			matrix[2][9] = 1
			matrix[3][8] = 1
			perks.success += 5
		elif matrix[3][9] == 1:
			pass
		elif matrix[3][9] == 2:
			matrix[3][9] = 1
			perks.success += 1
	
	elif bert_hoz == 3 and bert_vert == 0:
		bert_hoz = 4
		bert_vert = 0
		if matrix[4][0] == 0:
			matrix[4][0] = 1
			matrix[3][0] = 1
			matrix[5][0] = 1
			matrix[4][1] = 1
			perks.success += 5
		elif matrix[4][0] == 1:
			pass
		elif matrix[4][0] == 2:
			matrix[4][0] = 1
			perks.success += 1
	elif bert_hoz == 3 and bert_vert == 1:
		bert_hoz = 4
		bert_vert = 1
		if matrix[4][1] == 0:
			matrix[4][1] = 1
			matrix[3][1] = 1
			matrix[5][1] = 1
			matrix[4][0] = 1
			matrix[4][2] = 1
			perks.success += 5
		elif matrix[4][1] == 1:
			pass
		elif matrix[4][1] == 2:
			matrix[4][1] = 1
			perks.success += 1
	elif bert_hoz == 3 and bert_vert == 2:
		bert_hoz = 4
		bert_vert = 2
		if matrix[4][2] == 0:
			matrix[4][2] = 1
			matrix[3][2] = 1
			matrix[5][2] = 1
			matrix[4][1] = 1
			matrix[4][3] = 1
			perks.success += 5
		elif matrix[4][2] == 1:
			pass
		elif matrix[4][2] == 2:
			matrix[4][2] = 1
			perks.success += 1
	elif bert_hoz == 3 and bert_vert == 3:
		bert_hoz = 4
		bert_vert = 3
		if matrix[4][3] == 0:
			matrix[4][3] = 1
			matrix[3][3] = 1
			matrix[5][3] = 1
			matrix[4][2] = 1
			matrix[4][4] = 1
			perks.success += 5
		elif matrix[4][3] == 1:
			pass
		elif matrix[4][3] == 2:
			matrix[4][3] = 1
			perks.success += 1
	elif bert_hoz == 3 and bert_vert == 4:
		bert_hoz = 4
		bert_vert = 4
		if matrix[4][4] == 0:
			matrix[4][4] = 1
			matrix[5][4] = 1
			matrix[3][4] = 1
			matrix[4][3] = 1
			matrix[4][5] = 1
			perks.success += 5
		elif matrix[4][4] == 1:
			pass
		elif matrix[4][4] == 2:
			matrix[4][4] = 1
			perks.success += 1
	elif bert_hoz == 3 and bert_vert == 5:
		bert_hoz = 4
		bert_vert = 5
		if matrix[4][5] == 0:
			matrix[4][5] = 1
			matrix[5][5] = 1
			matrix[3][5] = 1
			matrix[4][4] = 1
			matrix[4][6] = 1
			perks.success += 5
		elif matrix[4][5] == 1:
			pass
		elif matrix[4][5] == 2:
			matrix[4][5] = 1
			perks.success += 1
	elif bert_hoz == 3 and bert_vert == 6:
		bert_hoz = 4
		bert_vert = 6
		if matrix[4][6] == 0:
			matrix[4][6] = 1
			matrix[5][6] = 1
			matrix[3][6] = 1
			matrix[4][5] = 1
			matrix[4][7] = 1
			perks.success += 5
		elif matrix[4][6] == 1:
			pass
		elif matrix[4][6] == 2:
			matrix[4][6] = 1
			perks.success += 1
	elif bert_hoz == 3 and bert_vert == 7:
		bert_hoz = 4
		bert_vert = 7
		if matrix[4][7] == 0:
			matrix[4][7] = 1
			matrix[5][7] = 1
			matrix[3][7] = 1
			matrix[4][6] = 1
			matrix[4][8] = 1
			perks.success += 5
		elif matrix[4][7] == 1:
			pass
		elif matrix[4][7] == 2:
			matrix[4][7] = 1
			perks.success += 1
	elif bert_hoz == 3 and bert_vert == 8:
		bert_hoz = 4
		bert_vert = 8
		if matrix[4][8] == 0:
			matrix[4][8] = 1
			matrix[5][8] = 1
			matrix[3][8] = 1
			matrix[4][7] = 1
			matrix[4][9] = 1
			perks.success += 5
		elif matrix[4][8] == 1:
			pass
		elif matrix[4][8] == 2:
			matrix[4][8] = 1
			perks.success += 1
	elif bert_hoz == 3 and bert_vert == 9:
		bert_hoz = 4
		bert_vert = 9
		if matrix[4][9] == 0:
			matrix[4][9] = 1
			matrix[5][9] = 1
			matrix[3][9] = 1
			matrix[4][8] = 1
			perks.success += 5
		elif matrix[4][9] == 1:
			pass
		elif matrix[4][9] == 2:
			matrix[4][9] = 1
			perks.success += 1
	
	elif bert_hoz == 4 and bert_vert == 0:
		bert_hoz = 5
		bert_vert = 0
		if matrix[5][0] == 0:
			matrix[5][0] = 1
			matrix[4][0] = 1
			matrix[6][0] = 1
			matrix[5][1] = 1
			perks.success += 5
		elif matrix[5][0] == 1:
			pass
		elif matrix[5][0] == 2:
			matrix[5][0] = 1
			perks.success += 1
	elif bert_hoz == 4 and bert_vert == 1:
		bert_hoz = 5
		bert_vert = 1
		if matrix[5][1] == 0:
			matrix[5][1] = 1
			matrix[4][1] = 1
			matrix[6][1] = 1
			matrix[5][0] = 1
			matrix[5][2] = 1
			perks.success += 5
		elif matrix[5][1] == 1:
			pass
		elif matrix[5][1] == 2:
			matrix[5][1] = 1
			perks.success += 1
	elif bert_hoz == 4 and bert_vert == 2:
		bert_hoz = 5
		bert_vert = 2
		if matrix[5][2] == 0:
			matrix[5][2] = 1
			matrix[4][2] = 1
			matrix[6][2] = 1
			matrix[5][1] = 1
			matrix[5][3] = 1
			perks.success += 5
		elif matrix[5][2] == 1:
			pass
		elif matrix[5][2] == 2:
			matrix[5][2] = 1
			perks.success += 1
	elif bert_hoz == 4 and bert_vert == 3:
		bert_hoz = 5
		bert_vert = 3
		if matrix[5][3] == 0:
			matrix[5][3] = 1
			matrix[4][3] = 1
			matrix[6][3] = 1
			matrix[5][2] = 1
			matrix[5][4] = 1
			perks.success += 5
		elif matrix[5][3] == 1:
			pass
		elif matrix[5][3] == 2:
			matrix[5][3] = 1
			perks.success += 1
	elif bert_hoz == 4 and bert_vert == 4:
		bert_hoz = 5
		bert_vert = 4
		if matrix[5][4] == 0:
			matrix[5][4] = 1
			matrix[6][4] = 1
			matrix[4][4] = 1
			matrix[5][3] = 1
			matrix[5][5] = 1
			perks.success += 5
		elif matrix[5][4] == 1:
			pass
		elif matrix[5][4] == 2:
			matrix[5][4] = 1
			perks.success += 1
	elif bert_hoz == 4 and bert_vert == 5:
		bert_hoz = 5
		bert_vert = 5
		if matrix[5][5] == 0:
			matrix[5][5] = 1
			matrix[6][5] = 1
			matrix[4][5] = 1
			matrix[5][4] = 1
			matrix[5][6] = 1
			perks.success += 5
		elif matrix[5][5] == 1:
			pass
		elif matrix[5][5] == 2:
			matrix[5][5] = 1
			perks.success += 1
	elif bert_hoz == 4 and bert_vert == 6:
		bert_hoz = 5
		bert_vert = 6
		if matrix[5][6] == 0:
			matrix[5][6] = 1
			matrix[6][6] = 1
			matrix[4][6] = 1
			matrix[5][5] = 1
			matrix[5][7] = 1
			perks.success += 5
		elif matrix[5][6] == 1:
			pass
		elif matrix[5][6] == 2:
			matrix[5][6] = 1
			perks.success += 1
	elif bert_hoz == 4 and bert_vert == 7:
		bert_hoz = 5
		bert_vert = 7
		if matrix[5][7] == 0:
			matrix[5][7] = 1
			matrix[6][7] = 1
			matrix[4][7] = 1
			matrix[5][6] = 1
			matrix[5][8] = 1
			perks.success += 5
		elif matrix[5][7] == 1:
			pass
		elif matrix[5][7] == 2:
			matrix[5][7] = 1
			perks.success += 1
	elif bert_hoz == 4 and bert_vert == 8:
		bert_hoz = 5
		bert_vert = 8
		if matrix[5][8] == 0:
			matrix[5][8] = 1
			matrix[6][8] = 1
			matrix[4][8] = 1
			matrix[5][7] = 1
			matrix[5][9] = 1
			perks.success += 5
		elif matrix[5][8] == 1:
			pass
		elif matrix[5][8] == 2:
			matrix[5][8] = 1
			perks.success += 1
	elif bert_hoz == 4 and bert_vert == 9:
		bert_hoz = 5
		bert_vert = 9
		if matrix[5][9] == 0:
			matrix[5][9] = 1
			matrix[6][9] = 1
			matrix[4][9] = 1
			matrix[5][8] = 1
			perks.success += 5
		elif matrix[5][9] == 1:
			pass
		elif matrix[5][9] == 2:
			matrix[5][9] = 1
			perks.success += 1
	
	
	elif bert_hoz == 5 and bert_vert == 0:
		bert_hoz = 6
		bert_vert = 0
		if matrix[6][0] == 0:
			matrix[6][0] = 1
			matrix[5][0] = 1
			matrix[7][0] = 1
			matrix[6][1] = 1
			perks.success += 5
		elif matrix[6][0] == 1:
			pass
		elif matrix[6][0] == 2:
			matrix[6][0] = 1
			perks.success += 1
	elif bert_hoz == 5 and bert_vert == 1:
		bert_hoz = 6
		bert_vert = 1
		if matrix[6][1] == 0:
			matrix[6][1] = 1
			matrix[5][1] = 1
			matrix[7][1] = 1
			matrix[6][0] = 1
			matrix[6][2] = 1
			perks.success += 5
		elif matrix[6][1] == 1:
			pass
		elif matrix[6][1] == 2:
			matrix[6][1] = 1
			perks.success += 1
	elif bert_hoz == 5 and bert_vert == 2:
		bert_hoz = 6
		bert_vert = 2
		if matrix[6][2] == 0:
			matrix[6][2] = 1
			matrix[5][2] = 1
			matrix[7][2] = 1
			matrix[6][1] = 1
			matrix[6][3] = 1
			perks.success += 5
		elif matrix[6][2] == 1:
			pass
		elif matrix[6][2] == 2:
			matrix[6][2] = 1
			perks.success += 1
	elif bert_hoz == 5 and bert_vert == 3:
		bert_hoz = 6
		bert_vert = 3
		if matrix[6][3] == 0:
			matrix[6][3] = 1
			matrix[5][3] = 1
			matrix[7][3] = 1
			matrix[6][2] = 1
			matrix[6][4] = 1
			perks.success += 5
		elif matrix[6][3] == 1:
			pass
		elif matrix[6][3] == 2:
			matrix[6][3] = 1
			perks.success += 1
	elif bert_hoz == 5 and bert_vert == 4:
		bert_hoz = 6
		bert_vert = 4
		if matrix[6][4] == 0:
			matrix[6][4] = 1
			matrix[7][4] = 1
			matrix[5][4] = 1
			matrix[6][3] = 1
			matrix[6][5] = 1
			perks.success += 5
		elif matrix[6][4] == 1:
			pass
		elif matrix[6][4] == 2:
			matrix[6][4] = 1
			perks.success += 1
	elif bert_hoz == 5 and bert_vert == 5:
		bert_hoz = 6
		bert_vert = 5
		if matrix[6][5] == 0:
			matrix[6][5] = 1
			matrix[7][5] = 1
			matrix[5][5] = 1
			matrix[6][4] = 1
			matrix[6][6] = 1
			perks.success += 5
		elif matrix[6][5] == 1:
			pass
		elif matrix[6][5] == 2:
			matrix[6][5] = 1
			perks.success += 1
	elif bert_hoz == 5 and bert_vert == 6:
		bert_hoz = 6
		bert_vert = 6
		if matrix[6][6] == 0:
			matrix[6][6] = 1
			matrix[7][6] = 1
			matrix[5][6] = 1
			matrix[6][5] = 1
			matrix[6][7] = 1
			perks.success += 5
		elif matrix[6][6] == 1:
			pass
		elif matrix[6][6] == 2:
			matrix[6][6] = 1
			perks.success += 1
	elif bert_hoz == 5 and bert_vert == 7:
		bert_hoz = 6
		bert_vert = 7
		if matrix[6][7] == 0:
			matrix[6][7] = 1
			matrix[7][7] = 1
			matrix[5][7] = 1
			matrix[6][6] = 1
			matrix[6][8] = 1
			perks.success += 5
		elif matrix[6][7] == 1:
			pass
		elif matrix[6][7] == 2:
			matrix[6][7] = 1
			perks.success += 1
	elif bert_hoz == 5 and bert_vert == 8:
		bert_hoz = 6
		bert_vert = 8
		if matrix[6][8] == 0:
			matrix[6][8] = 1
			matrix[7][8] = 1
			matrix[5][8] = 1
			matrix[6][7] = 1
			matrix[6][9] = 1
			perks.success += 5
		elif matrix[6][8] == 1:
			pass
		elif matrix[6][8] == 2:
			matrix[6][8] = 1
			perks.success += 1
	elif bert_hoz == 5 and bert_vert == 9:
		bert_hoz = 6
		bert_vert = 9
		if matrix[6][9] == 0:
			matrix[6][9] = 1
			matrix[7][9] = 1
			matrix[5][9] = 1
			matrix[6][8] = 1
			perks.success += 5
		elif matrix[6][9] == 1:
			pass
		elif matrix[6][9] == 2:
			matrix[6][9] = 1
			perks.success += 1
			
	elif bert_hoz == 6 and bert_vert == 0:
		bert_hoz = 7
		bert_vert = 0
		if matrix[7][0] == 0:
			matrix[7][0] = 1
			matrix[6][0] = 1
			matrix[8][0] = 1
			matrix[7][1] = 1
			perks.success += 5
		elif matrix[7][0] == 1:
			pass
		elif matrix[7][0] == 2:
			matrix[7][0] = 1
			perks.success += 1
	elif bert_hoz == 6 and bert_vert == 1:
		bert_hoz = 7
		bert_vert = 1
		if matrix[7][1] == 0:
			matrix[7][1] = 1
			matrix[6][1] = 1
			matrix[8][1] = 1
			matrix[7][0] = 1
			matrix[7][2] = 1
			perks.success += 5
		elif matrix[7][1] == 1:
			pass
		elif matrix[7][1] == 2:
			matrix[7][1] = 1
			perks.success += 1
	elif bert_hoz == 6 and bert_vert == 2:
		bert_hoz = 7
		bert_vert = 2
		if matrix[7][2] == 0:
			matrix[7][2] = 1
			matrix[6][2] = 1
			matrix[8][2] = 1
			matrix[7][1] = 1
			matrix[7][3] = 1
			perks.success += 5
		elif matrix[7][2] == 1:
			pass
		elif matrix[7][2] == 2:
			matrix[7][2] = 1
			perks.success += 1
	elif bert_hoz == 6 and bert_vert == 3:
		bert_hoz = 7
		bert_vert = 3
		if matrix[7][3] == 0:
			matrix[7][3] = 1
			matrix[6][3] = 1
			matrix[8][3] = 1
			matrix[7][2] = 1
			matrix[7][4] = 1
			perks.success += 5
		elif matrix[7][3] == 1:
			pass
		elif matrix[7][3] == 2:
			matrix[7][3] = 1
			perks.success += 1
	elif bert_hoz == 6 and bert_vert == 4:
		bert_hoz = 7
		bert_vert = 4
		if matrix[7][4] == 0:
			matrix[7][4] = 1
			matrix[8][4] = 1
			matrix[6][4] = 1
			matrix[7][3] = 1
			matrix[7][5] = 1
			perks.success += 5
		elif matrix[7][4] == 1:
			pass
		elif matrix[7][4] == 2:
			matrix[7][4] = 1
			perks.success += 1
	elif bert_hoz == 6 and bert_vert == 5:
		bert_hoz = 7
		bert_vert = 5
		if matrix[7][5] == 0:
			matrix[7][5] = 1
			matrix[8][5] = 1
			matrix[6][5] = 1
			matrix[7][4] = 1
			matrix[7][6] = 1
			perks.success += 5
		elif matrix[7][5] == 1:
			pass
		elif matrix[7][5] == 2:
			matrix[7][5] = 1
			perks.success += 1
	elif bert_hoz == 6 and bert_vert == 6:
		bert_hoz = 7
		bert_vert = 6
		if matrix[7][6] == 0:
			matrix[7][6] = 1
			matrix[8][6] = 1
			matrix[6][6] = 1
			matrix[7][5] = 1
			matrix[7][7] = 1
			perks.success += 5
		elif matrix[7][6] == 1:
			pass
		elif matrix[7][6] == 2:
			matrix[7][6] = 1
			perks.success += 1
	elif bert_hoz == 6 and bert_vert == 7:
		bert_hoz = 7
		bert_vert = 7
		if matrix[7][7] == 0:
			matrix[7][7] = 1
			matrix[8][7] = 1
			matrix[6][7] = 1
			matrix[7][6] = 1
			matrix[7][8] = 1
			perks.success += 5
		elif matrix[7][7] == 1:
			pass
		elif matrix[7][7] == 2:
			matrix[7][7] = 1
			perks.success += 1
	elif bert_hoz == 6 and bert_vert == 8:
		bert_hoz = 7
		bert_vert = 8
		if matrix[7][8] == 0:
			matrix[7][8] = 1
			matrix[8][8] = 1
			matrix[6][8] = 1
			matrix[7][7] = 1
			matrix[7][9] = 1
			perks.success += 5
		elif matrix[7][8] == 1:
			pass
		elif matrix[7][8] == 2:
			matrix[7][8] = 1
			perks.success += 1
	elif bert_hoz == 6 and bert_vert == 9:
		bert_hoz = 7
		bert_vert = 9
		if matrix[7][9] == 0:
			matrix[7][9] = 1
			matrix[8][9] = 1
			matrix[6][9] = 1
			matrix[7][8] = 1
			perks.success += 5
		elif matrix[7][9] == 1:
			pass
		elif matrix[7][9] == 2:
			matrix[7][9] = 1
			perks.success += 1
			
	elif bert_hoz == 7 and bert_vert == 0:
		bert_hoz = 8
		bert_vert = 0
		if matrix[8][0] == 0:
			matrix[8][0] = 1
			matrix[7][0] = 1
			matrix[9][0] = 1
			matrix[8][1] = 1
			perks.success += 5
		elif matrix[8][0] == 1:
			pass
		elif matrix[8][0] == 2:
			matrix[8][0] = 1
			perks.success += 1
	elif bert_hoz == 7 and bert_vert == 1:
		bert_hoz = 8
		bert_vert = 1
		if matrix[8][1] == 0:
			matrix[8][1] = 1
			matrix[7][1] = 1
			matrix[9][1] = 1
			matrix[8][0] = 1
			matrix[8][2] = 1
			perks.success += 5
		elif matrix[8][1] == 1:
			pass
		elif matrix[8][1] == 2:
			matrix[8][1] = 1
			perks.success += 1
	elif bert_hoz == 7 and bert_vert == 2:
		bert_hoz = 8
		bert_vert = 2
		if matrix[8][2] == 0:
			matrix[8][2] = 1
			matrix[7][2] = 1
			matrix[9][2] = 1
			matrix[8][1] = 1
			matrix[8][3] = 1
			perks.success += 5
		elif matrix[8][2] == 1:
			pass
		elif matrix[8][2] == 2:
			matrix[8][2] = 1
			perks.success += 1
	elif bert_hoz == 7 and bert_vert == 3:
		bert_hoz = 8
		bert_vert = 3
		if matrix[8][3] == 0:
			matrix[8][3] = 1
			matrix[7][3] = 1
			matrix[9][3] = 1
			matrix[8][2] = 1
			matrix[8][4] = 1
			perks.success += 5
		elif matrix[8][3] == 1:
			pass
		elif matrix[8][3] == 2:
			matrix[8][3] = 1
			perks.success += 1
	elif bert_hoz == 7 and bert_vert == 4:
		bert_hoz = 8
		bert_vert = 4
		if matrix[8][4] == 0:
			matrix[8][4] = 1
			matrix[9][4] = 1
			matrix[7][4] = 1
			matrix[8][3] = 1
			matrix[8][5] = 1
			perks.success += 5
		elif matrix[8][4] == 1:
			pass
		elif matrix[8][4] == 2:
			matrix[8][4] = 1
			perks.success += 1
	elif bert_hoz == 7 and bert_vert == 5:
		bert_hoz = 8
		bert_vert = 5
		if matrix[8][5] == 0:
			matrix[8][5] = 1
			matrix[9][5] = 1
			matrix[7][5] = 1
			matrix[8][4] = 1
			matrix[8][6] = 1
			perks.success += 5
		elif matrix[8][5] == 1:
			pass
		elif matrix[8][5] == 2:
			matrix[8][5] = 1
			perks.success += 1
	elif bert_hoz == 7 and bert_vert == 6:
		bert_hoz = 8
		bert_vert = 6
		if matrix[8][6] == 0:
			matrix[8][6] = 1
			matrix[9][6] = 1
			matrix[7][6] = 1
			matrix[8][5] = 1
			matrix[8][7] = 1
			perks.success += 5
		elif matrix[8][6] == 1:
			pass
		elif matrix[8][6] == 2:
			matrix[8][6] = 1
			perks.success += 1
	elif bert_hoz == 7 and bert_vert == 7:
		bert_hoz = 8
		bert_vert = 7
		if matrix[8][7] == 0:
			matrix[8][7] = 1
			matrix[9][7] = 1
			matrix[7][7] = 1
			matrix[8][6] = 1
			matrix[8][8] = 1
			perks.success += 5
		elif matrix[8][7] == 1:
			pass
		elif matrix[8][7] == 2:
			matrix[8][7] = 1
			perks.success += 1
	elif bert_hoz == 7 and bert_vert == 8:
		bert_hoz = 8
		bert_vert = 8
		if matrix[8][8] == 0:
			matrix[8][8] = 1
			matrix[9][8] = 1
			matrix[7][8] = 1
			matrix[8][7] = 1
			matrix[8][9] = 1
			perks.success += 5
		elif matrix[8][8] == 1:
			pass
		elif matrix[8][8] == 2:
			matrix[8][8] = 1
			perks.success += 1
	elif bert_hoz == 7 and bert_vert == 9:
		bert_hoz = 8
		bert_vert = 9
		if matrix[8][9] == 0:
			matrix[8][9] = 1
			matrix[9][9] = 1
			matrix[7][9] = 1
			matrix[8][8] = 1
			perks.success += 5
		elif matrix[8][9] == 1:
			pass
		elif matrix[8][9] == 2:
			matrix[8][9] = 1
			perks.success += 1
			
	elif bert_hoz == 8 and bert_vert == 0:
		bert_hoz = 9
		bert_vert = 0
		if matrix[9][0] == 0:
			matrix[9][0] = 1
			matrix[8][0] = 1
			matrix[9][1] = 1
			perks.success += 5
		elif matrix[9][0] == 1:
			pass
		elif matrix[9][0] == 2:
			matrix[9][0] = 1
			perks.success += 1
	elif bert_hoz == 8 and bert_vert == 1:
		bert_hoz = 9
		bert_vert = 1
		if matrix[9][1] == 0:
			matrix[9][1] = 1
			matrix[8][1] = 1
			matrix[9][0] = 1
			matrix[9][2] = 1
			perks.success += 5
		elif matrix[9][1] == 1:
			pass
		elif matrix[9][1] == 2:
			matrix[9][1] = 1
			perks.success += 1
	elif bert_hoz == 8 and bert_vert == 2:
		bert_hoz = 9
		bert_vert = 2
		if matrix[9][2] == 0:
			matrix[9][2] = 1
			matrix[8][2] = 1
			matrix[9][1] = 1
			matrix[9][3] = 1
			perks.success += 5
		elif matrix[9][2] == 1:
			pass
		elif matrix[9][2] == 2:
			matrix[9][2] = 1
			perks.success += 1
	elif bert_hoz == 8 and bert_vert == 3:
		bert_hoz = 9
		bert_vert = 3
		if matrix[9][3] == 0:
			matrix[9][3] = 1
			matrix[8][3] = 1
			matrix[9][2] = 1
			matrix[9][4] = 1
			perks.success += 5
		elif matrix[9][3] == 1:
			pass
		elif matrix[9][3] == 2:
			matrix[9][3] = 1
			perks.success += 1
	elif bert_hoz == 8 and bert_vert == 4:
		bert_hoz = 9
		bert_vert = 4
		if matrix[9][4] == 0:
			matrix[9][4] = 1
			matrix[8][4] = 1
			matrix[9][3] = 1
			matrix[9][5] = 1
			perks.success += 5
		elif matrix[9][4] == 1:
			pass
		elif matrix[9][4] == 2:
			matrix[9][4] = 1
			perks.success += 1
	elif bert_hoz == 8 and bert_vert == 5:
		bert_hoz = 9
		bert_vert = 5
		if matrix[9][5] == 0:
			matrix[9][5] = 1
			matrix[8][5] = 1
			matrix[9][4] = 1
			matrix[9][6] = 1
			perks.success += 5
		elif matrix[9][5] == 1:
			pass
		elif matrix[9][5] == 2:
			matrix[9][5] = 1
			perks.success += 1
	elif bert_hoz == 8 and bert_vert == 6:
		bert_hoz = 9
		bert_vert = 6
		if matrix[9][6] == 0:
			matrix[9][6] = 1
			matrix[8][6] = 1
			matrix[9][5] = 1
			matrix[9][7] = 1
			perks.success += 5
		elif matrix[9][6] == 1:
			pass
		elif matrix[9][6] == 2:
			matrix[9][6] = 1
			perks.success += 1
	elif bert_hoz == 8 and bert_vert == 7:
		bert_hoz = 9
		bert_vert = 7
		if matrix[9][7] == 0:
			matrix[9][7] = 1
			matrix[8][7] = 1
			matrix[9][6] = 1
			matrix[9][8] = 1
			perks.success += 5
		elif matrix[9][7] == 1:
			pass
		elif matrix[9][7] == 2:
			matrix[9][7] = 1
			perks.success += 1
	elif bert_hoz == 8 and bert_vert == 8:
		bert_hoz = 9
		bert_vert = 8
		if matrix[9][8] == 0:
			matrix[9][8] = 1
			matrix[8][8] = 1
			matrix[9][7] = 1
			matrix[9][9] = 1
			perks.success += 5
		elif matrix[9][8] == 1:
			pass
		elif matrix[9][8] == 2:
			matrix[9][8] = 1
			perks.success += 1
	elif bert_hoz == 8 and bert_vert == 9:
		bert_hoz = 9
		bert_vert = 9
		if matrix[9][9] == 0:
			matrix[9][9] = 1
			matrix[8][9] = 1
			matrix[9][8] = 1
			perks.success += 5
		elif matrix[9][9] == 1:
			pass
		elif matrix[9][9] == 2:
			matrix[9][9] = 1
			perks.success += 1
		
	elif bert_hoz == 9:
		pass
	
	get_node("right_timer").start()
		
func move_left():
	if bert_hoz == 0:
		pass
	
	elif bert_hoz == 1 and bert_vert == 0:
		bert_hoz = 0
		bert_vert = 0
		if matrix[0][0] == 0:
			matrix[1][0] = 1
			matrix[0][0] = 1
			matrix[0][1] = 1
			perks.success += 5
		elif matrix[0][0] == 1:
			pass
		elif matrix[0][0] == 2:
			matrix[0][0] = 1
			perks.success += 1
	elif bert_hoz == 1 and bert_vert == 1:
		bert_hoz = 0
		bert_vert = 1
		if matrix[0][1] == 0:
			matrix[0][1] = 1
			matrix[1][1] = 1
			matrix[0][0] = 1
			matrix[0][2] = 1
			perks.success += 5
		elif matrix[0][1] == 1:
			pass
		elif matrix[0][1] == 2:
			matrix[0][1] = 1
			perks.success += 1
	elif bert_hoz == 1 and bert_vert == 2:
		bert_hoz = 0
		bert_vert = 2
		if matrix[0][2] == 0:
			matrix[0][2] = 1
			matrix[1][2] = 1
			matrix[0][1] = 1
			matrix[0][3] = 1
			perks.success += 5
		elif matrix[0][2] == 1:
			pass
		elif matrix[0][2] == 2:
			matrix[0][2] = 1
			perks.success += 1
	elif bert_hoz == 1 and bert_vert == 3:
		bert_hoz = 0
		bert_vert = 3
		if matrix[0][3] == 0:
			matrix[0][3] = 1
			matrix[1][3] = 1
			matrix[0][2] = 1
			matrix[0][4] = 1
			perks.success += 5
		elif matrix[0][3] == 1:
			pass
		elif matrix[0][3] == 2:
			matrix[0][3] = 1
			perks.success += 1
	elif bert_hoz == 1 and bert_vert == 4:
		bert_hoz = 0
		bert_vert = 4
		if matrix[0][4] == 0:
			matrix[0][4] = 1
			matrix[1][4] = 1
			matrix[0][3] = 1
			matrix[0][5] = 1
			perks.success += 5
		elif matrix[0][4] == 1:
			pass
		elif matrix[0][4] == 2:
			matrix[0][4] = 1
			perks.success += 1
	elif bert_hoz == 1 and bert_vert == 5:
		bert_hoz = 0
		bert_vert = 5
		if matrix[0][5] == 0:
			matrix[0][5] = 1
			matrix[1][5] = 1
			matrix[0][4] = 1
			matrix[0][6] = 1
			perks.success += 5
		elif matrix[0][5] == 1:
			pass
		elif matrix[0][5] == 2:
			matrix[0][5] = 1
			perks.success += 1
	elif bert_hoz == 1 and bert_vert == 6:
		bert_hoz = 0
		bert_vert = 6
		if matrix[0][6] == 0:
			matrix[0][6] = 1
			matrix[1][6] = 1
			matrix[0][5] = 1
			matrix[0][7] = 1
			perks.success += 5
		elif matrix[0][6] == 1:
			pass
		elif matrix[0][6] == 2:
			matrix[0][6] = 1
			perks.success += 1
	elif bert_hoz == 1 and bert_vert == 7:
		bert_hoz = 0
		bert_vert = 7
		if matrix[0][7] == 0:
			matrix[0][7] = 1
			matrix[1][7] = 1
			matrix[0][6] = 1
			matrix[0][8] = 1
			perks.success += 5
		elif matrix[0][7] == 1:
			pass
		elif matrix[0][7] == 2:
			matrix[0][7] = 1
			perks.success += 1
	elif bert_hoz == 1 and bert_vert == 8:
		bert_hoz = 0
		bert_vert = 8
		if matrix[0][8] == 0:
			matrix[0][8] = 1
			matrix[1][8] = 1
			matrix[0][7] = 1
			matrix[0][9] = 1
			perks.success += 5
		elif matrix[0][8] == 1:
			pass
		elif matrix[0][8] == 2:
			matrix[0][8] = 1
			perks.success += 1
	elif bert_hoz == 1 and bert_vert == 9:
		bert_hoz = 0
		bert_vert = 9
		if matrix[0][9] == 0:
			matrix[0][9] = 1
			matrix[1][9] = 1
			matrix[0][8] = 1
			perks.success += 5
		elif matrix[0][9] == 1:
			pass
		elif matrix[0][9] == 2:
			matrix[0][9] = 1
			perks.success += 1
			
	elif bert_hoz == 2 and bert_vert == 0:
		bert_hoz = 1
		bert_vert = 0
		if matrix[1][0] == 0:
			matrix[2][0] = 1
			matrix[1][0] = 1
			matrix[1][1] = 1
			matrix[0][0] = 1
			perks.success += 5
		elif matrix[1][0] == 1:
			pass
		elif matrix[1][0] == 2:
			matrix[1][0] = 1
			perks.success += 1
	elif bert_hoz == 2 and bert_vert == 1:
		bert_hoz = 1
		bert_vert = 1
		if matrix[1][1] == 0:
			matrix[1][1] = 1
			matrix[2][1] = 1
			matrix[1][0] = 1
			matrix[1][2] = 1
			matrix[0][1] = 1
			perks.success += 5
		elif matrix[1][1] == 1:
			pass
		elif matrix[1][1] == 2:
			matrix[1][1] = 1
			perks.success += 1
	elif bert_hoz == 2 and bert_vert == 2:
		bert_hoz = 1
		bert_vert = 2
		if matrix[1][2] == 0:
			matrix[0][2] = 1
			matrix[1][2] = 1
			matrix[2][2] = 1
			matrix[1][1] = 1
			matrix[1][3] = 1
			perks.success += 5
		elif matrix[1][2] == 1:
			pass
		elif matrix[1][2] == 2:
			matrix[1][2] = 1
			perks.success += 1
	elif bert_hoz == 2 and bert_vert == 3:
		bert_hoz = 1
		bert_vert = 3
		if matrix[1][3] == 0:
			matrix[0][3] = 1
			matrix[1][3] = 1
			matrix[2][3] = 1
			matrix[1][2] = 1
			matrix[1][4] = 1
			perks.success += 5
		elif matrix[1][3] == 1:
			pass
		elif matrix[1][3] == 2:
			matrix[1][3] = 1
			perks.success += 1
	elif bert_hoz == 2 and bert_vert == 4:
		bert_hoz = 1
		bert_vert = 4
		if matrix[1][4] == 0:
			matrix[0][4] = 1
			matrix[1][4] = 1
			matrix[2][4] = 1
			matrix[1][3] = 1
			matrix[1][5] = 1
			perks.success += 5
		elif matrix[1][4] == 1:
			pass
		elif matrix[1][4] == 2:
			matrix[1][4] = 1
			perks.success += 1
	elif bert_hoz == 2 and bert_vert == 5:
		bert_hoz = 1
		bert_vert = 5
		if matrix[1][5] == 0:
			matrix[0][5] = 1
			matrix[1][5] = 1
			matrix[2][5] = 1
			matrix[1][4] = 1
			matrix[1][6] = 1
			perks.success += 5
		elif matrix[1][5] == 1:
			pass
		elif matrix[1][5] == 2:
			matrix[1][5] = 1
			perks.success += 1
	elif bert_hoz == 2 and bert_vert == 6:
		bert_hoz = 1
		bert_vert = 6
		if matrix[1][6] == 0:
			matrix[0][6] = 1
			matrix[1][6] = 1
			matrix[2][6] = 1
			matrix[1][5] = 1
			matrix[1][7] = 1
			perks.success += 5
		elif matrix[1][6] == 1:
			pass
		elif matrix[1][6] == 2:
			matrix[1][6] = 1
			perks.success += 1
	elif bert_hoz == 2 and bert_vert == 7:
		bert_hoz = 1
		bert_vert = 7
		if matrix[1][7] == 0:
			matrix[0][7] = 1
			matrix[1][7] = 1
			matrix[2][7] = 1
			matrix[1][6] = 1
			matrix[1][8] = 1
			perks.success += 5
		elif matrix[1][7] == 1:
			pass
		elif matrix[1][7] == 2:
			matrix[1][7] = 1
			perks.success += 1
	elif bert_hoz == 2 and bert_vert == 8:
		bert_hoz = 1
		bert_vert = 8
		if matrix[1][8] == 0:
			matrix[0][8] = 1
			matrix[1][8] = 1
			matrix[2][8] = 1
			matrix[1][7] = 1
			matrix[1][9] = 1
			perks.success += 5
		elif matrix[1][8] == 1:
			pass
		elif matrix[1][8] == 2:
			matrix[1][8] = 1
			perks.success += 1
	elif bert_hoz == 2 and bert_vert == 9:
		bert_hoz = 1
		bert_vert = 9
		if matrix[1][9] == 0:
			matrix[0][9] = 1
			matrix[1][9] = 1
			matrix[2][9] = 1
			matrix[1][8] = 1
			perks.success += 5
		elif matrix[1][9] == 1:
			pass
		elif matrix[1][9] == 2:
			matrix[1][9] = 1
			perks.success += 1
			
			
	elif bert_hoz == 3 and bert_vert == 0:
		bert_hoz = 2
		bert_vert = 0
		if matrix[3][0] == 0:
			matrix[3][0] = 1
			matrix[2][0] = 1
			matrix[2][1] = 1
			matrix[1][0] = 1
			perks.success += 5
		elif matrix[2][0] == 1:
			pass
		elif matrix[2][0] == 2:
			matrix[2][0] = 1
			perks.success += 1
	elif bert_hoz == 3 and bert_vert == 1:
		bert_hoz = 2
		bert_vert = 1
		if matrix[2][1] == 0:
			matrix[2][1] = 1
			matrix[3][1] = 1
			matrix[2][0] = 1
			matrix[2][2] = 1
			matrix[1][1] = 1
			perks.success += 5
		elif matrix[2][1] == 1:
			pass
		elif matrix[2][1] == 2:
			matrix[2][1] = 1
			perks.success += 1
	elif bert_hoz == 3 and bert_vert == 2:
		bert_hoz = 2
		bert_vert = 2
		if matrix[2][2] == 0:
			matrix[1][2] = 1
			matrix[2][2] = 1
			matrix[3][2] = 1
			matrix[2][1] = 1
			matrix[2][3] = 1
			perks.success += 5
		elif matrix[2][2] == 1:
			pass
		elif matrix[2][2] == 2:
			matrix[2][2] = 1
			perks.success += 1
	elif bert_hoz == 3 and bert_vert == 3:
		bert_hoz = 2
		bert_vert = 3
		if matrix[2][3] == 0:
			matrix[1][3] = 1
			matrix[2][3] = 1
			matrix[3][3] = 1
			matrix[2][2] = 1
			matrix[2][4] = 1
			perks.success += 5
		elif matrix[2][3] == 1:
			pass
		elif matrix[2][3] == 2:
			matrix[2][3] = 1
			perks.success += 1
	elif bert_hoz == 3 and bert_vert == 4:
		bert_hoz = 2
		bert_vert = 4
		if matrix[2][4] == 0:
			matrix[1][4] = 1
			matrix[2][4] = 1
			matrix[3][4] = 1
			matrix[2][3] = 1
			matrix[2][5] = 1
			perks.success += 5
		elif matrix[2][4] == 1:
			pass
		elif matrix[2][4] == 2:
			matrix[2][4] = 1
			perks.success += 1
	elif bert_hoz == 3 and bert_vert == 5:
		bert_hoz = 2
		bert_vert = 5
		if matrix[2][5] == 0:
			matrix[1][5] = 1
			matrix[2][5] = 1
			matrix[3][5] = 1
			matrix[2][4] = 1
			matrix[2][6] = 1
			perks.success += 5
		elif matrix[2][5] == 1:
			pass
		elif matrix[2][5] == 2:
			matrix[2][5] = 1
			perks.success += 1
	elif bert_hoz == 3 and bert_vert == 6:
		bert_hoz = 2
		bert_vert = 6
		if matrix[2][6] == 0:
			matrix[1][6] = 1
			matrix[2][6] = 1
			matrix[3][6] = 1
			matrix[2][5] = 1
			matrix[2][7] = 1
			perks.success += 5
		elif matrix[2][6] == 1:
			pass
		elif matrix[2][6] == 2:
			matrix[2][6] = 1
			perks.success += 1
	elif bert_hoz == 3 and bert_vert == 7:
		bert_hoz = 2
		bert_vert = 7
		if matrix[2][7] == 0:
			matrix[1][7] = 1
			matrix[2][7] = 1
			matrix[3][7] = 1
			matrix[2][6] = 1
			matrix[2][8] = 1
			perks.success += 5
		elif matrix[2][7] == 1:
			pass
		elif matrix[2][7] == 2:
			matrix[2][7] = 1
			perks.success += 1
	elif bert_hoz == 3 and bert_vert == 8:
		bert_hoz = 2
		bert_vert = 8
		if matrix[2][8] == 0:
			matrix[1][8] = 1
			matrix[2][8] = 1
			matrix[3][8] = 1
			matrix[2][7] = 1
			matrix[2][9] = 1
			perks.success += 5
		elif matrix[2][8] == 1:
			pass
		elif matrix[2][8] == 2:
			matrix[2][8] = 1
			perks.success += 1
	elif bert_hoz == 3 and bert_vert == 9:
		bert_hoz = 2
		bert_vert = 9
		if matrix[2][9] == 0:
			matrix[1][9] = 1
			matrix[2][9] = 1
			matrix[3][9] = 1
			matrix[2][8] = 1
			perks.success += 5
		elif matrix[2][9] == 1:
			pass
		elif matrix[2][9] == 2:
			matrix[2][9] = 1
			perks.success += 1
			
	elif bert_hoz == 4 and bert_vert == 0:
		bert_hoz = 3
		bert_vert = 0
		if matrix[4][0] == 0:
			matrix[4][0] = 1
			matrix[3][0] = 1
			matrix[3][1] = 1
			matrix[2][0] = 1
			perks.success += 5
		elif matrix[3][0] == 1:
			pass
		elif matrix[3][0] == 2:
			matrix[3][0] = 1
			perks.success += 1
	elif bert_hoz == 4 and bert_vert == 1:
		bert_hoz = 3
		bert_vert = 1
		if matrix[3][1] == 0:
			matrix[3][1] = 1
			matrix[4][1] = 1
			matrix[3][0] = 1
			matrix[3][2] = 1
			matrix[2][1] = 1
			perks.success += 5
		elif matrix[3][1] == 1:
			pass
		elif matrix[3][1] == 2:
			matrix[3][1] = 1
			perks.success += 1
	elif bert_hoz == 4 and bert_vert == 2:
		bert_hoz = 3
		bert_vert = 2
		if matrix[3][2] == 0:
			matrix[2][2] = 1
			matrix[3][2] = 1
			matrix[4][2] = 1
			matrix[3][1] = 1
			matrix[3][3] = 1
			perks.success += 5
		elif matrix[3][2] == 1:
			pass
		elif matrix[3][2] == 2:
			matrix[3][2] = 1
			perks.success += 1
	elif bert_hoz == 4 and bert_vert == 3:
		bert_hoz = 3
		bert_vert = 3
		if matrix[3][3] == 0:
			matrix[2][3] = 1
			matrix[3][3] = 1
			matrix[4][3] = 1
			matrix[3][2] = 1
			matrix[3][4] = 1
			perks.success += 5
		elif matrix[3][3] == 1:
			pass
		elif matrix[3][3] == 2:
			matrix[3][3] = 1
			perks.success += 1
	elif bert_hoz == 4 and bert_vert == 4:
		bert_hoz = 3
		bert_vert = 4
		if matrix[3][4] == 0:
			matrix[2][4] = 1
			matrix[3][4] = 1
			matrix[4][4] = 1
			matrix[3][3] = 1
			matrix[3][5] = 1
			perks.success += 5
		elif matrix[3][4] == 1:
			pass
		elif matrix[3][4] == 2:
			matrix[3][4] = 1
			perks.success += 1
	elif bert_hoz == 4 and bert_vert == 5:
		bert_hoz = 3
		bert_vert = 5
		if matrix[3][5] == 0:
			matrix[2][5] = 1
			matrix[3][5] = 1
			matrix[4][5] = 1
			matrix[3][4] = 1
			matrix[3][6] = 1
			perks.success += 5
		elif matrix[3][5] == 1:
			pass
		elif matrix[3][5] == 2:
			matrix[3][5] = 1
			perks.success += 1
	elif bert_hoz == 4 and bert_vert == 6:
		bert_hoz = 3
		bert_vert = 6
		if matrix[3][6] == 0:
			matrix[2][6] = 1
			matrix[3][6] = 1
			matrix[4][6] = 1
			matrix[3][5] = 1
			matrix[3][7] = 1
			perks.success += 5
		elif matrix[3][6] == 1:
			pass
		elif matrix[3][6] == 2:
			matrix[3][6] = 1
			perks.success += 1
	elif bert_hoz == 4 and bert_vert == 7:
		bert_hoz = 3
		bert_vert = 7
		if matrix[3][7] == 0:
			matrix[2][7] = 1
			matrix[3][7] = 1
			matrix[4][7] = 1
			matrix[3][6] = 1
			matrix[3][8] = 1
			perks.success += 5
		elif matrix[3][7] == 1:
			pass
		elif matrix[3][7] == 2:
			matrix[3][7] = 1
			perks.success += 1
	elif bert_hoz == 4 and bert_vert == 8:
		bert_hoz = 3
		bert_vert = 8
		if matrix[3][8] == 0:
			matrix[2][8] = 1
			matrix[3][8] = 1
			matrix[4][8] = 1
			matrix[3][7] = 1
			matrix[3][9] = 1
			perks.success += 5
		elif matrix[3][8] == 1:
			pass
		elif matrix[3][8] == 2:
			matrix[3][8] = 1
			perks.success += 1
	elif bert_hoz == 4 and bert_vert == 9:
		bert_hoz = 3
		bert_vert = 9
		if matrix[3][9] == 0:
			matrix[2][9] = 1
			matrix[3][9] = 1
			matrix[4][9] = 1
			matrix[3][8] = 1
			perks.success += 5
		elif matrix[3][9] == 1:
			pass
		elif matrix[3][9] == 2:
			matrix[3][9] = 1
			perks.success += 1
			
	elif bert_hoz == 5 and bert_vert == 0:
		bert_hoz = 4
		bert_vert = 0
		if matrix[5][0] == 0:
			matrix[5][0] = 1
			matrix[4][0] = 1
			matrix[4][1] = 1
			matrix[3][0] = 1
			perks.success += 5
		elif matrix[4][0] == 1:
			pass
		elif matrix[4][0] == 2:
			matrix[4][0] = 1
			perks.success += 1
	elif bert_hoz == 5 and bert_vert == 1:
		bert_hoz = 4
		bert_vert = 1
		if matrix[4][1] == 0:
			matrix[4][1] = 1
			matrix[5][1] = 1
			matrix[4][0] = 1
			matrix[4][2] = 1
			matrix[3][1] = 1
			perks.success += 5
		elif matrix[4][1] == 1:
			pass
		elif matrix[4][1] == 2:
			matrix[4][1] = 1
			perks.success += 1
	elif bert_hoz == 5 and bert_vert == 2:
		bert_hoz = 4
		bert_vert = 2
		if matrix[4][2] == 0:
			matrix[4][2] = 1
			matrix[4][2] = 1
			matrix[5][2] = 1
			matrix[4][1] = 1
			matrix[4][3] = 1
			perks.success += 5
		elif matrix[4][2] == 1:
			pass
		elif matrix[4][2] == 2:
			matrix[4][2] = 1
			perks.success += 1
	elif bert_hoz == 5 and bert_vert == 3:
		bert_hoz = 4
		bert_vert = 3
		if matrix[4][3] == 0:
			matrix[3][3] = 1
			matrix[4][3] = 1
			matrix[5][3] = 1
			matrix[4][2] = 1
			matrix[4][4] = 1
			perks.success += 5
		elif matrix[4][3] == 1:
			pass
		elif matrix[4][3] == 2:
			matrix[4][3] = 1
			perks.success += 1
	elif bert_hoz == 5 and bert_vert == 4:
		bert_hoz = 4
		bert_vert = 4
		if matrix[4][4] == 0:
			matrix[3][4] = 1
			matrix[4][4] = 1
			matrix[5][4] = 1
			matrix[4][3] = 1
			matrix[4][5] = 1
			perks.success += 5
		elif matrix[4][4] == 1:
			pass
		elif matrix[4][4] == 2:
			matrix[4][4] = 1
			perks.success += 1
	elif bert_hoz == 5 and bert_vert == 5:
		bert_hoz = 4
		bert_vert = 5
		if matrix[4][5] == 0:
			matrix[3][5] = 1
			matrix[4][5] = 1
			matrix[5][5] = 1
			matrix[4][4] = 1
			matrix[4][6] = 1
			perks.success += 5
		elif matrix[4][5] == 1:
			pass
		elif matrix[4][5] == 2:
			matrix[4][5] = 1
			perks.success += 1
	elif bert_hoz == 5 and bert_vert == 6:
		bert_hoz = 4
		bert_vert = 6
		if matrix[5][6] == 0:
			matrix[3][6] = 1
			matrix[4][6] = 1
			matrix[5][6] = 1
			matrix[4][5] = 1
			matrix[4][7] = 1
			perks.success += 5
		elif matrix[4][6] == 1:
			pass
		elif matrix[4][6] == 2:
			matrix[4][6] = 1
			perks.success += 1
	elif bert_hoz == 5 and bert_vert == 7:
		bert_hoz = 4
		bert_vert = 7
		if matrix[4][7] == 0:
			matrix[3][7] = 1
			matrix[4][7] = 1
			matrix[5][7] = 1
			matrix[4][6] = 1
			matrix[4][8] = 1
			perks.success += 5
		elif matrix[4][7] == 1:
			pass
		elif matrix[4][7] == 2:
			matrix[4][7] = 1
			perks.success += 1
	elif bert_hoz == 5 and bert_vert == 8:
		bert_hoz = 4
		bert_vert = 8
		if matrix[4][8] == 0:
			matrix[3][8] = 1
			matrix[4][8] = 1
			matrix[5][8] = 1
			matrix[4][7] = 1
			matrix[4][9] = 1
			perks.success += 5
		elif matrix[4][8] == 1:
			pass
		elif matrix[4][8] == 2:
			matrix[4][8] = 1
			perks.success += 1
	elif bert_hoz == 5 and bert_vert == 9:
		bert_hoz = 4
		bert_vert = 9
		if matrix[4][9] == 0:
			matrix[3][9] = 1
			matrix[4][9] = 1
			matrix[5][9] = 1
			matrix[4][8] = 1
			perks.success += 5
		elif matrix[4][9] == 1:
			pass
		elif matrix[4][9] == 2:
			matrix[4][9] = 1
			perks.success += 1
			
	elif bert_hoz == 6 and bert_vert == 0:
		bert_hoz = 5
		bert_vert = 0
		if matrix[6][0] == 0:
			matrix[6][0] = 1
			matrix[5][0] = 1
			matrix[5][1] = 1
			matrix[4][0] = 1
			perks.success += 5
		elif matrix[5][0] == 1:
			pass
		elif matrix[5][0] == 2:
			matrix[5][0] = 1
			perks.success += 1
	elif bert_hoz == 6 and bert_vert == 1:
		bert_hoz = 5
		bert_vert = 1
		if matrix[5][1] == 0:
			matrix[5][1] = 1
			matrix[6][1] = 1
			matrix[5][0] = 1
			matrix[5][2] = 1
			matrix[4][1] = 1
			perks.success += 5
		elif matrix[5][1] == 1:
			pass
		elif matrix[5][1] == 2:
			matrix[5][1] = 1
			perks.success += 1
	elif bert_hoz == 6 and bert_vert == 2:
		bert_hoz = 5
		bert_vert = 2
		if matrix[5][2] == 0:
			matrix[4][2] = 1
			matrix[5][2] = 1
			matrix[6][2] = 1
			matrix[5][1] = 1
			matrix[5][3] = 1
			perks.success += 5
		elif matrix[5][2] == 1:
			pass
		elif matrix[5][2] == 2:
			matrix[5][2] = 1
			perks.success += 1
	elif bert_hoz == 6 and bert_vert == 3:
		bert_hoz = 5
		bert_vert = 3
		if matrix[5][3] == 0:
			matrix[4][3] = 1
			matrix[5][3] = 1
			matrix[6][3] = 1
			matrix[5][2] = 1
			matrix[5][4] = 1
			perks.success += 5
		elif matrix[5][3] == 1:
			pass
		elif matrix[5][3] == 2:
			matrix[5][3] = 1
			perks.success += 1
	elif bert_hoz == 6 and bert_vert == 4:
		bert_hoz = 5
		bert_vert = 4
		if matrix[5][4] == 0:
			matrix[4][4] = 1
			matrix[5][4] = 1
			matrix[6][4] = 1
			matrix[5][3] = 1
			matrix[5][5] = 1
			perks.success += 5
		elif matrix[5][4] == 1:
			pass
		elif matrix[5][4] == 2:
			matrix[5][4] = 1
			perks.success += 1
	elif bert_hoz == 6 and bert_vert == 5:
		bert_hoz = 5
		bert_vert = 5
		if matrix[5][5] == 0:
			matrix[4][5] = 1
			matrix[5][5] = 1
			matrix[6][5] = 1
			matrix[5][4] = 1
			matrix[5][6] = 1
			perks.success += 5
		elif matrix[5][5] == 1:
			pass
		elif matrix[5][5] == 2:
			matrix[5][5] = 1
			perks.success += 1
	elif bert_hoz == 6 and bert_vert == 6:
		bert_hoz = 5
		bert_vert = 6
		if matrix[6][6] == 0:
			matrix[4][6] = 1
			matrix[5][6] = 1
			matrix[6][6] = 1
			matrix[5][5] = 1
			matrix[5][7] = 1
			perks.success += 5
		elif matrix[5][6] == 1:
			pass
		elif matrix[5][6] == 2:
			matrix[5][6] = 1
			perks.success += 1
	elif bert_hoz == 6 and bert_vert == 7:
		bert_hoz = 5
		bert_vert = 7
		if matrix[5][7] == 0:
			matrix[4][7] = 1
			matrix[5][7] = 1
			matrix[6][7] = 1
			matrix[5][6] = 1
			matrix[5][8] = 1
			perks.success += 5
		elif matrix[5][7] == 1:
			pass
		elif matrix[5][7] == 2:
			matrix[5][7] = 1
			perks.success += 1
	elif bert_hoz == 6 and bert_vert == 8:
		bert_hoz = 5
		bert_vert = 8
		if matrix[5][8] == 0:
			matrix[4][8] = 1
			matrix[5][8] = 1
			matrix[6][8] = 1
			matrix[5][7] = 1
			matrix[5][9] = 1
			perks.success += 5
		elif matrix[5][8] == 1:
			pass
		elif matrix[5][8] == 2:
			matrix[5][8] = 1
			perks.success += 1
	elif bert_hoz == 6 and bert_vert == 9:
		bert_hoz = 5
		bert_vert = 9
		if matrix[5][9] == 0:
			matrix[4][9] = 1
			matrix[5][9] = 1
			matrix[6][9] = 1
			matrix[5][8] = 1
			perks.success += 5
		elif matrix[5][9] == 1:
			pass
		elif matrix[5][9] == 2:
			matrix[5][9] = 1
			perks.success += 1
			
	elif bert_hoz == 7 and bert_vert == 0:
		bert_hoz = 6
		bert_vert = 0
		if matrix[6][0] == 0:
			matrix[7][0] = 1
			matrix[6][0] = 1
			matrix[6][1] = 1
			matrix[5][0] = 1
			perks.success += 5
		elif matrix[6][0] == 1:
			pass
		elif matrix[6][0] == 2:
			matrix[6][0] = 1
			perks.success += 1
	elif bert_hoz == 7 and bert_vert == 1:
		bert_hoz = 6
		bert_vert = 1
		if matrix[6][1] == 0:
			matrix[6][1] = 1
			matrix[7][1] = 1
			matrix[6][0] = 1
			matrix[6][2] = 1
			matrix[5][1] = 1
			perks.success += 5
		elif matrix[6][1] == 1:
			pass
		elif matrix[6][1] == 2:
			matrix[6][1] = 1
			perks.success += 1
	elif bert_hoz == 7 and bert_vert == 2:
		bert_hoz = 6
		bert_vert = 2
		if matrix[6][2] == 0:
			matrix[6][2] = 1
			matrix[6][2] = 1
			matrix[7][2] = 1
			matrix[6][1] = 1
			matrix[6][3] = 1
			perks.success += 5
		elif matrix[6][2] == 1:
			pass
		elif matrix[6][2] == 2:
			matrix[6][2] = 1
			perks.success += 1
	elif bert_hoz == 7 and bert_vert == 3:
		bert_hoz = 6
		bert_vert = 3
		if matrix[6][3] == 0:
			matrix[5][3] = 1
			matrix[6][3] = 1
			matrix[7][3] = 1
			matrix[6][2] = 1
			matrix[6][4] = 1
			perks.success += 5
		elif matrix[6][3] == 1:
			pass
		elif matrix[6][3] == 2:
			matrix[6][3] = 1
			perks.success += 1
	elif bert_hoz == 7 and bert_vert == 4:
		bert_hoz = 6
		bert_vert = 4
		if matrix[6][4] == 0:
			matrix[5][4] = 1
			matrix[6][4] = 1
			matrix[7][4] = 1
			matrix[6][3] = 1
			matrix[6][5] = 1
			perks.success += 5
		elif matrix[6][4] == 1:
			pass
		elif matrix[6][4] == 2:
			matrix[6][4] = 1
			perks.success += 1
	elif bert_hoz == 7 and bert_vert == 5:
		bert_hoz = 6
		bert_vert = 5
		if matrix[6][5] == 0:
			matrix[5][5] = 1
			matrix[6][5] = 1
			matrix[7][5] = 1
			matrix[6][4] = 1
			matrix[6][6] = 1
			perks.success += 5
		elif matrix[6][5] == 1:
			pass
		elif matrix[6][5] == 2:
			matrix[6][5] = 1
			perks.success += 1
	elif bert_hoz == 7 and bert_vert == 6:
		bert_hoz = 6
		bert_vert = 6
		if matrix[7][6] == 0:
			matrix[5][6] = 1
			matrix[6][6] = 1
			matrix[7][6] = 1
			matrix[6][5] = 1
			matrix[6][7] = 1
			perks.success += 5
		elif matrix[6][6] == 1:
			pass
		elif matrix[6][6] == 2:
			matrix[6][6] = 1
			perks.success += 1
	elif bert_hoz == 7 and bert_vert == 7:
		bert_hoz = 6
		bert_vert = 7
		if matrix[6][7] == 0:
			matrix[5][7] = 1
			matrix[6][7] = 1
			matrix[7][7] = 1
			matrix[6][6] = 1
			matrix[6][8] = 1
			perks.success += 5
		elif matrix[6][7] == 1:
			pass
		elif matrix[6][7] == 2:
			matrix[6][7] = 1
			perks.success += 1
	elif bert_hoz == 7 and bert_vert == 8:
		bert_hoz = 6
		bert_vert = 8
		if matrix[6][8] == 0:
			matrix[5][8] = 1
			matrix[6][8] = 1
			matrix[7][8] = 1
			matrix[6][7] = 1
			matrix[6][9] = 1
			perks.success += 5
		elif matrix[6][8] == 1:
			pass
		elif matrix[6][8] == 2:
			matrix[6][8] = 1
			perks.success += 1
	elif bert_hoz == 7 and bert_vert == 9:
		bert_hoz = 6
		bert_vert = 9
		if matrix[6][9] == 0:
			matrix[5][9] = 1
			matrix[6][9] = 1
			matrix[7][9] = 1
			matrix[6][8] = 1
			perks.success += 5
		elif matrix[6][9] == 1:
			pass
		elif matrix[6][9] == 2:
			matrix[6][9] = 1
			perks.success += 1

	elif bert_hoz == 8 and bert_vert == 0:
		bert_hoz = 7
		bert_vert = 0
		if matrix[7][0] == 0:
			matrix[8][0] = 1
			matrix[7][0] = 1
			matrix[7][1] = 1
			matrix[6][0] = 1
			perks.success += 5
		elif matrix[7][0] == 1:
			pass
		elif matrix[7][0] == 2:
			matrix[7][0] = 1
			perks.success += 1
	elif bert_hoz == 8 and bert_vert == 1:
		bert_hoz = 7
		bert_vert = 1
		if matrix[7][1] == 0:
			matrix[7][1] = 1
			matrix[8][1] = 1
			matrix[7][0] = 1
			matrix[7][2] = 1
			matrix[6][1] = 1
			perks.success += 5
		elif matrix[7][1] == 1:
			pass
		elif matrix[7][1] == 2:
			matrix[7][1] = 1
			perks.success += 1
	elif bert_hoz == 8 and bert_vert == 2:
		bert_hoz = 7
		bert_vert = 2
		if matrix[7][2] == 0:
			matrix[7][2] = 1
			matrix[7][2] = 1
			matrix[8][2] = 1
			matrix[7][1] = 1
			matrix[7][3] = 1
			perks.success += 5
		elif matrix[7][2] == 1:
			pass
		elif matrix[7][2] == 2:
			matrix[7][2] = 1
			perks.success += 1
	elif bert_hoz == 8 and bert_vert == 3:
		bert_hoz = 7
		bert_vert = 3
		if matrix[7][3] == 0:
			matrix[6][3] = 1
			matrix[7][3] = 1
			matrix[8][3] = 1
			matrix[7][2] = 1
			matrix[7][4] = 1
			perks.success += 5
		elif matrix[7][3] == 1:
			pass
		elif matrix[7][3] == 2:
			matrix[7][3] = 1
			perks.success += 1
	elif bert_hoz == 8 and bert_vert == 4:
		bert_hoz = 7
		bert_vert = 4
		if matrix[7][4] == 0:
			matrix[6][4] = 1
			matrix[7][4] = 1
			matrix[8][4] = 1
			matrix[7][3] = 1
			matrix[7][5] = 1
			perks.success += 5
		elif matrix[7][4] == 1:
			pass
		elif matrix[7][4] == 2:
			matrix[7][4] = 1
			perks.success += 1
	elif bert_hoz == 8 and bert_vert == 5:
		bert_hoz = 7
		bert_vert = 5
		if matrix[7][5] == 0:
			matrix[6][5] = 1
			matrix[7][5] = 1
			matrix[8][5] = 1
			matrix[7][4] = 1
			matrix[7][6] = 1
			perks.success += 5
		elif matrix[7][5] == 1:
			pass
		elif matrix[7][5] == 2:
			matrix[7][5] = 1
			perks.success += 1
	elif bert_hoz == 8 and bert_vert == 6:
		bert_hoz = 7
		bert_vert = 6
		if matrix[8][6] == 0:
			matrix[6][6] = 1
			matrix[7][6] = 1
			matrix[8][6] = 1
			matrix[7][5] = 1
			matrix[7][7] = 1
			perks.success += 5
		elif matrix[7][6] == 1:
			pass
		elif matrix[7][6] == 2:
			matrix[7][6] = 1
			perks.success += 1
	elif bert_hoz == 8 and bert_vert == 7:
		bert_hoz = 7
		bert_vert = 7
		if matrix[7][7] == 0:
			matrix[6][7] = 1
			matrix[7][7] = 1
			matrix[8][7] = 1
			matrix[7][6] = 1
			matrix[7][8] = 1
			perks.success += 5
		elif matrix[7][7] == 1:
			pass
		elif matrix[7][7] == 2:
			matrix[7][7] = 1
			perks.success += 1
	elif bert_hoz == 8 and bert_vert == 8:
		bert_hoz = 7
		bert_vert = 8
		if matrix[7][8] == 0:
			matrix[6][8] = 1
			matrix[7][8] = 1
			matrix[8][8] = 1
			matrix[7][7] = 1
			matrix[7][9] = 1
			perks.success += 5
		elif matrix[7][8] == 1:
			pass
		elif matrix[7][8] == 2:
			matrix[7][8] = 1
			perks.success += 1
	elif bert_hoz == 8 and bert_vert == 9:
		bert_hoz = 7
		bert_vert = 9
		if matrix[7][9] == 0:
			matrix[6][9] = 1
			matrix[7][9] = 1
			matrix[8][9] = 1
			matrix[7][8] = 1
			perks.success += 5
		elif matrix[7][9] == 1:
			pass
		elif matrix[7][9] == 2:
			matrix[7][9] = 1
			perks.success += 1

	elif bert_hoz == 9 and bert_vert == 0:
		bert_hoz = 8
		bert_vert = 0
		if matrix[8][0] == 0:
			matrix[9][0] = 1
			matrix[8][0] = 1
			matrix[8][1] = 1
			matrix[7][0] = 1
			perks.success += 5
		elif matrix[8][0] == 1:
			pass
		elif matrix[8][0] == 2:
			matrix[8][0] = 1
			perks.success += 1
	elif bert_hoz == 9 and bert_vert == 1:
		bert_hoz = 8
		bert_vert = 1
		if matrix[8][1] == 0:
			matrix[8][1] = 1
			matrix[9][1] = 1
			matrix[8][0] = 1
			matrix[8][2] = 1
			matrix[7][1] = 1
			perks.success += 5
		elif matrix[8][1] == 1:
			pass
		elif matrix[8][1] == 2:
			matrix[8][1] = 1
			perks.success += 1
	elif bert_hoz == 9 and bert_vert == 2:
		bert_hoz = 8
		bert_vert = 2
		if matrix[8][2] == 0:
			matrix[8][2] = 1
			matrix[8][2] = 1
			matrix[9][2] = 1
			matrix[8][1] = 1
			matrix[8][3] = 1
			perks.success += 5
		elif matrix[8][2] == 1:
			pass
		elif matrix[8][2] == 2:
			matrix[8][2] = 1
			perks.success += 1
	elif bert_hoz == 9 and bert_vert == 3:
		bert_hoz = 8
		bert_vert = 3
		if matrix[8][3] == 0:
			matrix[7][3] = 1
			matrix[8][3] = 1
			matrix[9][3] = 1
			matrix[8][2] = 1
			matrix[8][4] = 1
			perks.success += 5
		elif matrix[8][3] == 1:
			pass
		elif matrix[8][3] == 2:
			matrix[8][3] = 1
			perks.success += 1
	elif bert_hoz == 9 and bert_vert == 4:
		bert_hoz = 8
		bert_vert = 4
		if matrix[8][4] == 0:
			matrix[7][4] = 1
			matrix[8][4] = 1
			matrix[9][4] = 1
			matrix[8][3] = 1
			matrix[8][5] = 1
			perks.success += 5
		elif matrix[8][4] == 1:
			pass
		elif matrix[8][4] == 2:
			matrix[8][4] = 1
			perks.success += 1
	elif bert_hoz == 9 and bert_vert == 5:
		bert_hoz = 8
		bert_vert = 5
		if matrix[8][5] == 0:
			matrix[7][5] = 1
			matrix[8][5] = 1
			matrix[9][5] = 1
			matrix[8][4] = 1
			matrix[8][6] = 1
			perks.success += 5
		elif matrix[8][5] == 1:
			pass
		elif matrix[8][5] == 2:
			matrix[8][5] = 1
			perks.success += 1
	elif bert_hoz == 9 and bert_vert == 6:
		bert_hoz = 8
		bert_vert = 6
		if matrix[9][6] == 0:
			matrix[7][6] = 1
			matrix[8][6] = 1
			matrix[9][6] = 1
			matrix[8][5] = 1
			matrix[8][7] = 1
			perks.success += 5
		elif matrix[8][6] == 1:
			pass
		elif matrix[8][6] == 2:
			matrix[8][6] = 1
			perks.success += 1
	elif bert_hoz == 9 and bert_vert == 7:
		bert_hoz = 8
		bert_vert = 7
		if matrix[8][7] == 0:
			matrix[7][7] = 1
			matrix[8][7] = 1
			matrix[9][7] = 1
			matrix[8][6] = 1
			matrix[8][8] = 1
			perks.success += 5
		elif matrix[8][7] == 1:
			pass
		elif matrix[8][7] == 2:
			matrix[8][7] = 1
			perks.success += 1
	elif bert_hoz == 9 and bert_vert == 8:
		bert_hoz = 8
		bert_vert = 8
		if matrix[8][8] == 0:
			matrix[7][8] = 1
			matrix[8][8] = 1
			matrix[9][8] = 1
			matrix[8][7] = 1
			matrix[8][9] = 1
			perks.success += 5
		elif matrix[8][8] == 1:
			pass
		elif matrix[8][8] == 2:
			matrix[8][8] = 1
			perks.success += 1
	elif bert_hoz == 9 and bert_vert == 9:
		bert_hoz = 8
		bert_vert = 9
		if matrix[8][9] == 0:
			matrix[7][9] = 1
			matrix[8][9] = 1
			matrix[9][9] = 1
			matrix[8][8] = 1
			perks.success += 5
		elif matrix[8][9] == 1:
			pass
		elif matrix[8][9] == 2:
			matrix[8][9] = 1
			perks.success += 1

	get_node("left_timer").start()

func move_down():
	if bert_hoz == 0 and bert_vert == 0:
		bert_hoz = 0
		bert_vert = 1
		if matrix[0][1] == 0:
			matrix[0][1] = 1
			matrix[0][0] = 1
			matrix[1][1] = 1
			matrix[0][2] = 1
			perks.success += 5
		elif matrix[0][1] == 1:
			pass
		elif matrix[0][1] == 1:
			matrix[0][1] = 1
			perks.success += 1
	elif bert_hoz == 0 and bert_vert == 1:
		bert_hoz = 0
		bert_vert = 2
		if matrix[0][2] == 0:
			matrix[0][2] = 1
			matrix[1][2] = 1
			matrix[0][3] = 1
			matrix[0][1] = 1
			perks.success += 5
		elif matrix[0][2] == 1:
			pass
		elif matrix[0][2] == 2:
			matrix[0][2] = 1
			perks.success += 1
	elif bert_hoz == 0 and bert_vert == 2:
		bert_hoz = 0
		bert_vert = 3
		if matrix[0][3] == 0:
			matrix[0][3] = 1
			matrix[0][2] = 1
			matrix[1][3] = 1
			matrix[0][4] = 1
			perks.success += 5
		elif matrix[0][3] == 1:
			pass
		elif matrix[0][3] == 2:
			matrix[0][3] = 1
			perks.success += 1
	elif bert_hoz == 0 and bert_vert == 3:
		bert_hoz = 0
		bert_vert = 4
		if matrix[0][4] == 0:
			matrix[0][4] = 1
			matrix[0][3] = 1
			matrix[0][5] = 1
			matrix[1][4] = 1
			perks.success += 5
		elif matrix[0][4] == 1:
			pass
		elif matrix[0][4] == 2:
			matrix[0][4] = 1
			perks.success += 1
	elif bert_hoz == 0 and bert_vert == 4:
		bert_hoz = 0
		bert_vert = 5
		if matrix[0][5] == 0:
			matrix[0][5] = 1
			matrix[0][4] = 1
			matrix[0][6] = 1
			matrix[1][5] = 1
			perks.success += 5
		elif matrix[0][5] == 1:
			pass
		elif matrix[0][5] == 2:
			matrix[0][5] = 1
			perks.success += 1
	elif bert_hoz == 0 and bert_vert == 5:
		bert_hoz = 0
		bert_vert = 6
		if matrix[0][6] == 0:
			matrix[0][6] = 1
			matrix[0][5] = 1
			matrix[0][7] = 1
			matrix[1][6] = 1
			perks.success += 5
		elif matrix[0][6] == 1:
			pass
		elif matrix[0][6] == 2:
			matrix[0][6] = 1
			perks.success += 1
	elif bert_hoz == 0 and bert_vert == 6:
		bert_hoz = 0
		bert_vert = 7
		if matrix[0][7] == 0:
			matrix[0][7] = 1
			matrix[0][6] = 1
			matrix[0][8] = 1
			matrix[1][7] = 1
			perks.success += 5
		elif matrix[0][7] == 1:
			pass
		elif matrix[0][7] == 2:
			matrix[0][7] = 1
			perks.success += 1
	elif bert_hoz == 0 and bert_vert == 7:
		bert_hoz = 0
		bert_vert = 8
		if matrix[0][8] == 0:
			matrix[0][8] = 1
			matrix[0][7] = 1
			matrix[0][9] = 1
			matrix[1][8] = 1
			perks.success += 5
		elif matrix[0][8] == 1:
			pass
		elif matrix[0][8] == 2:
			matrix[0][8] = 1
			perks.success += 1
	elif bert_hoz == 0 and bert_vert == 8:
		bert_hoz = 0
		bert_vert = 9
		if matrix[0][9] == 0:
			matrix[0][9] = 1
			matrix[0][8] = 1
			matrix[1][9] = 1
			perks.success += 5
		elif matrix[0][9] == 1:
			pass
		elif matrix[0][9] == 2:
			matrix[0][9] = 1
			perks.success += 1
	elif bert_hoz == 0 and bert_vert == 9:
		pass
		
	elif bert_hoz == 1 and bert_vert == 0:
		bert_hoz = 1
		bert_vert = 1
		if matrix[1][1] == 0:
			matrix[0][1] = 1
			matrix[1][1] = 1
			matrix[1][0] = 1
			matrix[2][1] = 1
			matrix[1][2] = 1
			perks.success += 5
		elif matrix[1][1] == 1:
			pass
		elif matrix[1][1] == 1:
			matrix[1][1] = 1
			perks.success += 1
	elif bert_hoz == 1 and bert_vert == 1:
		bert_hoz = 1
		bert_vert = 2
		if matrix[1][2] == 0:
			matrix[0][2] = 1
			matrix[1][2] = 1
			matrix[2][2] = 1
			matrix[1][3] = 1
			matrix[1][1] = 1
			perks.success += 5
		elif matrix[1][2] == 1:
			pass
		elif matrix[1][2] == 2:
			matrix[1][2] = 1
			perks.success += 1
	elif bert_hoz == 1 and bert_vert == 2:
		bert_hoz = 1
		bert_vert = 3
		if matrix[1][3] == 0:
			matrix[0][3] = 1
			matrix[1][3] = 1
			matrix[1][2] = 1
			matrix[2][3] = 1
			matrix[1][4] = 1
			perks.success += 5
		elif matrix[1][3] == 1:
			pass
		elif matrix[1][3] == 2:
			matrix[1][3] = 1
			perks.success += 1
	elif bert_hoz == 1 and bert_vert == 3:
		bert_hoz = 1
		bert_vert = 4
		if matrix[1][4] == 0:
			matrix[0][4] = 1
			matrix[1][4] = 1
			matrix[1][3] = 1
			matrix[1][5] = 1
			matrix[2][4] = 1
			perks.success += 5
		elif matrix[1][4] == 1:
			pass
		elif matrix[1][4] == 2:
			matrix[1][4] = 1
			perks.success += 1
	elif bert_hoz == 1 and bert_vert == 4:
		bert_hoz = 1
		bert_vert = 5
		if matrix[1][5] == 0:
			matrix[0][5] = 1
			matrix[1][5] = 1
			matrix[1][4] = 1
			matrix[1][6] = 1
			matrix[2][5] = 1
			perks.success += 5
		elif matrix[1][5] == 1:
			pass
		elif matrix[1][5] == 2:
			matrix[1][5] = 1
			perks.success += 1
	elif bert_hoz == 1 and bert_vert == 5:
		bert_hoz = 1
		bert_vert = 6
		if matrix[1][6] == 0:
			matrix[0][6] = 1
			matrix[1][6] = 1
			matrix[1][5] = 1
			matrix[1][7] = 1
			matrix[2][6] = 1
			perks.success += 5
		elif matrix[1][6] == 1:
			pass
		elif matrix[1][6] == 2:
			matrix[1][6] = 1
			perks.success += 1
	elif bert_hoz == 1 and bert_vert == 6:
		bert_hoz = 1
		bert_vert = 7
		if matrix[1][7] == 0:
			matrix[0][7] = 1
			matrix[1][7] = 1
			matrix[1][6] = 1
			matrix[1][8] = 1
			matrix[2][7] = 1
			perks.success += 5
		elif matrix[1][7] == 1:
			pass
		elif matrix[1][7] == 2:
			matrix[1][7] = 1
			perks.success += 1
	elif bert_hoz == 1 and bert_vert == 7:
		bert_hoz = 1
		bert_vert = 8
		if matrix[1][8] == 0:
			matrix[0][8] = 1
			matrix[1][8] = 1
			matrix[1][7] = 1
			matrix[1][9] = 1
			matrix[2][8] = 1
			perks.success += 5
		elif matrix[1][8] == 1:
			pass
		elif matrix[1][8] == 2:
			matrix[1][8] = 1
			perks.success += 1
	elif bert_hoz == 1 and bert_vert == 8:
		bert_hoz = 1
		bert_vert = 9
		if matrix[1][9] == 0:
			matrix[0][9] = 1
			matrix[1][9] = 1
			matrix[1][8] = 1
			matrix[2][9] = 1
			perks.success += 5
		elif matrix[1][9] == 1:
			pass
		elif matrix[1][9] == 2:
			matrix[1][9] = 1
			perks.success += 1
	elif bert_hoz == 1 and bert_vert == 9:
		pass
	
	elif bert_hoz == 2 and bert_vert == 0:
		bert_hoz = 2
		bert_vert = 1
		if matrix[2][1] == 0:
			matrix[1][1] = 1
			matrix[2][1] = 1
			matrix[2][0] = 1
			matrix[3][1] = 1
			matrix[2][2] = 1
			perks.success += 5
		elif matrix[2][1] == 1:
			pass
		elif matrix[2][1] == 1:
			matrix[2][1] = 1
			perks.success += 1
	elif bert_hoz == 2 and bert_vert == 1:
		bert_hoz = 2
		bert_vert = 2
		if matrix[2][2] == 0:
			matrix[1][2] = 1
			matrix[2][2] = 1
			matrix[3][2] = 1
			matrix[2][3] = 1
			matrix[2][1] = 1
			perks.success += 5
		elif matrix[2][2] == 1:
			pass
		elif matrix[2][2] == 2:
			matrix[2][2] = 1
			perks.success += 1
	elif bert_hoz == 2 and bert_vert == 2:
		bert_hoz = 2
		bert_vert = 3
		if matrix[2][3] == 0:
			matrix[1][3] = 1
			matrix[2][3] = 1
			matrix[2][2] = 1
			matrix[3][3] = 1
			matrix[2][4] = 1
			perks.success += 5
		elif matrix[2][3] == 1:
			pass
		elif matrix[2][3] == 2:
			matrix[2][3] = 1
			perks.success += 1
	elif bert_hoz == 2 and bert_vert == 3:
		bert_hoz = 2
		bert_vert = 4
		if matrix[2][4] == 0:
			matrix[1][4] = 1
			matrix[2][4] = 1
			matrix[2][3] = 1
			matrix[2][5] = 1
			matrix[3][4] = 1
			perks.success += 5
		elif matrix[2][4] == 1:
			pass
		elif matrix[2][4] == 2:
			matrix[2][4] = 1
			perks.success += 1
	elif bert_hoz == 2 and bert_vert == 4:
		bert_hoz = 2
		bert_vert = 5
		if matrix[2][5] == 0:
			matrix[1][5] = 1
			matrix[2][5] = 1
			matrix[2][4] = 1
			matrix[2][6] = 1
			matrix[3][5] = 1
			perks.success += 5
		elif matrix[2][5] == 1:
			pass
		elif matrix[2][5] == 2:
			matrix[2][5] = 1
			perks.success += 1
	elif bert_hoz == 2 and bert_vert == 5:
		bert_hoz = 2
		bert_vert = 6
		if matrix[2][6] == 0:
			matrix[1][6] = 1
			matrix[2][6] = 1
			matrix[2][5] = 1
			matrix[2][7] = 1
			matrix[3][6] = 1
			perks.success += 5
		elif matrix[2][6] == 1:
			pass
		elif matrix[2][6] == 2:
			matrix[2][6] = 1
			perks.success += 1
	elif bert_hoz == 2 and bert_vert == 6:
		bert_hoz = 2
		bert_vert = 7
		if matrix[2][7] == 0:
			matrix[1][7] = 1
			matrix[2][7] = 1
			matrix[2][6] = 1
			matrix[2][8] = 1
			matrix[3][7] = 1
			perks.success += 5
		elif matrix[2][7] == 1:
			pass
		elif matrix[2][7] == 2:
			matrix[2][7] = 1
			perks.success += 1
	elif bert_hoz == 2 and bert_vert == 7:
		bert_hoz = 2
		bert_vert = 8
		if matrix[2][8] == 0:
			matrix[1][8] = 1
			matrix[2][8] = 1
			matrix[2][7] = 1
			matrix[2][9] = 1
			matrix[3][8] = 1
			perks.success += 5
		elif matrix[2][8] == 1:
			pass
		elif matrix[2][8] == 2:
			matrix[2][8] = 1
			perks.success += 1
	elif bert_hoz == 2 and bert_vert == 8:
		bert_hoz = 2
		bert_vert = 9
		if matrix[2][9] == 0:
			matrix[1][9] = 1
			matrix[2][9] = 1
			matrix[2][8] = 1
			matrix[3][9] = 1
			perks.success += 5
		elif matrix[2][9] == 1:
			pass
		elif matrix[2][9] == 2:
			matrix[2][9] = 1
			perks.success += 1
	elif bert_hoz == 2 and bert_vert == 9:
		pass


	elif bert_hoz == 3 and bert_vert == 0:
		bert_hoz = 3
		bert_vert = 1
		if matrix[3][1] == 0:
			matrix[2][1] = 1
			matrix[3][1] = 1
			matrix[3][0] = 1
			matrix[4][1] = 1
			matrix[3][2] = 1
			perks.success += 5
		elif matrix[3][1] == 1:
			pass
		elif matrix[3][1] == 1:
			matrix[3][1] = 1
			perks.success += 1
	elif bert_hoz == 3 and bert_vert == 1:
		bert_hoz = 3
		bert_vert = 2
		if matrix[3][2] == 0:
			matrix[2][2] = 1
			matrix[3][2] = 1
			matrix[4][2] = 1
			matrix[3][3] = 1
			matrix[3][1] = 1
			perks.success += 5
		elif matrix[3][2] == 1:
			pass
		elif matrix[3][2] == 2:
			matrix[3][2] = 1
			perks.success += 1
	elif bert_hoz == 3 and bert_vert == 2:
		bert_hoz = 3
		bert_vert = 3
		if matrix[3][3] == 0:
			matrix[2][3] = 1
			matrix[3][3] = 1
			matrix[3][2] = 1
			matrix[4][3] = 1
			matrix[3][4] = 1
			perks.success += 5
		elif matrix[3][3] == 1:
			pass
		elif matrix[3][3] == 2:
			matrix[3][3] = 1
			perks.success += 1
	elif bert_hoz == 3 and bert_vert == 3:
		bert_hoz = 3
		bert_vert = 4
		if matrix[3][4] == 0:
			matrix[2][4] = 1
			matrix[3][4] = 1
			matrix[3][3] = 1
			matrix[3][5] = 1
			matrix[4][4] = 1
			perks.success += 5
		elif matrix[3][4] == 1:
			pass
		elif matrix[3][4] == 2:
			matrix[3][4] = 1
			perks.success += 1
	elif bert_hoz == 3 and bert_vert == 4:
		bert_hoz = 3
		bert_vert = 5
		if matrix[3][5] == 0:
			matrix[2][5] = 1
			matrix[3][5] = 1
			matrix[3][4] = 1
			matrix[3][6] = 1
			matrix[4][5] = 1
			perks.success += 5
		elif matrix[3][5] == 1:
			pass
		elif matrix[3][5] == 2:
			matrix[3][5] = 1
			perks.success += 1
	elif bert_hoz == 3 and bert_vert == 5:
		bert_hoz = 3
		bert_vert = 6
		if matrix[3][6] == 0:
			matrix[2][6] = 1
			matrix[3][6] = 1
			matrix[3][5] = 1
			matrix[3][7] = 1
			matrix[4][6] = 1
			perks.success += 5
		elif matrix[3][6] == 1:
			pass
		elif matrix[3][6] == 2:
			matrix[3][6] = 1
			perks.success += 1
	elif bert_hoz == 3 and bert_vert == 6:
		bert_hoz = 3
		bert_vert = 7
		if matrix[3][7] == 0:
			matrix[2][7] = 1
			matrix[3][7] = 1
			matrix[3][6] = 1
			matrix[3][8] = 1
			matrix[4][7] = 1
			perks.success += 5
		elif matrix[3][7] == 1:
			pass
		elif matrix[3][7] == 2:
			matrix[3][7] = 1
			perks.success += 1
	elif bert_hoz == 3 and bert_vert == 7:
		bert_hoz = 3
		bert_vert = 8
		if matrix[3][8] == 0:
			matrix[2][8] = 1
			matrix[3][8] = 1
			matrix[3][7] = 1
			matrix[3][9] = 1
			matrix[4][8] = 1
			perks.success += 5
		elif matrix[3][8] == 1:
			pass
		elif matrix[3][8] == 2:
			matrix[3][8] = 1
			perks.success += 1
	elif bert_hoz == 3 and bert_vert == 8:
		bert_hoz = 3
		bert_vert = 9
		if matrix[3][9] == 0:
			matrix[2][9] = 1
			matrix[3][9] = 1
			matrix[3][8] = 1
			matrix[4][9] = 1
			perks.success += 5
		elif matrix[3][9] == 1:
			pass
		elif matrix[3][9] == 2:
			matrix[3][9] = 1
			perks.success += 1
	elif bert_hoz == 3 and bert_vert == 9:
		pass

	elif bert_hoz == 4 and bert_vert == 0:
		bert_hoz = 4
		bert_vert = 1
		if matrix[4][1] == 0:
			matrix[3][1] = 1
			matrix[4][1] = 1
			matrix[4][0] = 1
			matrix[5][1] = 1
			matrix[4][2] = 1
			perks.success += 5
		elif matrix[4][1] == 1:
			pass
		elif matrix[4][1] == 1:
			matrix[4][1] = 1
			perks.success += 1
	elif bert_hoz == 4 and bert_vert == 1:
		bert_hoz = 4
		bert_vert = 2
		if matrix[4][2] == 0:
			matrix[3][2] = 1
			matrix[4][2] = 1
			matrix[5][2] = 1
			matrix[4][3] = 1
			matrix[4][1] = 1
			perks.success += 5
		elif matrix[4][2] == 1:
			pass
		elif matrix[4][2] == 2:
			matrix[4][2] = 1
			perks.success += 1
	elif bert_hoz == 4 and bert_vert == 2:
		bert_hoz = 4
		bert_vert = 3
		if matrix[4][3] == 0:
			matrix[3][3] = 1
			matrix[4][3] = 1
			matrix[4][2] = 1
			matrix[5][3] = 1
			matrix[4][4] = 1
			perks.success += 5
		elif matrix[4][3] == 1:
			pass
		elif matrix[4][3] == 2:
			matrix[4][3] = 1
			perks.success += 1
	elif bert_hoz == 4 and bert_vert == 3:
		bert_hoz = 4
		bert_vert = 4
		if matrix[4][4] == 0:
			matrix[3][4] = 1
			matrix[4][4] = 1
			matrix[4][3] = 1
			matrix[4][5] = 1
			matrix[5][4] = 1
			perks.success += 5
		elif matrix[4][4] == 1:
			pass
		elif matrix[4][4] == 2:
			matrix[4][4] = 1
			perks.success += 1
	elif bert_hoz == 4 and bert_vert == 4:
		bert_hoz = 4
		bert_vert = 5
		if matrix[4][5] == 0:
			matrix[3][5] = 1
			matrix[4][5] = 1
			matrix[4][4] = 1
			matrix[4][6] = 1
			matrix[5][5] = 1
			perks.success += 5
		elif matrix[4][5] == 1:
			pass
		elif matrix[4][5] == 2:
			matrix[4][5] = 1
			perks.success += 1
	elif bert_hoz == 4 and bert_vert == 5:
		bert_hoz = 4
		bert_vert = 6
		if matrix[4][6] == 0:
			matrix[3][6] = 1
			matrix[4][6] = 1
			matrix[4][5] = 1
			matrix[4][7] = 1
			matrix[5][6] = 1
			perks.success += 5
		elif matrix[4][6] == 1:
			pass
		elif matrix[4][6] == 2:
			matrix[4][6] = 1
			perks.success += 1
	elif bert_hoz == 4 and bert_vert == 6:
		bert_hoz = 4
		bert_vert = 7
		if matrix[4][7] == 0:
			matrix[3][7] = 1
			matrix[4][7] = 1
			matrix[4][6] = 1
			matrix[4][8] = 1
			matrix[5][7] = 1
			perks.success += 5
		elif matrix[4][7] == 1:
			pass
		elif matrix[4][7] == 2:
			matrix[4][7] = 1
			perks.success += 1
	elif bert_hoz == 4 and bert_vert == 7:
		bert_hoz = 4
		bert_vert = 8
		if matrix[4][8] == 0:
			matrix[3][8] = 1
			matrix[4][8] = 1
			matrix[4][7] = 1
			matrix[4][9] = 1
			matrix[5][8] = 1
			perks.success += 5
		elif matrix[4][8] == 1:
			pass
		elif matrix[4][8] == 2:
			matrix[4][8] = 1
			perks.success += 1
	elif bert_hoz == 4 and bert_vert == 8:
		bert_hoz = 4
		bert_vert = 9
		if matrix[4][9] == 0:
			matrix[3][9] = 1
			matrix[4][9] = 1
			matrix[4][8] = 1
			matrix[5][9] = 1
			perks.success += 5
		elif matrix[4][9] == 1:
			pass
		elif matrix[4][9] == 2:
			matrix[4][9] = 1
			perks.success += 1
	elif bert_hoz == 4 and bert_vert == 9:
		pass
	
		
	elif bert_hoz == 5 and bert_vert == 0:
		bert_hoz = 5
		bert_vert = 1
		if matrix[5][1] == 0:
			matrix[4][1] = 1
			matrix[5][1] = 1
			matrix[5][0] = 1
			matrix[6][1] = 1
			matrix[5][2] = 1
			perks.success += 5
		elif matrix[5][1] == 1:
			pass
		elif matrix[5][1] == 1:
			matrix[5][1] = 1
			perks.success += 1
	elif bert_hoz == 5 and bert_vert == 1:
		bert_hoz = 5
		bert_vert = 2
		if matrix[5][2] == 0:
			matrix[4][2] = 1
			matrix[5][2] = 1
			matrix[6][2] = 1
			matrix[5][3] = 1
			matrix[5][1] = 1
			perks.success += 5
		elif matrix[5][2] == 1:
			pass
		elif matrix[5][2] == 2:
			matrix[5][2] = 1
			perks.success += 1
	elif bert_hoz == 5 and bert_vert == 2:
		bert_hoz = 5
		bert_vert = 3
		if matrix[5][3] == 0:
			matrix[4][3] = 1
			matrix[5][3] = 1
			matrix[5][2] = 1
			matrix[6][3] = 1
			matrix[5][4] = 1
			perks.success += 5
		elif matrix[5][3] == 1:
			pass
		elif matrix[5][3] == 2:
			matrix[5][3] = 1
			perks.success += 1
	elif bert_hoz == 5 and bert_vert == 3:
		bert_hoz = 5
		bert_vert = 4
		if matrix[5][4] == 0:
			matrix[4][4] = 1
			matrix[5][4] = 1
			matrix[5][3] = 1
			matrix[5][5] = 1
			matrix[6][4] = 1
			perks.success += 5
		elif matrix[5][4] == 1:
			pass
		elif matrix[5][4] == 2:
			matrix[5][4] = 1
			perks.success += 1
	elif bert_hoz == 5 and bert_vert == 4:
		bert_hoz = 5
		bert_vert = 5
		if matrix[5][5] == 0:
			matrix[4][5] = 1
			matrix[5][5] = 1
			matrix[5][4] = 1
			matrix[5][6] = 1
			matrix[6][5] = 1
			perks.success += 5
		elif matrix[5][5] == 1:
			pass
		elif matrix[5][5] == 2:
			matrix[5][5] = 1
			perks.success += 1
	elif bert_hoz == 5 and bert_vert == 5:
		bert_hoz = 5
		bert_vert = 6
		if matrix[5][6] == 0:
			matrix[4][6] = 1
			matrix[5][6] = 1
			matrix[5][5] = 1
			matrix[5][7] = 1
			matrix[6][6] = 1
			perks.success += 5
		elif matrix[5][6] == 1:
			pass
		elif matrix[5][6] == 2:
			matrix[5][6] = 1
			perks.success += 1
	elif bert_hoz == 5 and bert_vert == 6:
		bert_hoz = 5
		bert_vert = 7
		if matrix[5][7] == 0:
			matrix[4][7] = 1
			matrix[5][7] = 1
			matrix[5][6] = 1
			matrix[5][8] = 1
			matrix[6][7] = 1
			perks.success += 5
		elif matrix[5][7] == 1:
			pass
		elif matrix[5][7] == 2:
			matrix[5][7] = 1
			perks.success += 1
	elif bert_hoz == 5 and bert_vert == 7:
		bert_hoz = 5
		bert_vert = 8
		if matrix[5][8] == 0:
			matrix[4][8] = 1
			matrix[5][8] = 1
			matrix[5][7] = 1
			matrix[5][9] = 1
			matrix[6][8] = 1
			perks.success += 5
		elif matrix[5][8] == 1:
			pass
		elif matrix[5][8] == 2:
			matrix[5][8] = 1
			perks.success += 1
	elif bert_hoz == 5 and bert_vert == 8:
		bert_hoz = 5
		bert_vert = 9
		if matrix[5][9] == 0:
			matrix[4][9] = 1
			matrix[5][9] = 1
			matrix[5][8] = 1
			matrix[6][9] = 1
			perks.success += 5
		elif matrix[5][9] == 1:
			pass
		elif matrix[5][9] == 2:
			matrix[5][9] = 1
			perks.success += 1
	elif bert_hoz == 5 and bert_vert == 9:
		pass


	elif bert_hoz == 6 and bert_vert == 0:
		bert_hoz = 6
		bert_vert = 1
		if matrix[6][1] == 0:
			matrix[5][1] = 1
			matrix[6][1] = 1
			matrix[6][0] = 1
			matrix[7][1] = 1
			matrix[6][2] = 1
			perks.success += 5
		elif matrix[6][1] == 1:
			pass
		elif matrix[6][1] == 1:
			matrix[6][1] = 1
			perks.success += 1
	elif bert_hoz == 6 and bert_vert == 1:
		bert_hoz = 6
		bert_vert = 2
		if matrix[6][2] == 0:
			matrix[5][2] = 1
			matrix[6][2] = 1
			matrix[7][2] = 1
			matrix[6][3] = 1
			matrix[6][1] = 1
			perks.success += 5
		elif matrix[6][2] == 1:
			pass
		elif matrix[6][2] == 2:
			matrix[6][2] = 1
			perks.success += 1
	elif bert_hoz == 6 and bert_vert == 2:
		bert_hoz = 6
		bert_vert = 3
		if matrix[6][3] == 0:
			matrix[5][3] = 1
			matrix[6][3] = 1
			matrix[6][2] = 1
			matrix[7][3] = 1
			matrix[6][4] = 1
			perks.success += 5
		elif matrix[6][3] == 1:
			pass
		elif matrix[6][3] == 2:
			matrix[6][3] = 1
			perks.success += 1
	elif bert_hoz == 6 and bert_vert == 3:
		bert_hoz = 6
		bert_vert = 4
		if matrix[6][4] == 0:
			matrix[5][4] = 1
			matrix[6][4] = 1
			matrix[6][3] = 1
			matrix[6][5] = 1
			matrix[7][4] = 1
			perks.success += 5
		elif matrix[6][4] == 1:
			pass
		elif matrix[6][4] == 2:
			matrix[6][4] = 1
			perks.success += 1
	elif bert_hoz == 6 and bert_vert == 4:
		bert_hoz = 6
		bert_vert = 5
		if matrix[6][5] == 0:
			matrix[5][5] = 1
			matrix[6][5] = 1
			matrix[6][4] = 1
			matrix[6][6] = 1
			matrix[7][5] = 1
			perks.success += 5
		elif matrix[6][5] == 1:
			pass
		elif matrix[6][5] == 2:
			matrix[6][5] = 1
			perks.success += 1
	elif bert_hoz == 6 and bert_vert == 5:
		bert_hoz = 6
		bert_vert = 6
		if matrix[6][6] == 0:
			matrix[5][6] = 1
			matrix[6][6] = 1
			matrix[6][5] = 1
			matrix[6][7] = 1
			matrix[7][6] = 1
			perks.success += 5
		elif matrix[6][6] == 1:
			pass
		elif matrix[6][6] == 2:
			matrix[6][6] = 1
			perks.success += 1
	elif bert_hoz == 6 and bert_vert == 6:
		bert_hoz = 6
		bert_vert = 7
		if matrix[6][7] == 0:
			matrix[5][7] = 1
			matrix[6][7] = 1
			matrix[6][6] = 1
			matrix[6][8] = 1
			matrix[7][7] = 1
			perks.success += 5
		elif matrix[6][7] == 1:
			pass
		elif matrix[6][7] == 2:
			matrix[6][7] = 1
			perks.success += 1
	elif bert_hoz == 6 and bert_vert == 7:
		bert_hoz = 6
		bert_vert = 8
		if matrix[6][8] == 0:
			matrix[5][8] = 1
			matrix[6][8] = 1
			matrix[6][7] = 1
			matrix[6][9] = 1
			matrix[7][8] = 1
			perks.success += 5
		elif matrix[6][8] == 1:
			pass
		elif matrix[6][8] == 2:
			matrix[6][8] = 1
			perks.success += 1
	elif bert_hoz == 6 and bert_vert == 8:
		bert_hoz = 6
		bert_vert = 9
		if matrix[6][9] == 0:
			matrix[5][9] = 1
			matrix[6][9] = 1
			matrix[6][8] = 1
			matrix[7][9] = 1
			perks.success += 5
		elif matrix[6][9] == 1:
			pass
		elif matrix[6][9] == 2:
			matrix[6][9] = 1
			perks.success += 1
	elif bert_hoz == 6 and bert_vert == 9:
		pass

	elif bert_hoz == 7 and bert_vert == 0:
		bert_hoz = 7
		bert_vert = 1
		if matrix[7][1] == 0:
			matrix[6][1] = 1
			matrix[7][1] = 1
			matrix[7][0] = 1
			matrix[8][1] = 1
			matrix[7][2] = 1
			perks.success += 5
		elif matrix[7][1] == 1:
			pass
		elif matrix[7][1] == 1:
			matrix[7][1] = 1
			perks.success += 1
	elif bert_hoz == 7 and bert_vert == 1:
		bert_hoz = 7
		bert_vert = 2
		if matrix[7][2] == 0:
			matrix[6][2] = 1
			matrix[7][2] = 1
			matrix[8][2] = 1
			matrix[7][3] = 1
			matrix[7][1] = 1
			perks.success += 5
		elif matrix[7][2] == 1:
			pass
		elif matrix[7][2] == 2:
			matrix[7][2] = 1
			perks.success += 1
	elif bert_hoz == 7 and bert_vert == 2:
		bert_hoz = 7
		bert_vert = 3
		if matrix[7][3] == 0:
			matrix[6][3] = 1
			matrix[7][3] = 1
			matrix[7][2] = 1
			matrix[8][3] = 1
			matrix[7][4] = 1
			perks.success += 5
		elif matrix[7][3] == 1:
			pass
		elif matrix[7][3] == 2:
			matrix[7][3] = 1
			perks.success += 1
	elif bert_hoz == 7 and bert_vert == 3:
		bert_hoz = 7
		bert_vert = 4
		if matrix[7][4] == 0:
			matrix[6][4] = 1
			matrix[7][4] = 1
			matrix[7][3] = 1
			matrix[7][5] = 1
			matrix[8][4] = 1
			perks.success += 5
		elif matrix[7][4] == 1:
			pass
		elif matrix[7][4] == 2:
			matrix[7][4] = 1
			perks.success += 1
	elif bert_hoz == 7 and bert_vert == 4:
		bert_hoz = 7
		bert_vert = 5
		if matrix[7][5] == 0:
			matrix[6][5] = 1
			matrix[7][5] = 1
			matrix[7][4] = 1
			matrix[7][6] = 1
			matrix[8][5] = 1
			perks.success += 5
		elif matrix[7][5] == 1:
			pass
		elif matrix[7][5] == 2:
			matrix[7][5] = 1
			perks.success += 1
	elif bert_hoz == 7 and bert_vert == 5:
		bert_hoz = 7
		bert_vert = 6
		if matrix[7][6] == 0:
			matrix[6][6] = 1
			matrix[7][6] = 1
			matrix[7][5] = 1
			matrix[7][7] = 1
			matrix[8][6] = 1
			perks.success += 5
		elif matrix[7][6] == 1:
			pass
		elif matrix[7][6] == 2:
			matrix[7][6] = 1
			perks.success += 1
	elif bert_hoz == 7 and bert_vert == 6:
		bert_hoz = 7
		bert_vert = 7
		if matrix[7][7] == 0:
			matrix[6][7] = 1
			matrix[7][7] = 1
			matrix[7][6] = 1
			matrix[7][8] = 1
			matrix[8][7] = 1
			perks.success += 5
		elif matrix[7][7] == 1:
			pass
		elif matrix[7][7] == 2:
			matrix[7][7] = 1
			perks.success += 1
	elif bert_hoz == 7 and bert_vert == 7:
		bert_hoz = 7
		bert_vert = 8
		if matrix[7][8] == 0:
			matrix[6][8] = 1
			matrix[7][8] = 1
			matrix[7][7] = 1
			matrix[7][9] = 1
			matrix[8][8] = 1
			perks.success += 5
		elif matrix[7][8] == 1:
			pass
		elif matrix[7][8] == 2:
			matrix[7][8] = 1
			perks.success += 1
	elif bert_hoz == 7 and bert_vert == 8:
		bert_hoz = 7
		bert_vert = 9
		if matrix[7][9] == 0:
			matrix[6][9] = 1
			matrix[7][9] = 1
			matrix[7][8] = 1
			matrix[8][9] = 1
			perks.success += 5
		elif matrix[7][9] == 1:
			pass
		elif matrix[7][9] == 2:
			matrix[7][9] = 1
			perks.success += 1
	elif bert_hoz == 7 and bert_vert == 9:
		pass

	elif bert_hoz == 8 and bert_vert == 0:
		bert_hoz = 8
		bert_vert = 1
		if matrix[8][1] == 0:
			matrix[7][1] = 1
			matrix[8][1] = 1
			matrix[8][0] = 1
			matrix[9][1] = 1
			matrix[8][2] = 1
			perks.success += 5
		elif matrix[8][1] == 1:
			pass
		elif matrix[8][1] == 1:
			matrix[8][1] = 1
			perks.success += 1
	elif bert_hoz == 8 and bert_vert == 1:
		bert_hoz = 8
		bert_vert = 2
		if matrix[8][2] == 0:
			matrix[7][2] = 1
			matrix[8][2] = 1
			matrix[9][2] = 1
			matrix[8][3] = 1
			matrix[8][1] = 1
			perks.success += 5
		elif matrix[8][2] == 1:
			pass
		elif matrix[8][2] == 2:
			matrix[8][2] = 1
			perks.success += 1
	elif bert_hoz == 8 and bert_vert == 2:
		bert_hoz = 8
		bert_vert = 3
		if matrix[8][3] == 0:
			matrix[7][3] = 1
			matrix[8][3] = 1
			matrix[8][2] = 1
			matrix[9][3] = 1
			matrix[8][4] = 1
			perks.success += 5
		elif matrix[8][3] == 1:
			pass
		elif matrix[8][3] == 2:
			matrix[8][3] = 1
			perks.success += 1
	elif bert_hoz == 8 and bert_vert == 3:
		bert_hoz = 8
		bert_vert = 4
		if matrix[8][4] == 0:
			matrix[7][4] = 1
			matrix[8][4] = 1
			matrix[8][3] = 1
			matrix[8][5] = 1
			matrix[9][4] = 1
			perks.success += 5
		elif matrix[8][4] == 1:
			pass
		elif matrix[8][4] == 2:
			matrix[8][4] = 1
			perks.success += 1
	elif bert_hoz == 8 and bert_vert == 4:
		bert_hoz = 8
		bert_vert = 5
		if matrix[8][5] == 0:
			matrix[7][5] = 1
			matrix[8][5] = 1
			matrix[8][4] = 1
			matrix[8][6] = 1
			matrix[9][5] = 1
			perks.success += 5
		elif matrix[8][5] == 1:
			pass
		elif matrix[8][5] == 2:
			matrix[8][5] = 1
			perks.success += 1
	elif bert_hoz == 8 and bert_vert == 5:
		bert_hoz = 8
		bert_vert = 6
		if matrix[8][6] == 0:
			matrix[7][6] = 1
			matrix[8][6] = 1
			matrix[8][5] = 1
			matrix[8][7] = 1
			matrix[9][6] = 1
			perks.success += 5
		elif matrix[8][6] == 1:
			pass
		elif matrix[8][6] == 2:
			matrix[8][6] = 1
			perks.success += 1
	elif bert_hoz == 8 and bert_vert == 6:
		bert_hoz = 8
		bert_vert = 7
		if matrix[8][7] == 0:
			matrix[7][7] = 1
			matrix[8][7] = 1
			matrix[8][6] = 1
			matrix[8][8] = 1
			matrix[9][7] = 1
			perks.success += 5
		elif matrix[8][7] == 1:
			pass
		elif matrix[8][7] == 2:
			matrix[8][7] = 1
			perks.success += 1
	elif bert_hoz == 8 and bert_vert == 7:
		bert_hoz = 8
		bert_vert = 8
		if matrix[8][8] == 0:
			matrix[7][8] = 1
			matrix[8][8] = 1
			matrix[8][7] = 1
			matrix[8][9] = 1
			matrix[9][8] = 1
			perks.success += 5
		elif matrix[8][8] == 1:
			pass
		elif matrix[8][8] == 2:
			matrix[8][8] = 1
			perks.success += 1
	elif bert_hoz == 8 and bert_vert == 8:
		bert_hoz = 8
		bert_vert = 9
		if matrix[8][9] == 0:
			matrix[7][9] = 1
			matrix[8][9] = 1
			matrix[8][8] = 1
			matrix[9][9] = 1
			perks.success += 5
		elif matrix[8][9] == 1:
			pass
		elif matrix[8][9] == 2:
			matrix[8][9] = 1
			perks.success += 1
	elif bert_hoz == 8 and bert_vert == 9:
		pass
		
	elif bert_hoz == 9 and bert_vert == 0:
		bert_hoz = 9
		bert_vert = 1
		if matrix[9][1] == 0:
			matrix[8][1] = 1
			matrix[9][1] = 1
			matrix[9][0] = 1
			matrix[9][2] = 1
			perks.success += 5
		elif matrix[9][1] == 1:
			pass
		elif matrix[9][1] == 1:
			matrix[9][1] = 1
			perks.success += 1
	elif bert_hoz == 9 and bert_vert == 1:
		bert_hoz = 9
		bert_vert = 2
		if matrix[9][2] == 0:
			matrix[8][2] = 1
			matrix[9][2] = 1
			matrix[9][3] = 1
			matrix[9][1] = 1
			perks.success += 5
		elif matrix[9][2] == 1:
			pass
		elif matrix[9][2] == 2:
			matrix[9][2] = 1
			perks.success += 1
	elif bert_hoz == 9 and bert_vert == 2:
		bert_hoz = 9
		bert_vert = 3
		if matrix[9][3] == 0:
			matrix[8][3] = 1
			matrix[9][3] = 1
			matrix[9][2] = 1
			matrix[9][4] = 1
			perks.success += 5
		elif matrix[9][3] == 1:
			pass
		elif matrix[9][3] == 2:
			matrix[9][3] = 1
			perks.success += 1
	elif bert_hoz == 9 and bert_vert == 3:
		bert_hoz = 9
		bert_vert = 4
		if matrix[9][4] == 0:
			matrix[8][4] = 1
			matrix[9][4] = 1
			matrix[9][3] = 1
			matrix[9][5] = 1
			perks.success += 5
		elif matrix[9][4] == 1:
			pass
		elif matrix[9][4] == 2:
			matrix[9][4] = 1
			perks.success += 1
	elif bert_hoz == 9 and bert_vert == 4:
		bert_hoz = 9
		bert_vert = 5
		if matrix[9][5] == 0:
			matrix[8][5] = 1
			matrix[9][5] = 1
			matrix[9][4] = 1
			matrix[9][6] = 1
			perks.success += 5
		elif matrix[9][5] == 1:
			pass
		elif matrix[9][5] == 2:
			matrix[9][5] = 1
			perks.success += 1
	elif bert_hoz == 9 and bert_vert == 5:
		bert_hoz = 9
		bert_vert = 6
		if matrix[9][6] == 0:
			matrix[8][6] = 1
			matrix[9][6] = 1
			matrix[9][5] = 1
			matrix[9][7] = 1
			perks.success += 5
		elif matrix[9][6] == 1:
			pass
		elif matrix[9][6] == 2:
			matrix[9][6] = 1
			perks.success += 1
	elif bert_hoz == 9 and bert_vert == 6:
		bert_hoz = 9
		bert_vert = 7
		if matrix[9][7] == 0:
			matrix[8][7] = 1
			matrix[9][7] = 1
			matrix[9][6] = 1
			matrix[9][8] = 1
			perks.success += 5
		elif matrix[9][7] == 1:
			pass
		elif matrix[9][7] == 2:
			matrix[9][7] = 1
			perks.success += 1
	elif bert_hoz == 9 and bert_vert == 7:
		bert_hoz = 9
		bert_vert = 8
		if matrix[9][8] == 0:
			matrix[8][8] = 1
			matrix[9][8] = 1
			matrix[9][7] = 1
			matrix[9][9] = 1
			perks.success += 5
		elif matrix[9][8] == 1:
			pass
		elif matrix[9][8] == 2:
			matrix[9][8] = 1
			perks.success += 1
	elif bert_hoz == 9 and bert_vert == 8:
		bert_hoz = 9
		bert_vert = 9
		if matrix[9][9] == 0:
			matrix[8][9] = 1
			matrix[9][9] = 1
			matrix[9][8] = 1
			perks.success += 5
		elif matrix[9][9] == 1:
			pass
		elif matrix[9][9] == 2:
			matrix[9][9] = 1
			perks.success += 1
	elif bert_hoz == 9 and bert_vert == 9:
		pass

	get_node("down_timer").start()
	
func find_bert():
	randomize()
	var range_bert_hoz = [0,1,2,3,4,5,6,7,8,9]
	var range_bert_vert = [0,1,2,3,4,5,6,7,8,9] 
	var hoz = range_bert_hoz[randi() % range_bert_hoz.size()]
	var vert = range_bert_vert[randi() % range_bert_vert.size()]
	##matrix[hoz][vert] = 1
	bert_hoz = 2
	bert_vert = 3
	
func find_sam():
	randomize()
	var range_sam_hoz = [0,1,2,3,4,5,6,7,8,9]
	var range_sam_vert = [0,1,2,3,4,5,6,7,8,9] 
	var sam_hoz_temp = range_sam_hoz[randi() % range_sam_hoz.size()]
	var sam_vert_temp = range_sam_vert[randi() % range_sam_vert.size()]
	if matrix[sam_hoz_temp][sam_vert_temp] == 1:
		find_sam()
	else:
		matrix[sam_hoz_temp][sam_vert_temp] = 2
		sam_points += 2
	sam_hoz = sam_hoz_temp
	sam_vert = sam_vert_temp

func _on_sam_timer_timeout():
	var sam_jump_array = ["move_left", "move_right", "move_up", "move_down"]
	var which_way = sam_jump_array[randi() % sam_jump_array.size()]
	if which_way == "move_up":
		if sam_hoz == 0 and sam_vert == 0:
			_on_sam_timer_timeout()
		elif sam_hoz == 0 and sam_vert == 1:
			sam_hoz = 0
			sam_vert = 0
			if matrix[0][0] == 0:
				matrix[0][0] = 2
				matrix[1][0] = 2
				matrix[0][1] = 2
				sam_points += 5
			elif matrix[0][1] == 1:
				matrix[0][0] = 2
				sam_points += 1
				perks.success -= 1
			elif matrix[0][0] == 2:
				pass
		elif sam_hoz == 0 and sam_vert == 2:
			sam_hoz = 0
			sam_vert = 1
			if matrix[0][1] == 0:
				matrix[0][1] = 2
				matrix[0][0] = 2
				matrix[1][1] = 2
				matrix[0][2] = 2
				sam_points += 5
			elif matrix[0][1] == 1:
				matrix[0][1] = 2
				sam_points += 1
				perks.success -= 1
			elif matrix[0][1] == 2:
				pass
		elif sam_hoz == 0 and sam_vert == 3:
			sam_hoz = 0
			sam_vert = 2
			if matrix[0][2] == 0:
				matrix[0][2] = 2
				matrix[0][1] = 2
				matrix[0][3] = 2
				matrix[1][2] = 2
				sam_points += 5
			elif matrix[0][2] == 1:
				matrix[0][2] = 2
				sam_points += 1
				perks.success -= 1
			elif matrix[0][2] == 2:
				pass
		elif sam_hoz == 0 and sam_vert == 4:
			sam_hoz = 0
			sam_vert = 3
			if matrix[0][3] == 0:
				matrix[0][3] = 2
				matrix[0][2] = 2
				matrix[0][4] = 2
				matrix[1][3] = 2
				sam_points += 5
			elif matrix[0][3] == 1:
				matrix[0][3] = 2
				sam_points += 1
				perks.success -= 1
			elif matrix[0][3] == 2:
				pass
		elif sam_hoz == 0 and sam_vert == 5:
			sam_hoz = 0
			sam_vert = 4
			if matrix[0][4] == 0:
				matrix[0][4] = 2
				matrix[0][3] = 2
				matrix[0][5] = 2
				matrix[1][4] = 2
				sam_points += 5
			elif matrix[0][4] == 1:
				matrix[0][4] = 2
				sam_points += 1
				perks.success -= 1
			elif matrix[0][4] == 2:
				_on_sam_timer_timeout()
		elif sam_hoz == 0 and sam_vert == 6:
			sam_hoz = 0
			sam_vert = 5
			if matrix[0][5] == 0:
				matrix[0][5] = 2
				matrix[0][4] = 2
				matrix[0][6] = 2
				matrix[1][5] = 2
				sam_points += 5
			elif matrix[0][5] == 1:
				matrix[0][5] = 2
				sam_points += 1
				perks.success -= 1
			elif matrix[0][5] == 2:
				_on_sam_timer_timeout()
		elif sam_hoz == 0 and sam_vert == 7:
			sam_hoz = 0
			sam_vert = 6
			if matrix[0][6] == 0:
				matrix[0][6] = 2
				matrix[0][5] = 2
				matrix[0][7] = 2
				matrix[1][6] = 2
				sam_points += 5
			elif matrix[0][6] == 1:
				matrix[0][6] = 2
				sam_points += 1
				perks.success -= 1
			elif matrix[0][6] == 2:
				_on_sam_timer_timeout()
		elif sam_hoz == 0 and sam_vert == 8:
			sam_hoz = 0
			sam_vert = 7
			if matrix[0][7] == 0:
				matrix[0][7] = 2
				matrix[0][6] = 2
				matrix[0][8] = 2
				matrix[1][7] = 2
				sam_points += 5
			elif matrix[0][7] == 1:
				matrix[0][7] = 2
				sam_points += 1
				perks.success -= 1
			elif matrix[0][7] == 2:
				_on_sam_timer_timeout()
		elif sam_hoz == 0 and sam_vert == 9:
			sam_hoz = 0
			sam_vert = 8
			if matrix[0][8] == 0:
				matrix[0][8] = 2
				matrix[0][7] = 2
				matrix[0][9] = 2
				matrix[1][8] = 2
				sam_points += 5
			elif matrix[0][8] == 1:
				[0][8] = 2
				sam_points += 1
				perks.success -= 1
			elif matrix[0][8] == 2:
				_on_sam_timer_timeout()
				
		elif sam_hoz == 1 and sam_vert == 0:
			_on_sam_timer_timeout()
		elif sam_hoz == 1 and sam_vert == 1:
			sam_hoz = 1
			sam_vert = 0
			if matrix[1][0] == 0:
				matrix[0][0] = 2
				matrix[1][0] = 2
				matrix[2][0] = 2
				matrix[1][1] = 2
				sam_points += 5
			elif matrix[1][0] == 1:
				matrix[1][0] = 2
				sam_points += 1
				perks.success -= 1
			elif matrix[1][0] == 2:
				_on_sam_timer_timeout()
		elif sam_hoz == 1 and sam_vert == 2:
			sam_hoz = 1
			sam_vert = 1
			if matrix[1][1] == 0:
				matrix[0][1] = 2
				matrix[1][1] = 2
				matrix[1][0] = 2
				matrix[2][1] = 2
				matrix[1][2] = 2
				sam_points += 5
			elif matrix[1][1] == 1:
				matrix[1][1] = 2
				sam_points += 1
				perks.success -= 1
			elif matrix[1][1] == 2:
				_on_sam_timer_timeout()
		elif sam_hoz == 1 and sam_vert == 3:
			sam_hoz = 1
			sam_vert = 2
			if matrix[1][2] == 0:
				matrix[0][2] = 2
				matrix[1][2] = 2
				matrix[1][1] = 2
				matrix[1][3] = 2
				matrix[2][2] = 2
				sam_points += 5
			elif matrix[1][2] == 1:
				matrix[1][2] = 2
				sam_points += 1
				perks.success -= 1
			elif matrix[1][2] == 2:
				_on_sam_timer_timeout()
		elif sam_hoz == 1 and sam_vert == 4:
			sam_hoz = 1
			sam_vert = 3
			if matrix[1][3] == 0:
				matrix[0][3] = 2
				matrix[1][3] = 2
				matrix[1][2] = 2
				matrix[1][4] = 2
				matrix[2][3] = 2
				sam_points += 5
			elif matrix[1][3] == 1:
				matrix[1][3] = 2
				sam_points += 1
				perks.success -= 1
			elif matrix[1][3] == 2:
				_on_sam_timer_timeout()
		elif sam_hoz == 1 and sam_vert == 5:
			sam_hoz = 1
			sam_vert = 4
			if matrix[1][4] == 0:
				matrix[0][4] = 2
				matrix[1][4] = 2
				matrix[1][3] = 2
				matrix[1][5] = 2
				matrix[2][4] = 2
				sam_points += 5
			elif matrix[1][4] == 1:
				matrix[1][4] = 2
				sam_points += 1
				perks.success -= 1
			elif matrix[1][4] == 2:
				_on_sam_timer_timeout()
		elif sam_hoz == 1 and sam_vert == 6:
			sam_hoz = 1
			sam_vert = 5
			if matrix[1][5] == 0:
				matrix[0][5] = 2
				matrix[1][5] = 2
				matrix[1][4] = 2
				matrix[1][6] = 2
				matrix[2][5] = 2
				sam_points += 5
			elif matrix[1][5] == 1:
				matrix[1][5] = 2
				sam_points += 1
				perks.success -= 1
			elif matrix[1][5] == 2:
				_on_sam_timer_timeout()
		elif sam_hoz == 1 and sam_vert == 7:
			sam_hoz = 1
			sam_vert = 6
			if matrix[1][6] == 0:
				matrix[0][6] = 2
				matrix[1][6] = 2
				matrix[1][5] = 2
				matrix[1][7] = 2
				matrix[2][6] = 2
				sam_points += 5
			elif matrix[1][6] == 1:
				matrix[1][6] = 2
				sam_points += 1
				perks.success -= 1
			elif matrix[1][6] == 2:
				_on_sam_timer_timeout()
		elif sam_hoz == 1 and sam_vert == 8:
			sam_hoz = 1
			sam_vert = 7
			if matrix[1][7] == 0:
				matrix[0][7] = 2
				matrix[1][7] = 2
				matrix[1][6] = 2
				matrix[1][8] = 2
				matrix[2][7] = 2
				sam_points += 5
			elif matrix[1][7] == 1:
				matrix[1][7] = 2
				sam_points += 1
				perks.success -= 1
			elif matrix[1][7] == 2:
				_on_sam_timer_timeout()
		elif sam_hoz == 1 and sam_vert == 9:
			sam_hoz = 1
			sam_vert = 8
			if matrix[1][8] == 0:
				matrix[0][8] = 2
				matrix[1][8] = 2
				matrix[1][7] = 2
				matrix[1][9] = 2
				matrix[2][8] = 2
				sam_points += 5
			elif matrix[1][8] == 1:
				matrix[1][8] = 2
				sam_points += 1
				perks.success -= 1
			elif matrix[1][8] == 2:
				_on_sam_timer_timeout()
		
		elif sam_hoz == 2 and sam_vert == 0:
			_on_sam_timer_timeout()
		elif sam_hoz == 2 and sam_vert == 1:
			sam_hoz = 2
			sam_vert = 0
			if matrix[2][0] == 0:
				matrix[1][0] = 2
				matrix[2][0] = 2
				matrix[3][0] = 2
				matrix[2][1] = 2
				sam_points += 5
			elif matrix[2][0] == 1:
				matrix[2][0] = 2
				sam_points += 1
				perks.success -= 1
			elif matrix[2][0] == 2:
				_on_sam_timer_timeout()
		elif sam_hoz == 2 and sam_vert == 2:
			sam_hoz = 2
			sam_vert = 1
			if matrix[2][1] == 0:
				matrix[1][1] = 2
				matrix[2][1] = 2
				matrix[2][0] = 2
				matrix[3][1] = 2
				matrix[2][2] = 2
				sam_points += 5
			elif matrix[2][1] == 1:
				matrix[2][1] = 2
				sam_points += 1
				perks.success -= 1
			elif matrix[2][1] == 2:
				_on_sam_timer_timeout()
		elif sam_hoz == 2 and sam_vert == 3:
			sam_hoz = 2
			sam_vert = 2
			if matrix[2][2] == 0:
				matrix[1][2] = 2
				matrix[2][2] = 2
				matrix[2][1] = 2
				matrix[2][3] = 2
				matrix[3][2] = 2
				sam_points += 5
			elif matrix[2][2] == 1:
				matrix[2][2] = 2
				sam_points += 1
				perks.success -= 1
			elif matrix[2][2] == 2:
				_on_sam_timer_timeout()
		elif sam_hoz == 2 and sam_vert == 4:
			sam_hoz = 2
			sam_vert = 3
			if matrix[2][3] == 0:
				matrix[1][3] = 2
				matrix[2][3] = 2
				matrix[2][2] = 2
				matrix[2][4] = 2
				matrix[3][3] = 2
				sam_points += 5
			elif matrix[2][3] == 1:
				matrix[2][3] = 2
				sam_points += 1
				perks.success -= 1
			elif matrix[2][3] == 2:
				_on_sam_timer_timeout()
		elif sam_hoz == 2 and sam_vert == 5:
			sam_hoz = 2
			sam_vert = 4
			if matrix[2][4] == 0:
				matrix[1][4] = 2
				matrix[2][4] = 2
				matrix[2][3] = 2
				matrix[2][5] = 2
				matrix[3][4] = 2
				sam_points += 5
			elif matrix[2][4] == 1:
				matrix[2][4] = 2
				sam_points += 1
				perks.success -= 1
			elif matrix[2][4] == 2:
				_on_sam_timer_timeout()
		elif sam_hoz == 2 and sam_vert == 6:
			sam_hoz = 2
			sam_vert = 5
			if matrix[2][5] == 0:
				matrix[1][5] = 2
				matrix[2][5] = 2
				matrix[2][4] = 2
				matrix[2][6] = 2
				matrix[3][5] = 2
				sam_points += 5
			elif matrix[2][5] == 1:
				matrix[2][5] = 2
				sam_points += 1
				perks.success -= 1
			elif matrix[2][5] == 2:
				_on_sam_timer_timeout()
		elif sam_hoz == 2 and sam_vert == 7:
			sam_hoz = 2
			sam_vert = 6
			if matrix[2][6] == 0:
				matrix[1][6] = 2
				matrix[2][6] = 2
				matrix[2][5] = 2
				matrix[2][7] = 2
				matrix[3][6] = 2
				sam_points += 5
			elif matrix[2][6] == 1:
				matrix[2][6] = 2
				sam_points += 1
				perks.success -= 1
			elif matrix[2][6] == 2:
				_on_sam_timer_timeout()
		elif sam_hoz == 2 and sam_vert == 8:
			sam_hoz = 2
			sam_vert = 7
			if matrix[2][7] == 0:
				matrix[1][7] = 2
				matrix[2][7] = 2
				matrix[2][6] = 2
				matrix[2][8] = 2
				matrix[3][7] = 2
				sam_points += 5
			elif matrix[2][7] == 1:
				matrix[2][7] = 2
				sam_points += 1
				perks.success -= 1
			elif matrix[2][7] == 2:
				_on_sam_timer_timeout()
		elif sam_hoz == 2 and sam_vert == 9:
			sam_hoz = 2
			sam_vert = 8
			if matrix[2][8] == 0:
				matrix[1][8] = 2
				matrix[2][8] = 2
				matrix[2][7] = 2
				matrix[2][9] = 2
				matrix[3][8] = 2
				sam_points += 5
			elif matrix[2][8] == 1:
				matrix[2][8] = 2
				sam_points += 1
				perks.success -= 1
			elif matrix[2][8] == 2:
				_on_sam_timer_timeout()
		
		elif sam_hoz == 3 and sam_vert == 0:
			_on_sam_timer_timeout()
		elif sam_hoz == 3 and sam_vert == 1:
			sam_hoz = 3
			sam_vert = 0
			if matrix[3][0] == 0:
				matrix[2][0] = 2
				matrix[3][0] = 2
				matrix[4][0] = 2
				matrix[3][1] = 2
				sam_points += 5
			elif matrix[3][0] == 1:
				matrix[3][0] = 2
				sam_points += 1
				perks.success -= 1
			elif matrix[3][0] == 2:
				_on_sam_timer_timeout()
		elif sam_hoz == 3 and sam_vert == 2:
			sam_hoz = 3
			sam_vert = 1
			if matrix[3][1] == 0:
				matrix[2][1] = 2
				matrix[3][1] = 2
				matrix[3][0] = 2
				matrix[4][1] = 2
				matrix[3][2] = 2
				sam_points += 5
			elif matrix[3][1] == 1:
				matrix[3][1] = 2
				sam_points += 1
				perks.success -= 1
			elif matrix[3][1] == 2:
				_on_sam_timer_timeout()
		elif sam_hoz == 3 and sam_vert == 3:
			sam_hoz = 3
			sam_vert = 2
			if matrix[3][2] == 0:
				matrix[2][2] = 2
				matrix[3][2] = 2
				matrix[3][1] = 2
				matrix[3][3] = 2
				matrix[4][2] = 2
				sam_points += 5
			elif matrix[3][2] == 1:
				matrix[3][2] = 2
				sam_points += 1
				perks.success -= 1
			elif matrix[3][2] == 2:
				_on_sam_timer_timeout()
		elif sam_hoz == 3 and sam_vert == 4:
			sam_hoz = 3
			sam_vert = 3
			if matrix[3][3] == 0:
				matrix[2][3] = 2
				matrix[3][3] = 2
				matrix[3][2] = 2
				matrix[3][4] = 2
				matrix[4][3] = 2
				sam_points += 5
			elif matrix[3][3] == 1:
				matrix[3][3] = 2
				sam_points += 1
				perks.success -= 1
			elif matrix[3][3] == 2:
				_on_sam_timer_timeout()
		elif sam_hoz == 3 and sam_vert == 5:
			sam_hoz = 3
			sam_vert = 4
			if matrix[3][4] == 0:
				matrix[2][4] = 2
				matrix[3][4] = 2
				matrix[3][3] = 2
				matrix[3][5] = 2
				matrix[4][4] = 2
				sam_points += 5
			elif matrix[3][4] == 1:
				matrix[3][4] = 2
				sam_points += 1
				perks.success -= 1
			elif matrix[3][4] == 2:
				_on_sam_timer_timeout()
		elif sam_hoz == 3 and sam_vert == 6:
			sam_hoz = 3
			sam_vert = 5
			if matrix[3][5] == 0:
				matrix[2][5] = 2
				matrix[3][5] = 2
				matrix[3][4] = 2
				matrix[3][6] = 2
				matrix[4][5] = 2
				sam_points += 5
			elif matrix[3][5] == 1:
				matrix[3][5] = 2
				sam_points += 1
				perks.success -= 1
			elif matrix[3][5] == 2:
				_on_sam_timer_timeout()
		elif sam_hoz == 3 and sam_vert == 7:
			sam_hoz = 3
			sam_vert = 6
			if matrix[3][6] == 0:
				matrix[2][6] = 2
				matrix[3][6] = 2
				matrix[3][5] = 2
				matrix[3][7] = 2
				matrix[4][6] = 2
				sam_points += 5
			elif matrix[3][6] == 1:
				matrix[3][6] = 2
				sam_points += 1
				perks.success -= 1
			elif matrix[3][6] == 2:
				_on_sam_timer_timeout()
		elif sam_hoz == 3 and sam_vert == 8:
			sam_hoz = 3
			sam_vert = 7
			if matrix[3][7] == 0:
				matrix[2][7] = 2
				matrix[3][7] = 2
				matrix[3][6] = 2
				matrix[3][8] = 2
				matrix[4][7] = 2
				sam_points += 5
			elif matrix[3][7] == 1:
				matrix[3][7] = 2
				sam_points += 1
				perks.success -= 1
			elif matrix[3][7] == 2:
				_on_sam_timer_timeout()
		elif sam_hoz == 3 and sam_vert == 9:
			sam_hoz = 3
			sam_vert = 8
			if matrix[3][8] == 0:
				matrix[2][8] = 2
				matrix[3][8] = 2
				matrix[3][7] = 2
				matrix[3][9] = 2
				matrix[4][8] = 2
				sam_points += 5
			elif matrix[3][8] == 1:
				matrix[3][8] = 2
				sam_points += 1
				perks.success -= 1
			elif matrix[3][8] == 2:
				_on_sam_timer_timeout()
		
		
		elif sam_hoz == 4 and sam_vert == 0:
			_on_sam_timer_timeout()
		elif sam_hoz == 4 and sam_vert == 1:
			sam_hoz = 4
			sam_vert = 0
			if matrix[4][0] == 0:
				matrix[3][0] = 2
				matrix[4][0] = 2
				matrix[5][0] = 2
				matrix[4][1] = 2
				sam_points += 5
			elif matrix[4][0] == 1:
				matrix[4][0] = 2
				sam_points += 1
				perks.success -= 1
			elif matrix[4][0] == 2:
				_on_sam_timer_timeout()
		elif sam_hoz == 4 and sam_vert == 2:
			sam_hoz = 4
			sam_vert = 1
			if matrix[4][1] == 0:
				matrix[3][1] = 2
				matrix[4][1] = 2
				matrix[4][0] = 2
				matrix[5][1] = 2
				matrix[4][2] = 2
				sam_points += 5
			elif matrix[4][1] == 1:
				matrix[4][1] = 2
				sam_points += 1
				perks.success -= 1
			elif matrix[4][1] == 2:
				_on_sam_timer_timeout()
		elif sam_hoz == 4 and sam_vert == 3:
			sam_hoz = 4
			sam_vert = 2
			if matrix[4][2] == 0:
				matrix[3][2] = 2
				matrix[4][2] = 2
				matrix[4][1] = 2
				matrix[4][3] = 2
				matrix[5][2] = 2
				sam_points += 5
			elif matrix[4][2] == 1:
				matrix[4][2] = 2
				sam_points += 1
				perks.success -= 1
			elif matrix[4][2] == 2:
				_on_sam_timer_timeout()
		elif sam_hoz == 4 and sam_vert == 4:
			sam_hoz = 4
			sam_vert = 3
			if matrix[4][3] == 0:
				matrix[3][3] = 1
				matrix[4][3] = 1
				matrix[4][2] = 1
				matrix[4][4] = 1
				matrix[5][3] = 1
				sam_points += 5
			elif matrix[4][3] == 1:
				matrix[4][3] = 1
				sam_points += 1
				perks.success -= 1
			elif matrix[4][3] == 2:
				_on_sam_timer_timeout()
		elif sam_hoz == 4 and sam_vert == 5:
			sam_hoz = 4
			sam_vert = 4
			if matrix[4][4] == 0:
				matrix[3][4] = 2
				matrix[4][4] = 2
				matrix[4][3] = 2
				matrix[4][5] = 2
				matrix[5][4] = 2
				sam_points += 5
			elif matrix[4][4] == 1:
				matrix[4][4] = 2
				sam_points += 1
				perks.success -= 1
			elif matrix[4][4] == 2:
				_on_sam_timer_timeout()
		elif sam_hoz == 4 and sam_vert == 6:
			sam_hoz = 4
			sam_vert = 5
			if matrix[4][5] == 0:
				matrix[3][5] = 2
				matrix[4][5] = 2
				matrix[4][4] = 2
				matrix[4][6] = 2
				matrix[5][5] = 2
				sam_points += 5
			elif matrix[4][5] == 1:
				matrix[4][5] = 2
				sam_points += 1
				perks.success -= 1
			elif matrix[4][5] == 2:
				_on_sam_timer_timeout()
		elif sam_hoz == 4 and sam_vert == 7:
			sam_hoz = 4
			sam_vert = 6
			if matrix[4][6] == 0:
				matrix[3][6] = 2
				matrix[4][6] = 2
				matrix[4][5] = 2
				matrix[4][7] = 2
				matrix[5][6] = 2
				sam_points += 5
			elif matrix[4][6] == 1:
				matrix[4][6] = 2
				sam_points += 1
				perks.success -= 1
			elif matrix[4][6] == 2:
				_on_sam_timer_timeout()
		elif sam_hoz == 4 and sam_vert == 8:
			sam_hoz = 4
			sam_vert = 7
			if matrix[4][7] == 0:
				matrix[3][7] = 2
				matrix[4][7] = 2
				matrix[4][6] = 2
				matrix[4][8] = 2
				matrix[5][7] = 2
				sam_points += 5
			elif matrix[4][7] == 1:
				matrix[4][7] = 2
				sam_points += 1
				perks.success -= 1
			elif matrix[4][7] == 2:
				_on_sam_timer_timeout()
		elif sam_hoz == 4 and sam_vert == 9:
			sam_hoz = 4
			sam_vert = 8
			if matrix[4][8] == 0:
				matrix[3][8] = 2
				matrix[4][8] = 2
				matrix[4][7] = 2
				matrix[4][9] = 2
				matrix[5][8] = 2
				sam_points += 5
			elif matrix[4][8] == 1:
				matrix[4][8] = 2
				sam_points += 1
				perks.success -= 1
			elif matrix[4][8] == 2:
				_on_sam_timer_timeout()
		
		
		elif sam_hoz == 5 and sam_vert == 0:
			_on_sam_timer_timeout()
		elif sam_hoz == 5 and sam_vert == 1:
			sam_hoz = 5
			sam_vert = 0
			if matrix[5][0] == 0:
				matrix[4][0] = 2
				matrix[5][0] = 2
				matrix[6][0] = 2
				matrix[5][1] = 2
				sam_points += 5
			elif matrix[5][0] == 1:
				matrix[5][0] = 2
				sam_points += 1
				perks.success -= 1
			elif matrix[5][0] == 2:
				_on_sam_timer_timeout()
		elif sam_hoz == 5 and sam_vert == 2:
			sam_hoz = 5
			sam_vert = 1
			if matrix[5][1] == 0:
				matrix[4][1] = 2
				matrix[5][1] = 2
				matrix[5][0] = 2
				matrix[6][1] = 2
				matrix[5][2] = 2
				sam_points += 5
			elif matrix[5][1] == 1:
				matrix[5][1] = 2
				sam_points += 1
				perks.success -= 1
			elif matrix[5][1] == 2:
				_on_sam_timer_timeout()
		elif sam_hoz == 5 and sam_vert == 3:
			sam_hoz = 5
			sam_vert = 2
			if matrix[5][2] == 0:
				matrix[4][2] = 2
				matrix[5][2] = 2
				matrix[5][1] = 2
				matrix[5][3] = 2
				matrix[6][2] = 2
				sam_points += 5
			elif matrix[5][2] == 1:
				matrix[5][2] = 2
				sam_points += 1
				perks.success -= 1
			elif matrix[5][2] == 2:
				_on_sam_timer_timeout()
		elif sam_hoz == 5 and sam_vert == 4:
			sam_hoz = 5
			sam_vert = 3
			if matrix[5][3] == 0:
				matrix[4][3] = 2
				matrix[5][3] = 2
				matrix[5][2] = 2
				matrix[5][4] = 2
				matrix[6][3] = 2
				sam_points += 5
			elif matrix[5][3] == 1:
				matrix[5][3] = 2
				sam_points += 1
				perks.success -= 1
			elif matrix[5][3] == 2:
				_on_sam_timer_timeout()
		elif sam_hoz == 5 and sam_vert == 5:
			sam_hoz = 5
			sam_vert = 4
			if matrix[5][4] == 0:
				matrix[4][4] = 2
				matrix[5][4] = 2
				matrix[5][3] = 2
				matrix[5][5] = 2
				matrix[6][4] = 2
				sam_points += 5
			elif matrix[5][4] == 1:
				matrix[5][4] = 2
				sam_points += 1
				perks.success -= 1
			elif matrix[5][4] == 2:
				_on_sam_timer_timeout()
		elif sam_hoz == 5 and sam_vert == 6:
			sam_hoz = 5
			sam_vert = 5
			if matrix[5][5] == 0:
				matrix[4][5] = 2
				matrix[5][5] = 2
				matrix[5][4] = 2
				matrix[5][6] = 2
				matrix[6][5] = 2
				sam_points += 5
			elif matrix[5][5] == 1:
				matrix[5][5] = 2
				sam_points += 1
				perks.success -= 1
			elif matrix[5][5] == 2:
				_on_sam_timer_timeout()
		elif sam_hoz == 5 and sam_vert == 7:
			sam_hoz = 5
			sam_vert = 6
			if matrix[5][6] == 0:
				matrix[4][6] = 2
				matrix[5][6] = 2
				matrix[5][5] = 2
				matrix[5][7] = 2
				matrix[6][6] = 2
				sam_points += 5
			elif matrix[5][6] == 1:
				matrix[5][6] = 2
				sam_points += 1
				perks.success -= 1
			elif matrix[5][6] == 2:
				_on_sam_timer_timeout()
		elif sam_hoz == 5 and sam_vert == 8:
			sam_hoz = 5
			sam_vert = 7
			if matrix[5][7] == 0:
				matrix[4][7] = 2
				matrix[5][7] = 2
				matrix[5][6] = 2
				matrix[6][8] = 2
				matrix[6][7] = 2
				sam_points += 5
			elif matrix[5][7] == 1:
				matrix[5][7] = 2
				sam_points += 1
				perks.success -= 1
			elif matrix[5][7] == 2:
				_on_sam_timer_timeout()
		elif sam_hoz == 5 and sam_vert == 9:
			sam_hoz = 5
			sam_vert = 8
			if matrix[5][8] == 0:
				matrix[4][8] = 2
				matrix[5][8] = 2
				matrix[5][7] = 2
				matrix[5][9] = 2
				matrix[6][8] = 2
				sam_points += 5
			elif matrix[5][8] == 1:
				matrix[5][8] = 2
				sam_points += 1
				perks.success -= 1
			elif matrix[5][8] == 2:
				_on_sam_timer_timeout()
		
		elif sam_hoz == 6 and sam_vert == 0:
			_on_sam_timer_timeout()
		elif sam_hoz == 6 and sam_vert == 1:
			sam_hoz = 6
			sam_vert = 0
			if matrix[6][0] == 0:
				matrix[5][0] = 2
				matrix[6][0] = 2
				matrix[7][0] = 2
				matrix[6][1] = 2
				sam_points += 5
			elif matrix[6][0] == 1:
				matrix[6][0] = 2
				sam_points += 1
				perks.success -= 1
			elif matrix[6][0] == 2:
				_on_sam_timer_timeout()
		elif sam_hoz == 6 and sam_vert == 2:
			sam_hoz = 6
			sam_vert = 1
			if matrix[6][1] == 0:
				matrix[5][1] = 1
				matrix[6][1] = 1
				matrix[6][0] = 1
				matrix[7][1] = 1
				matrix[6][2] = 1
				sam_points += 5
			elif matrix[6][1] == 1:
				matrix[6][1] = 1
				sam_points += 1
				perks.success -= 1
			elif matrix[6][1] == 2:
				_on_sam_timer_timeout()
		elif sam_hoz == 6 and sam_vert == 3:
			sam_hoz = 6
			sam_vert = 2
			if matrix[6][2] == 0:
				matrix[5][2] = 2
				matrix[6][2] = 2
				matrix[6][1] = 2
				matrix[6][3] = 2
				matrix[7][2] = 2
				sam_points += 5
			elif matrix[6][2] == 1:
				matrix[6][2] = 2
				sam_points += 1
				perks.success -= 1
			elif matrix[6][2] == 2:
				_on_sam_timer_timeout()
		elif sam_hoz == 6 and sam_vert == 4:
			sam_hoz = 6
			sam_vert = 3
			if matrix[6][3] == 0:
				matrix[5][3] = 2
				matrix[6][3] = 2
				matrix[6][2] = 2
				matrix[6][4] = 2
				matrix[7][3] = 2
				sam_points += 5
			elif matrix[6][3] == 1:
				matrix[6][3] = 2
				sam_points += 1
				perks.success -= 1
			elif matrix[6][3] == 2:
				_on_sam_timer_timeout()
		elif sam_hoz == 6 and sam_vert == 5:
			sam_hoz = 6
			sam_vert = 4
			if matrix[6][4] == 0:
				matrix[5][4] = 2
				matrix[6][4] = 2
				matrix[6][3] = 2
				matrix[6][5] = 2
				matrix[7][4] = 2
				sam_points += 5
			elif matrix[6][4] == 1:
				matrix[6][4] = 2
				sam_points += 1
				perks.success -= 1
			elif matrix[6][4] == 2:
				_on_sam_timer_timeout()
		elif sam_hoz == 6 and sam_vert == 6:
			sam_hoz = 6
			sam_vert = 5
			if matrix[6][5] == 0:
				matrix[5][5] = 2
				matrix[6][5] = 2
				matrix[6][4] = 2
				matrix[6][6] = 2
				matrix[7][5] = 2
				sam_points += 5
			elif matrix[6][5] == 1:
				matrix[6][5] = 2
				sam_points += 1
				perks.success -= 1
			elif matrix[6][5] == 2:
				_on_sam_timer_timeout()
		elif sam_hoz == 6 and sam_vert == 7:
			sam_hoz = 6
			sam_vert = 6
			if matrix[6][6] == 0:
				matrix[5][6] = 2
				matrix[6][6] = 2
				matrix[6][5] = 2
				matrix[6][7] = 2
				matrix[7][6] = 2
				sam_points += 5
			elif matrix[6][6] == 1:
				matrix[6][6] = 2
				sam_points += 1
				perks.success -= 1
			elif matrix[6][6] == 2:
				_on_sam_timer_timeout()
		elif sam_hoz == 6 and sam_vert == 8:
			sam_hoz = 6
			sam_vert = 7
			if matrix[6][7] == 0:
				matrix[5][7] = 2
				matrix[6][7] = 2
				matrix[6][6] = 2
				matrix[7][8] = 2
				matrix[6][7] = 2
				sam_points += 5
			elif matrix[6][7] == 1:
				matrix[6][7] = 2
				sam_points += 1
				perks.success -= 1
			elif matrix[6][7] == 2:
				_on_sam_timer_timeout()
		elif sam_hoz == 6 and sam_vert == 9:
			sam_hoz = 6
			sam_vert = 8
			if matrix[6][8] == 0:
				matrix[5][8] = 2
				matrix[6][8] = 2
				matrix[6][7] = 2
				matrix[6][9] = 2
				matrix[7][8] = 2
				sam_points += 5
			elif matrix[6][8] == 1:
				matrix[6][8] = 2
				sam_points += 1
				perks.success -= 1
			elif matrix[6][8] == 2:
				_on_sam_timer_timeout()
	
	
		elif sam_hoz == 7 and sam_vert == 0:
			_on_sam_timer_timeout()
		elif sam_hoz == 7 and sam_vert == 1:
			sam_hoz = 7
			sam_vert = 0
			if matrix[7][0] == 0:
				matrix[6][0] = 2
				matrix[7][0] = 2
				matrix[8][0] = 2
				matrix[7][1] = 2
				sam_points += 5
			elif matrix[7][0] == 1:
				matrix[7][0] = 2
				sam_points += 1
				perks.success -= 1
			elif matrix[7][0] == 2:
				_on_sam_timer_timeout()
		elif sam_hoz == 7 and sam_vert == 2:
			sam_hoz = 7
			sam_vert = 1
			if matrix[7][1] == 0:
				matrix[6][1] = 2
				matrix[7][1] = 2
				matrix[7][0] = 2
				matrix[8][1] = 2
				matrix[7][2] = 2
				sam_points += 5
			elif matrix[7][1] == 1:
				matrix[7][1] = 2
				sam_points += 1
				perks.success -= 1
			elif matrix[7][1] == 2:
				_on_sam_timer_timeout()
		elif sam_hoz == 7 and sam_vert == 3:
			sam_hoz = 7
			sam_vert = 2
			if matrix[7][2] == 0:
				matrix[6][2] = 2
				matrix[7][2] = 2
				matrix[7][1] = 2
				matrix[7][3] = 2
				matrix[8][2] = 2
				sam_points += 5
			elif matrix[7][2] == 1:
				matrix[7][2] = 2
				sam_points += 1
				perks.success -= 1
			elif matrix[7][2] == 2:
				_on_sam_timer_timeout()
		elif sam_hoz == 7 and sam_vert == 4:
			sam_hoz = 7
			sam_vert = 3
			if matrix[7][3] == 0:
				matrix[6][3] = 2
				matrix[7][3] = 2
				matrix[7][2] = 2
				matrix[7][4] = 2
				matrix[8][3] = 2
				sam_points += 5
			elif matrix[7][3] == 1:
				matrix[7][3] = 2
				sam_points += 1
				perks.success -= 1
			elif matrix[7][3] == 2:
				_on_sam_timer_timeout()
		elif sam_hoz == 7 and sam_vert == 5:
			sam_hoz = 7
			sam_vert = 4
			if matrix[7][4] == 0:
				matrix[6][4] = 2
				matrix[7][4] = 2
				matrix[7][3] = 2
				matrix[7][5] = 2
				matrix[8][4] = 2
				sam_points += 5
			elif matrix[7][4] == 1:
				matrix[7][4] = 2
				sam_points += 1
				perks.success -= 1
			elif matrix[7][4] == 2:
				_on_sam_timer_timeout()
		elif sam_hoz == 7 and sam_vert == 6:
			sam_hoz = 7
			sam_vert = 5
			if matrix[7][5] == 0:
				matrix[6][5] = 2
				matrix[7][5] = 2
				matrix[7][4] = 2
				matrix[7][6] = 2
				matrix[8][5] = 2
				sam_points += 5
			elif matrix[7][5] == 1:
				matrix[7][5] = 2
				sam_points += 1
				perks.success -= 1
			elif matrix[7][5] == 2:
				_on_sam_timer_timeout()
		elif sam_hoz == 7 and sam_vert == 7:
			sam_hoz = 7
			sam_vert = 6
			if matrix[7][6] == 0:
				matrix[6][6] = 2
				matrix[7][6] = 2
				matrix[7][5] = 2
				matrix[7][7] = 2
				matrix[8][6] = 2
				sam_points += 5
			elif matrix[7][6] == 1:
				matrix[7][6] = 2
				sam_points += 1
				perks.success -= 1
			elif matrix[7][6] == 2:
				_on_sam_timer_timeout()
		elif sam_hoz == 7 and sam_vert == 8:
			sam_hoz = 7
			sam_vert = 7
			if matrix[7][7] == 0:
				matrix[6][7] = 2
				matrix[7][7] = 2
				matrix[7][6] = 2
				matrix[8][8] = 2
				matrix[7][7] = 2
				sam_points += 5
			elif matrix[7][7] == 1:
				matrix[7][7] = 2
				sam_points += 1
				perks.success -= 1
			elif matrix[7][7] == 2:
				_on_sam_timer_timeout()
		elif sam_hoz == 7 and sam_vert == 9:
			sam_hoz = 7
			sam_vert = 8
			if matrix[7][8] == 0:
				matrix[6][8] = 2
				matrix[7][8] = 2
				matrix[7][7] = 2
				matrix[7][9] = 2
				matrix[8][8] = 2
				sam_points += 5
			elif matrix[7][8] == 1:
				matrix[7][8] = 2
				sam_points += 1
				perks.success -= 1
			elif matrix[7][8] == 2:
				_on_sam_timer_timeout()
				
		elif sam_hoz == 8 and sam_vert == 0:
			_on_sam_timer_timeout()
		elif sam_hoz == 8 and sam_vert == 1:
			sam_hoz = 8
			sam_vert = 0
			if matrix[8][0] == 0:
				matrix[7][0] = 2
				matrix[8][0] = 2
				matrix[9][0] = 2
				matrix[8][1] = 2
				sam_points += 5
			elif matrix[8][0] == 1:
				matrix[8][0] = 2
				sam_points += 1
				perks.success -= 1
			elif matrix[8][0] == 2:
				_on_sam_timer_timeout()
		elif sam_hoz == 8 and sam_vert == 2:
			sam_hoz = 8
			sam_vert = 1
			if matrix[8][1] == 0:
				matrix[7][1] = 2
				matrix[8][1] = 2
				matrix[8][0] = 2
				matrix[9][1] = 2
				matrix[8][2] = 2
				sam_points += 5
			elif matrix[8][1] == 1:
				matrix[8][1] = 2
				sam_points += 1
				perks.success -= 1
			elif matrix[8][1] == 2:
				_on_sam_timer_timeout()
		elif sam_hoz == 8 and sam_vert == 3:
			sam_hoz = 8
			sam_vert = 2
			if matrix[8][2] == 0:
				matrix[7][2] = 2
				matrix[8][2] = 2
				matrix[8][1] = 2
				matrix[8][3] = 2
				matrix[9][2] = 2
				sam_points += 5
			elif matrix[8][2] == 1:
				matrix[8][2] = 2
				sam_points += 1
				perks.success -= 1
			elif matrix[8][2] == 2:
				_on_sam_timer_timeout()
		elif sam_hoz == 8 and sam_vert == 4:
			sam_hoz = 8
			sam_vert = 3
			if matrix[8][3] == 0:
				matrix[7][3] = 2
				matrix[8][3] = 2
				matrix[8][2] = 2
				matrix[8][4] = 2
				matrix[9][3] = 2
				sam_points += 5
			elif matrix[8][3] == 1:
				matrix[8][3] = 2
				sam_points += 1
				perks.success -= 1
			elif matrix[8][3] == 2:
				_on_sam_timer_timeout()
		elif sam_hoz == 8 and sam_vert == 5:
			sam_hoz = 8
			sam_vert = 4
			if matrix[8][4] == 0:
				matrix[7][4] = 2
				matrix[8][4] = 2
				matrix[8][3] = 2
				matrix[8][5] = 2
				matrix[9][4] = 2
				sam_points += 5
			elif matrix[8][4] == 1:
				matrix[8][4] = 2
				sam_points += 1
				perks.success -= 1
			elif matrix[8][4] == 2:
				_on_sam_timer_timeout()
		elif sam_hoz == 8 and sam_vert == 6:
			sam_hoz = 8
			sam_vert = 5
			if matrix[8][5] == 0:
				matrix[7][5] = 2
				matrix[8][5] = 2
				matrix[8][4] = 2
				matrix[8][6] = 2
				matrix[9][5] = 2
				sam_points += 5
			elif matrix[8][5] == 1:
				matrix[8][5] = 2
				sam_points += 1
				perks.success -= 1
			elif matrix[8][5] == 2:
				_on_sam_timer_timeout()
		elif sam_hoz == 8 and sam_vert == 7:
			sam_hoz = 8
			sam_vert = 6
			if matrix[8][6] == 0:
				matrix[7][6] = 2
				matrix[8][6] = 2
				matrix[8][5] = 2
				matrix[8][7] = 2
				matrix[9][6] = 2
				sam_points += 5
			elif matrix[8][6] == 1:
				matrix[8][6] = 2
				sam_points += 1
				perks.success -= 1
			elif matrix[8][6] == 2:
				_on_sam_timer_timeout()
		elif sam_hoz == 8 and sam_vert == 8:
			sam_hoz = 8
			sam_vert = 7
			if matrix[8][7] == 0:
				matrix[7][7] = 2
				matrix[8][7] = 2
				matrix[8][6] = 2
				matrix[9][8] = 2
				matrix[8][7] = 2
				sam_points += 5
			elif matrix[8][7] == 1:
				matrix[8][7] = 2
				sam_points += 1
				perks.success -= 1
			elif matrix[8][7] == 2:
				_on_sam_timer_timeout()
		elif sam_hoz == 8 and sam_vert == 9:
			sam_hoz = 8
			sam_vert = 8
			if matrix[8][8] == 0:
				matrix[7][8] = 2
				matrix[8][8] = 2
				matrix[8][7] = 2
				matrix[8][9] = 2
				matrix[9][8] = 2
				sam_points += 5
			elif matrix[8][8] == 1:
				matrix[8][8] = 2
				sam_points += 1
				perks.success -= 1
			elif matrix[8][8] == 2:
				_on_sam_timer_timeout()
				
		elif sam_hoz == 9 and sam_vert == 0:
			_on_sam_timer_timeout()
		elif sam_hoz == 9 and sam_vert == 1:
			sam_hoz = 9
			sam_vert = 0
			if matrix[9][0] == 0:
				matrix[8][0] = 2
				matrix[9][0] = 2
				matrix[9][1] = 2
				sam_points += 5
			elif matrix[9][0] == 1:
				matrix[9][0] = 2
				sam_points += 1
				perks.success -= 1
			elif matrix[9][0] == 2:
				_on_sam_timer_timeout()
		elif sam_hoz == 9 and sam_vert == 2:
			sam_hoz = 9
			sam_vert = 1
			if matrix[9][1] == 0:
				matrix[8][1] = 2
				matrix[9][1] = 2
				matrix[9][0] = 2
				matrix[9][2] = 2
				sam_points += 5
			elif matrix[9][1] == 1:
				matrix[9][1] = 2
				sam_points += 1
				perks.success -= 1
			elif matrix[9][1] == 2:
				_on_sam_timer_timeout()
		elif sam_hoz == 9 and sam_vert == 3:
			sam_hoz = 9
			sam_vert = 2
			if matrix[9][2] == 0:
				matrix[8][2] = 2
				matrix[9][2] = 2
				matrix[9][1] = 2
				matrix[9][3] = 2
				sam_points += 5
			elif matrix[9][2] == 1:
				matrix[9][2] = 2
				sam_points += 1
				perks.success -= 1
			elif matrix[9][2] == 2:
				_on_sam_timer_timeout()
		elif sam_hoz == 9 and sam_vert == 4:
			sam_hoz = 9
			sam_vert = 3
			if matrix[9][3] == 0:
				matrix[8][3] = 2
				matrix[9][3] = 2
				matrix[9][2] = 2
				matrix[9][4] = 2
				sam_points += 5
			elif matrix[9][3] == 1:
				matrix[9][3] = 2
				sam_points += 1
				perks.success -= 1
			elif matrix[9][3] == 2:
				_on_sam_timer_timeout()
		elif sam_hoz == 9 and sam_vert == 5:
			sam_hoz = 9
			sam_vert = 4
			if matrix[9][4] == 0:
				matrix[8][4] = 2
				matrix[9][4] = 2
				matrix[9][3] = 2
				matrix[9][5] = 2
				sam_points += 5
			elif matrix[9][4] == 1:
				matrix[9][4] = 2
				sam_points += 1
				perks.success -= 1
			elif matrix[9][4] == 2:
				_on_sam_timer_timeout()
		elif sam_hoz == 9 and sam_vert == 6:
			sam_hoz = 9
			sam_vert = 5
			if matrix[9][5] == 0:
				matrix[8][5] = 2
				matrix[9][5] = 2
				matrix[9][4] = 2
				matrix[9][6] = 2
				sam_points += 5
			elif matrix[9][5] == 1:
				matrix[9][5] = 1
				sam_points += 1
				perks.success -= 1
			elif matrix[9][5] == 2:
				_on_sam_timer_timeout()
		elif sam_hoz == 9 and sam_vert == 7:
			sam_hoz = 9
			sam_vert = 6
			if matrix[9][6] == 0:
				matrix[8][6] = 2
				matrix[9][6] = 2
				matrix[9][5] = 2
				matrix[9][7] = 2
				sam_points += 5
			elif matrix[9][6] == 1:
				matrix[9][6] = 2
				sam_points += 1
				perks.success -= 1
			elif matrix[9][6] == 2:
				_on_sam_timer_timeout()
		elif sam_hoz == 9 and sam_vert == 8:
			sam_hoz = 9
			sam_vert = 7
			if matrix[9][7] == 0:
				matrix[8][7] = 2
				matrix[9][7] = 2
				matrix[9][6] = 2
				matrix[9][7] = 2
				sam_points += 5
			elif matrix[9][7] == 1:
				matrix[9][7] = 2
				sam_points += 1
				perks.success -= 1
			elif matrix[9][7] == 2:
				_on_sam_timer_timeout()
		elif sam_hoz == 9 and sam_vert == 9:
			sam_hoz = 9
			sam_vert = 8
			if matrix[9][8] == 0:
				matrix[8][8] = 2
				matrix[9][8] = 2
				matrix[9][7] = 2
				matrix[9][9] = 2
				sam_points += 5
			elif matrix[9][8] == 1:
				matrix[9][8] = 2
				sam_points += 1
				perks.success -= 1
			elif matrix[9][8] == 2:
				_on_sam_timer_timeout()
		
		
	elif which_way == "move_right":
		if sam_hoz == 0 and sam_vert == 0:
			sam_hoz = 1
			sam_vert = 0
			if matrix[1][0] == 0:
				matrix[1][0] = 2
				matrix[0][0] = 2
				matrix[2][0] = 2
				matrix[1][1] = 2
				sam_points += 5
			elif matrix[1][0] == 1:
				matrix[1][0] = 2
				sam_points += 1
				perks.success -= 1
			elif matrix[1][0] == 2:
				_on_sam_timer_timeout()
		elif sam_hoz == 0 and sam_vert == 1:
			sam_hoz = 1
			sam_vert = 1
			if matrix[1][1] == 0:
				matrix[1][1] = 2
				matrix[0][1] = 2
				matrix[2][1] = 2
				matrix[1][0] = 2
				matrix[1][2] = 2
				sam_points += 5
			elif matrix[1][1] == 1:
				matrix[1][1] = 2
				sam_points += 1
				perks.success -= 1
			elif matrix[1][1] == 2:
				_on_sam_timer_timeout()
		elif sam_hoz == 0 and sam_vert == 2:
			sam_hoz = 1
			sam_vert = 2
			if matrix[1][2] == 0:
				matrix[1][2] = 2
				matrix[0][2] = 2
				matrix[2][2] = 2
				matrix[1][1] = 2
				matrix[1][3] = 2
				sam_points += 5
			elif matrix[1][2] == 1:
				matrix[1][2] = 2
				sam_points += 1
				perks.success -= 1
			elif matrix[1][2] == 2:
				_on_sam_timer_timeout()
		elif sam_hoz == 0 and sam_vert == 3:
			sam_hoz = 1
			sam_vert = 3
			if matrix[1][3] == 0:
				matrix[1][3] = 2
				matrix[0][3] = 2
				matrix[2][3] = 2
				matrix[1][2] = 2
				matrix[1][4] = 2
				sam_points += 5
			elif matrix[1][3] == 1:
				matrix[1][3] = 2
				sam_points += 1
				perks.success -= 1
			elif matrix[1][3] == 2:
				_on_sam_timer_timeout()
		elif sam_hoz == 0 and sam_vert == 4:
			sam_hoz = 1
			sam_vert = 4
			if matrix[1][4] == 0:
				matrix[1][4] = 2
				matrix[2][4] = 2
				matrix[0][4] = 2
				matrix[1][3] = 2
				matrix[1][5] = 2
				sam_points += 5
			elif matrix[1][4] == 1:
				matrix[1][4] = 2
				sam_points += 1
				perks.success -= 1
			elif matrix[1][4] == 2:
				_on_sam_timer_timeout()
		elif sam_hoz == 0 and sam_vert == 5:
			sam_hoz = 1
			sam_vert = 5
			if matrix[1][5] == 0:
				matrix[1][5] = 2
				matrix[2][5] = 2
				matrix[0][5] = 2
				matrix[1][4] = 2
				matrix[1][6] = 2
				sam_points += 5
			elif matrix[1][5] == 1:
				matrix[1][5] = 2
				sam_points += 1
				perks.success -= 1
			elif matrix[1][5] == 2:
				_on_sam_timer_timeout()
		elif sam_hoz == 0 and sam_vert == 6:
			sam_hoz = 1
			sam_vert = 6
			if matrix[1][6] == 0:
				matrix[1][6] = 2
				matrix[2][6] = 2
				matrix[0][6] = 2
				matrix[1][5] = 2
				matrix[1][7] = 2
				sam_points += 5
			elif matrix[1][6] == 1:
				matrix[1][6] = 2
				sam_points += 1
				perks.success -= 1
			elif matrix[1][6] == 2:
				_on_sam_timer_timeout()
		elif sam_hoz == 0 and sam_vert == 7:
			sam_hoz = 1
			sam_vert = 7
			if matrix[1][7] == 0:
				matrix[1][7] = 2
				matrix[2][7] = 2
				matrix[0][7] = 2
				matrix[1][6] = 2
				matrix[1][8] = 2
				sam_points += 5
			elif matrix[1][7] == 1:
				matrix[1][7] = 2
				sam_points += 1
				perks.success -= 1
			elif matrix[1][7] == 2:
				_on_sam_timer_timeout()
		elif sam_hoz == 0 and sam_vert == 8:
			sam_hoz = 1
			sam_vert = 8
			if matrix[1][8] == 0:
				matrix[1][8] = 2
				matrix[2][8] = 2
				matrix[0][8] = 2
				matrix[1][7] = 2
				matrix[1][9] = 2
				sam_points += 5
			elif matrix[1][8] == 1:
				matrix[1][8] = 2
				sam_points += 1
				perks.success -= 1
			elif matrix[1][8] == 2:
				_on_sam_timer_timeout()
		elif sam_hoz == 0 and sam_vert == 9:
			sam_hoz = 1
			sam_vert = 9
			if matrix[1][9] == 0:
				matrix[1][9] = 2
				matrix[2][9] = 2
				matrix[0][9] = 2
				matrix[1][8] = 2
				sam_points += 5
			elif matrix[1][9] == 1:
				matrix[1][9] = 2
				sam_points += 1
				perks.success -= 1
			elif matrix[1][9] == 2:
				_on_sam_timer_timeout()
	
	
		elif sam_hoz == 1 and sam_vert == 0:
			sam_hoz = 2
			sam_vert = 0
			if matrix[2][0] == 0:
				matrix[2][0] = 2
				matrix[1][0] = 2
				matrix[3][0] = 2
				matrix[2][1] = 2
				sam_points += 5
			elif matrix[2][0] == 1:
				matrix[2][0] = 2
				sam_points += 1
				perks.success -= 1
			elif matrix[2][0] == 2:
				_on_sam_timer_timeout()
		elif sam_hoz == 1 and sam_vert == 1:
			sam_hoz = 2
			sam_vert = 1
			if matrix[2][1] == 0:
				matrix[2][1] = 2
				matrix[1][1] = 2
				matrix[3][1] = 2
				matrix[2][0] = 2
				matrix[2][2] = 2
				sam_points += 5
			elif matrix[2][1] == 1:
				matrix[2][1] = 2
				sam_points += 1
				perks.success -= 1
			elif matrix[2][1] == 2:
				_on_sam_timer_timeout()
		elif sam_hoz == 1 and sam_vert == 2:
			sam_hoz = 2
			sam_vert = 2
			if matrix[2][2] == 0:
				matrix[2][2] = 2
				matrix[1][2] = 2
				matrix[3][2] = 2
				matrix[2][1] = 2
				matrix[2][3] = 2
				sam_points += 5
			elif matrix[2][2] == 1:
				matrix[2][2] = 2
				sam_points += 1
				perks.success -= 1
			elif matrix[2][2] == 2:
				_on_sam_timer_timeout()
		elif sam_hoz == 1 and sam_vert == 3:
			sam_hoz = 2
			sam_vert = 3
			if matrix[2][3] == 0:
				matrix[2][3] = 2
				matrix[1][3] = 2
				matrix[3][3] = 2
				matrix[2][2] = 2
				matrix[2][4] = 2
				sam_points += 5
			elif matrix[2][3] == 1:
				matrix[2][3] = 2
				sam_points += 1
				perks.success -= 1
			elif matrix[2][3] == 2:
				_on_sam_timer_timeout()
		elif sam_hoz == 1 and sam_vert == 4:
			sam_hoz = 2
			sam_vert = 4
			if matrix[2][4] == 0:
				matrix[2][4] = 2
				matrix[3][4] = 2
				matrix[1][4] = 2
				matrix[2][3] = 2
				matrix[2][5] = 2
				sam_points += 5
			elif matrix[2][4] == 1:
				matrix[2][4] = 2
				sam_points += 1
				perks.success -= 1
			elif matrix[2][4] == 2:
				_on_sam_timer_timeout()
		elif sam_hoz == 1 and sam_vert == 5:
			sam_hoz = 2
			sam_vert = 5
			if matrix[2][5] == 0:
				matrix[2][5] = 2
				matrix[3][5] = 2
				matrix[1][5] = 2
				matrix[2][4] = 2
				matrix[2][6] = 2
				sam_points += 5
			elif matrix[2][5] == 1:
				matrix[2][5] = 2
				sam_points += 1
				perks.success -= 1
			elif matrix[2][5] == 2:
				_on_sam_timer_timeout()
		elif sam_hoz == 1 and sam_vert == 6:
			sam_hoz = 2
			sam_vert = 6
			if matrix[2][6] == 0:
				matrix[2][6] = 2
				matrix[3][6] = 2
				matrix[1][6] = 2
				matrix[2][5] = 2
				matrix[2][7] = 2
				sam_points += 5
			elif matrix[2][6] == 1:
				matrix[2][6] = 2
				sam_points += 1
				perks.success -= 1
			elif matrix[2][6] == 2:
				_on_sam_timer_timeout()
		elif sam_hoz == 1 and sam_vert == 7:
			sam_hoz = 2
			sam_vert = 7
			if matrix[2][7] == 0:
				matrix[2][7] = 2
				matrix[3][7] = 2
				matrix[1][7] = 2
				matrix[2][6] = 2
				matrix[2][8] = 2
				sam_points += 5
			elif matrix[2][7] == 1:
				matrix[2][7] = 2
				sam_points += 1
				perks.success -= 1
			elif matrix[2][7] == 2:
				_on_sam_timer_timeout()
		elif sam_hoz == 1 and sam_vert == 8:
			sam_hoz = 2
			sam_vert = 8
			if matrix[2][8] == 0:
				matrix[2][8] = 2
				matrix[3][8] = 2
				matrix[1][8] = 2
				matrix[2][7] = 2
				matrix[2][9] = 2
				sam_points += 5
			elif matrix[2][8] == 1:
				matrix[2][8] = 2
				sam_points += 1
				perks.success -= 1
			elif matrix[2][8] == 2:
				_on_sam_timer_timeout()
		elif sam_hoz == 1 and sam_vert == 9:
			sam_hoz = 2
			sam_vert = 9
			if matrix[2][9] == 0:
				matrix[2][9] = 2
				matrix[3][9] = 2
				matrix[1][9] = 2
				matrix[2][8] = 2
				sam_points += 5
			elif matrix[2][9] == 1:
				matrix[2][9] = 2
				sam_points += 1
				perks.success -= 1
			elif matrix[2][9] == 2:
				_on_sam_timer_timeout()
		
		elif sam_hoz == 2 and sam_vert == 0:
			sam_hoz = 3
			sam_vert = 0
			if matrix[3][0] == 0:
				matrix[3][0] = 2
				matrix[2][0] = 2
				matrix[4][0] = 2
				matrix[3][1] = 2
				sam_points += 5
			elif matrix[3][0] == 1:
				matrix[3][0] = 2
				sam_points += 1
				perks.success -= 1
			elif matrix[3][0] == 2:
				_on_sam_timer_timeout()
		elif sam_hoz == 2 and sam_vert == 1:
			sam_hoz = 3
			sam_vert = 1
			if matrix[3][1] == 0:
				matrix[3][1] = 2
				matrix[2][1] = 2
				matrix[4][1] = 2
				matrix[3][0] = 2
				matrix[3][2] = 2
				sam_points += 5
			elif matrix[3][1] == 1:
				matrix[3][1] = 2
				sam_points += 1
				perks.success -= 1
			elif matrix[3][1] == 2:
				_on_sam_timer_timeout()
		elif sam_hoz == 2 and sam_vert == 2:
			sam_hoz = 3
			sam_vert = 2
			if matrix[3][2] == 0:
				matrix[3][2] = 2
				matrix[2][2] = 2
				matrix[4][2] = 2
				matrix[3][1] = 2
				matrix[3][3] = 2
				sam_points += 5
			elif matrix[3][2] == 1:
				matrix[3][2] = 2
				sam_points += 1
				perks.success -= 1
			elif matrix[3][2] == 2:
				_on_sam_timer_timeout()
		elif sam_hoz == 2 and sam_vert == 3:
			sam_hoz = 3
			sam_vert = 3
			if matrix[3][3] == 0:
				matrix[3][3] = 2
				matrix[2][3] = 2
				matrix[4][3] = 2
				matrix[3][2] = 2
				matrix[3][4] = 2
				sam_points += 5
			elif matrix[3][3] == 1:
				matrix[3][3] = 2
				sam_points += 1
				perks.success -= 1
			elif matrix[3][3] == 2:
				_on_sam_timer_timeout()
		elif sam_hoz == 2 and sam_vert == 4:
			sam_hoz = 3
			sam_vert = 4
			if matrix[3][4] == 0:
				matrix[3][4] = 2
				matrix[4][4] = 2
				matrix[2][4] = 2
				matrix[3][3] = 2
				matrix[3][5] = 2
				sam_points += 5
			elif matrix[3][4] == 1:
				matrix[3][4] = 2
				sam_points += 1
				perks.success -= 1
			elif matrix[3][4] == 2:
				_on_sam_timer_timeout()
		elif sam_hoz == 2 and sam_vert == 5:
			sam_hoz = 3
			sam_vert = 5
			if matrix[3][5] == 0:
				matrix[3][5] = 2
				matrix[4][5] = 2
				matrix[2][5] = 2
				matrix[3][4] = 2
				matrix[3][6] = 2
				sam_points += 5
			elif matrix[3][5] == 1:
				matrix[3][5] = 2
				sam_points += 1
				perks.success -= 1
			elif matrix[3][5] == 2:
				_on_sam_timer_timeout()
		elif sam_hoz == 2 and sam_vert == 6:
			sam_hoz = 3
			sam_vert = 6
			if matrix[3][6] == 0:
				matrix[3][6] = 2
				matrix[4][6] = 2
				matrix[2][6] = 2
				matrix[3][5] = 2
				matrix[3][7] = 2
				sam_points += 5
			elif matrix[3][6] == 1:
				matrix[3][6] = 2
				sam_points += 1
				perks.success -= 1
			elif matrix[3][6] == 2:
				_on_sam_timer_timeout()
		elif sam_hoz == 2 and sam_vert == 7:
			sam_hoz = 3
			sam_vert = 7
			if matrix[3][7] == 0:
				matrix[3][7] = 2
				matrix[4][7] = 2
				matrix[2][7] = 2
				matrix[3][6] = 2
				matrix[3][8] = 2
				sam_points += 5
			elif matrix[3][7] == 1:
				matrix[3][7] = 2
				sam_points += 1
				perks.success -= 1
			elif matrix[3][7] == 2:
				_on_sam_timer_timeout()
		elif sam_hoz == 2 and sam_vert == 8:
			sam_hoz = 3
			sam_vert = 8
			if matrix[3][8] == 0:
				matrix[3][8] = 2
				matrix[4][8] = 2
				matrix[2][8] = 2
				matrix[3][7] = 2
				matrix[3][9] = 2
				sam_points += 5
			elif matrix[3][8] == 1:
				matrix[3][8] = 2
				sam_points += 1
				perks.success -= 1
			elif matrix[3][8] == 2:
				_on_sam_timer_timeout()
		elif sam_hoz == 2 and sam_vert == 9:
			sam_hoz = 3
			sam_vert = 9
			if matrix[3][9] == 0:
				matrix[3][9] = 2
				matrix[4][9] = 2
				matrix[2][9] = 2
				matrix[3][8] = 2
				sam_points += 5
			elif matrix[3][9] == 1:
				matrix[3][9] = 2
				sam_points += 1
				perks.success -= 1
			elif matrix[3][9] == 2:
				_on_sam_timer_timeout()
		
		elif sam_hoz == 3 and sam_vert == 0:
			sam_hoz = 4
			sam_vert = 0
			if matrix[4][0] == 0:
				matrix[4][0] = 2
				matrix[3][0] = 2
				matrix[5][0] = 2
				matrix[4][1] = 2
				sam_points += 5
			elif matrix[4][0] == 1:
				matrix[4][0] = 2
				sam_points += 1
				perks.success -= 1
			elif matrix[4][0] == 2:
				_on_sam_timer_timeout()
		elif sam_hoz == 3 and sam_vert == 1:
			sam_hoz = 4
			sam_vert = 1
			if matrix[4][1] == 0:
				matrix[4][1] = 2
				matrix[3][1] = 2
				matrix[5][1] = 2
				matrix[4][0] = 2
				matrix[4][2] = 2
				sam_points += 5
			elif matrix[4][1] == 1:
				matrix[4][1] = 2
				sam_points += 1
				perks.success -= 1
			elif matrix[4][1] == 2:
				_on_sam_timer_timeout()
		elif sam_hoz == 3 and sam_vert == 2:
			sam_hoz = 4
			sam_vert = 2
			if matrix[4][2] == 0:
				matrix[4][2] = 2
				matrix[3][2] = 2
				matrix[5][2] = 2
				matrix[4][1] = 2
				matrix[4][3] = 2
				sam_points += 5
			elif matrix[4][2] == 1:
				matrix[4][2] = 2
				sam_points += 1
				perks.success -= 1
			elif matrix[4][2] == 2:
				_on_sam_timer_timeout()
		elif sam_hoz == 3 and sam_vert == 3:
			sam_hoz = 4
			sam_vert = 3
			if matrix[4][3] == 0:
				matrix[4][3] = 2
				matrix[3][3] = 2
				matrix[5][3] = 2
				matrix[4][2] = 2
				matrix[4][4] = 2
				sam_points += 5
			elif matrix[4][3] == 1:
				matrix[4][3] = 2
				sam_points += 1
				perks.success -= 1
			elif matrix[4][3] == 2:
				_on_sam_timer_timeout()
		elif sam_hoz == 3 and sam_vert == 4:
			sam_hoz = 4
			sam_vert = 4
			if matrix[4][4] == 0:
				matrix[4][4] = 2
				matrix[5][4] = 2
				matrix[3][4] = 2
				matrix[4][3] = 2
				matrix[4][5] = 2
				sam_points += 5
			elif matrix[4][4] == 1:
				matrix[4][4] = 2
				sam_points += 1
				perks.success -= 1
			elif matrix[4][4] == 2:
				_on_sam_timer_timeout()
		elif sam_hoz == 3 and sam_vert == 5:
			sam_hoz = 4
			sam_vert = 5
			if matrix[4][5] == 0:
				matrix[4][5] = 2
				matrix[5][5] = 2
				matrix[3][5] = 2
				matrix[4][4] = 2
				matrix[4][6] = 2
				sam_points += 5
			elif matrix[4][5] == 1:
				matrix[4][5] = 2
				sam_points += 1
				perks.success -= 1
			elif matrix[4][5] == 2:
				_on_sam_timer_timeout()
		elif sam_hoz == 3 and sam_vert == 6:
			sam_hoz = 4
			sam_vert = 6
			if matrix[4][6] == 0:
				matrix[4][6] = 2
				matrix[5][6] = 2
				matrix[3][6] = 2
				matrix[4][5] = 2
				matrix[4][7] = 2
				sam_points += 5
			elif matrix[4][6] == 1:
				matrix[4][6] = 2
				sam_points += 1
				perks.success -= 1
			elif matrix[4][6] == 2:
				_on_sam_timer_timeout()
		elif sam_hoz == 3 and sam_vert == 7:
			sam_hoz = 4
			sam_vert = 7
			if matrix[4][7] == 0:
				matrix[4][7] = 2
				matrix[5][7] = 2
				matrix[3][7] = 2
				matrix[4][6] = 2
				matrix[4][8] = 2
				sam_points += 5
			elif matrix[4][7] == 1:
				matrix[4][7] = 2
				sam_points += 1
				perks.success -= 1
			elif matrix[4][7] == 2:
				_on_sam_timer_timeout()
		elif sam_hoz == 3 and sam_vert == 8:
			sam_hoz = 4
			sam_vert = 8
			if matrix[4][8] == 0:
				matrix[4][8] = 2
				matrix[5][8] = 2
				matrix[3][8] = 2
				matrix[4][7] = 2
				matrix[4][9] = 2
				sam_points += 5
			elif matrix[4][8] == 1:
				matrix[4][8] = 2
				sam_points += 1
				perks.success -= 1
			elif matrix[4][8] == 2:
				_on_sam_timer_timeout()
		elif sam_hoz == 3 and sam_vert == 9:
			sam_hoz = 4
			sam_vert = 9
			if matrix[4][9] == 0:
				matrix[4][9] = 2
				matrix[5][9] = 2
				matrix[3][9] = 2
				matrix[4][8] = 2
				sam_points += 5
			elif matrix[4][9] == 1:
				matrix[4][9] = 2
				sam_points += 1
				perks.success -= 1
			elif matrix[4][9] == 2:
				_on_sam_timer_timeout()
		
		elif sam_hoz == 4 and sam_vert == 0:
			sam_hoz = 5
			sam_vert = 0
			if matrix[5][0] == 0:
				matrix[5][0] = 2
				matrix[4][0] = 2
				matrix[6][0] = 2
				matrix[5][1] = 2
				sam_points += 5
			elif matrix[5][0] == 1:
				matrix[5][0] = 2
				sam_points += 1
				perks.success -= 1
			elif matrix[5][0] == 2:
				_on_sam_timer_timeout()
		elif sam_hoz == 4 and sam_vert == 1:
			sam_hoz = 5
			sam_vert = 1
			if matrix[5][1] == 0:
				matrix[5][1] = 2
				matrix[4][1] = 2
				matrix[6][1] = 2
				matrix[5][0] = 2
				matrix[5][2] = 2
				sam_points += 5
			elif matrix[5][1] == 1:
				matrix[5][1] = 2
				sam_points += 1
				perks.success -= 1
			elif matrix[5][1] == 2:
				_on_sam_timer_timeout()
		elif sam_hoz == 4 and sam_vert == 2:
			sam_hoz = 5
			sam_vert = 2
			if matrix[5][2] == 0:
				matrix[5][2] = 2
				matrix[4][2] = 2
				matrix[6][2] = 2
				matrix[5][1] = 2
				matrix[5][3] = 2
				sam_points += 5
			elif matrix[5][2] == 1:
				matrix[5][2] = 2
				sam_points += 1
				perks.success -= 1
			elif matrix[5][2] == 2:
				_on_sam_timer_timeout()
		elif sam_hoz == 4 and sam_vert == 3:
			sam_hoz = 5
			sam_vert = 3
			if matrix[5][3] == 0:
				matrix[5][3] = 2
				matrix[4][3] = 2
				matrix[6][3] = 2
				matrix[5][2] = 2
				matrix[5][4] = 2
				sam_points += 5
			elif matrix[5][3] == 1:
				matrix[5][3] = 2
				sam_points += 1
				perks.success -= 1
			elif matrix[5][3] == 2:
				_on_sam_timer_timeout()
		elif sam_hoz == 4 and sam_vert == 4:
			sam_hoz = 5
			sam_vert = 4
			if matrix[5][4] == 0:
				matrix[5][4] = 2
				matrix[6][4] = 2
				matrix[4][4] = 2
				matrix[5][3] = 2
				matrix[5][5] = 2
				sam_points += 5
			elif matrix[5][4] == 1:
				matrix[5][4] = 2
				sam_points += 1
				perks.success -= 1
			elif matrix[5][4] == 2:
				_on_sam_timer_timeout()
		elif sam_hoz == 4 and sam_vert == 5:
			sam_hoz = 5
			sam_vert = 5
			if matrix[5][5] == 0:
				matrix[5][5] = 2
				matrix[6][5] = 2
				matrix[4][5] = 2
				matrix[5][4] = 2
				matrix[5][6] = 2
				sam_points += 5
			elif matrix[5][5] == 1:
				matrix[5][5] = 2
				sam_points += 1
				perks.success -= 1
			elif matrix[5][5] == 2:
				_on_sam_timer_timeout()
		elif sam_hoz == 4 and sam_vert == 6:
			sam_hoz = 5
			sam_vert = 6
			if matrix[5][6] == 0:
				matrix[5][6] = 2
				matrix[6][6] = 2
				matrix[4][6] = 2
				matrix[5][5] = 2
				matrix[5][7] = 2
				sam_points += 5
			elif matrix[5][6] == 1:
				matrix[5][6] = 2
				sam_points += 1
				perks.success -= 1
			elif matrix[5][6] == 2:
				_on_sam_timer_timeout()
		elif sam_hoz == 4 and sam_vert == 7:
			sam_hoz = 5
			sam_vert = 7
			if matrix[5][7] == 0:
				matrix[5][7] = 2
				matrix[6][7] = 2
				matrix[4][7] = 2
				matrix[5][6] = 2
				matrix[5][8] = 2
				sam_points += 5
			elif matrix[5][7] == 1:
				matrix[5][7] = 2
				sam_points += 1
				perks.success -= 1
			elif matrix[5][7] == 2:
				_on_sam_timer_timeout()
		elif sam_hoz == 4 and sam_vert == 8:
			sam_hoz = 5
			sam_vert = 8
			if matrix[5][8] == 0:
				matrix[5][8] = 2
				matrix[6][8] = 2
				matrix[4][8] = 2
				matrix[5][7] = 2
				matrix[5][9] = 2
				sam_points += 5
			elif matrix[5][8] == 1:
				matrix[5][8] = 2
				sam_points += 1
				perks.success -= 1
			elif matrix[5][8] == 2:
				_on_sam_timer_timeout()
		elif sam_hoz == 4 and sam_vert == 9:
			sam_hoz = 5
			sam_vert = 9
			if matrix[5][9] == 0:
				matrix[5][9] = 2
				matrix[6][9] = 2
				matrix[4][9] = 2
				matrix[5][8] = 2
				sam_points += 5
			elif matrix[5][9] == 1:
				matrix[5][9] = 2
				sam_points += 1
				perks.success -= 1
			elif matrix[5][9] == 2:
				_on_sam_timer_timeout()
		
		
		elif sam_hoz == 5 and sam_vert == 0:
			sam_hoz = 6
			sam_vert = 0
			if matrix[6][0] == 0:
				matrix[6][0] = 2
				matrix[5][0] = 2
				matrix[7][0] = 2
				matrix[6][1] = 2
				sam_points += 5
			elif matrix[6][0] == 1:
				matrix[6][0] = 2
				sam_points += 1
				perks.success -= 1
			elif matrix[6][0] == 2:
				_on_sam_timer_timeout()
		elif sam_hoz == 5 and sam_vert == 1:
			sam_hoz = 6
			sam_vert = 1
			if matrix[6][1] == 0:
				matrix[6][1] = 2
				matrix[5][1] = 2
				matrix[7][1] = 2
				matrix[6][0] = 2
				matrix[6][2] = 2
				sam_points += 5
			elif matrix[6][1] == 1:
				matrix[6][1] = 2
				sam_points += 1
				perks.success -= 1
			elif matrix[6][1] == 2:
				_on_sam_timer_timeout()
		elif sam_hoz == 5 and sam_vert == 2:
			sam_hoz = 6
			sam_vert = 2
			if matrix[6][2] == 0:
				matrix[6][2] = 2
				matrix[5][2] = 2
				matrix[7][2] = 2
				matrix[6][1] = 2
				matrix[6][3] = 2
				sam_points += 5
			elif matrix[6][2] == 1:
				matrix[6][2] = 2
				sam_points += 1
				perks.success -= 1
			elif matrix[6][2] == 2:
				_on_sam_timer_timeout()
		elif sam_hoz == 5 and sam_vert == 3:
			sam_hoz = 6
			sam_vert = 3
			if matrix[6][3] == 0:
				matrix[6][3] = 2
				matrix[5][3] = 2
				matrix[7][3] = 2
				matrix[6][2] = 2
				matrix[6][4] = 2
				sam_points += 5
			elif matrix[6][3] == 1:
				matrix[6][3] = 2
				sam_points += 1
				perks.success -= 1
			elif matrix[6][3] == 2:
				_on_sam_timer_timeout()
		elif sam_hoz == 5 and sam_vert == 4:
			sam_hoz = 6
			sam_vert = 4
			if matrix[6][4] == 0:
				matrix[6][4] = 2
				matrix[7][4] = 2
				matrix[5][4] = 2
				matrix[6][3] = 2
				matrix[6][5] = 2
				sam_points += 5
			elif matrix[6][4] == 1:
				matrix[6][4] = 2
				sam_points += 1
				perks.success -= 1
			elif matrix[6][4] == 2:
				_on_sam_timer_timeout()
		elif sam_hoz == 5 and sam_vert == 5:
			sam_hoz = 6
			sam_vert = 5
			if matrix[6][5] == 0:
				matrix[6][5] = 1
				matrix[7][5] = 1
				matrix[5][5] = 1
				matrix[6][4] = 1
				matrix[6][6] = 1
				sam_points += 5
			elif matrix[6][5] == 1:
				matrix[6][5] = 1
				sam_points += 1
				perks.success -= 1
			elif matrix[6][5] == 2:
				_on_sam_timer_timeout()
		elif sam_hoz == 5 and sam_vert == 6:
			sam_hoz = 6
			sam_vert = 6
			if matrix[6][6] == 0:
				matrix[6][6] = 2
				matrix[7][6] = 2
				matrix[5][6] = 2
				matrix[6][5] = 2
				matrix[6][7] = 2
				sam_points += 5
			elif matrix[6][6] == 1:
				matrix[6][6] = 2
				sam_points += 1
				perks.success -= 1
			elif matrix[6][6] == 2:
				_on_sam_timer_timeout()
		elif sam_hoz == 5 and sam_vert == 7:
			sam_hoz = 6
			sam_vert = 7
			if matrix[6][7] == 0:
				matrix[6][7] = 2
				matrix[7][7] = 2
				matrix[5][7] = 2
				matrix[6][6] = 2
				matrix[6][8] = 2
				sam_points += 5
			elif matrix[6][7] == 1:
				matrix[6][7] = 2
				sam_points += 1
				perks.success -= 1
			elif matrix[6][7] == 2:
				_on_sam_timer_timeout()
		elif sam_hoz == 5 and sam_vert == 8:
			sam_hoz = 6
			sam_vert = 8
			if matrix[6][8] == 0:
				matrix[6][8] = 2
				matrix[7][8] = 2
				matrix[5][8] = 2
				matrix[6][7] = 2
				matrix[6][9] = 2
				sam_points += 5
			elif matrix[6][8] == 1:
				matrix[6][8] = 2
				sam_points += 1
				perks.success -= 1
			elif matrix[6][8] == 2:
				_on_sam_timer_timeout()
		elif sam_hoz == 5 and sam_vert == 9:
			sam_hoz = 6
			sam_vert = 9
			if matrix[6][9] == 0:
				matrix[6][9] = 2
				matrix[7][9] = 2
				matrix[5][9] = 2
				matrix[6][8] = 2
				sam_points += 5
			elif matrix[6][9] == 1:
				matrix[6][9] = 2
				sam_points += 1
				perks.success -= 1
			elif matrix[6][9] == 2:
				_on_sam_timer_timeout()
				
		elif sam_hoz == 6 and sam_vert == 0:
			sam_hoz = 7
			sam_vert = 0
			if matrix[7][0] == 0:
				matrix[7][0] = 2
				matrix[6][0] = 2
				matrix[8][0] = 2
				matrix[7][1] = 2
				sam_points += 5
			elif matrix[7][0] == 1:
				matrix[7][0] = 2
				sam_points += 1
				perks.success -= 1
			elif matrix[7][0] == 2:
				_on_sam_timer_timeout()
		elif sam_hoz == 6 and sam_vert == 1:
			sam_hoz = 7
			sam_vert = 1
			if matrix[7][1] == 0:
				matrix[7][1] = 2
				matrix[6][1] = 2
				matrix[8][1] = 2
				matrix[7][0] = 2
				matrix[7][2] = 2
				sam_points += 5
			elif matrix[7][1] == 1:
				matrix[7][1] = 2
				sam_points += 1
				perks.success -= 1
			elif matrix[7][1] == 2:
				_on_sam_timer_timeout()
		elif sam_hoz == 6 and sam_vert == 2:
			sam_hoz = 7
			sam_vert = 2
			if matrix[7][2] == 0:
				matrix[7][2] = 2
				matrix[6][2] = 2
				matrix[8][2] = 2
				matrix[7][1] = 2
				matrix[7][3] = 2
				sam_points += 5
			elif matrix[7][2] == 1:
				matrix[7][2] = 2
				sam_points += 1
				perks.success -= 1
			elif matrix[7][2] == 2:
				_on_sam_timer_timeout()
		elif sam_hoz == 6 and sam_vert == 3:
			sam_hoz = 7
			sam_vert = 3
			if matrix[7][3] == 0:
				matrix[7][3] = 2
				matrix[6][3] = 2
				matrix[8][3] = 2
				matrix[7][2] = 2
				matrix[7][4] = 2
				sam_points += 5
			elif matrix[7][3] == 1:
				matrix[7][3] = 2
				sam_points += 1
				perks.success -= 1
			elif matrix[7][3] == 2:
				_on_sam_timer_timeout()
		elif sam_hoz == 6 and sam_vert == 4:
			sam_hoz = 7
			sam_vert = 4
			if matrix[7][4] == 0:
				matrix[7][4] = 2
				matrix[8][4] = 2
				matrix[6][4] = 2
				matrix[7][3] = 2
				matrix[7][5] = 2
				sam_points += 5
			elif matrix[7][4] == 1:
				matrix[7][4] = 2
				sam_points += 1
				perks.success -= 1
			elif matrix[7][4] == 2:
				_on_sam_timer_timeout()
		elif sam_hoz == 6 and sam_vert == 5:
			sam_hoz = 7
			sam_vert = 5
			if matrix[7][5] == 0:
				matrix[7][5] = 2
				matrix[8][5] = 2
				matrix[6][5] = 2
				matrix[7][4] = 2
				matrix[7][6] = 2
				sam_points += 5
			elif matrix[7][5] == 1:
				matrix[7][5] = 2
				sam_points += 1
				perks.success -= 1
			elif matrix[7][5] == 2:
				_on_sam_timer_timeout()
		elif sam_hoz == 6 and sam_vert == 6:
			sam_hoz = 7
			sam_vert = 6
			if matrix[7][6] == 0:
				matrix[7][6] = 2
				matrix[8][6] = 2
				matrix[6][6] = 2
				matrix[7][5] = 2
				matrix[7][7] = 2
				sam_points += 5
			elif matrix[7][6] == 1:
				matrix[7][6] = 2
				sam_points += 1
				perks.success -= 1
			elif matrix[7][6] == 2:
				_on_sam_timer_timeout()
		elif sam_hoz == 6 and sam_vert == 7:
			sam_hoz = 7
			sam_vert = 7
			if matrix[7][7] == 0:
				matrix[7][7] = 2
				matrix[8][7] = 2
				matrix[6][7] = 2
				matrix[7][6] = 2
				matrix[7][8] = 2
				sam_points += 5
			elif matrix[7][7] == 1:
				matrix[7][7] = 2
				sam_points += 1
				perks.success -= 1
			elif matrix[7][7] == 2:
				_on_sam_timer_timeout()
		elif sam_hoz == 6 and sam_vert == 8:
			sam_hoz = 7
			sam_vert = 8
			if matrix[7][8] == 0:
				matrix[7][8] = 2
				matrix[8][8] = 2
				matrix[6][8] = 2
				matrix[7][7] = 2
				matrix[7][9] = 2
				sam_points += 5
			elif matrix[7][8] == 1:
				matrix[7][8] = 2
				sam_points += 1
				perks.success -= 1
			elif matrix[7][8] == 2:
				_on_sam_timer_timeout()
		elif sam_hoz == 6 and sam_vert == 9:
			sam_hoz = 7
			sam_vert = 9
			if matrix[7][9] == 0:
				matrix[7][9] = 2
				matrix[8][9] = 2
				matrix[6][9] = 2
				matrix[7][8] = 2
				sam_points += 5
			elif matrix[7][9] == 1:
				matrix[7][9] = 2
				sam_points += 1
				perks.success -= 1
			elif matrix[7][9] == 2:
				_on_sam_timer_timeout()
				
		elif sam_hoz == 7 and sam_vert == 0:
			sam_hoz = 8
			sam_vert = 0
			if matrix[8][0] == 0:
				matrix[8][0] = 2
				matrix[7][0] = 2
				matrix[9][0] = 2
				matrix[8][1] = 2
				sam_points += 5
			elif matrix[8][0] == 1:
				matrix[8][0] = 2
				sam_points += 1
				perks.success -= 1
			elif matrix[8][0] == 2:
				_on_sam_timer_timeout()
		elif sam_hoz == 7 and sam_vert == 1:
			sam_hoz = 8
			sam_vert = 1
			if matrix[8][1] == 0:
				matrix[8][1] = 2
				matrix[7][1] = 2
				matrix[9][1] = 2
				matrix[8][0] = 2
				matrix[8][2] = 2
				sam_points += 5
			elif matrix[8][1] == 1:
				matrix[8][1] = 2
				sam_points += 1
				perks.success -= 1
			elif matrix[8][1] == 2:
				_on_sam_timer_timeout()
		elif sam_hoz == 7 and sam_vert == 2:
			sam_hoz = 8
			sam_vert = 2
			if matrix[8][2] == 0:
				matrix[8][2] = 2
				matrix[7][2] = 2
				matrix[9][2] = 2
				matrix[8][1] = 2
				matrix[8][3] = 2
				sam_points += 5
			elif matrix[8][2] == 1:
				matrix[8][2] = 2
				sam_points += 1
				perks.success -= 1
			elif matrix[8][2] == 2:
				_on_sam_timer_timeout()
		elif sam_hoz == 7 and sam_vert == 3:
			sam_hoz = 8
			sam_vert = 3
			if matrix[8][3] == 0:
				matrix[8][3] = 2
				matrix[7][3] = 2
				matrix[9][3] = 2
				matrix[8][2] = 2
				matrix[8][4] = 2
				sam_points += 5
			elif matrix[8][3] == 1:
				matrix[8][3] = 2
				sam_points += 1
				perks.success -= 1
			elif matrix[8][3] == 2:
				_on_sam_timer_timeout()
		elif sam_hoz == 7 and sam_vert == 4:
			sam_hoz = 8
			sam_vert = 4
			if matrix[8][4] == 0:
				matrix[8][4] = 2
				matrix[9][4] = 2
				matrix[7][4] = 2
				matrix[8][3] = 2
				matrix[8][5] = 2
				sam_points += 5
			elif matrix[8][4] == 1:
				matrix[8][4] = 2
				sam_points += 1
				perks.success -= 1
			elif matrix[8][4] == 2:
				_on_sam_timer_timeout()
		elif sam_hoz == 7 and sam_vert == 5:
			sam_hoz = 8
			sam_vert = 5
			if matrix[8][5] == 0:
				matrix[8][5] = 2
				matrix[9][5] = 2
				matrix[7][5] = 2
				matrix[8][4] = 2
				matrix[8][6] = 2
				sam_points += 5
			elif matrix[8][5] == 1:
				matrix[8][5] = 2
				sam_points += 1
				perks.success -= 1
			elif matrix[8][5] == 2:
				_on_sam_timer_timeout()
		elif sam_hoz == 7 and sam_vert == 6:
			sam_hoz = 8
			sam_vert = 6
			if matrix[8][6] == 0:
				matrix[8][6] = 2
				matrix[9][6] = 2
				matrix[7][6] = 2
				matrix[8][5] = 2
				matrix[8][7] = 2
				sam_points += 5
			elif matrix[8][6] == 1:
				matrix[8][6] = 2
				sam_points += 1
				perks.success -= 1
			elif matrix[8][6] == 2:
				_on_sam_timer_timeout()
		elif sam_hoz == 7 and sam_vert == 7:
			sam_hoz = 8
			sam_vert = 7
			if matrix[8][7] == 0:
				matrix[8][7] = 2
				matrix[9][7] = 2
				matrix[7][7] = 2
				matrix[8][6] = 2
				matrix[8][8] = 2
				sam_points += 5
			elif matrix[8][7] == 1:
				matrix[8][7] = 2
				sam_points += 1
				perks.success -= 1
			elif matrix[8][7] == 2:
				_on_sam_timer_timeout()
		elif sam_hoz == 7 and sam_vert == 8:
			sam_hoz = 8
			sam_vert = 8
			if matrix[8][8] == 0:
				matrix[8][8] = 2
				matrix[9][8] = 2
				matrix[7][8] = 2
				matrix[8][7] = 2
				matrix[8][9] = 2
				sam_points += 5
			elif matrix[8][8] == 1:
				matrix[8][8] = 2
				sam_points += 1
				perks.success -= 1
			elif matrix[8][8] == 2:
				_on_sam_timer_timeout()
		elif sam_hoz == 7 and sam_vert == 9:
			sam_hoz = 8
			sam_vert = 9
			if matrix[8][9] == 0:
				matrix[8][9] = 2
				matrix[9][9] = 2
				matrix[7][9] = 2
				matrix[8][8] = 2
				sam_points += 5
			elif matrix[8][9] == 1:
				matrix[8][9] = 2
				sam_points += 1
				perks.success -= 1
			elif matrix[8][9] == 2:
				_on_sam_timer_timeout()
				
		elif sam_hoz == 8 and sam_vert == 0:
			sam_hoz = 9
			sam_vert = 0
			if matrix[9][0] == 0:
				matrix[9][0] = 2
				matrix[8][0] = 2
				matrix[9][1] = 2
				sam_points += 5
			elif matrix[9][0] == 1:
				matrix[9][0] = 2
				sam_points += 1
				perks.success -= 1
			elif matrix[9][0] == 2:
				_on_sam_timer_timeout()
		elif sam_hoz == 8 and sam_vert == 1:
			sam_hoz = 9
			sam_vert = 1
			if matrix[9][1] == 0:
				matrix[9][1] = 2
				matrix[8][1] = 2
				matrix[9][0] = 2
				matrix[9][2] = 2
				sam_points += 5
			elif matrix[9][1] == 1:
				matrix[9][1] = 2
				sam_points += 1
				perks.success -= 1
			elif matrix[9][1] == 2:
				_on_sam_timer_timeout()
		elif sam_hoz == 8 and sam_vert == 2:
			sam_hoz = 9
			sam_vert = 2
			if matrix[9][2] == 0:
				matrix[9][2] = 2
				matrix[8][2] = 2
				matrix[9][1] = 2
				matrix[9][3] = 2
				sam_points += 5
			elif matrix[9][2] == 1:
				matrix[9][2] = 2
				sam_points += 1
				perks.success -= 1
			elif matrix[9][2] == 2:
				_on_sam_timer_timeout()
		elif sam_hoz == 8 and sam_vert == 3:
			sam_hoz = 9
			sam_vert = 3
			if matrix[9][3] == 0:
				matrix[9][3] = 2
				matrix[8][3] = 2
				matrix[9][2] = 2
				matrix[9][4] = 2
				sam_points += 5
			elif matrix[9][3] == 1:
				matrix[9][3] = 2
				sam_points += 1
				perks.success -= 1
			elif matrix[9][3] == 2:
				_on_sam_timer_timeout()
		elif sam_hoz == 8 and sam_vert == 4:
			sam_hoz = 9
			sam_vert = 4
			if matrix[9][4] == 0:
				matrix[9][4] = 2
				matrix[8][4] = 2
				matrix[9][3] = 2
				matrix[9][5] = 2
				sam_points += 5
			elif matrix[9][4] == 1:
				matrix[9][4] = 2
				sam_points += 1
				perks.success -= 1
			elif matrix[9][4] == 2:
				_on_sam_timer_timeout()
		elif sam_hoz == 8 and sam_vert == 5:
			sam_hoz = 9
			sam_vert = 5
			if matrix[9][5] == 0:
				matrix[9][5] = 2
				matrix[8][5] = 2
				matrix[9][4] = 2
				matrix[9][6] = 2
				sam_points += 5
			elif matrix[9][5] == 1:
				matrix[9][5] = 2
				sam_points += 1
				perks.success -= 1
			elif matrix[9][5] == 2:
				_on_sam_timer_timeout()
		elif sam_hoz == 8 and sam_vert == 6:
			sam_hoz = 9
			sam_vert = 6
			if matrix[9][6] == 0:
				matrix[9][6] = 2
				matrix[8][6] = 2
				matrix[9][5] = 2
				matrix[9][7] = 2
				sam_points += 5
			elif matrix[9][6] == 1:
				matrix[9][6] = 2
				sam_points += 1
				perks.success -= 1
			elif matrix[9][6] == 2:
				_on_sam_timer_timeout()
		elif sam_hoz == 8 and sam_vert == 7:
			sam_hoz = 9
			sam_vert = 7
			if matrix[9][7] == 0:
				matrix[9][7] = 2
				matrix[8][7] = 2
				matrix[9][6] = 2
				matrix[9][8] = 2
				sam_points += 5
			elif matrix[9][7] == 1:
				matrix[9][7] = 2
				sam_points += 1
				perks.success -= 1
			elif matrix[9][7] == 2:
				_on_sam_timer_timeout()
		elif sam_hoz == 8 and sam_vert == 8:
			sam_hoz = 9
			sam_vert = 8
			if matrix[9][8] == 0:
				matrix[9][8] = 2
				matrix[8][8] = 2
				matrix[9][7] = 2
				matrix[9][9] = 2
				sam_points += 5
			elif matrix[9][8] == 1:
				matrix[9][8] = 2
				sam_points += 1
				perks.success -= 1
			elif matrix[9][8] == 2:
				_on_sam_timer_timeout()
		elif sam_hoz == 8 and sam_vert == 9:
			sam_hoz = 9
			sam_vert = 9
			if matrix[9][9] == 0:
				matrix[9][9] = 2
				matrix[8][9] = 2
				matrix[9][8] = 2
				sam_points += 5
			elif matrix[9][9] == 1:
				matrix[9][9] = 2
				sam_points += 1
				perks.success -= 1
			elif matrix[9][9] == 2:
				_on_sam_timer_timeout()
			elif sam_hoz == 9:
				_on_sam_timer_timeout()

	elif which_way == "move_left":
		if sam_hoz == 0:
			_on_sam_timer_timeout()
		elif sam_hoz == 1 and sam_vert == 0:
			sam_hoz = 0
			sam_vert = 0
			if matrix[0][0] == 0:
				matrix[1][0] = 2
				matrix[0][0] = 2
				matrix[0][1] = 2
				sam_points += 5
			elif matrix[0][0] == 1:
				matrix[0][0] = 2
				sam_points += 1
				perks.success -= 1
			elif matrix[0][0] == 2:
				_on_sam_timer_timeout()
		elif sam_hoz == 1 and sam_vert == 1:
			sam_hoz = 0
			sam_vert = 1
			if matrix[0][1] == 0:
				matrix[0][1] = 2
				matrix[1][1] = 2
				matrix[0][0] = 2
				matrix[0][2] = 2
				sam_points += 5
			elif matrix[0][1] == 1:
				matrix[0][1] = 2
				sam_points += 1
				perks.success -= 1
			elif matrix[0][1] == 2:
				_on_sam_timer_timeout()
		elif sam_hoz == 1 and sam_vert == 2:
			sam_hoz = 0
			sam_vert = 2
			if matrix[0][2] == 0:
				matrix[0][2] = 2
				matrix[1][2] = 2
				matrix[0][1] = 2
				matrix[0][3] = 2
				sam_points += 5
			elif matrix[0][2] == 1:
				matrix[0][2] = 2
				sam_points += 1
				perks.success -= 1
			elif matrix[0][2] == 2:
				_on_sam_timer_timeout()
		elif sam_hoz == 1 and sam_vert == 3:
			sam_hoz = 0
			sam_vert = 3
			if matrix[0][3] == 0:
				matrix[0][3] = 2
				matrix[1][3] = 2
				matrix[0][2] = 2
				matrix[0][4] = 2
				sam_points += 5
			elif matrix[0][3] == 1:
				matrix[0][3] = 2
				sam_points += 1
				perks.success -= 1
			elif matrix[0][3] == 2:
				_on_sam_timer_timeout()
		elif sam_hoz == 1 and sam_vert == 4:
			sam_hoz = 0
			sam_vert = 4
			if matrix[0][4] == 0:
				matrix[0][4] = 2
				matrix[1][4] = 2
				matrix[0][3] = 2
				matrix[0][5] = 2
				sam_points += 5
			elif matrix[0][4] == 1:
				matrix[0][4] = 2
				sam_points += 1
				perks.success -= 1
			elif matrix[0][4] == 2:
				_on_sam_timer_timeout()
		elif sam_hoz == 1 and sam_vert == 5:
			sam_hoz = 0
			sam_vert = 5
			if matrix[0][5] == 0:
				matrix[0][5] = 2
				matrix[1][5] = 2
				matrix[0][4] = 2
				matrix[0][6] = 2
				sam_points += 5
			elif matrix[0][5] == 1:
				matrix[0][5] = 2
				sam_points += 1
				perks.success -= 1
			elif matrix[0][5] == 2:
				_on_sam_timer_timeout()
		elif sam_hoz == 1 and sam_vert == 6:
			sam_hoz = 0
			sam_vert = 6
			if matrix[0][6] == 0:
				matrix[0][6] = 2
				matrix[1][6] = 2
				matrix[0][5] = 2
				matrix[0][7] = 2
				sam_points += 5
			elif matrix[0][6] == 1:
				matrix[0][6] = 2
				sam_points += 1
				perks.success -= 1
			elif matrix[0][6] == 2:
				_on_sam_timer_timeout()
		elif sam_hoz == 1 and sam_vert == 7:
			sam_hoz = 0
			sam_vert = 7
			if matrix[0][7] == 0:
				matrix[0][7] = 2
				matrix[1][7] = 2
				matrix[0][6] = 2
				matrix[0][8] = 2
				sam_points += 5
			elif matrix[0][7] == 1:
				matrix[0][7] = 2
				sam_points += 1
				perks.success -= 1
			elif matrix[0][7] == 2:
				_on_sam_timer_timeout()
		elif sam_hoz == 1 and sam_vert == 8:
			sam_hoz = 0
			sam_vert = 8
			if matrix[0][8] == 0:
				matrix[0][8] = 2
				matrix[1][8] = 2
				matrix[0][7] = 2
				matrix[0][9] = 2
				sam_points += 5
			elif matrix[0][8] == 1:
				matrix[0][8] = 2
				sam_points += 1
				perks.success -= 1
			elif matrix[0][8] == 2:
				_on_sam_timer_timeout()
		elif sam_hoz == 1 and sam_vert == 9:
			sam_hoz = 0
			sam_vert = 9
			if matrix[0][9] == 0:
				matrix[0][9] = 2
				matrix[1][9] = 2
				matrix[0][8] = 2
				sam_points += 5
			elif matrix[0][9] == 1:
				matrix[0][9] = 2
				sam_points += 1
				perks.success -= 1
			elif matrix[0][9] == 2:
				_on_sam_timer_timeout()
				
		elif sam_hoz == 2 and sam_vert == 0:
			sam_hoz = 1
			sam_vert = 0
			if matrix[1][0] == 0:
				matrix[2][0] = 2
				matrix[1][0] = 2
				matrix[1][1] = 2
				matrix[0][0] = 2
				sam_points += 5
			elif matrix[1][0] == 1:
				matrix[1][0] = 2
				sam_points += 1
				perks.success -= 1
			elif matrix[1][0] == 2:
				_on_sam_timer_timeout()
		elif sam_hoz == 2 and sam_vert == 1:
			sam_hoz = 1
			sam_vert = 1
			if matrix[1][1] == 0:
				matrix[1][1] = 2
				matrix[2][1] = 2
				matrix[1][0] = 2
				matrix[1][2] = 2
				matrix[0][1] = 2
				sam_points += 5
			elif matrix[1][1] == 1:
				matrix[1][1] = 2
				sam_points += 1
				perks.success -= 1
			elif matrix[1][1] == 2:
				_on_sam_timer_timeout()
		elif sam_hoz == 2 and sam_vert == 2:
			sam_hoz = 1
			sam_vert = 2
			if matrix[1][2] == 0:
				matrix[0][2] = 2
				matrix[1][2] = 2
				matrix[2][2] = 2
				matrix[1][1] = 2
				matrix[1][3] = 2
				sam_points += 5
			elif matrix[1][2] == 1:
				matrix[1][2] = 2
				sam_points += 1
				perks.success -= 1
			elif matrix[1][2] == 2:
				_on_sam_timer_timeout()
		elif sam_hoz == 2 and sam_vert == 3:
			sam_hoz = 1
			sam_vert = 3
			if matrix[1][3] == 0:
				matrix[0][3] = 2
				matrix[1][3] = 2
				matrix[2][3] = 2
				matrix[1][2] = 2
				matrix[1][4] = 2
				sam_points += 5
			elif matrix[1][3] == 1:
				matrix[1][3] = 2
				sam_points += 1
				perks.success -= 1
			elif matrix[1][3] == 2:
				_on_sam_timer_timeout()
		elif sam_hoz == 2 and sam_vert == 4:
			sam_hoz = 1
			sam_vert = 4
			if matrix[1][4] == 0:
				matrix[0][4] = 2
				matrix[1][4] = 2
				matrix[2][4] = 2
				matrix[1][3] = 2
				matrix[1][5] = 2
				sam_points += 5
			elif matrix[1][4] == 1:
				matrix[1][4] = 2
				sam_points += 1
				perks.success -= 1
			elif matrix[1][4] == 2:
				_on_sam_timer_timeout()
		elif sam_hoz == 2 and sam_vert == 5:
			sam_hoz = 1
			sam_vert = 5
			if matrix[1][5] == 0:
				matrix[0][5] = 2
				matrix[1][5] = 2
				matrix[2][5] = 2
				matrix[1][4] = 2
				matrix[1][6] = 2
				sam_points += 5
			elif matrix[1][5] == 1:
				matrix[1][5] = 2
				sam_points += 1
				perks.success -= 1
			elif matrix[1][5] == 2:
				_on_sam_timer_timeout()
		elif sam_hoz == 2 and sam_vert == 6:
			sam_hoz = 1
			sam_vert = 6
			if matrix[1][6] == 0:
				matrix[0][6] = 2
				matrix[1][6] = 2
				matrix[2][6] = 2
				matrix[1][5] = 2
				matrix[1][7] = 2
				sam_points += 5
			elif matrix[1][6] == 1:
				matrix[1][6] = 2
				sam_points += 1
				perks.success -= 1
			elif matrix[1][6] == 2:
				_on_sam_timer_timeout()
		elif sam_hoz == 2 and sam_vert == 7:
			sam_hoz = 1
			sam_vert = 7
			if matrix[1][7] == 0:
				matrix[0][7] = 2
				matrix[1][7] = 2
				matrix[2][7] = 2
				matrix[1][6] = 2
				matrix[1][8] = 2
				sam_points += 5
			elif matrix[1][7] == 1:
				matrix[1][7] = 2
				sam_points += 1
				perks.success -= 1
			elif matrix[1][7] == 2:
				_on_sam_timer_timeout()
		elif sam_hoz == 2 and sam_vert == 8:
			sam_hoz = 1
			sam_vert = 8
			if matrix[1][8] == 0:
				matrix[0][8] = 2
				matrix[1][8] = 2
				matrix[2][8] = 2
				matrix[1][7] = 2
				matrix[1][9] = 2
				sam_points += 5
			elif matrix[1][8] == 1:
				matrix[1][8] = 2
				sam_points += 1
				perks.success -= 1
			elif matrix[1][8] == 2:
				_on_sam_timer_timeout()
		elif sam_hoz == 2 and sam_vert == 9:
			sam_hoz = 1
			sam_vert = 9
			if matrix[1][9] == 0:
				matrix[0][9] = 2
				matrix[1][9] = 2
				matrix[2][9] = 2
				matrix[1][8] = 2
				sam_points += 5
			elif matrix[1][9] == 1:
				matrix[1][9] = 2
				sam_points += 1
				perks.success -= 1
			elif matrix[1][9] == 2:
				_on_sam_timer_timeout()
				
		elif sam_hoz == 3 and sam_vert == 0:
			sam_hoz = 2
			sam_vert = 0
			if matrix[3][0] == 0:
				matrix[3][0] = 2
				matrix[2][0] = 2
				matrix[2][1] = 2
				matrix[1][0] = 2
				sam_points += 5
			elif matrix[2][0] == 1:
				matrix[2][0] = 2
				sam_points += 1
				perks.success -= 1
			elif matrix[2][0] == 2:
				_on_sam_timer_timeout()
		elif sam_hoz == 3 and sam_vert == 1:
			sam_hoz = 2
			sam_vert = 1
			if matrix[2][1] == 0:
				matrix[2][1] = 2
				matrix[3][1] = 2
				matrix[2][0] = 2
				matrix[2][2] = 2
				matrix[1][1] = 2
				sam_points += 5
			elif matrix[2][1] == 1:
				matrix[2][1] = 2
				sam_points += 1
				perks.success -= 1
			elif matrix[2][1] == 2:
				_on_sam_timer_timeout()
		elif sam_hoz == 3 and sam_vert == 2:
			sam_hoz = 2
			sam_vert = 2
			if matrix[2][2] == 0:
				matrix[1][2] = 2
				matrix[2][2] = 2
				matrix[3][2] = 2
				matrix[2][1] = 2
				matrix[2][3] = 2
				sam_points += 5
			elif matrix[2][2] == 1:
				matrix[2][2] = 2
				sam_points += 1
				perks.success -= 1
			elif matrix[2][2] == 2:
				_on_sam_timer_timeout()
		elif sam_hoz == 3 and sam_vert == 3:
			sam_hoz = 2
			sam_vert = 3
			if matrix[2][3] == 0:
				matrix[1][3] = 2
				matrix[2][3] = 2
				matrix[3][3] = 2
				matrix[2][2] = 2
				matrix[2][4] = 2
				sam_points += 5
			elif matrix[2][3] == 1:
				matrix[2][3] = 2
				sam_points += 1
				perks.success -= 1
			elif matrix[2][3] == 2:
				_on_sam_timer_timeout()
		elif sam_hoz == 3 and sam_vert == 4:
			sam_hoz = 2
			sam_vert = 4
			if matrix[2][4] == 0:
				matrix[1][4] = 2
				matrix[2][4] = 2
				matrix[3][4] = 2
				matrix[2][3] = 2
				matrix[2][5] = 2
				sam_points += 5
			elif matrix[2][4] == 1:
				matrix[2][4] = 2
				sam_points += 1
				perks.success -= 1
			elif matrix[2][4] == 2:
				_on_sam_timer_timeout()
		elif sam_hoz == 3 and sam_vert == 5:
			sam_hoz = 2
			sam_vert = 5
			if matrix[2][5] == 0:
				matrix[1][5] = 2
				matrix[2][5] = 2
				matrix[3][5] = 2
				matrix[2][4] = 2
				matrix[2][6] = 2
				sam_points += 5
			elif matrix[2][5] == 1:
				matrix[2][5] = 2
				sam_points += 1
				perks.success -= 1
			elif matrix[2][5] == 2:
				_on_sam_timer_timeout()
		elif sam_hoz == 3 and sam_vert == 6:
			sam_hoz = 2
			sam_vert = 6
			if matrix[2][6] == 0:
				matrix[1][6] = 2
				matrix[2][6] = 2
				matrix[3][6] = 2
				matrix[2][5] = 2
				matrix[2][7] = 2
				sam_points += 5
			elif matrix[2][6] == 1:
				matrix[2][6] = 2
				sam_points += 1
				perks.success -= 1
			elif matrix[2][6] == 2:
				_on_sam_timer_timeout()
		elif sam_hoz == 3 and sam_vert == 7:
			sam_hoz = 2
			sam_vert = 7
			if matrix[2][7] == 0:
				matrix[1][7] = 2
				matrix[2][7] = 2
				matrix[3][7] = 2
				matrix[2][6] = 2
				matrix[2][8] = 2
				sam_points += 5
			elif matrix[2][7] == 1:
				matrix[2][7] = 2
				sam_points += 1
				perks.success -= 1
			elif matrix[2][7] == 2:
				_on_sam_timer_timeout()
		elif sam_hoz == 3 and sam_vert == 8:
			sam_hoz = 2
			sam_vert = 8
			if matrix[2][8] == 0:
				matrix[1][8] = 2
				matrix[2][8] = 2
				matrix[3][8] = 2
				matrix[2][7] = 2
				matrix[2][9] = 2
				sam_points += 5
			elif matrix[2][8] == 1:
				matrix[2][8] = 2
				sam_points += 1
				perks.success -= 1
			elif matrix[2][8] == 2:
				_on_sam_timer_timeout()
		elif sam_hoz == 3 and sam_vert == 9:
			sam_hoz = 2
			sam_vert = 9
			if matrix[2][9] == 0:
				matrix[1][9] = 2
				matrix[2][9] = 2
				matrix[3][9] = 2
				matrix[2][8] = 2
				sam_points += 5
			elif matrix[2][9] == 1:
				matrix[2][9] = 2
				sam_points += 1
				perks.success -= 1
			elif matrix[2][9] == 2:
				_on_sam_timer_timeout()
				
		elif sam_hoz == 4 and sam_vert == 0:
			sam_hoz = 3
			sam_vert = 0
			if matrix[4][0] == 0:
				matrix[4][0] = 2
				matrix[3][0] = 2
				matrix[3][1] = 2
				matrix[2][0] = 2
				sam_points += 5
			elif matrix[3][0] == 1:
				matrix[3][0] = 2
				sam_points += 1
				perks.success -= 1
			elif matrix[3][0] == 2:
				_on_sam_timer_timeout()
		elif sam_hoz == 4 and sam_vert == 1:
			sam_hoz = 3
			sam_vert = 1
			if matrix[3][1] == 0:
				matrix[3][1] = 2
				matrix[4][1] = 2
				matrix[3][0] = 2
				matrix[3][2] = 2
				matrix[2][1] = 2
				sam_points += 5
			elif matrix[3][1] == 1:
				matrix[3][1] = 2
				sam_points += 1
				perks.success -= 1
			elif matrix[3][1] == 2:
				_on_sam_timer_timeout()
		elif sam_hoz == 4 and sam_vert == 2:
			sam_hoz = 3
			sam_vert = 2
			if matrix[3][2] == 0:
				matrix[2][2] = 2
				matrix[3][2] = 2
				matrix[4][2] = 2
				matrix[3][1] = 2
				matrix[3][3] = 2
				sam_points += 5
			elif matrix[3][2] == 1:
				matrix[3][2] = 2
				sam_points += 1
				perks.success -= 1
			elif matrix[3][2] == 2:
				_on_sam_timer_timeout()
		elif sam_hoz == 4 and sam_vert == 3:
			sam_hoz = 3
			sam_vert = 3
			if matrix[3][3] == 0:
				matrix[2][3] = 2
				matrix[3][3] = 2
				matrix[4][3] = 2
				matrix[3][2] = 2
				matrix[3][4] = 2
				sam_points += 5
			elif matrix[3][3] == 1:
				matrix[3][3] = 2
				sam_points += 1
				perks.success -= 1
			elif matrix[3][3] == 2:
				_on_sam_timer_timeout()
		elif sam_hoz == 4 and sam_vert == 4:
			sam_hoz = 3
			sam_vert = 4
			if matrix[3][4] == 0:
				matrix[2][4] = 2
				matrix[3][4] = 2
				matrix[4][4] = 2
				matrix[3][3] = 2
				matrix[3][5] = 2
				sam_points += 5
			elif matrix[3][4] == 1:
				matrix[3][4] = 2
				sam_points += 1
				perks.success -= 1
			elif matrix[3][4] == 2:
				_on_sam_timer_timeout()
		elif sam_hoz == 4 and sam_vert == 5:
			sam_hoz = 3
			sam_vert = 5
			if matrix[3][5] == 0:
				matrix[2][5] = 2
				matrix[3][5] = 2
				matrix[4][5] = 2
				matrix[3][4] = 2
				matrix[3][6] = 2
				sam_points += 5
			elif matrix[3][5] == 1:
				matrix[3][5] = 2
				sam_points += 1
				perks.success -= 1
			elif matrix[3][5] == 2:
				_on_sam_timer_timeout()
		elif sam_hoz == 4 and sam_vert == 6:
			sam_hoz = 3
			sam_vert = 6
			if matrix[3][6] == 0:
				matrix[2][6] = 2
				matrix[3][6] = 2
				matrix[4][6] = 2
				matrix[3][5] = 2
				matrix[3][7] = 2
				sam_points += 5
			elif matrix[3][6] == 1:
				matrix[3][6] = 2
				sam_points += 1
				perks.success -= 1
			elif matrix[3][6] == 2:
				_on_sam_timer_timeout()
		elif sam_hoz == 4 and sam_vert == 7:
			sam_hoz = 3
			sam_vert = 7
			if matrix[3][7] == 0:
				matrix[2][7] = 2
				matrix[3][7] = 2
				matrix[4][7] = 2
				matrix[3][6] = 2
				matrix[3][8] = 2
				sam_points += 5
			elif matrix[3][7] == 1:
				matrix[3][7] = 2
				sam_points += 1
				perks.success -= 1
			elif matrix[3][7] == 2:
				_on_sam_timer_timeout()
		elif sam_hoz == 4 and sam_vert == 8:
			sam_hoz = 3
			sam_vert = 8
			if matrix[3][8] == 0:
				matrix[2][8] = 2
				matrix[3][8] = 2
				matrix[4][8] = 2
				matrix[3][7] = 2
				matrix[3][9] = 2
				sam_points += 5
			elif matrix[3][8] == 1:
				matrix[3][8] = 2
				sam_points += 1
				perks.success -= 1
			elif matrix[3][8] == 2:
				_on_sam_timer_timeout()
		elif sam_hoz == 4 and sam_vert == 9:
			sam_hoz = 3
			sam_vert = 9
			if matrix[3][9] == 0:
				matrix[2][9] = 2
				matrix[3][9] = 2
				matrix[4][9] = 2
				matrix[3][8] = 2
				sam_points += 5
			elif matrix[3][9] == 1:
				matrix[3][9] = 2
				sam_points += 1
				perks.success -= 1
			elif matrix[3][9] == 2:
				_on_sam_timer_timeout()
				
		elif sam_hoz == 5 and sam_vert == 0:
			sam_hoz = 4
			sam_vert = 0
			if matrix[5][0] == 0:
				matrix[5][0] = 2
				matrix[4][0] = 2
				matrix[4][1] = 2
				matrix[3][0] = 2
				sam_points += 5
			elif matrix[4][0] == 1:
				matrix[4][0] = 2
				sam_points += 1
				perks.success -= 1
			elif matrix[4][0] == 2:
				_on_sam_timer_timeout()
		elif sam_hoz == 5 and sam_vert == 1:
			sam_hoz = 4
			sam_vert = 1
			if matrix[4][1] == 0:
				matrix[4][1] = 2
				matrix[5][1] = 2
				matrix[4][0] = 2
				matrix[4][2] = 2
				matrix[3][1] = 2
				sam_points += 5
			elif matrix[4][1] == 1:
				matrix[4][1] = 2
				sam_points += 1
				perks.success -= 1
			elif matrix[4][1] == 2:
				_on_sam_timer_timeout()
		elif sam_hoz == 5 and sam_vert == 2:
			sam_hoz = 4
			sam_vert = 2
			if matrix[4][2] == 0:
				matrix[4][2] = 2
				matrix[4][2] = 2
				matrix[5][2] = 2
				matrix[4][1] = 2
				matrix[4][3] = 2
				sam_points += 5
			elif matrix[4][2] == 1:
				matrix[4][2] = 2
				sam_points += 1
				perks.success -= 1
			elif matrix[4][2] == 2:
				_on_sam_timer_timeout()
		elif sam_hoz == 5 and sam_vert == 3:
			sam_hoz = 4
			sam_vert = 3
			if matrix[4][3] == 0:
				matrix[3][3] = 2
				matrix[4][3] = 2
				matrix[5][3] = 2
				matrix[4][2] = 2
				matrix[4][4] = 2
				sam_points += 5
			elif matrix[4][3] == 1:
				matrix[4][3] = 2
				sam_points += 1
				perks.success -= 1
			elif matrix[4][3] == 2:
				_on_sam_timer_timeout()
		elif sam_hoz == 5 and sam_vert == 4:
			sam_hoz = 4
			sam_vert = 4
			if matrix[4][4] == 0:
				matrix[3][4] = 2
				matrix[4][4] = 2
				matrix[5][4] = 2
				matrix[4][3] = 2
				matrix[4][5] = 2
				sam_points += 5
			elif matrix[4][4] == 1:
				matrix[4][4] = 2
				sam_points += 1
				perks.success -= 1
			elif matrix[4][4] == 2:
				_on_sam_timer_timeout()
		elif sam_hoz == 5 and sam_vert == 5:
			sam_hoz = 4
			sam_vert = 5
			if matrix[4][5] == 0:
				matrix[3][5] = 2
				matrix[4][5] = 2
				matrix[5][5] = 2
				matrix[4][4] = 2
				matrix[4][6] = 2
				sam_points += 5
			elif matrix[4][5] == 1:
				matrix[4][5] = 2
				sam_points += 1
				perks.success -= 1
			elif matrix[4][5] == 2:
				_on_sam_timer_timeout()
		elif sam_hoz == 5 and sam_vert == 6:
			sam_hoz = 4
			sam_vert = 6
			if matrix[5][6] == 0:
				matrix[3][6] = 2
				matrix[4][6] = 2
				matrix[5][6] = 2
				matrix[4][5] = 2
				matrix[4][7] = 2
				sam_points += 5
			elif matrix[4][6] == 1:
				matrix[4][6] = 2
				sam_points += 1
				perks.success -= 1
			elif matrix[4][6] == 2:
				_on_sam_timer_timeout()
		elif sam_hoz == 5 and sam_vert == 7:
			sam_hoz = 4
			sam_vert = 7
			if matrix[4][7] == 0:
				matrix[3][7] = 2
				matrix[4][7] = 2
				matrix[5][7] = 2
				matrix[4][6] = 2
				matrix[4][8] = 2
				sam_points += 5
			elif matrix[4][7] == 1:
				matrix[4][7] = 2
				sam_points += 1
				perks.success -= 1
			elif matrix[4][7] == 2:
				_on_sam_timer_timeout()
		elif sam_hoz == 5 and sam_vert == 8:
			sam_hoz = 4
			sam_vert = 8
			if matrix[4][8] == 0:
				matrix[3][8] = 2
				matrix[4][8] = 2
				matrix[5][8] = 2
				matrix[4][7] = 2
				matrix[4][9] = 2
				sam_points += 5
			elif matrix[4][8] == 1:
				matrix[4][8] = 2
				sam_points += 1
				perks.success -= 1
			elif matrix[4][8] == 2:
				_on_sam_timer_timeout()
		elif sam_hoz == 5 and sam_vert == 9:
			sam_hoz = 4
			sam_vert = 9
			if matrix[4][9] == 0:
				matrix[3][9] = 2
				matrix[4][9] = 2
				matrix[5][9] = 2
				matrix[4][8] = 2
				sam_points += 5
			elif matrix[4][9] == 1:
				matrix[4][9] = 2
				sam_points += 1
				perks.success -= 1
			elif matrix[4][9] == 2:
				_on_sam_timer_timeout()
				
		elif sam_hoz == 6 and sam_vert == 0:
			sam_hoz = 5
			sam_vert = 0
			if matrix[6][0] == 0:
				matrix[6][0] = 2
				matrix[5][0] = 2
				matrix[5][1] = 2
				matrix[4][0] = 2
				sam_points += 5
			elif matrix[5][0] == 1:
				matrix[5][0] = 2
				sam_points += 1
				perks.success -= 1
			elif matrix[5][0] == 2:
				_on_sam_timer_timeout()
		elif sam_hoz == 6 and sam_vert == 1:
			sam_hoz = 5
			sam_vert = 1
			if matrix[5][1] == 0:
				matrix[5][1] = 2
				matrix[6][1] = 2
				matrix[5][0] = 2
				matrix[5][2] = 2
				matrix[4][1] = 2
				sam_points += 5
			elif matrix[5][1] == 1:
				matrix[5][1] = 2
				sam_points += 1
				perks.success -= 1
			elif matrix[5][1] == 2:
				_on_sam_timer_timeout()
		elif sam_hoz == 6 and sam_vert == 2:
			sam_hoz = 5
			sam_vert = 2
			if matrix[5][2] == 0:
				matrix[4][2] = 2
				matrix[5][2] = 2
				matrix[6][2] = 2
				matrix[5][1] = 2
				matrix[5][3] = 2
				sam_points += 5
			elif matrix[5][2] == 1:
				matrix[5][2] = 2
				sam_points += 1
				perks.success -= 1
			elif matrix[5][2] == 2:
				_on_sam_timer_timeout()
		elif sam_hoz == 6 and sam_vert == 3:
			sam_hoz = 5
			sam_vert = 3
			if matrix[5][3] == 0:
				matrix[4][3] = 2
				matrix[5][3] = 2
				matrix[6][3] = 2
				matrix[5][2] = 2
				matrix[5][4] = 2
				sam_points += 5
			elif matrix[5][3] == 1:
				matrix[5][3] = 2
				sam_points += 1
				perks.success -= 1
			elif matrix[5][3] == 2:
				_on_sam_timer_timeout()
		elif sam_hoz == 6 and sam_vert == 4:
			sam_hoz = 5
			sam_vert = 4
			if matrix[5][4] == 0:
				matrix[4][4] = 2
				matrix[5][4] = 2
				matrix[6][4] = 2
				matrix[5][3] = 2
				matrix[5][5] = 2
				sam_points += 5
			elif matrix[5][4] == 1:
				matrix[5][4] = 2
				sam_points += 1
				perks.success -= 1
			elif matrix[5][4] == 2:
				_on_sam_timer_timeout()
		elif sam_hoz == 6 and sam_vert == 5:
			sam_hoz = 5
			sam_vert = 5
			if matrix[5][5] == 0:
				matrix[4][5] = 2
				matrix[5][5] = 2
				matrix[6][5] = 2
				matrix[5][4] = 2
				matrix[5][6] = 2
				sam_points += 5
			elif matrix[5][5] == 1:
				matrix[5][5] = 1
				sam_points += 1
				perks.success -= 1
			elif matrix[5][5] == 2:
				_on_sam_timer_timeout()
		elif sam_hoz == 6 and sam_vert == 6:
			sam_hoz = 5
			sam_vert = 6
			if matrix[6][6] == 0:
				matrix[4][6] = 2
				matrix[5][6] = 2
				matrix[6][6] = 2
				matrix[5][5] = 2
				matrix[5][7] = 2
				sam_points += 5
			elif matrix[5][6] == 1:
				matrix[5][6] = 2
				sam_points += 1
				perks.success -= 1
			elif matrix[5][6] == 2:
				_on_sam_timer_timeout()
		elif sam_hoz == 6 and sam_vert == 7:
			sam_hoz = 5
			sam_vert = 7
			if matrix[5][7] == 0:
				matrix[4][7] = 2
				matrix[5][7] = 2
				matrix[6][7] = 2
				matrix[5][6] = 2
				matrix[5][8] = 2
				sam_points += 5
			elif matrix[5][7] == 1:
				matrix[5][7] = 2
				sam_points += 1
				perks.success -= 1
			elif matrix[5][7] == 2:
				_on_sam_timer_timeout()
		elif sam_hoz == 6 and sam_vert == 8:
			sam_hoz = 5
			sam_vert = 8
			if matrix[5][8] == 0:
				matrix[4][8] = 2
				matrix[5][8] = 2
				matrix[6][8] = 2
				matrix[5][7] = 2
				matrix[5][9] = 2
				sam_points += 5
			elif matrix[5][8] == 1:
				matrix[5][8] = 2
				sam_points += 1
				perks.success -= 1
			elif matrix[5][8] == 2:
				_on_sam_timer_timeout()
		elif sam_hoz == 6 and sam_vert == 9:
			sam_hoz = 5
			sam_vert = 9
			if matrix[5][9] == 0:
				matrix[4][9] = 2
				matrix[5][9] = 2
				matrix[6][9] = 2
				matrix[5][8] = 2
				sam_points += 5
			elif matrix[5][9] == 1:
				matrix[5][9] = 2
				sam_points += 1
				perks.success -= 1
			elif matrix[5][9] == 2:
				_on_sam_timer_timeout()
				
		elif sam_hoz == 7 and sam_vert == 0:
			sam_hoz = 6
			sam_vert = 0
			if matrix[6][0] == 0:
				matrix[7][0] = 2
				matrix[6][0] = 2
				matrix[6][1] = 2
				matrix[5][0] = 2
				sam_points += 5
			elif matrix[6][0] == 1:
				matrix[6][0] = 2
				sam_points += 1
				perks.success -= 1
			elif matrix[6][0] == 2:
				_on_sam_timer_timeout()
		elif sam_hoz == 7 and sam_vert == 1:
			sam_hoz = 6
			sam_vert = 1
			if matrix[6][1] == 0:
				matrix[6][1] = 2
				matrix[7][1] = 2
				matrix[6][0] = 2
				matrix[6][2] = 2
				matrix[5][1] = 2
				sam_points += 5
			elif matrix[6][1] == 1:
				matrix[6][1] = 2
				sam_points += 1
				perks.success -= 1
			elif matrix[6][1] == 2:
				_on_sam_timer_timeout()
		elif sam_hoz == 7 and sam_vert == 2:
			sam_hoz = 6
			sam_vert = 2
			if matrix[6][2] == 0:
				matrix[6][2] = 2
				matrix[6][2] = 2
				matrix[7][2] = 2
				matrix[6][1] = 2
				matrix[6][3] = 2
				sam_points += 5
			elif matrix[6][2] == 1:
				matrix[6][2] = 2
				sam_points += 1
				perks.success -= 1
			elif matrix[6][2] == 2:
				_on_sam_timer_timeout()
		elif sam_hoz == 7 and sam_vert == 3:
			sam_hoz = 6
			sam_vert = 3
			if matrix[6][3] == 0:
				matrix[5][3] = 2
				matrix[6][3] = 2
				matrix[7][3] = 2
				matrix[6][2] = 2
				matrix[6][4] = 2
				sam_points += 5
			elif matrix[6][3] == 1:
				matrix[6][3] = 2
				sam_points += 1
				perks.success -= 1
			elif matrix[6][3] == 2:
				_on_sam_timer_timeout()
		elif sam_hoz == 7 and sam_vert == 4:
			sam_hoz = 6
			sam_vert = 4
			if matrix[6][4] == 0:
				matrix[5][4] = 2
				matrix[6][4] = 2
				matrix[7][4] = 2
				matrix[6][3] = 2
				matrix[6][5] = 2
				sam_points += 5
			elif matrix[6][4] == 1:
				matrix[6][4] = 2
				sam_points += 1
				perks.success -= 1
			elif matrix[6][4] == 2:
				_on_sam_timer_timeout()
		elif sam_hoz == 7 and sam_vert == 5:
			sam_hoz = 6
			sam_vert = 5
			if matrix[6][5] == 0:
				matrix[5][5] = 2
				matrix[6][5] = 2
				matrix[7][5] = 2
				matrix[6][4] = 2
				matrix[6][6] = 2
				sam_points += 5
			elif matrix[6][5] == 1:
				matrix[6][5] = 2
				sam_points += 1
				perks.success -= 1
			elif matrix[6][5] == 2:
				_on_sam_timer_timeout()
		elif sam_hoz == 7 and sam_vert == 6:
			sam_hoz = 6
			sam_vert = 6
			if matrix[7][6] == 0:
				matrix[5][6] = 2
				matrix[6][6] = 2
				matrix[7][6] = 2
				matrix[6][5] = 2
				matrix[6][7] = 2
				sam_points += 5
			elif matrix[6][6] == 1:
				matrix[6][6] = 2
				sam_points += 1
				perks.success -= 1
			elif matrix[6][6] == 2:
				_on_sam_timer_timeout()
		elif sam_hoz == 7 and sam_vert == 7:
			sam_hoz = 6
			sam_vert = 7
			if matrix[6][7] == 0:
				matrix[5][7] = 2
				matrix[6][7] = 2
				matrix[7][7] = 2
				matrix[6][6] = 2
				matrix[6][8] = 2
				sam_points += 5
			elif matrix[6][7] == 1:
				matrix[6][7] = 2
				sam_points += 1
				perks.success -= 1
			elif matrix[6][7] == 2:
				_on_sam_timer_timeout()
		elif sam_hoz == 7 and sam_vert == 8:
			sam_hoz = 6
			sam_vert = 8
			if matrix[6][8] == 0:
				matrix[5][8] = 2
				matrix[6][8] = 2
				matrix[7][8] = 2
				matrix[6][7] = 2
				matrix[6][9] = 2
				sam_points += 5
			elif matrix[6][8] == 1:
				matrix[6][8] = 2
				sam_points += 1
				perks.success -= 1
			elif matrix[6][8] == 2:
				_on_sam_timer_timeout()
		elif sam_hoz == 7 and sam_vert == 9:
			sam_hoz = 6
			sam_vert = 9
			if matrix[6][9] == 0:
				matrix[5][9] = 2
				matrix[6][9] = 2
				matrix[7][9] = 2
				matrix[6][8] = 2
				sam_points += 5
			elif matrix[6][9] == 1:
				matrix[6][9] = 2
				sam_points += 1
				perks.success -= 1
			elif matrix[6][9] == 2:
				_on_sam_timer_timeout()
	
		elif sam_hoz == 8 and sam_vert == 0:
			sam_hoz = 7
			sam_vert = 0
			if matrix[7][0] == 0:
				matrix[8][0] = 2
				matrix[7][0] = 2
				matrix[7][1] = 2
				matrix[6][0] = 2
				sam_points += 5
			elif matrix[7][0] == 1:
				matrix[7][0] = 2
				sam_points += 1
				perks.success -= 1
			elif matrix[7][0] == 2:
				_on_sam_timer_timeout()
		elif sam_hoz == 8 and sam_vert == 1:
			sam_hoz = 7
			sam_vert = 1
			if matrix[7][1] == 0:
				matrix[7][1] = 2
				matrix[8][1] = 2
				matrix[7][0] = 2
				matrix[7][2] = 2
				matrix[6][1] = 2
				sam_points += 5
			elif matrix[7][1] == 1:
				matrix[7][1] = 2
				sam_points += 1
				perks.success -= 1
			elif matrix[7][1] == 2:
				_on_sam_timer_timeout()
		elif sam_hoz == 8 and sam_vert == 2:
			sam_hoz = 7
			sam_vert = 2
			if matrix[7][2] == 0:
				matrix[7][2] = 2
				matrix[7][2] = 2
				matrix[8][2] = 2
				matrix[7][1] = 2
				matrix[7][3] = 2
				sam_points += 5
			elif matrix[7][2] == 1:
				matrix[7][2] = 2
				sam_points += 1
				perks.success -= 1
			elif matrix[7][2] == 2:
				_on_sam_timer_timeout()
		elif sam_hoz == 8 and sam_vert == 3:
			sam_hoz = 7
			sam_vert = 3
			if matrix[7][3] == 0:
				matrix[6][3] = 2
				matrix[7][3] = 2
				matrix[8][3] = 2
				matrix[7][2] = 2
				matrix[7][4] = 2
				sam_points += 5
			elif matrix[7][3] == 1:
				matrix[7][3] = 2
				sam_points += 1
				perks.success -= 1
			elif matrix[7][3] == 2:
				_on_sam_timer_timeout()
		elif sam_hoz == 8 and sam_vert == 4:
			sam_hoz = 7
			sam_vert = 4
			if matrix[7][4] == 0:
				matrix[6][4] = 2
				matrix[7][4] = 2
				matrix[8][4] = 2
				matrix[7][3] = 2
				matrix[7][5] = 2
				sam_points += 5
			elif matrix[7][4] == 1:
				matrix[7][4] = 2
				sam_points += 1
				perks.success -= 1
			elif matrix[7][4] == 2:
				_on_sam_timer_timeout()
		elif sam_hoz == 8 and sam_vert == 5:
			sam_hoz = 7
			sam_vert = 5
			if matrix[7][5] == 0:
				matrix[6][5] = 2
				matrix[7][5] = 2
				matrix[8][5] = 2
				matrix[7][4] = 2
				matrix[7][6] = 2
				sam_points += 5
			elif matrix[7][5] == 1:
				matrix[7][5] = 2
				sam_points += 1
				perks.success -= 1
			elif matrix[7][5] == 2:
				_on_sam_timer_timeout()
		elif sam_hoz == 8 and sam_vert == 6:
			sam_hoz = 7
			sam_vert = 6
			if matrix[8][6] == 0:
				matrix[6][6] = 2
				matrix[7][6] = 2
				matrix[8][6] = 2
				matrix[7][5] = 2
				matrix[7][7] = 2
				sam_points += 5
			elif matrix[7][6] == 1:
				matrix[7][6] = 2
				sam_points += 1
				perks.success -= 1
			elif matrix[7][6] == 2:
				_on_sam_timer_timeout()
		elif sam_hoz == 8 and sam_vert == 7:
			sam_hoz = 7
			sam_vert = 7
			if matrix[7][7] == 0:
				matrix[6][7] = 2
				matrix[7][7] = 2
				matrix[8][7] = 2
				matrix[7][6] = 2
				matrix[7][8] = 2
				sam_points += 5
			elif matrix[7][7] == 1:
				matrix[7][7] = 2
				sam_points += 1
				perks.success -= 1
			elif matrix[7][7] == 2:
				_on_sam_timer_timeout()
		elif sam_hoz == 8 and sam_vert == 8:
			sam_hoz = 7
			sam_vert = 8
			if matrix[7][8] == 0:
				matrix[6][8] = 2
				matrix[7][8] = 2
				matrix[8][8] = 2
				matrix[7][7] = 2
				matrix[7][9] = 2
				sam_points += 5
			elif matrix[7][8] == 1:
				matrix[7][8] = 2
				sam_points += 1
				perks.success -= 1
			elif matrix[7][8] == 2:
				_on_sam_timer_timeout()
		elif sam_hoz == 8 and sam_vert == 9:
			sam_hoz = 7
			sam_vert = 9
			if matrix[7][9] == 0:
				matrix[6][9] = 2
				matrix[7][9] = 2
				matrix[8][9] = 2
				matrix[7][8] = 2
				sam_points += 5
			elif matrix[7][9] == 1:
				matrix[7][9] = 2
				sam_points += 1
				perks.success -= 1
			elif matrix[7][9] == 2:
				_on_sam_timer_timeout()
	
		elif sam_hoz == 9 and sam_vert == 0:
			sam_hoz = 8
			sam_vert = 0
			if matrix[8][0] == 0:
				matrix[9][0] = 2
				matrix[8][0] = 2
				matrix[8][1] = 2
				matrix[7][0] = 2
				sam_points += 5
			elif matrix[8][0] == 1:
				matrix[8][0] = 2
				sam_points += 1
				perks.success -= 1
			elif matrix[8][0] == 2:
				_on_sam_timer_timeout()
		elif sam_hoz == 9 and sam_vert == 1:
			sam_hoz = 8
			sam_vert = 1
			if matrix[8][1] == 0:
				matrix[8][1] = 2
				matrix[9][1] = 2
				matrix[8][0] = 2
				matrix[8][2] = 2
				matrix[7][1] = 2
				sam_points += 5
			elif matrix[8][1] == 1:
				matrix[8][1] = 2
				sam_points += 1
				perks.success -= 1
			elif matrix[8][1] == 2:
				_on_sam_timer_timeout()
		elif sam_hoz == 9 and sam_vert == 2:
			sam_hoz = 8
			sam_vert = 2
			if matrix[8][2] == 0:
				matrix[8][2] = 2
				matrix[8][2] = 2
				matrix[9][2] = 2
				matrix[8][1] = 2
				matrix[8][3] = 2
				sam_points += 5
			elif matrix[8][2] == 1:
				matrix[8][2] = 2
				sam_points += 1
				perks.success -= 1
			elif matrix[8][2] == 2:
				_on_sam_timer_timeout()
		elif sam_hoz == 9 and sam_vert == 3:
			sam_hoz = 8
			sam_vert = 3
			if matrix[8][3] == 0:
				matrix[7][3] = 2
				matrix[8][3] = 2
				matrix[9][3] = 2
				matrix[8][2] = 2
				matrix[8][4] = 2
				sam_points += 5
			elif matrix[8][3] == 1:
				matrix[8][3] = 2
				sam_points += 1
				perks.success -= 1
			elif matrix[8][3] == 2:
				_on_sam_timer_timeout()
		elif sam_hoz == 9 and sam_vert == 4:
			sam_hoz = 8
			sam_vert = 4
			if matrix[8][4] == 0:
				matrix[7][4] = 2
				matrix[8][4] = 2
				matrix[9][4] = 2
				matrix[8][3] = 2
				matrix[8][5] = 2
				sam_points += 5
			elif matrix[8][4] == 1:
				matrix[8][4] = 2
				sam_points += 1
				perks.success -= 1
			elif matrix[8][4] == 2:
				_on_sam_timer_timeout()
		elif sam_hoz == 9 and sam_vert == 5:
			sam_hoz = 8
			sam_vert = 5
			if matrix[8][5] == 0:
				matrix[7][5] = 2
				matrix[8][5] = 2
				matrix[9][5] = 2
				matrix[8][4] = 2
				matrix[8][6] = 2
				sam_points += 5
			elif matrix[8][5] == 1:
				matrix[8][5] = 2
				sam_points += 1
				perks.success -= 1
			elif matrix[8][5] == 2:
				_on_sam_timer_timeout()
		elif sam_hoz == 9 and sam_vert == 6:
			sam_hoz = 8
			sam_vert = 6
			if matrix[9][6] == 0:
				matrix[7][6] = 2
				matrix[8][6] = 2
				matrix[9][6] = 2
				matrix[8][5] = 2
				matrix[8][7] = 2
				sam_points += 5
			elif matrix[8][6] == 1:
				matrix[8][6] = 2
				sam_points += 1
				perks.success -= 1
			elif matrix[8][6] == 2:
				_on_sam_timer_timeout()
		elif sam_hoz == 9 and sam_vert == 7:
			sam_hoz = 8
			sam_vert = 7
			if matrix[8][7] == 0:
				matrix[7][7] = 2
				matrix[8][7] = 2
				matrix[9][7] = 2
				matrix[8][6] = 2
				matrix[8][8] = 2
				sam_points += 5
			elif matrix[8][7] == 1:
				matrix[8][7] = 2
				sam_points += 1
				perks.success -= 1
			elif matrix[8][7] == 2:
				_on_sam_timer_timeout()
		elif sam_hoz == 9 and sam_vert == 8:
			sam_hoz = 8
			sam_vert = 8
			if matrix[8][8] == 0:
				matrix[7][8] = 2
				matrix[8][8] = 2
				matrix[9][8] = 2
				matrix[8][7] = 2
				matrix[8][9] = 2
				sam_points += 5
			elif matrix[8][8] == 1:
				matrix[8][8] = 2
				sam_points += 1
				perks.success -= 1
			elif matrix[8][8] == 2:
				_on_sam_timer_timeout()
		elif sam_hoz == 9 and sam_vert == 9:
			sam_hoz = 8
			sam_vert = 9
			if matrix[8][9] == 0:
				matrix[7][9] = 2
				matrix[8][9] = 2
				matrix[9][9] = 2
				matrix[8][8] = 2
				sam_points += 5
			elif matrix[8][9] == 1:
				matrix[8][9] = 2
				sam_points += 1
				perks.success -= 1
			elif matrix[8][9] == 2:
				_on_sam_timer_timeout()

	elif which_way == "move_down":
		if sam_hoz == 0 and sam_vert == 0:
			sam_hoz = 0
			sam_vert = 1
			if matrix[0][1] == 0:
				matrix[0][1] = 2
				matrix[0][0] = 2
				matrix[1][1] = 2
				matrix[0][2] = 2
				sam_points += 5
			elif matrix[0][1] == 1:
				matrix[0][1] = 2
				sam_points += 1
				perks.success -= 1
			elif matrix[0][1] == 1:
				_on_sam_timer_timeout()
		elif sam_hoz == 0 and sam_vert == 1:
			sam_hoz = 0
			sam_vert = 2
			if matrix[0][2] == 0:
				matrix[0][2] = 2
				matrix[1][2] = 2
				matrix[0][3] = 2
				matrix[0][1] = 2
				sam_points += 5
			elif matrix[0][2] == 1:
				matrix[0][2] = 2
				sam_points += 1
				perks.success -= 1
			elif matrix[0][2] == 2:
				_on_sam_timer_timeout()
		elif sam_hoz == 0 and sam_vert == 2:
			sam_hoz = 0
			sam_vert = 3
			if matrix[0][3] == 0:
				matrix[0][3] = 2
				matrix[0][2] = 2
				matrix[1][3] = 2
				matrix[0][4] = 2
				sam_points += 5
			elif matrix[0][3] == 1:
				matrix[0][3] = 2
				sam_points += 1
				perks.success -= 1
			elif matrix[0][3] == 2:
				_on_sam_timer_timeout()
		elif sam_hoz == 0 and sam_vert == 3:
			sam_hoz = 0
			sam_vert = 4
			if matrix[0][4] == 0:
				matrix[0][4] = 2
				matrix[0][3] = 2
				matrix[0][5] = 2
				matrix[1][4] = 2
				sam_points += 5
			elif matrix[0][4] == 1:
				matrix[0][4] = 2
				sam_points += 1
				perks.success -= 1
			elif matrix[0][4] == 2:
				_on_sam_timer_timeout()
		elif sam_hoz == 0 and sam_vert == 4:
			sam_hoz = 0
			sam_vert = 5
			if matrix[0][5] == 0:
				matrix[0][5] = 2
				matrix[0][4] = 2
				matrix[0][6] = 2
				matrix[1][5] = 2
				sam_points += 5
			elif matrix[0][5] == 1:
				matrix[0][5] = 2
				sam_points += 1
				perks.success -= 1
			elif matrix[0][5] == 2:
				_on_sam_timer_timeout()
		elif sam_hoz == 0 and sam_vert == 5:
			sam_hoz = 0
			sam_vert = 6
			if matrix[0][6] == 0:
				matrix[0][6] = 2
				matrix[0][5] = 2
				matrix[0][7] = 2
				matrix[1][6] = 2
				sam_points += 5
			elif matrix[0][6] == 1:
				matrix[0][6] = 2
				sam_points += 1
				perks.success -= 1
			elif matrix[0][6] == 2:
				_on_sam_timer_timeout()
		elif sam_hoz == 0 and sam_vert == 6:
			sam_hoz = 0
			sam_vert = 7
			if matrix[0][7] == 0:
				matrix[0][7] = 2
				matrix[0][6] = 2
				matrix[0][8] = 2
				matrix[1][7] = 2
				sam_points += 5
			elif matrix[0][7] == 1:
				matrix[0][7] = 2
				sam_points += 1
				perks.success -= 1
			elif matrix[0][7] == 2:
				_on_sam_timer_timeout()
		elif sam_hoz == 0 and sam_vert == 7:
			sam_hoz = 0
			sam_vert = 8
			if matrix[0][8] == 0:
				matrix[0][8] = 2
				matrix[0][7] = 2
				matrix[0][9] = 2
				matrix[1][8] = 2
				sam_points += 5
			elif matrix[0][8] == 1:
				matrix[0][8] = 2
				sam_points += 1
				perks.success -= 1
			elif matrix[0][8] == 2:
				_on_sam_timer_timeout()
		elif sam_hoz == 0 and sam_vert == 8:
			sam_hoz = 0
			sam_vert = 9
			if matrix[0][9] == 0:
				matrix[0][9] = 2
				matrix[0][8] = 2
				matrix[1][9] = 2
				sam_points += 5
			elif matrix[0][9] == 1:
				matrix[0][9] = 2
				sam_points += 1
				perks.success -= 1
			elif matrix[0][9] == 2:
				_on_sam_timer_timeout()
		elif sam_hoz == 0 and sam_vert == 9:
			_on_sam_timer_timeout()
			
		elif sam_hoz == 1 and sam_vert == 0:
			sam_hoz = 1
			sam_vert = 1
			if matrix[1][1] == 0:
				matrix[0][1] = 2
				matrix[1][1] = 2
				matrix[1][0] = 2
				matrix[2][1] = 2
				matrix[1][2] = 2
				sam_points += 5
			elif matrix[1][1] == 1:
				matrix[1][1] = 2
				sam_points += 1
				perks.success -= 1
			elif matrix[1][1] == 1:
				_on_sam_timer_timeout()
		elif sam_hoz == 1 and sam_vert == 1:
			sam_hoz = 1
			sam_vert = 2
			if matrix[1][2] == 0:
				matrix[0][2] = 2
				matrix[1][2] = 2
				matrix[2][2] = 2
				matrix[1][3] = 2
				matrix[1][1] = 2
				sam_points += 5
			elif matrix[1][2] == 1:
				matrix[1][2] = 2
				sam_points += 1
				perks.success -= 1
			elif matrix[1][2] == 2:
				_on_sam_timer_timeout()
		elif sam_hoz == 1 and sam_vert == 2:
			sam_hoz = 1
			sam_vert = 3
			if matrix[1][3] == 0:
				matrix[0][3] = 2
				matrix[1][3] = 2
				matrix[1][2] = 2
				matrix[2][3] = 2
				matrix[1][4] = 2
				sam_points += 5
			elif matrix[1][3] == 1:
				matrix[1][3] = 2
				sam_points += 1
				perks.success -= 1
			elif matrix[1][3] == 2:
				_on_sam_timer_timeout()
		elif sam_hoz == 1 and sam_vert == 3:
			sam_hoz = 1
			sam_vert = 4
			if matrix[1][4] == 0:
				matrix[0][4] = 2
				matrix[1][4] = 2
				matrix[1][3] = 2
				matrix[1][5] = 2
				matrix[2][4] = 2
				sam_points += 5
			elif matrix[1][4] == 1:
				matrix[1][4] = 2
				sam_points += 1
				perks.success -= 1
			elif matrix[1][4] == 2:
				_on_sam_timer_timeout()
		elif sam_hoz == 1 and sam_vert == 4:
			sam_hoz = 1
			sam_vert = 5
			if matrix[1][5] == 0:
				matrix[0][5] = 2
				matrix[1][5] = 2
				matrix[1][4] = 2
				matrix[1][6] = 2
				matrix[2][5] = 2
				sam_points += 5
			elif matrix[1][5] == 1:
				matrix[1][5] = 2
				sam_points += 1
				perks.success -= 1
			elif matrix[1][5] == 2:
				_on_sam_timer_timeout()
		elif sam_hoz == 1 and sam_vert == 5:
			sam_hoz = 1
			sam_vert = 6
			if matrix[1][6] == 0:
				matrix[0][6] = 2
				matrix[1][6] = 2
				matrix[1][5] = 2
				matrix[1][7] = 2
				matrix[2][6] = 2
				sam_points += 5
			elif matrix[1][6] == 1:
				matrix[1][6] = 2
				sam_points += 1
				perks.success -= 1
			elif matrix[1][6] == 2:
				_on_sam_timer_timeout()
		elif sam_hoz == 1 and sam_vert == 6:
			sam_hoz = 1
			sam_vert = 7
			if matrix[1][7] == 0:
				matrix[0][7] = 2
				matrix[1][7] = 2
				matrix[1][6] = 2
				matrix[1][8] = 2
				matrix[2][7] = 2
				sam_points += 5
			elif matrix[1][7] == 1:
				matrix[1][7] = 2
				sam_points += 1
				perks.success -= 1
			elif matrix[1][7] == 2:
				_on_sam_timer_timeout()
		elif sam_hoz == 1 and sam_vert == 7:
			sam_hoz = 1
			sam_vert = 8
			if matrix[1][8] == 0:
				matrix[0][8] = 2
				matrix[1][8] = 2
				matrix[1][7] = 2
				matrix[1][9] = 2
				matrix[2][8] = 2
				sam_points += 5
			elif matrix[1][8] == 1:
				matrix[1][8] = 2
				sam_points += 1
				perks.success -= 1
			elif matrix[1][8] == 2:
				_on_sam_timer_timeout()
		elif sam_hoz == 1 and sam_vert == 8:
			sam_hoz = 1
			sam_vert = 9
			if matrix[1][9] == 0:
				matrix[0][9] = 2
				matrix[1][9] = 2
				matrix[1][8] = 2
				matrix[2][9] = 2
				sam_points += 5
			elif matrix[1][9] == 1:
				matrix[1][9] = 2
				sam_points += 1
				perks.success -= 1
			elif matrix[1][9] == 2:
				_on_sam_timer_timeout()
		elif sam_hoz == 1 and sam_vert == 9:
			_on_sam_timer_timeout()
		
		elif sam_hoz == 2 and sam_vert == 0:
			sam_hoz = 2
			sam_vert = 1
			if matrix[2][1] == 0:
				matrix[1][1] = 2
				matrix[2][1] = 2
				matrix[2][0] = 2
				matrix[3][1] = 2
				matrix[2][2] = 2
				sam_points += 5
			elif matrix[2][1] == 1:
				matrix[2][1] = 2
				sam_points += 1
				perks.success -= 1
			elif matrix[2][1] == 1:
				_on_sam_timer_timeout()
		elif sam_hoz == 2 and sam_vert == 1:
			sam_hoz = 2
			sam_vert = 2
			if matrix[2][2] == 0:
				matrix[1][2] = 2
				matrix[2][2] = 2
				matrix[3][2] = 2
				matrix[2][3] = 2
				matrix[2][1] = 2
				sam_points += 5
			elif matrix[2][2] == 1:
				matrix[2][2] = 2
				sam_points += 1
				perks.success -= 1
			elif matrix[2][2] == 2:
				_on_sam_timer_timeout()
		elif sam_hoz == 2 and sam_vert == 2:
			sam_hoz = 2
			sam_vert = 3
			if matrix[2][3] == 0:
				matrix[1][3] = 2
				matrix[2][3] = 2
				matrix[2][2] = 2
				matrix[3][3] = 2
				matrix[2][4] = 2
				sam_points += 5
			elif matrix[2][3] == 1:
				matrix[2][3] = 2
				sam_points += 1
				perks.success -= 1
			elif matrix[2][3] == 2:
				_on_sam_timer_timeout()
		elif sam_hoz == 2 and sam_vert == 3:
			sam_hoz = 2
			sam_vert = 4
			if matrix[2][4] == 0:
				matrix[1][4] = 2
				matrix[2][4] = 2
				matrix[2][3] = 2
				matrix[2][5] = 2
				matrix[3][4] = 2
				sam_points += 5
			elif matrix[2][4] == 1:
				matrix[2][4] = 2
				sam_points += 1
				perks.success -= 1
			elif matrix[2][4] == 2:
				_on_sam_timer_timeout()
		elif sam_hoz == 2 and sam_vert == 4:
			sam_hoz = 2
			sam_vert = 5
			if matrix[2][5] == 0:
				matrix[1][5] = 2
				matrix[2][5] = 2
				matrix[2][4] = 2
				matrix[2][6] = 2
				matrix[3][5] = 2
				sam_points += 5
			elif matrix[2][5] == 1:
				matrix[2][5] = 2
				sam_points += 1
				perks.success -= 1
			elif matrix[2][5] == 2:
				_on_sam_timer_timeout()
		elif sam_hoz == 2 and sam_vert == 5:
			sam_hoz = 2
			sam_vert = 6
			if matrix[2][6] == 0:
				matrix[1][6] = 2
				matrix[2][6] = 2
				matrix[2][5] = 2
				matrix[2][7] = 2
				matrix[3][6] = 2
				sam_points += 5
			elif matrix[2][6] == 1:
				matrix[2][6] = 2
				sam_points += 1
				perks.success -= 1
			elif matrix[2][6] == 2:
				_on_sam_timer_timeout()
		elif sam_hoz == 2 and sam_vert == 6:
			sam_hoz = 2
			sam_vert = 7
			if matrix[2][7] == 0:
				matrix[1][7] = 2
				matrix[2][7] = 2
				matrix[2][6] = 2
				matrix[2][8] = 2
				matrix[3][7] = 2
				sam_points += 5
			elif matrix[2][7] == 1:
				matrix[2][7] = 2
				sam_points += 1
				perks.success -= 1
			elif matrix[2][7] == 2:
				_on_sam_timer_timeout()
		elif sam_hoz == 2 and sam_vert == 7:
			sam_hoz = 2
			sam_vert = 8
			if matrix[2][8] == 0:
				matrix[1][8] = 2
				matrix[2][8] = 2
				matrix[2][7] = 2
				matrix[2][9] = 2
				matrix[3][8] = 2
				sam_points += 5
			elif matrix[2][8] == 1:
				matrix[2][8] = 2
				sam_points += 1
				perks.success -= 1
			elif matrix[2][8] == 2:
				_on_sam_timer_timeout()
		elif sam_hoz == 2 and sam_vert == 8:
			sam_hoz = 2
			sam_vert = 9
			if matrix[2][9] == 0:
				matrix[1][9] = 2
				matrix[2][9] = 2
				matrix[2][8] = 2
				matrix[3][9] = 2
				sam_points += 5
			elif matrix[2][9] == 1:
				matrix[2][9] = 2
				sam_points += 1
				perks.success -= 1
			elif matrix[2][9] == 2:
				_on_sam_timer_timeout()
		elif sam_hoz == 2 and sam_vert == 9:
			_on_sam_timer_timeout()
	
	
		elif sam_hoz == 3 and sam_vert == 0:
			sam_hoz = 3
			sam_vert = 1
			if matrix[3][1] == 0:
				matrix[2][1] = 2
				matrix[3][1] = 2
				matrix[3][0] = 2
				matrix[4][1] = 2
				matrix[3][2] = 2
				sam_points += 5
			elif matrix[3][1] == 1:
				matrix[3][1] = 2
				sam_points += 1
				perks.success -= 1
			elif matrix[3][1] == 1:
				_on_sam_timer_timeout()
		elif sam_hoz == 3 and sam_vert == 1:
			sam_hoz = 3
			sam_vert = 2
			if matrix[3][2] == 0:
				matrix[2][2] = 2
				matrix[3][2] = 2
				matrix[4][2] = 2
				matrix[3][3] = 2
				matrix[3][1] = 2
				sam_points += 5
			elif matrix[3][2] == 1:
				matrix[3][2] = 2
				sam_points += 1
				perks.success -= 1
			elif matrix[3][2] == 2:
				_on_sam_timer_timeout()
		elif sam_hoz == 3 and sam_vert == 2:
			sam_hoz = 3
			sam_vert = 3
			if matrix[3][3] == 0:
				matrix[2][3] = 2
				matrix[3][3] = 2
				matrix[3][2] = 2
				matrix[4][3] = 2
				matrix[3][4] = 2
				sam_points += 5
			elif matrix[3][3] == 1:
				matrix[3][3] = 2
				sam_points += 1
				perks.success -= 1
			elif matrix[3][3] == 2:
				_on_sam_timer_timeout()
		elif sam_hoz == 3 and sam_vert == 3:
			sam_hoz = 3
			sam_vert = 4
			if matrix[3][4] == 0:
				matrix[2][4] = 2
				matrix[3][4] = 2
				matrix[3][3] = 2
				matrix[3][5] = 2
				matrix[4][4] = 2
				sam_points += 5
			elif matrix[3][4] == 1:
				matrix[3][4] = 2
				sam_points += 1
				perks.success -= 1
			elif matrix[3][4] == 2:
				_on_sam_timer_timeout()
		elif sam_hoz == 3 and sam_vert == 4:
			sam_hoz = 3
			sam_vert = 5
			if matrix[3][5] == 0:
				matrix[2][5] = 2
				matrix[3][5] = 2
				matrix[3][4] = 2
				matrix[3][6] = 2
				matrix[4][5] = 2
				sam_points += 5
			elif matrix[3][5] == 1:
				matrix[3][5] = 2
				sam_points += 1
				perks.success -= 1
			elif matrix[3][5] == 2:
				_on_sam_timer_timeout()
		elif sam_hoz == 3 and sam_vert == 5:
			sam_hoz = 3
			sam_vert = 6
			if matrix[3][6] == 0:
				matrix[2][6] = 2
				matrix[3][6] = 2
				matrix[3][5] = 2
				matrix[3][7] = 2
				matrix[4][6] = 2
				sam_points += 5
			elif matrix[3][6] == 1:
				matrix[3][6] = 2
				sam_points += 1
				perks.success -= 1
			elif matrix[3][6] == 2:
				_on_sam_timer_timeout()
		elif sam_hoz == 3 and sam_vert == 6:
			sam_hoz = 3
			sam_vert = 7
			if matrix[3][7] == 0:
				matrix[2][7] = 2
				matrix[3][7] = 2
				matrix[3][6] = 2
				matrix[3][8] = 2
				matrix[4][7] = 2
				sam_points += 5
			elif matrix[3][7] == 1:
				matrix[3][7] = 2
				sam_points += 1
				perks.success -= 1
			elif matrix[3][7] == 2:
				_on_sam_timer_timeout()
		elif sam_hoz == 3 and sam_vert == 7:
			sam_hoz = 3
			sam_vert = 8
			if matrix[3][8] == 0:
				matrix[2][8] = 2
				matrix[3][8] = 2
				matrix[3][7] = 2
				matrix[3][9] = 2
				matrix[4][8] = 2
				sam_points += 5
			elif matrix[3][8] == 1:
				matrix[3][8] = 2
				sam_points += 1
				perks.success -= 1
			elif matrix[3][8] == 2:
				_on_sam_timer_timeout()
		elif sam_hoz == 3 and sam_vert == 8:
			sam_hoz = 3
			sam_vert = 9
			if matrix[3][9] == 0:
				matrix[2][9] = 2
				matrix[3][9] = 2
				matrix[3][8] = 2
				matrix[4][9] = 2
				sam_points += 5
			elif matrix[3][9] == 1:
				matrix[3][9] = 2
				sam_points += 1
				perks.success -= 1
			elif matrix[3][9] == 2:
				_on_sam_timer_timeout()
		elif sam_hoz == 3 and sam_vert == 9:
			_on_sam_timer_timeout()

		elif sam_hoz == 4 and sam_vert == 0:
			sam_hoz = 4
			sam_vert = 1
			if matrix[4][1] == 0:
				matrix[3][1] = 2
				matrix[4][1] = 2
				matrix[4][0] = 2
				matrix[5][1] = 2
				matrix[4][2] = 2
				sam_points += 5
			elif matrix[4][1] == 1:
				matrix[4][1] = 2
				sam_points += 1
				perks.success -= 1
			elif matrix[4][1] == 1:
				_on_sam_timer_timeout()
		elif sam_hoz == 4 and sam_vert == 1:
			sam_hoz = 4
			sam_vert = 2
			if matrix[4][2] == 0:
				matrix[3][2] = 2
				matrix[4][2] = 2
				matrix[5][2] = 2
				matrix[4][3] = 2
				matrix[4][1] = 2
				sam_points += 5
			elif matrix[4][2] == 1:
				matrix[4][2] = 2
				sam_points += 1
				perks.success -= 1
			elif matrix[4][2] == 2:
				_on_sam_timer_timeout()
		elif sam_hoz == 4 and sam_vert == 2:
			sam_hoz = 4
			sam_vert = 3
			if matrix[4][3] == 0:
				matrix[3][3] = 2
				matrix[4][3] = 2
				matrix[4][2] = 2
				matrix[5][3] = 2
				matrix[4][4] = 2
				sam_points += 5
			elif matrix[4][3] == 1:
				matrix[4][3] = 2
				sam_points += 1
				perks.success -= 1
			elif matrix[4][3] == 2:
				_on_sam_timer_timeout()
		elif sam_hoz == 4 and sam_vert == 3:
			sam_hoz = 4
			sam_vert = 4
			if matrix[4][4] == 0:
				matrix[3][4] = 2
				matrix[4][4] = 2
				matrix[4][3] = 2
				matrix[4][5] = 2
				matrix[5][4] = 2
				sam_points += 5
			elif matrix[4][4] == 1:
				matrix[4][4] = 2
				sam_points += 1
				perks.success -= 1
			elif matrix[4][4] == 2:
				_on_sam_timer_timeout()
		elif sam_hoz == 4 and sam_vert == 4:
			sam_hoz = 4
			sam_vert = 5
			if matrix[4][5] == 0:
				matrix[3][5] = 2
				matrix[4][5] = 2
				matrix[4][4] = 2
				matrix[4][6] = 2
				matrix[5][5] = 2
				sam_points += 5
			elif matrix[4][5] == 1:
				matrix[4][5] = 2
				sam_points += 1
				perks.success -= 1
			elif matrix[4][5] == 2:
				_on_sam_timer_timeout()
		elif sam_hoz == 4 and sam_vert == 5:
			sam_hoz = 4
			sam_vert = 6
			if matrix[4][6] == 0:
				matrix[3][6] = 2
				matrix[4][6] = 2
				matrix[4][5] = 2
				matrix[4][7] = 2
				matrix[5][6] = 2
				sam_points += 5
			elif matrix[4][6] == 1:
				matrix[4][6] = 2
				sam_points += 1
				perks.success -= 1
			elif matrix[4][6] == 2:
				_on_sam_timer_timeout()
		elif sam_hoz == 4 and sam_vert == 6:
			sam_hoz = 4
			sam_vert = 7
			if matrix[4][7] == 0:
				matrix[3][7] = 2
				matrix[4][7] = 2
				matrix[4][6] = 2
				matrix[4][8] = 2
				matrix[5][7] = 2
				sam_points += 5
			elif matrix[4][7] == 1:
				matrix[4][7] = 2
				sam_points += 1
				perks.success -= 1
			elif matrix[4][7] == 2:
				_on_sam_timer_timeout()
		elif sam_hoz == 4 and sam_vert == 7:
			sam_hoz = 4
			sam_vert = 8
			if matrix[4][8] == 0:
				matrix[3][8] = 2
				matrix[4][8] = 2
				matrix[4][7] = 2
				matrix[4][9] = 2
				matrix[5][8] = 2
				sam_points += 5
			elif matrix[4][8] == 1:
				matrix[4][8] = 2
				sam_points += 1
				perks.success -= 1
			elif matrix[4][8] == 2:
				_on_sam_timer_timeout()
		elif sam_hoz == 4 and sam_vert == 8:
			sam_hoz = 4
			sam_vert = 9
			if matrix[4][9] == 0:
				matrix[3][9] = 2
				matrix[4][9] = 2
				matrix[4][8] = 2
				matrix[5][9] = 2
				sam_points += 5
			elif matrix[4][9] == 1:
				matrix[4][9] = 2
				sam_points += 1
				perks.success -= 1
			elif matrix[4][9] == 2:
				_on_sam_timer_timeout()
		elif sam_hoz == 4 and sam_vert == 9:
			_on_sam_timer_timeout()
		
			
		elif sam_hoz == 5 and sam_vert == 0:
			sam_hoz = 5
			sam_vert = 1
			if matrix[5][1] == 0:
				matrix[4][1] = 2
				matrix[5][1] = 2
				matrix[5][0] = 2
				matrix[6][1] = 2
				matrix[5][2] = 2
				sam_points += 5
			elif matrix[5][1] == 1:
				matrix[5][1] = 2
				sam_points += 1
				perks.success -= 1
			elif matrix[5][1] == 1:
				_on_sam_timer_timeout()
		elif sam_hoz == 5 and sam_vert == 1:
			sam_hoz = 5
			sam_vert = 2
			if matrix[5][2] == 0:
				matrix[4][2] = 2
				matrix[5][2] = 2
				matrix[6][2] = 2
				matrix[5][3] = 2
				matrix[5][1] = 2
				sam_points += 5
			elif matrix[5][2] == 1:
				matrix[5][2] = 2
				sam_points += 1
				perks.success -= 1
			elif matrix[5][2] == 2:
				_on_sam_timer_timeout()
		elif sam_hoz == 5 and sam_vert == 2:
			sam_hoz = 5
			sam_vert = 3
			if matrix[5][3] == 0:
				matrix[4][3] = 2
				matrix[5][3] = 2
				matrix[5][2] = 2
				matrix[6][3] = 2
				matrix[5][4] = 2
				sam_points += 5
			elif matrix[5][3] == 1:
				matrix[5][3] = 2
				sam_points += 1
				perks.success -= 1
			elif matrix[5][3] == 2:
				_on_sam_timer_timeout()
		elif sam_hoz == 5 and sam_vert == 3:
			sam_hoz = 5
			sam_vert = 4
			if matrix[5][4] == 0:
				matrix[4][4] = 2
				matrix[5][4] = 2
				matrix[5][3] = 2
				matrix[5][5] = 2
				matrix[6][4] = 2
				sam_points += 5
			elif matrix[5][4] == 1:
				matrix[5][4] = 2
				sam_points += 1
				perks.success -= 1
			elif matrix[5][4] == 2:
				_on_sam_timer_timeout()
		elif sam_hoz == 5 and sam_vert == 4:
			sam_hoz = 5
			sam_vert = 5
			if matrix[5][5] == 0:
				matrix[4][5] = 2
				matrix[5][5] = 2
				matrix[5][4] = 2
				matrix[5][6] = 2
				matrix[6][5] = 2
				sam_points += 5
			elif matrix[5][5] == 1:
				matrix[5][5] = 2
				sam_points += 1
				perks.success -= 1
			elif matrix[5][5] == 2:
				_on_sam_timer_timeout()
		elif sam_hoz == 5 and sam_vert == 5:
			sam_hoz = 5
			sam_vert = 6
			if matrix[5][6] == 0:
				matrix[4][6] = 2
				matrix[5][6] = 2
				matrix[5][5] = 2
				matrix[5][7] = 2
				matrix[6][6] = 2
				sam_points += 5
			elif matrix[5][6] == 1:
				matrix[5][6] = 2
				sam_points += 1
				perks.success -= 1
			elif matrix[5][6] == 2:
				_on_sam_timer_timeout()
		elif sam_hoz == 5 and sam_vert == 6:
			sam_hoz = 5
			sam_vert = 7
			if matrix[5][7] == 0:
				matrix[4][7] = 2
				matrix[5][7] = 2
				matrix[5][6] = 2
				matrix[5][8] = 2
				matrix[6][7] = 2
				sam_points += 5
			elif matrix[5][7] == 1:
				matrix[5][7] = 2
				sam_points += 1
				perks.success -= 1
			elif matrix[5][7] == 2:
				_on_sam_timer_timeout()
		elif sam_hoz == 5 and sam_vert == 7:
			sam_hoz = 5
			sam_vert = 8
			if matrix[5][8] == 0:
				matrix[4][8] = 2
				matrix[5][8] = 2
				matrix[5][7] = 2
				matrix[5][9] = 2
				matrix[6][8] = 2
				sam_points += 5
			elif matrix[5][8] == 1:
				matrix[5][8] = 2
				sam_points += 1
				perks.success -= 1
			elif matrix[5][8] == 2:
				_on_sam_timer_timeout()
		elif sam_hoz == 5 and sam_vert == 8:
			sam_hoz = 5
			sam_vert = 9
			if matrix[5][9] == 0:
				matrix[4][9] = 2
				matrix[5][9] = 2
				matrix[5][8] = 2
				matrix[6][9] = 2
				sam_points += 5
			elif matrix[5][9] == 1:
				matrix[5][9] = 2
				sam_points += 1
				perks.success -= 1
			elif matrix[5][9] == 2:
				_on_sam_timer_timeout()
		elif sam_hoz == 5 and sam_vert == 9:
			_on_sam_timer_timeout()
	
	
		elif sam_hoz == 6 and sam_vert == 0:
			sam_hoz = 6
			sam_vert = 1
			if matrix[6][1] == 0:
				matrix[5][1] = 2
				matrix[6][1] = 2
				matrix[6][0] = 2
				matrix[7][1] = 2
				matrix[6][2] = 2
				sam_points += 5
			elif matrix[6][1] == 1:
				matrix[6][1] = 2
				sam_points += 1
				perks.success -= 1
			elif matrix[6][1] == 1:
				_on_sam_timer_timeout()
		elif sam_hoz == 6 and sam_vert == 1:
			sam_hoz = 6
			sam_vert = 2
			if matrix[6][2] == 0:
				matrix[5][2] = 2
				matrix[6][2] = 2
				matrix[7][2] = 2
				matrix[6][3] = 2
				matrix[6][1] = 2
				sam_points += 5
			elif matrix[6][2] == 1:
				matrix[6][2] = 2
				sam_points += 1
				perks.success -= 1
			elif matrix[6][2] == 2:
				_on_sam_timer_timeout()
		elif sam_hoz == 6 and sam_vert == 2:
			sam_hoz = 6
			sam_vert = 3
			if matrix[6][3] == 0:
				matrix[5][3] = 2
				matrix[6][3] = 2
				matrix[6][2] = 2
				matrix[7][3] = 2
				matrix[6][4] = 2
				sam_points += 5
			elif matrix[6][3] == 1:
				matrix[6][3] = 2
				sam_points += 1
				perks.success -= 1
			elif matrix[6][3] == 2:
				_on_sam_timer_timeout()
		elif sam_hoz == 6 and sam_vert == 3:
			sam_hoz = 6
			sam_vert = 4
			if matrix[6][4] == 0:
				matrix[5][4] = 2
				matrix[6][4] = 2
				matrix[6][3] = 2
				matrix[6][5] = 2
				matrix[7][4] = 2
				sam_points += 5
			elif matrix[6][4] == 1:
				matrix[6][4] = 2
				sam_points += 1
				perks.success -= 1
			elif matrix[6][4] == 2:
				_on_sam_timer_timeout()
		elif sam_hoz == 6 and sam_vert == 4:
			sam_hoz = 6
			sam_vert = 5
			if matrix[6][5] == 0:
				matrix[5][5] = 2
				matrix[6][5] = 2
				matrix[6][4] = 2
				matrix[6][6] = 2
				matrix[7][5] = 2
				sam_points += 5
			elif matrix[6][5] == 1:
				matrix[6][5] = 2
				sam_points += 1
				perks.success -= 1
			elif matrix[6][5] == 2:
				_on_sam_timer_timeout()
		elif sam_hoz == 6 and sam_vert == 5:
			sam_hoz = 6
			sam_vert = 6
			if matrix[6][6] == 0:
				matrix[5][6] = 2
				matrix[6][6] = 2
				matrix[6][5] = 2
				matrix[6][7] = 2
				matrix[7][6] = 2
				sam_points += 5
			elif matrix[6][6] == 1:
				matrix[6][6] = 2
				sam_points += 1
				perks.success -= 1
			elif matrix[6][6] == 2:
				_on_sam_timer_timeout()
		elif sam_hoz == 6 and sam_vert == 6:
			sam_hoz = 6
			sam_vert = 7
			if matrix[6][7] == 0:
				matrix[5][7] = 2
				matrix[6][7] = 2
				matrix[6][6] = 2
				matrix[6][8] = 2
				matrix[7][7] = 2
				sam_points += 5
			elif matrix[6][7] == 1:
				matrix[6][7] = 2
				sam_points += 1
				perks.success -= 1
			elif matrix[6][7] == 2:
				_on_sam_timer_timeout()
		elif sam_hoz == 6 and sam_vert == 7:
			sam_hoz = 6
			sam_vert = 8
			if matrix[6][8] == 0:
				matrix[5][8] = 2
				matrix[6][8] = 2
				matrix[6][7] = 2
				matrix[6][9] = 2
				matrix[7][8] = 2
				sam_points += 5
			elif matrix[6][8] == 1:
				matrix[6][8] = 2
				sam_points += 1
				perks.success -= 1
			elif matrix[6][8] == 2:
				_on_sam_timer_timeout()
		elif sam_hoz == 6 and sam_vert == 8:
			sam_hoz = 6
			sam_vert = 9
			if matrix[6][9] == 0:
				matrix[5][9] = 2
				matrix[6][9] = 2
				matrix[6][8] = 2
				matrix[7][9] = 2
				sam_points += 5
			elif matrix[6][9] == 1:
				matrix[6][9] = 2
				sam_points += 1
				perks.success -= 1
			elif matrix[6][9] == 2:
				_on_sam_timer_timeout()
		elif sam_hoz == 6 and sam_vert == 9:
			_on_sam_timer_timeout()
	
		elif sam_hoz == 7 and sam_vert == 0:
			sam_hoz = 7
			sam_vert = 1
			if matrix[7][1] == 0:
				matrix[6][1] = 2
				matrix[7][1] = 2
				matrix[7][0] = 2
				matrix[8][1] = 2
				matrix[7][2] = 2
				sam_points += 5
			elif matrix[7][1] == 1:
				matrix[7][1] = 2
				sam_points += 1
				perks.success -= 1
			elif matrix[7][1] == 1:
				_on_sam_timer_timeout()
		elif sam_hoz == 7 and sam_vert == 1:
			sam_hoz = 7
			sam_vert = 2
			if matrix[7][2] == 0:
				matrix[6][2] = 2
				matrix[7][2] = 2
				matrix[8][2] = 2
				matrix[7][3] = 2
				matrix[7][1] = 2
				sam_points += 5
			elif matrix[7][2] == 1:
				matrix[7][2] = 2
				sam_points += 1
				perks.success -= 1
			elif matrix[7][2] == 2:
				_on_sam_timer_timeout()
		elif sam_hoz == 7 and sam_vert == 2:
			sam_hoz = 7
			sam_vert = 3
			if matrix[7][3] == 0:
				matrix[6][3] = 2
				matrix[7][3] = 2
				matrix[7][2] = 2
				matrix[8][3] = 2
				matrix[7][4] = 2
				sam_points += 5
			elif matrix[7][3] == 1:
				matrix[7][3] = 2
				sam_points += 1
				perks.success -= 1
			elif matrix[7][3] == 2:
				_on_sam_timer_timeout()
		elif sam_hoz == 7 and sam_vert == 3:
			sam_hoz = 7
			sam_vert = 4
			if matrix[7][4] == 0:
				matrix[6][4] = 2
				matrix[7][4] = 2
				matrix[7][3] = 2
				matrix[7][5] = 2
				matrix[8][4] = 2
				sam_points += 5
			elif matrix[7][4] == 1:
				matrix[7][4] = 2
				sam_points += 1
				perks.success -= 1
			elif matrix[7][4] == 2:
				_on_sam_timer_timeout()
		elif sam_hoz == 7 and sam_vert == 4:
			sam_hoz = 7
			sam_vert = 5
			if matrix[7][5] == 0:
				matrix[6][5] = 2
				matrix[7][5] = 2
				matrix[7][4] = 2
				matrix[7][6] = 2
				matrix[8][5] = 2
				sam_points += 5
			elif matrix[7][5] == 1:
				matrix[7][5] = 2
				sam_points += 1
				perks.success -= 1
			elif matrix[7][5] == 2:
				_on_sam_timer_timeout()
		elif sam_hoz == 7 and sam_vert == 5:
			sam_hoz = 7
			sam_vert = 6
			if matrix[7][6] == 0:
				matrix[6][6] = 2
				matrix[7][6] = 2
				matrix[7][5] = 2
				matrix[7][7] = 2
				matrix[8][6] = 2
				sam_points += 5
			elif matrix[7][6] == 1:
				matrix[7][6] = 2
				sam_points += 1
				perks.success -= 1
			elif matrix[7][6] == 2:
				_on_sam_timer_timeout()
		elif sam_hoz == 7 and sam_vert == 6:
			sam_hoz = 7
			sam_vert = 7
			if matrix[7][7] == 0:
				matrix[6][7] = 2
				matrix[7][7] = 2
				matrix[7][6] = 2
				matrix[7][8] = 2
				matrix[8][7] = 2
				sam_points += 5
			elif matrix[7][7] == 1:
				matrix[7][7] = 2
				sam_points += 1
				perks.success -= 1
			elif matrix[7][7] == 2:
				_on_sam_timer_timeout()
		elif sam_hoz == 7 and sam_vert == 7:
			sam_hoz = 7
			sam_vert = 8
			if matrix[7][8] == 0:
				matrix[6][8] = 2
				matrix[7][8] = 2
				matrix[7][7] = 2
				matrix[7][9] = 2
				matrix[8][8] = 2
				sam_points += 5
			elif matrix[7][8] == 1:
				matrix[7][8] = 2
				sam_points += 1
				perks.success -= 1
			elif matrix[7][8] == 2:
				_on_sam_timer_timeout()
		elif sam_hoz == 7 and sam_vert == 8:
			sam_hoz = 7
			sam_vert = 9
			if matrix[7][9] == 0:
				matrix[6][9] = 2
				matrix[7][9] = 2
				matrix[7][8] = 2
				matrix[8][9] = 2
				sam_points += 5
			elif matrix[7][9] == 1:
				matrix[7][9] = 2
				sam_points += 1
				perks.success -= 1
			elif matrix[7][9] == 2:
				_on_sam_timer_timeout()
		elif sam_hoz == 7 and sam_vert == 9:
			_on_sam_timer_timeout()
	
		elif sam_hoz == 8 and sam_vert == 0:
			sam_hoz = 8
			sam_vert = 1
			if matrix[8][1] == 0:
				matrix[7][1] = 2
				matrix[8][1] = 2
				matrix[8][0] = 2
				matrix[9][1] = 2
				matrix[8][2] = 2
				sam_points += 5
			elif matrix[8][1] == 1:
				matrix[8][1] = 2
				sam_points += 1
				perks.success -= 1
			elif matrix[8][1] == 1:
				_on_sam_timer_timeout()
		elif sam_hoz == 8 and sam_vert == 1:
			sam_hoz = 8
			sam_vert = 2
			if matrix[8][2] == 0:
				matrix[7][2] = 2
				matrix[8][2] = 2
				matrix[9][2] = 2
				matrix[8][3] = 2
				matrix[8][1] = 2
				sam_points += 5
			elif matrix[8][2] == 1:
				matrix[8][2] = 2
				sam_points += 1
				perks.success -= 1
			elif matrix[8][2] == 2:
				_on_sam_timer_timeout()
		elif sam_hoz == 8 and sam_vert == 2:
			sam_hoz = 8
			sam_vert = 3
			if matrix[8][3] == 0:
				matrix[7][3] = 2
				matrix[8][3] = 2
				matrix[8][2] = 2
				matrix[9][3] = 2
				matrix[8][4] = 2
				sam_points += 5
			elif matrix[8][3] == 1:
				matrix[8][3] = 2
				sam_points += 1
				perks.success -= 1
			elif matrix[8][3] == 2:
				_on_sam_timer_timeout()
		elif sam_hoz == 8 and sam_vert == 3:
			sam_hoz = 8
			sam_vert = 4
			if matrix[8][4] == 0:
				matrix[7][4] = 2
				matrix[8][4] = 2
				matrix[8][3] = 2
				matrix[8][5] = 2
				matrix[9][4] = 2
				sam_points += 5
			elif matrix[8][4] == 1:
				matrix[8][4] = 2
				sam_points += 1
				perks.success -= 1
			elif matrix[8][4] == 2:
				_on_sam_timer_timeout()
		elif sam_hoz == 8 and sam_vert == 4:
			sam_hoz = 8
			sam_vert = 5
			if matrix[8][5] == 0:
				matrix[7][5] = 2
				matrix[8][5] = 2
				matrix[8][4] = 2
				matrix[8][6] = 2
				matrix[9][5] = 2
				sam_points += 5
			elif matrix[8][5] == 1:
				matrix[8][5] = 2
				sam_points += 1
				perks.success -= 1
			elif matrix[8][5] == 2:
				_on_sam_timer_timeout()
		elif sam_hoz == 8 and sam_vert == 5:
			sam_hoz = 8
			sam_vert = 6
			if matrix[8][6] == 0:
				matrix[7][6] = 2
				matrix[8][6] = 2
				matrix[8][5] = 2
				matrix[8][7] = 2
				matrix[9][6] = 2
				sam_points += 5
			elif matrix[8][6] == 1:
				matrix[8][6] = 2
				sam_points += 1
				perks.success -= 1
			elif matrix[8][6] == 2:
				_on_sam_timer_timeout()
		elif sam_hoz == 8 and sam_vert == 6:
			sam_hoz = 8
			sam_vert = 7
			if matrix[8][7] == 0:
				matrix[7][7] = 2
				matrix[8][7] = 2
				matrix[8][6] = 2
				matrix[8][8] = 2
				matrix[9][7] = 2
				sam_points += 5
			elif matrix[8][7] == 1:
				matrix[8][7] = 2
				sam_points += 1
				perks.success -= 1
			elif matrix[8][7] == 2:
				_on_sam_timer_timeout()
		elif sam_hoz == 8 and sam_vert == 7:
			sam_hoz = 8
			sam_vert = 8
			if matrix[8][8] == 0:
				matrix[7][8] = 2
				matrix[8][8] = 2
				matrix[8][7] = 2
				matrix[8][9] = 2
				matrix[9][8] = 2
				sam_points += 5
			elif matrix[8][8] == 1:
				matrix[8][8] = 2
				sam_points += 1
				perks.success -= 1
			elif matrix[8][8] == 2:
				_on_sam_timer_timeout()
		elif sam_hoz == 8 and sam_vert == 8:
			sam_hoz = 8
			sam_vert = 9
			if matrix[8][9] == 0:
				matrix[7][9] = 2
				matrix[8][9] = 2
				matrix[8][8] = 2
				matrix[9][9] = 2
				sam_points += 5
			elif matrix[8][9] == 1:
				matrix[8][9] = 2
				sam_points += 1
				perks.success -= 1
			elif matrix[8][9] == 2:
				_on_sam_timer_timeout()
		elif sam_hoz == 8 and sam_vert == 9:
			_on_sam_timer_timeout()
			
		elif sam_hoz == 9 and sam_vert == 0:
			sam_hoz = 9
			sam_vert = 1
			if matrix[9][1] == 0:
				matrix[8][1] = 2
				matrix[9][1] = 2
				matrix[9][0] = 2
				matrix[9][2] = 2
				sam_points += 5
			elif matrix[9][1] == 1:
				matrix[9][1] = 2
				sam_points += 1
				perks.success -= 1
			elif matrix[9][1] == 1:
				_on_sam_timer_timeout()
		elif sam_hoz == 9 and sam_vert == 1:
			sam_hoz = 9
			sam_vert = 2
			if matrix[9][2] == 0:
				matrix[8][2] = 2
				matrix[9][2] = 2
				matrix[9][3] = 2
				matrix[9][1] = 2
				sam_points += 5
			elif matrix[9][2] == 1:
				matrix[9][2] = 2
				sam_points += 1
				perks.success -= 1
			elif matrix[9][2] == 2:
				_on_sam_timer_timeout()
		elif sam_hoz == 9 and sam_vert == 2:
			sam_hoz = 9
			sam_vert = 3
			if matrix[9][3] == 0:
				matrix[8][3] = 2
				matrix[9][3] = 2
				matrix[9][2] = 2
				matrix[9][4] = 2
				sam_points += 5
			elif matrix[9][3] == 1:
				matrix[9][3] = 2
				sam_points += 1
				perks.success -= 1
			elif matrix[9][3] == 2:
				_on_sam_timer_timeout()
		elif sam_hoz == 9 and sam_vert == 3:
			sam_hoz = 9
			sam_vert = 4
			if matrix[9][4] == 0:
				matrix[8][4] = 2
				matrix[9][4] = 2
				matrix[9][3] = 2
				matrix[9][5] = 2
				sam_points += 5
			elif matrix[9][4] == 1:
				matrix[9][4] = 2
				sam_points += 1
				perks.success -= 1
			elif matrix[9][4] == 2:
				_on_sam_timer_timeout()
		elif sam_hoz == 9 and sam_vert == 4:
			sam_hoz = 9
			sam_vert = 5
			if matrix[9][5] == 0:
				matrix[8][5] = 2
				matrix[9][5] = 2
				matrix[9][4] = 2
				matrix[9][6] = 2
				sam_points += 5
			elif matrix[9][5] == 1:
				matrix[9][5] = 2
				sam_points += 1
				perks.success -= 1
			elif matrix[9][5] == 2:
				_on_sam_timer_timeout()
		elif sam_hoz == 9 and sam_vert == 5:
			sam_hoz = 9
			sam_vert = 6
			if matrix[9][6] == 0:
				matrix[8][6] = 2
				matrix[9][6] = 2
				matrix[9][5] = 2
				matrix[9][7] = 2
				sam_points += 5
			elif matrix[9][6] == 1:
				matrix[9][6] = 2
				sam_points += 1
				perks.success -= 1
			elif matrix[9][6] == 2:
				_on_sam_timer_timeout()
		elif sam_hoz == 9 and sam_vert == 6:
			sam_hoz = 9
			sam_vert = 7
			if matrix[9][7] == 0:
				matrix[8][7] = 2
				matrix[9][7] = 2
				matrix[9][6] = 2
				matrix[9][8] = 2
				sam_points += 5
			elif matrix[9][7] == 1:
				matrix[9][7] = 2
				sam_points += 1
				perks.success -= 1
			elif matrix[9][7] == 2:
				_on_sam_timer_timeout()
		elif sam_hoz == 9 and sam_vert == 7:
			sam_hoz = 9
			sam_vert = 8
			if matrix[9][8] == 0:
				matrix[8][8] = 2
				matrix[9][8] = 2
				matrix[9][7] = 2
				matrix[9][9] = 2
				sam_points += 5
			elif matrix[9][8] == 1:
				matrix[9][8] = 2
				sam_points += 1
				perks.success -= 1
			elif matrix[9][8] == 2:
				_on_sam_timer_timeout()
		elif sam_hoz == 9 and sam_vert == 8:
			sam_hoz = 9
			sam_vert = 9
			if matrix[9][9] == 0:
				matrix[8][9] = 2
				matrix[9][9] = 2
				matrix[9][8] = 2
				sam_points += 5
			elif matrix[9][9] == 1:
				matrix[9][9] = 2
				sam_points += 1
				perks.success -= 1
			elif matrix[9][9] == 2:
				_on_sam_timer_timeout()
		elif sam_hoz == 9 and sam_vert == 9:
			_on_sam_timer_timeout()



func _on_day_timer_timeout():
	if perks.success > sam_points:
		perks.perk_check()
		get_tree().change_scene("res://strategy.tscn")
	else:
		get_tree().change_scene("res://strategy.tscn")
	
	
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
	
func _on_customer_timeout():
	get_node("customer_display/moneybag").show()
	get_node("customer_display/explosion").show()
	get_node("customer_display/pop_timer").start()


func _on_customer_pop_timer_timeout():
	get_node("customer_display/moneybag").hide()
	get_node("customer_display/explosion").hide()


func _on_tutorial_button_button_down():
	get_node("tutorial").hide()
	countin()
	
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