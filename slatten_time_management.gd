extends Node2D

onready var countdown_timer = get_node("countdown_timer")
onready var bert = get_node("qbert")
onready var pixel = get_node("pixel_button")

var hundreds
var tens
var ones

var bert_updown = 0
var bert_leftright = 0
var bert_x
var bert_y

func _ready():
	random_board()
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
	set_process(true)
	set_physics_process(true)
	
func _physics_process(delta):
	bert.rotation = 0
	set_position()
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
			if bert_leftright < 9:
				bert_leftright += 1
				get_node("right_timer").start()
			else:
				pass
	if Input.is_action_pressed("fire"):
		if $fire_timer.get_time_left() == 0:
			$fire_timer.start()
			fire()
	
func _process(delta):
	check_board()
	hundreds = get_node("success_background/hundreths")
	tens = get_node("success_background/tens")
	ones = get_node("success_background/ones")
	point_display()
	countdown_timer.clear()
	countdown_timer.add_text(str(int(get_node("day_timer").get_time_left())))

func check_board():
	var brick_count = 0
	var all_lights = get_tree().get_nodes_in_group("light")
	for light in all_lights:
		if light.pressed == false:
			brick_count += 1
	if brick_count <= 5:
		perks.success += 40
		random_board()
	brick_count = 0

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
	perks.perk_check()
	get_tree().change_scene("res://strategy.tscn")

func _on_pixel_button_button_down():
	get_node("menu/sound_slider").set_value(int(sound.volume + 50))
	get_tree().set_pause(true)
	get_node("menu").show()

func _on_sound_slider_value_changed( value ):
	AudioServer.set_bus_volume_db(0,value - 50)
	
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


func random_board():
	var all_lights = get_tree().get_nodes_in_group("light")
	for light in all_lights:
		randomize()
		var coin_flip = [true, false]
		var choice = coin_flip[randi() % coin_flip.size()]
		if choice == true:
			light.pressed = true
		elif choice == false:
			light.pressed = false

func fire():
	print(bert_updown)
	print(bert_leftright)
	if bert_updown == 0 and bert_leftright == 0:
		if $"00".pressed == true:
			$"00".pressed = false
		elif $"00".pressed == false:
			$"00".pressed = true
			 

		if $"01".pressed == true:
			$"01".pressed = false 
		elif $"01".pressed == false:
			$"01".pressed = true
			 
		
		if $"10".pressed == true:
			$"10".pressed = false
		elif $"10".pressed == false:
			$"10".pressed = true
			 
	
	elif bert_updown == 0 and bert_leftright == 1:
		if $"00".pressed == true:
			$"00".pressed = false
		elif $"00".pressed == false:
			$"00".pressed = true
			 
			
		if $"01".pressed == true:
			$"01".pressed = false
		elif $"01".pressed == false:
			$"01".pressed = true
			 
			
		if $"02".pressed == true:
			$"02".pressed = false
		elif $"02".pressed == false:
			$"02".pressed = true
			 
		
		if $"11".pressed == true:
			$"11".pressed = false
		elif $"11".pressed == false:
			$"11".pressed = true
			 
			
	elif bert_updown == 0 and bert_leftright == 2:
		if $"01".pressed == true:
			$"01".pressed = false
		elif $"01".pressed == false:
			$"01".pressed = true
			 
			
		if $"02".pressed == true:
			$"02".pressed = false
		elif $"02".pressed == false:
			$"02".pressed = true
			 
			
		if $"03".pressed == true:
			$"03".pressed = false
		elif $"03".pressed == false:
			$"02".pressed = true
			 
		
		if $"12".pressed == true:
			$"12".pressed = false
		elif $"12".pressed == false:
			$"12".pressed = true
			 

	elif bert_updown == 0 and bert_leftright == 3:
		if $"02".pressed == true:
			$"02".pressed = false
		elif $"02".pressed == false:
			$"02".pressed = true
			 
			
		if $"03".pressed == true:
			$"03".pressed = false
		elif $"03".pressed == false:
			$"03".pressed = true
			 
		
		if $"04".pressed == true:
			$"04".pressed = false
		elif $"04".pressed == false:
			$"04".pressed = true
			 
		
		if $"13".pressed == true:
			$"13".pressed = false
		elif $"13".pressed == false:
			$"13".pressed = true
			 

	elif bert_updown == 0 and bert_leftright == 4:
		if $"03".pressed == true:
			$"03".pressed = false
		elif $"03".pressed == false:
			$"03".pressed = true
			 
			
		if $"04".pressed == true:
			$"04".pressed = false
		elif $"04".pressed == false:
			$"04".pressed = true
			 
			
		if $"05".pressed == true:
			$"05".pressed = false
		elif $"05".pressed == false:
			$"05".pressed = true
			 
		
		if $"14".pressed == true:
			$"14".pressed = false
		elif $"14".pressed == false:
			$"14".pressed = true
			 
			
	elif bert_updown == 0 and bert_leftright == 5:
		if $"04".pressed == true:
			$"04".pressed = false
		elif $"04".pressed == false:
			$"04".pressed = true
			 
			
		if $"05".pressed == true:
			$"05".pressed = false
		elif $"05".pressed == false:
			$"05".pressed = true
			 
			
		if $"06".pressed == true:
			$"06".pressed = false
		elif $"06".pressed == false:
			$"06".pressed = true
			 
		
		if $"15".pressed == true:
			$"15".pressed = false
		elif $"15".pressed == false:
			$"15".pressed = true
			 

	elif bert_updown == 0 and bert_leftright == 6:
		if $"05".pressed == true:
			$"05".pressed = false
		elif $"05".pressed == false:
			$"05".pressed = true
			 
		
		if $"06".pressed == true:
			$"06".pressed = false
		elif $"06".pressed == false:
			$"06".pressed = true
			 
		
		if $"07".pressed == true:
			$"07".pressed = false
		elif $"07".pressed == false:
			$"07".pressed = true
			 
		
		if $"16".pressed == true:
			$"16".pressed = false
		elif $"16".pressed == false:
			$"16".pressed = true
			 

	elif bert_updown == 0 and bert_leftright == 7:
		if $"06".pressed == true:
			$"06".pressed = false 
		elif $"06".pressed == false:
			$"06".pressed = true
			 
			
		if $"07".pressed == true:
			$"07".pressed = false
		elif $"07".pressed == false:
			$"07".pressed = true
			 
			
		if $"08".pressed == true:
			$"08".pressed = false
		elif $"08".pressed == false:
			$"08".pressed = true
			 
		
		if $"17".pressed == true:
			$"17".pressed = false
		elif $"17".pressed == false:
			$"17".pressed = true
			 
		
	elif bert_updown == 0 and bert_leftright == 8:
		if $"07".pressed == true:
			$"07".pressed = false
		elif $"07".pressed == false:
			$"07".pressed = true
			 
			
		if $"08".pressed == true:
			$"08".pressed = false
		elif $"08".pressed == false:
			$"08".pressed = true
			 
			
		if $"09".pressed == true:
			$"09".pressed = false
		elif $"09".pressed == false:
			$"09".pressed = true
			 
		
		if $"18".pressed == true:
			$"18".pressed = false
		elif $"18".pressed == false:
			$"18".pressed = true
			 

	elif bert_updown == 0 and bert_leftright == 9:
		if $"08".pressed == true:
			$"08".pressed = false
		elif $"08".pressed == false:
			$"08".pressed = true
			 
			
		if $"09".pressed == true:
			$"09".pressed = false
		elif $"09".pressed == false:
			$"09".pressed = true
			 
		
		if $"19".pressed == true:
			$"19".pressed = false
		elif $"19".pressed == false:
			$"19".pressed = true
			 

	elif bert_updown == 1 and bert_leftright == 0:
		if $"11".pressed == true:
			$"11".pressed = false
		elif $"11".pressed == false:
			$"11".pressed = true
			 
			
		if $"10".pressed == true:
			$"10".pressed = false
		elif $"10".pressed == false:
			$"10".pressed = true
			 
			
		if $"00".pressed == true:
			$"00".pressed = false
		elif $"00".pressed == false:
			$"00".pressed = true
			 
		
		if $"20".pressed == true:
			$"20".pressed = false
		elif $"20".pressed == false:
			$"20".pressed = true
			 

	elif bert_updown == 1 and bert_leftright == 1:
		if $"10".pressed == true:
			$"10".pressed = false
		elif $"10".pressed == false:
			$"10".pressed = true
			 
			
		if $"11".pressed == true:
			$"11".pressed = false
		elif $"11".pressed == false:
			$"11".pressed = true
			 
		
		if $"12".pressed == true:
			$"12".pressed = false
		elif $"12".pressed == false:
			$"12".pressed = true
			 
			
		if $"01".pressed == true:
			$"01".pressed = false
		elif $"01".pressed == false:
			$"01".pressed = true
			 
		
		if $"21".pressed == true:
			$"21".pressed = false
		elif $"21".pressed == false:
			$"21".pressed = true
			 
			
	elif bert_updown == 1 and bert_leftright == 2:
		if $"11".pressed == true:
			$"11".pressed = false
		elif $"11".pressed == false:
			$"11".pressed = true
			 
			
		if $"12".pressed == true:
			$"12".pressed = false
		elif $"12".pressed == false:
			$"12".pressed = true
			 
		
		if $"13".pressed == true:
			$"13".pressed = false 
		elif $"13".pressed == false:
			$"13".pressed = true
			 
			
		if $"02".pressed == true:
			$"02".pressed = false
		elif $"02".pressed == false:
			$"02".pressed = true
			 
		
		if $"22".pressed == true:
			$"22".pressed = false
		elif $"22".pressed == false:
			$"22".pressed = true
			 

	elif bert_updown == 1 and bert_leftright == 3:
		if $"12".pressed == true:
			$"12".pressed = false
		elif $"12".pressed == false:
			$"12".pressed = true
			 
			
		if $"13".pressed == true:
			$"13".pressed = false
		elif $"13".pressed == false:
			$"13".pressed = true
			 
		
		if $"14".pressed == true:
			$"14".pressed = false 
		elif $"14".pressed == false:
			$"14".pressed = true
			 
			
		if $"03".pressed == true:
			$"03".pressed = false 
		elif $"03".pressed == false:
			$"03".pressed = true
			 
		
		if $"23".pressed == true:
			$"23".pressed = false 
		elif $"23".pressed == false:
			$"23".pressed = true
			 

	elif bert_updown == 1 and bert_leftright == 4:
		if $"13".pressed == true:
			$"13".pressed = false 
		elif $"13".pressed == false:
			$"13".pressed = true
			 
			
		if $"14".pressed == true:
			$"14".pressed = false
		elif $"14".pressed == false:
			$"14".pressed = true
			 
		
		if $"15".pressed == true:
			$"15".pressed = false 
		elif $"15".pressed == false:
			$"15".pressed = true
			 
			
		if $"04".pressed == true:
			$"04".pressed = false 
		elif $"04".pressed == false:
			$"04".pressed = true
			 
		
		if $"24".pressed == true:
			$"24".pressed = false 
		elif $"24".pressed == false:
			$"24".pressed = true
			 

	elif bert_updown == 1 and bert_leftright == 5:
		if $"14".pressed == true:
			$"14".pressed = false
		elif $"14".pressed == false:
			$"14".pressed = true
			 
		
		if $"15".pressed == true:
			$"15".pressed = false 
		elif $"15".pressed == false:
			$"15".pressed = true
			 
		
		if $"16".pressed == true:
			$"16".pressed = false 
		elif $"16".pressed == false:
			$"16".pressed = true
			 
			
		if $"05".pressed == true:
			$"05".pressed = false 
		elif $"05".pressed == false:
			$"05".pressed = true
			 
		
		if $"25".pressed == true:
			$"25".pressed = false 
		elif $"25".pressed == false:
			$"25".pressed = true
			 


	elif bert_updown == 1 and bert_leftright == 6:
		if $"15".pressed == true:
			$"15".pressed = false
		elif $"15".pressed == false:
			$"15".pressed = true
			 

		if $"16".pressed == true:
			$"16".pressed = false
		elif $"16".pressed == false:
			$"16".pressed = true
			 
		
		if $"17".pressed == true:
			$"17".pressed = false
		elif $"17".pressed == false:
			$"17".pressed = true
			 
			
		if $"06".pressed == true:
			$"06".pressed = false
		elif $"06".pressed == false:
			$"06".pressed = true
			 
		
		if $"26".pressed == true:
			$"26".pressed = false
		elif $"26".pressed == false:
			$"26".pressed = true
			 

	elif bert_updown == 1 and bert_leftright == 7:
		if $"16".pressed == true:
			$"16".pressed = false
		elif $"16".pressed == false:
			$"16".pressed = true
			 
			
		if $"17".pressed == true:
			$"17".pressed = false
		elif $"17".pressed == false:
			$"17".pressed = true
			 
		
		if $"18".pressed == true:
			$"18".pressed = false
		elif $"18".pressed == false:
			$"18".pressed = true
			 
			
		if $"07".pressed == true:
			$"07".pressed = false
		elif $"07".pressed == false:
			$"07".pressed = true
			 
		
		if $"27".pressed == true:
			$"27".pressed = false
		elif $"27".pressed == false:
			$"27".pressed = true
			 

	elif bert_updown == 1 and bert_leftright == 8:
		if $"17".pressed == true:
			$"17".pressed = false
		elif $"17".pressed == false:
			$"17".pressed = true
			 
			
		if $"18".pressed == true:
			$"18".pressed = false
		elif $"18".pressed == false:
			$"18".pressed = true
			 
		
		if $"19".pressed == true:
			$"19".pressed = false
		elif $"19".pressed == false:
			$"19".pressed = true
			 
			
		if $"08".pressed == true:
			$"08".pressed = false
		elif $"08".pressed == false:
			$"08".pressed = true
			 
		
		if $"28".pressed == true:
			$"28".pressed = false
		elif $"28".pressed == false:
			$"28".pressed = true
			 


	elif bert_updown == 1 and bert_leftright == 9:
		if $"18".pressed == true:
			$"18".pressed = false
		elif $"18".pressed == false:
			$"18".pressed = true
			 
			
		if $"19".pressed == true:
			$"19".pressed = false
		elif $"19".pressed == false:
			$"19".pressed = true
			 
			
		if $"09".pressed == true:
			$"09".pressed = false
		elif $"09".pressed == false:
			$"09".pressed = true
			 
		
		if $"29".pressed == true:
			$"29".pressed = false
		elif $"29".pressed == false:
			$"29".pressed = true
			 

	elif bert_updown == 2 and bert_leftright == 0:
		if $"21".pressed == true:
			$"21".pressed = false
		elif $"21".pressed == false:
			$"21".pressed = true
			 
			
		if $"20".pressed == true:
			$"20".pressed = false
		elif $"20".pressed == false:
			$"20".pressed = true
			 
			
		if $"10".pressed == true:
			$"10".pressed = false
		elif $"10".pressed == false:
			$"10".pressed = true
			 
		
		if $"30".pressed == true:
			$"30".pressed = false
		elif $"30".pressed == false:
			$"30".pressed = true
			 

	elif bert_updown == 2 and bert_leftright == 1:
		if $"20".pressed == true:
			$"20".pressed = false
		elif $"20".pressed == false:
			$"20".pressed = true
			 
			
		if $"21".pressed == true:
			$"21".pressed = false
		elif $"21".pressed == false:
			$"21".pressed = true
			 
		
		if $"22".pressed == true:
			$"22".pressed = false
		elif $"22".pressed == false:
			$"22".pressed = true
			 
			
		if $"11".pressed == true:
			$"11".pressed = false
		elif $"11".pressed == false:
			$"11".pressed = true
			 
		
		if $"31".pressed == true:
			$"31".pressed = false
		elif $"31".pressed == false:
			$"31".pressed = true
			 

	elif bert_updown == 2 and bert_leftright == 2:
		if $"21".pressed == true:
			$"21".pressed = false
		elif $"21".pressed == false:
			$"21".pressed = true
			 
		
		if $"22".pressed == true:
			$"22".pressed = false
		elif $"22".pressed == false:
			$"22".pressed = true
			 
		
		if $"23".pressed == true:
			$"23".pressed = false
		elif $"23".pressed == false:
			$"23".pressed = true
			 
			
		if $"12".pressed == true:
			$"12".pressed = false
		elif $"12".pressed == false:
			$"12".pressed = true
			 
		
		if $"32".pressed == true:
			$"32".pressed = false
		elif $"32".pressed == false:
			$"32".pressed = true
			 

	elif bert_updown == 2 and bert_leftright == 3:
		if $"22".pressed == true:
			$"22".pressed = false
		elif $"22".pressed == false:
			$"22".pressed = true
			 
			
		if $"23".pressed == true:
			$"23".pressed = false
		elif $"23".pressed == false:
			$"23".pressed = true
			 
		
		if $"24".pressed == true:
			$"24".pressed = false
		elif $"24".pressed == false:
			$"24".pressed = true
			 
			
		if $"13".pressed == true:
			$"13".pressed = false
		elif $"13".pressed == false:
			$"13".pressed = true
			 
		
		if $"33".pressed == true:
			$"33".pressed = false
		elif $"33".pressed == false:
			$"33".pressed = true
			 

	elif bert_updown == 2 and bert_leftright == 4:
		if $"23".pressed == true:
			$"23".pressed = false
		elif $"23".pressed == false:
			$"23".pressed = true
			 
		
		if $"24".pressed == true:
			$"24".pressed = false
		elif $"24".pressed == false:
			$"24".pressed = true
			 
		
		if $"25".pressed == true:
			$"25".pressed = false
		elif $"25".pressed == false:
			$"25".pressed = true
			 
			
		if $"14".pressed == true:
			$"14".pressed = false
		elif $"14".pressed == false:
			$"14".pressed = true
			 
		
		if $"34".pressed == true:
			$"34".pressed = false
		elif $"34".pressed == false:
			$"34".pressed = true
			 

	elif bert_updown == 2 and bert_leftright == 5:
		if $"24".pressed == true:
			$"24".pressed = false
			 
				 
		elif $"24".pressed == false:
			$"24".pressed = true
			 
			
		if $"25".pressed == true:
			$"25".pressed = false
			 
				 
		elif $"25".pressed == false:
			$"25".pressed = true
			 
		
		if $"26".pressed == true:
			$"26".pressed = false
			 
				 
		elif $"26".pressed == false:
			$"26".pressed = true
			 
			
		if $"15".pressed == true:
			$"15".pressed = false
			 
				 
		elif $"15".pressed == false:
			$"15".pressed = true
			 
		
		if $"35".pressed == true:
			$"35".pressed = false
			 
				 
		elif $"35".pressed == false:
			$"35".pressed = true
			 

	elif bert_updown == 2 and bert_leftright == 6:
		if $"25".pressed == true:
			$"25".pressed = false
			 
				 
		elif $"25".pressed == false:
			$"25".pressed = true
			 
			
		if $"26".pressed == true:
			$"26".pressed = false
			 
				 
		elif $"26".pressed == false:
			$"26".pressed = true
			 
		
		if $"27".pressed == true:
			$"27".pressed = false
			 
				 
		elif $"27".pressed == false:
			$"27".pressed = true
			 
			
		if $"16".pressed == true:
			$"16".pressed = false
			 
				 
		elif $"16".pressed == false:
			$"16".pressed = true
			 
		
		if $"36".pressed == true:
			$"36".pressed = false
			 
				 
		elif $"36".pressed == false:
			$"36".pressed = true
			 

	elif bert_updown == 2 and bert_leftright == 7:
		if $"26".pressed == true:
			$"26".pressed = false
			 
				 
		elif $"26".pressed == false:
			$"26".pressed = true
			 
		
		if $"27".pressed == true:
			$"27".pressed = false
			 
				 
		elif $"27".pressed == false:
			$"27".pressed = true
			 
		
		if $"28".pressed == true:
			$"28".pressed = false
			 
				 
		elif $"28".pressed == false:
			$"28".pressed = true
			 
			
		if $"17".pressed == true:
			$"17".pressed = false
			 
				 
		elif $"17".pressed == false:
			$"17".pressed = true
			 
		
		if $"37".pressed == true:
			$"37".pressed = false
			 
				 
		elif $"37".pressed == false:
			$"37".pressed = true
			 

	elif bert_updown == 2 and bert_leftright == 8:
		if $"27".pressed == true:
			$"27".pressed = false
			 
				 
		elif $"27".pressed == false:
			$"27".pressed = true
			 
			
		if $"28".pressed == true:
			$"28".pressed = false
			 
				 
		elif $"28".pressed == false:
			$"28".pressed = true
			 
		
		if $"29".pressed == true:
			$"29".pressed = false
			 
				 
		elif $"29".pressed == false:
			$"29".pressed = true
			 
			
		if $"18".pressed == true:
			$"18".pressed = false
			 
				 
		elif $"18".pressed == false:
			$"18".pressed = true
			 
		
		if $"38".pressed == true:
			$"38".pressed = false
			 
				 
		elif $"38".pressed == false:
			$"38".pressed = true
			 

	elif bert_updown == 2 and bert_leftright == 9:
		if $"28".pressed == true:
			$"28".pressed = false
			 
				 
		elif $"28".pressed == false:
			$"28".pressed = true
			 
			
		if $"29".pressed == true:
			$"29".pressed = false
			 
				 
		elif $"29".pressed == false:
			$"29".pressed = true
			 
			
		if $"19".pressed == true:
			$"19".pressed = false
			 
				 
		elif $"19".pressed == false:
			$"19".pressed = true
			 
		
		if $"39".pressed == true:
			$"39".pressed = false
			 
				 
		elif $"39".pressed == false:
			$"39".pressed = true
			 

	elif bert_updown == 3 and bert_leftright == 0:
		if $"31".pressed == true:
			$"31".pressed = false
			 
				 
		elif $"31".pressed == false:
			$"31".pressed = true
			 
			
		if $"30".pressed == true:
			$"30".pressed = false
			 
				 
		elif $"30".pressed == false:
			$"30".pressed = true
			 
			
		if $"20".pressed == true:
			$"20".pressed = false
			 
				 
		elif $"20".pressed == false:
			$"20".pressed = true
			 
		
		if $"40".pressed == true:
			$"40".pressed = false
			 
				 
		elif $"40".pressed == false:
			$"40".pressed = true
			 

	elif bert_updown == 3 and bert_leftright == 1:
		if $"30".pressed == true:
			$"30".pressed = false
			 
				 
		elif $"30".pressed == false:
			$"30".pressed = true
			 
			
		if $"31".pressed == true:
			$"31".pressed = false
			 
				 
		elif $"31".pressed == false:
			$"31".pressed = true
			 
		
		if $"32".pressed == true:
			$"32".pressed = false
			 
				 
		elif $"32".pressed == false:
			$"32".pressed = true
			 
			
		if $"21".pressed == true:
			$"21".pressed = false
			 
				 
		elif $"21".pressed == false:
			$"21".pressed = true
			 
		
		if $"41".pressed == true:
			$"41".pressed = false
			 
				 
		elif $"41".pressed == false:
			$"41".pressed = true
			 

	elif bert_updown == 3 and bert_leftright == 2:
		if $"31".pressed == true:
			$"31".pressed = false
			 
				 
		elif $"31".pressed == false:
			$"31".pressed = true
			 
		
		if $"32".pressed == true:
			$"32".pressed = false
			 
				 
		elif $"32".pressed == false:
			$"32".pressed = true
			 
		
		if $"33".pressed == true:
			$"33".pressed = false
			 
				 
		elif $"33".pressed == false:
			$"33".pressed = true
			 
			
		if $"22".pressed == true:
			$"22".pressed = false
			 
				 
		elif $"22".pressed == false:
			$"22".pressed = true
			 
		
		if $"42".pressed == true:
			$"42".pressed = false
			 
				 
		elif $"42".pressed == false:
			$"42".pressed = true
			 

	elif bert_updown == 3 and bert_leftright == 3:
		if $"32".pressed == true:
			$"32".pressed = false
			 
				 
		elif $"32".pressed == false:
			$"32".pressed = true
			 
			
		if $"33".pressed == true:
			$"33".pressed = false
			 
				 
		elif $"33".pressed == false:
			$"33".pressed = true
			 
		
		if $"34".pressed == true:
			$"34".pressed = false
			 
				 
		elif $"34".pressed == false:
			$"34".pressed = true
			 
			
		if $"23".pressed == true:
			$"23".pressed = false
			 
				 
		elif $"23".pressed == false:
			$"23".pressed = true
			 
		
		if $"43".pressed == true:
			$"43".pressed = false
			 
				 
		elif $"43".pressed == false:
			$"43".pressed = true
			 


	elif bert_updown == 3 and bert_leftright == 4:
		if $"33".pressed == true:
			$"33".pressed = false
			 
				 
		elif $"33".pressed == false:
			$"33".pressed = true
			 
			
		if $"34".pressed == true:
			$"34".pressed = false
			 
				 
		elif $"34".pressed == false:
			$"34".pressed = true
			 
		
		if $"35".pressed == true:
			$"35".pressed = false
			 
				 
		elif $"35".pressed == false:
			$"35".pressed = true
			 
			
		if $"24".pressed == true:
			$"24".pressed = false
			 
				 
		elif $"24".pressed == false:
			$"24".pressed = true
			 
		
		if $"44".pressed == true:
			$"44".pressed = false
			 
				 
		elif $"44".pressed == false:
			$"44".pressed = true
			 

	elif bert_updown == 3 and bert_leftright == 5:
		if $"34".pressed == true:
			$"34".pressed = false
			 
				 
		elif $"34".pressed == false:
			$"34".pressed = true
			 
			
		if $"35".pressed == true:
			$"35".pressed = false
			 
				 
		elif $"35".pressed == false:
			$"35".pressed = true
			 
		
		if $"36".pressed == true:
			$"36".pressed = false
			 
				 
		elif $"36".pressed == false:
			$"36".pressed = true
			 
			
		if $"25".pressed == true:
			$"25".pressed = false
			 
				 
		elif $"25".pressed == false:
			$"25".pressed = true
			 
		
		if $"45".pressed == true:
			$"45".pressed = false
			 
				 
		elif $"45".pressed == false:
			$"45".pressed = true
			 

	elif bert_updown == 3 and bert_leftright == 6:
		if $"35".pressed == true:
			$"35".pressed = false
			 
				 
		elif $"35".pressed == false:
			$"35".pressed = true
			 
			
		if $"36".pressed == true:
			$"36".pressed = false
			 
				 
		elif $"36".pressed == false:
			$"36".pressed = true
			 
		
		if $"37".pressed == true:
			$"37".pressed = false
			 
				 
		elif $"37".pressed == false:
			$"37".pressed = true
			 
			
		if $"26".pressed == true:
			$"26".pressed = false
			 
				 
		elif $"26".pressed == false:
			$"26".pressed = true
			 
		
		if $"46".pressed == true:
			$"46".pressed = false
			 
				 
		elif $"46".pressed == false:
			$"46".pressed = true
			 

	elif bert_updown == 3 and bert_leftright == 7:
		if $"36".pressed == true:
			$"36".pressed = false
			 
				 
		elif $"36".pressed == false:
			$"36".pressed = true
			 
		
		if $"37".pressed == true:
			$"37".pressed = false
			 
				 
		elif $"37".pressed == false:
			$"37".pressed = true
			 
		
		if $"38".pressed == true:
			$"38".pressed = false
			 
				 
		elif $"38".pressed == false:
			$"38".pressed = true
			 
			
		if $"27".pressed == true:
			$"27".pressed = false
			 
				 
		elif $"27".pressed == false:
			$"27".pressed = true
			 
		
		if $"47".pressed == true:
			$"47".pressed = false
			 
				 
		elif $"47".pressed == false:
			$"47".pressed = true
			 

	elif bert_updown == 3 and bert_leftright == 8:
		if $"37".pressed == true:
			$"37".pressed = false
			 
				 
		elif $"37".pressed == false:
			$"37".pressed = true
			 
			
		if $"38".pressed == true:
			$"38".pressed = false
			 
				 
		elif $"38".pressed == false:
			$"38".pressed = true
			 
		
		if $"39".pressed == true:
			$"39".pressed = false
			 
				 
		elif $"39".pressed == false:
			$"39".pressed = true
			 
			
		if $"28".pressed == true:
			$"28".pressed = false
			 
				 
		elif $"28".pressed == false:
			$"28".pressed = true
			 
		
		if $"48".pressed == true:
			$"48".pressed = false
			 
				 
		elif $"48".pressed == false:
			$"48".pressed = true
			 

	elif bert_updown == 3 and bert_leftright == 9:
		if $"38".pressed == true:
			$"38".pressed = false
			 
				 
		elif $"38".pressed == false:
			$"38".pressed = true
			 
			
		if $"39".pressed == true:
			$"39".pressed = false
			 
				 
		elif $"39".pressed == false:
			$"39".pressed = true
			 
			
		if $"29".pressed == true:
			$"29".pressed = false
			 
				 
		elif $"29".pressed == false:
			$"29".pressed = true
			 
		
		if $"49".pressed == true:
			$"49".pressed = false
			 
				 
		elif $"49".pressed == false:
			$"49".pressed = true
			 

	elif bert_updown == 4 and bert_leftright == 0:
		if $"41".pressed == true:
			$"41".pressed = false
			 
				 
		elif $"41".pressed == false:
			$"41".pressed = true
			 
			
		if $"40".pressed == true:
			$"40".pressed = false
			 
				 
		elif $"40".pressed == false:
			$"40".pressed = true
			 
			
		if $"30".pressed == true:
			$"30".pressed = false
			 
				 
		elif $"30".pressed == false:
			$"30".pressed = true
			 
		
		if $"50".pressed == true:
			$"50".pressed = false
			 
				 
		elif $"50".pressed == false:
			$"50".pressed = true
			 

	elif bert_updown == 4 and bert_leftright == 1:
		if $"40".pressed == true:
			$"40".pressed = false
			 
				 
		elif $"40".pressed == false:
			$"40".pressed = true
			 
			
		if $"41".pressed == true:
			$"41".pressed = false
			 
				 
		elif $"41".pressed == false:
			$"41".pressed = true
			 
		
		if $"42".pressed == true:
			$"42".pressed = false
			 
				 
		elif $"42".pressed == false:
			$"42".pressed = true
			 
			
		if $"31".pressed == true:
			$"31".pressed = false
			 
				 
		elif $"31".pressed == false:
			$"31".pressed = true
			 
		
		if $"51".pressed == true:
			$"51".pressed = false
			 
				 
		elif $"51".pressed == false:
			$"51".pressed = true
			 

	elif bert_updown == 4 and bert_leftright == 2:
		if $"41".pressed == true:
			$"41".pressed = false
			 
				 
		elif $"41".pressed == false:
			$"41".pressed = true
			 
			
		if $"42".pressed == true:
			$"42".pressed = false
			 
				 
		elif $"42".pressed == false:
			$"42".pressed = true
			 
		
		if $"43".pressed == true:
			$"43".pressed = false
			 
				 
		elif $"43".pressed == false:
			$"43".pressed = true
			 
			
		if $"32".pressed == true:
			$"32".pressed = false
			 
				 
		elif $"32".pressed == false:
			$"32".pressed = true
			 
		
		if $"52".pressed == true:
			$"52".pressed = false
			 
				 
		elif $"52".pressed == false:
			$"52".pressed = true
			 

	elif bert_updown == 4 and bert_leftright == 3:
		if $"42".pressed == true:
			$"42".pressed = false
			 
				 
		elif $"42".pressed == false:
			$"42".pressed = true
			 
			
		if $"43".pressed == true:
			$"43".pressed = false
			 
				 
		elif $"43".pressed == false:
			$"43".pressed = true
			 
		
		if $"44".pressed == true:
			$"44".pressed = false
			 
				 
		elif $"44".pressed == false:
			$"44".pressed = true
			 
			
		if $"33".pressed == true:
			$"33".pressed = false
			 
				 
		elif $"33".pressed == false:
			$"33".pressed = true
			 
		
		if $"53".pressed == true:
			$"53".pressed = false
			 
				 
		elif $"53".pressed == false:
			$"53".pressed = true
			 

	elif bert_updown == 4 and bert_leftright == 4:
		if $"43".pressed == true:
			$"43".pressed = false
			 
				 
		elif $"43".pressed == false:
			$"43".pressed = true
			 
			
		if $"44".pressed == true:
			$"44".pressed = false
			 
				 
		elif $"44".pressed == false:
			$"44".pressed = true
			 
		
		if $"45".pressed == true:
			$"45".pressed = false
			 
				 
		elif $"45".pressed == false:
			$"45".pressed = true
			 
			
		if $"34".pressed == true:
			$"34".pressed = false
			 
				 
		elif $"34".pressed == false:
			$"34".pressed = true
			 
		
		if $"54".pressed == true:
			$"54".pressed = false
			 
				 
		elif $"54".pressed == false:
			$"54".pressed = true
			 

	elif bert_updown == 4 and bert_leftright == 5:
		if $"44".pressed == true:
			$"44".pressed = false
			 
				 
		elif $"44".pressed == false:
			$"44".pressed = true
			 
			
		if $"45".pressed == true:
			$"45".pressed = false
			 
				 
		elif $"45".pressed == false:
			$"45".pressed = true
			 
		
		if $"46".pressed == true:
			$"46".pressed = false
			 
				 
		elif $"46".pressed == false:
			$"46".pressed = true
			 
			
		if $"35".pressed == true:
			$"35".pressed = false
			 
				 
		elif $"35".pressed == false:
			$"35".pressed = true
			 
		
		if $"55".pressed == true:
			$"55".pressed = false
			 
				 
		elif $"55".pressed == false:
			$"55".pressed = true
			 

	elif bert_updown == 4 and bert_leftright == 6:
		if $"45".pressed == true:
			$"45".pressed = false
			 
				 
		elif $"45".pressed == false:
			$"45".pressed = true
			 
			
		if $"46".pressed == true:
			$"46".pressed = false
			 
				 
		elif $"46".pressed == false:
			$"46".pressed = true
			 
		
		if $"47".pressed == true:
			$"47".pressed = false
			 
				 
		elif $"47".pressed == false:
			$"47".pressed = true
			 
			
		if $"36".pressed == true:
			$"36".pressed = false
			 
				 
		elif $"36".pressed == false:
			$"36".pressed = true
			 
		
		if $"56".pressed == true:
			$"56".pressed = false
			 
				 
		elif $"56".pressed == false:
			$"56".pressed = true
			 


	elif bert_updown == 4 and bert_leftright == 7:
		if $"46".pressed == true:
			$"46".pressed = false
			 
				 
		elif $"46".pressed == false:
			$"46".pressed = true
			 
			
		if $"47".pressed == true:
			$"47".pressed = false
			 
				 
		elif $"47".pressed == false:
			$"47".pressed = true
			 
		
		if $"48".pressed == true:
			$"48".pressed = false
			 
				 
		elif $"48".pressed == false:
			$"48".pressed = true
			 
			
		if $"37".pressed == true:
			$"37".pressed = false
			 
				 
		elif $"37".pressed == false:
			$"37".pressed = true
			 
		
		if $"57".pressed == true:
			$"57".pressed = false
			 
				 
		elif $"57".pressed == false:
			$"57".pressed = true
			 

	elif bert_updown == 4 and bert_leftright == 8:
		if $"47".pressed == true:
			$"47".pressed = false
			 
				 
		elif $"47".pressed == false:
			$"47".pressed = true
			 
			
		if $"48".pressed == true:
			$"48".pressed = false
			 
				 
		elif $"48".pressed == false:
			$"48".pressed = true
			 
		
		if $"49".pressed == true:
			$"49".pressed = false
			 
				 
		elif $"49".pressed == false:
			$"49".pressed = true
			 
			
		if $"38".pressed == true:
			$"38".pressed = false
			 
				 
		elif $"38".pressed == false:
			$"38".pressed = true
			 
		
		if $"58".pressed == true:
			$"58".pressed = false
			 
				 
		elif $"58".pressed == false:
			$"58".pressed = true
			 

	elif bert_updown == 4 and bert_leftright == 9:
		if $"48".pressed == true:
			$"48".pressed = false
			 
				 
		elif $"48".pressed == false:
			$"48".pressed = true
			 
		
		if $"49".pressed == true:
			$"49".pressed = false
			 
				 
		elif $"49".pressed == false:
			$"49".pressed = true
			 
			
		if $"39".pressed == true:
			$"39".pressed = false
			 
				 
		elif $"39".pressed == false:
			$"39".pressed = true
			 
		
		if $"59".pressed == true:
			$"59".pressed = false
			 
				 
		elif $"59".pressed == false:
			$"59".pressed = true
			 

	elif bert_updown == 5 and bert_leftright == 0:
		if $"51".pressed == true:
			$"51".pressed = false
			 
				 
		elif $"51".pressed == false:
			$"51".pressed = true
			 
			
		if $"50".pressed == true:
			$"50".pressed = false
			 
				 
		elif $"50".pressed == false:
			$"50".pressed = true
			 
			
		if $"40".pressed == true:
			$"40".pressed = false
			 
				 
		elif $"40".pressed == false:
			$"40".pressed = true
			 
		
		if $"60".pressed == true:
			$"60".pressed = false
			 
				 
		elif $"60".pressed == false:
			$"60".pressed = true
			 

	elif bert_updown == 5 and bert_leftright == 1:
		if $"50".pressed == true:
			$"50".pressed = false
			 
				 
		elif $"50".pressed == false:
			$"50".pressed = true
			 
			
		if $"51".pressed == true:
			$"51".pressed = false
			 
				 
		elif $"51".pressed == false:
			$"51".pressed = true
			 
		
		if $"52".pressed == true:
			$"52".pressed = false
			 
				 
		elif $"52".pressed == false:
			$"52".pressed = true
			 
			
		if $"41".pressed == true:
			$"41".pressed = false
			 
				 
		elif $"41".pressed == false:
			$"41".pressed = true
			 
		
		if $"61".pressed == true:
			$"61".pressed = false
			 
				 
		elif $"61".pressed == false:
			$"61".pressed = true
			 

	elif bert_updown == 5 and bert_leftright == 2:
		if $"51".pressed == true:
			$"51".pressed = false
			 
				 
		elif $"51".pressed == false:
			$"51".pressed = true
			 
			
		if $"52".pressed == true:
			$"52".pressed = false
			 
				 
		elif $"52".pressed == false:
			$"52".pressed = true
			 
		
		if $"53".pressed == true:
			$"53".pressed = false
			 
				 
		elif $"53".pressed == false:
			$"53".pressed = true
			 
			
		if $"42".pressed == true:
			$"42".pressed = false
			 
				 
		elif $"42".pressed == false:
			$"42".pressed = true
			 
		
		if $"62".pressed == true:
			$"62".pressed = false
			 
				 
		elif $"62".pressed == false:
			$"62".pressed = true
			 

	elif bert_updown == 5 and bert_leftright == 3:
		if $"52".pressed == true:
			$"52".pressed = false
			 
				 
		elif $"52".pressed == false:
			$"52".pressed = true
			 
		
		if $"53".pressed == true:
			$"53".pressed = false
			 
				 
		elif $"53".pressed == false:
			$"53".pressed = true
			 
		
		if $"54".pressed == true:
			$"54".pressed = false
			 
				 
		elif $"54".pressed == false:
			$"54".pressed = true
			 
			
		if $"43".pressed == true:
			$"43".pressed = false
			 
				 
		elif $"43".pressed == false:
			$"43".pressed = true
			 
		
		if $"63".pressed == true:
			$"63".pressed = false
			 
				 
		elif $"63".pressed == false:
			$"63".pressed = true
			 

	elif bert_updown == 5 and bert_leftright == 4:
		if $"53".pressed == true:
			$"53".pressed = false
			 
				 
		elif $"53".pressed == false:
			$"53".pressed = true
			 
			
		if $"54".pressed == true:
			$"54".pressed = false
			 
				 
		elif $"54".pressed == false:
			$"54".pressed = true
			 
		
		if $"55".pressed == true:
			$"55".pressed = false
			 
				 
		elif $"55".pressed == false:
			$"55".pressed = true
			 
			
		if $"44".pressed == true:
			$"44".pressed = false
			 
				 
		elif $"44".pressed == false:
			$"44".pressed = true
			 
		
		if $"64".pressed == true:
			$"64".pressed = false
			 
				 
		elif $"64".pressed == false:
			$"64".pressed = true
			 


	elif bert_updown == 5 and bert_leftright == 5:
		if $"54".pressed == true:
			$"54".pressed = false
			 
				 
		elif $"54".pressed == false:
			$"54".pressed = true
			 
		
		if $"55".pressed == true:
			$"55".pressed = false
			 
				 
		elif $"55".pressed == false:
			$"55".pressed = true
			 
		
		if $"56".pressed == true:
			$"56".pressed = false
			 
				 
		elif $"56".pressed == false:
			$"56".pressed = true
			 
			
		if $"45".pressed == true:
			$"45".pressed = false
			 
				 
		elif $"45".pressed == false:
			$"45".pressed = true
			 
		
		if $"65".pressed == true:
			$"65".pressed = false
			 
				 
		elif $"65".pressed == false:
			$"65".pressed = true
			 

	elif bert_updown == 5 and bert_leftright == 6:
		if $"55".pressed == true:
			$"55".pressed = false
			 
				 
		elif $"55".pressed == false:
			$"55".pressed = true
			 
			
		if $"56".pressed == true:
			$"56".pressed = false
			 
				 
		elif $"56".pressed == false:
			$"56".pressed = true
			 
		
		if $"57".pressed == true:
			$"57".pressed = false
			 
				 
		elif $"57".pressed == false:
			$"57".pressed = true
			 
			
		if $"46".pressed == true:
			$"46".pressed = false
			 
				 
		elif $"46".pressed == false:
			$"46".pressed = true
			 
		
		if $"66".pressed == true:
			$"66".pressed = false
			 
				 
		elif $"66".pressed == false:
			$"66".pressed = true
			 

	elif bert_updown == 5 and bert_leftright == 7:
		if $"56".pressed == true:
			$"56".pressed = false
			 
				 
		elif $"56".pressed == false:
			$"56".pressed = true
			 
			
		if $"57".pressed == true:
			$"57".pressed = false
			 
				 
		elif $"57".pressed == false:
			$"57".pressed = true
			 
		
		if $"58".pressed == true:
			$"58".pressed = false
			 
				 
		elif $"58".pressed == false:
			$"58".pressed = true
			 
			
		if $"47".pressed == true:
			$"47".pressed = false
			 
				 
		elif $"47".pressed == false:
			$"47".pressed = true
			 
		
		if $"67".pressed == true:
			$"67".pressed = false
			 
				 
		elif $"67".pressed == false:
			$"67".pressed = true
			 

	elif bert_updown == 5 and bert_leftright == 8:
		if $"57".pressed == true:
			$"57".pressed = false
			 
				 
		elif $"57".pressed == false:
			$"57".pressed = true
			 
			
		if $"58".pressed == true:
			$"58".pressed = false
			 
				 
		elif $"58".pressed == false:
			$"58".pressed = true
			 
		
		if $"59".pressed == true:
			$"59".pressed = false
			 
				 
		elif $"59".pressed == false:
			$"59".pressed = true
			 
			
		if $"48".pressed == true:
			$"48".pressed = false
			 
				 
		elif $"48".pressed == false:
			$"48".pressed = true
			 
		
		if $"68".pressed == true:
			$"68".pressed = false
			 
				 
		elif $"68".pressed == false:
			$"68".pressed = true
			 

	elif bert_updown == 5 and bert_leftright == 9:
		if $"58".pressed == true:
			$"58".pressed = false
			 
				 
		elif $"58".pressed == false:
			$"58".pressed = true
			 
			
		if $"59".pressed == true:
			$"59".pressed = false
			 
				 
		elif $"59".pressed == false:
			$"59".pressed = true
			 
			
		if $"49".pressed == true:
			$"49".pressed = false
			 
				 
		elif $"49".pressed == false:
			$"49".pressed = true
			 
		
		if $"69".pressed == true:
			$"69".pressed = false
			 
				 
		elif $"69".pressed == false:
			$"69".pressed = true
			 

	elif bert_updown == 6 and bert_leftright == 0:
		if $"61".pressed == true:
			$"61".pressed = false
			 
				 
		elif $"61".pressed == false:
			$"61".pressed = true
			 
			
		if $"60".pressed == true:
			$"60".pressed = false
			 
				 
		elif $"60".pressed == false:
			$"60".pressed = true
			 
			
		if $"50".pressed == true:
			$"50".pressed = false
			 
				 
		elif $"50".pressed == false:
			$"50".pressed = true
			 
		
		if $"70".pressed == true:
			$"70".pressed = false
			 
				 
		elif $"70".pressed == false:
			$"70".pressed = true
			 

	elif bert_updown == 6 and bert_leftright == 1:
		if $"60".pressed == true:
			$"60".pressed = false
			 
				 
		elif $"60".pressed == false:
			$"60".pressed = true
			 
			
		if $"61".pressed == true:
			$"61".pressed = false
			 
				 
		elif $"61".pressed == false:
			$"61".pressed = true
			 
		
		if $"62".pressed == true:
			$"62".pressed = false
			 
				 
		elif $"62".pressed == false:
			$"62".pressed = true
			 
			
		if $"51".pressed == true:
			$"51".pressed = false
			 
				 
		elif $"51".pressed == false:
			$"51".pressed = true
			 
		
		if $"71".pressed == true:
			$"71".pressed = false
			 
				 
		elif $"71".pressed == false:
			$"71".pressed = true
			 

	elif bert_updown == 6 and bert_leftright == 2:
		if $"61".pressed == true:
			$"61".pressed = false
			 
				 
		elif $"61".pressed == false:
			$"61".pressed = true
			 
			
		if $"62".pressed == true:
			$"62".pressed = false
			 
				 
		elif $"62".pressed == false:
			$"62".pressed = true
			 
		
		if $"63".pressed == true:
			$"63".pressed = false
			 
				 
		elif $"63".pressed == false:
			$"63".pressed = true
			 
			
		if $"52".pressed == true:
			$"52".pressed = false
			 
				 
		elif $"52".pressed == false:
			$"52".pressed = true
			 
		
		if $"72".pressed == true:
			$"72".pressed = false
			 
				 
		elif $"72".pressed == false:
			$"72".pressed = true
			 

	elif bert_updown == 6 and bert_leftright == 3:
		if $"62".pressed == true:
			$"62".pressed = false
			 
				 
		elif $"62".pressed == false:
			$"62".pressed = true
			 
			
		if $"63".pressed == true:
			$"63".pressed = false
			 
				 
		elif $"63".pressed == false:
			$"63".pressed = true
			 
		
		if $"64".pressed == true:
			$"64".pressed = false
			 
				 
		elif $"64".pressed == false:
			$"64".pressed = true
			 
			
		if $"53".pressed == true:
			$"53".pressed = false
			 
				 
		elif $"53".pressed == false:
			$"53".pressed = true
			 
		
		if $"73".pressed == true:
			$"73".pressed = false
			 
				 
		elif $"73".pressed == false:
			$"73".pressed = true
			 

	elif bert_updown == 6 and bert_leftright == 4:
		if $"63".pressed == true:
			$"63".pressed = false
			 
				 
		elif $"63".pressed == false:
			$"63".pressed = true
			 
		
		if $"64".pressed == true:
			$"64".pressed = false
			 
				 
		elif $"64".pressed == false:
			$"64".pressed = true
			 
		
		if $"65".pressed == true:
			$"65".pressed = false
			 
				 
		elif $"65".pressed == false:
			$"65".pressed = true
			 
			
		if $"54".pressed == true:
			$"54".pressed = false
			 
				 
		elif $"54".pressed == false:
			$"54".pressed = true
			 
		
		if $"74".pressed == true:
			$"74".pressed = false
			 
				 
		elif $"74".pressed == false:
			$"74".pressed = true
			 

	elif bert_updown == 6 and bert_leftright == 5:
		if $"64".pressed == true:
			$"64".pressed = false
			 
				 
		elif $"64".pressed == false:
			$"64".pressed = true
			 
			
		if $"65".pressed == true:
			$"65".pressed = false
			 
				 
		elif $"65".pressed == false:
			$"65".pressed = true
			 
		
		if $"66".pressed == true:
			$"66".pressed = false
			 
				 
		elif $"66".pressed == false:
			$"66".pressed = true
			 
			
		if $"55".pressed == true:
			$"55".pressed = false
			 
				 
		elif $"55".pressed == false:
			$"55".pressed = true
			 
		
		if $"75".pressed == true:
			$"75".pressed = false
			 
				 
		elif $"75".pressed == false:
			$"75".pressed = true
			 

	elif bert_updown == 6 and bert_leftright == 6:
		if $"65".pressed == true:
			$"65".pressed = false
			 
				 
		elif $"65".pressed == false:
			$"65".pressed = true
			 
			
		if $"66".pressed == true:
			$"66".pressed = false
			 
				 
		elif $"66".pressed == false:
			$"66".pressed = true
			 
		
		if $"67".pressed == true:
			$"67".pressed = false
			 
				 
		elif $"67".pressed == false:
			$"67".pressed = true
			 
			
		if $"56".pressed == true:
			$"56".pressed = false
			 
				 
		elif $"56".pressed == false:
			$"56".pressed = true
			 
		
		if $"76".pressed == true:
			$"76".pressed = false
			 
				 
		elif $"76".pressed == false:
			$"76".pressed = true
			 

	elif bert_updown == 6 and bert_leftright == 7:
		if $"66".pressed == true:
			$"66".pressed = false
			 
				 
		elif $"66".pressed == false:
			$"66".pressed = true
			 
			
		if $"67".pressed == true:
			$"67".pressed = false
			 
				 
		elif $"67".pressed == false:
			$"67".pressed = true
			 
		
		if $"68".pressed == true:
			$"68".pressed = false
			 
				 
		elif $"68".pressed == false:
			$"68".pressed = true
			 
			
		if $"57".pressed == true:
			$"57".pressed = false
			 
				 
		elif $"57".pressed == false:
			$"57".pressed = true
			 
		
		if $"77".pressed == true:
			$"77".pressed = false
			 
				 
		elif $"77".pressed == false:
			$"77".pressed = true
			 

	elif bert_updown == 6 and bert_leftright == 8:
		if $"67".pressed == true:
			$"67".pressed = false
			 
				 
		elif $"67".pressed == false:
			$"67".pressed = true
			 
			
		if $"68".pressed == true:
			$"68".pressed = false
			 
				 
		elif $"68".pressed == false:
			$"68".pressed = true
			 
		
		if $"69".pressed == true:
			$"69".pressed = false
			 
				 
		elif $"69".pressed == false:
			$"69".pressed = true
			 
			
		if $"58".pressed == true:
			$"58".pressed = false
			 
				 
		elif $"58".pressed == false:
			$"58".pressed = true
			 
		
		if $"78".pressed == true:
			$"78".pressed = false
			 
				 
		elif $"78".pressed == false:
			$"78".pressed = true
			 

	elif bert_updown == 6 and bert_leftright == 9:
		if $"68".pressed == true:
			$"68".pressed = false
			 
				 
		elif $"68".pressed == false:
			$"68".pressed = true
			 
			
		if $"69".pressed == true:
			$"69".pressed = false
			 
				 
		elif $"69".pressed == false:
			$"69".pressed = true
			 
			
		if $"59".pressed == true:
			$"59".pressed = false
			 
				 
		elif $"59".pressed == false:
			$"59".pressed = true
			 
		
		if $"79".pressed == true:
			$"79".pressed = false
			 
				 
		elif $"79".pressed == false:
			$"79".pressed = true
			 

	elif bert_updown == 7 and bert_leftright == 0:
		if $"71".pressed == true:
			$"71".pressed = false
			 
				 
		elif $"71".pressed == false:
			$"71".pressed = true
			 
			
		if $"70".pressed == true:
			$"70".pressed = false
			 
				 
		elif $"70".pressed == false:
			$"70".pressed = true
			 
			
		if $"60".pressed == true:
			$"60".pressed = false
			 
				 
		elif $"60".pressed == false:
			$"60".pressed = true
			 
		
		if $"80".pressed == true:
			$"80".pressed = false
			 
				 
		elif $"80".pressed == false:
			$"80".pressed = true
			 

	elif bert_updown == 7 and bert_leftright == 1:
		if $"70".pressed == true:
			$"70".pressed = false
			 
				 
		elif $"70".pressed == false:
			$"70".pressed = true
			 
			
		if $"71".pressed == true:
			$"71".pressed = false
			 
				 
		elif $"71".pressed == false:
			$"71".pressed = true
			 
		
		if $"72".pressed == true:
			$"72".pressed = false
			 
				 
		elif $"72".pressed == false:
			$"72".pressed = true
			 
			
		if $"61".pressed == true:
			$"61".pressed = false
			 
				 
		elif $"61".pressed == false:
			$"61".pressed = true
			 
		
		if $"81".pressed == true:
			$"81".pressed = false
			 
				 
		elif $"81".pressed == false:
			$"81".pressed = true
			 

	elif bert_updown == 7 and bert_leftright == 2:
		if $"71".pressed == true:
			$"71".pressed = false
			 
				 
		elif $"71".pressed == false:
			$"71".pressed = true
			 
			
		if $"72".pressed == true:
			$"72".pressed = false
			 
				 
		elif $"72".pressed == false:
			$"72".pressed = true
			 
		
		if $"73".pressed == true:
			$"73".pressed = false
			 
				 
		elif $"73".pressed == false:
			$"73".pressed = true
			 
			
		if $"62".pressed == true:
			$"62".pressed = false
			 
				 
		elif $"62".pressed == false:
			$"62".pressed = true
			 
		
		if $"82".pressed == true:
			$"82".pressed = false
			 
				 
		elif $"82".pressed == false:
			$"82".pressed = true
			 

	elif bert_updown == 7 and bert_leftright == 3:
		if $"72".pressed == true:
			$"72".pressed = false
			 
				 
		elif $"72".pressed == false:
			$"72".pressed = true
			 
			
		if $"73".pressed == true:
			$"73".pressed = false
			 
				 
		elif $"73".pressed == false:
			$"73".pressed = true
			 
		
		if $"74".pressed == true:
			$"74".pressed = false
			 
				 
		elif $"74".pressed == false:
			$"74".pressed = true
			 
			
		if $"63".pressed == true:
			$"63".pressed = false
			 
				 
		elif $"63".pressed == false:
			$"63".pressed = true
			 
		
		if $"83".pressed == true:
			$"83".pressed = false
			 
				 
		elif $"83".pressed == false:
			$"83".pressed = true
			 

	elif bert_updown == 7 and bert_leftright == 4:
		if $"73".pressed == true:
			$"73".pressed = false
			 
				 
		elif $"73".pressed == false:
			$"73".pressed = true
			 
			
		if $"74".pressed == true:
			$"74".pressed = false
			 
				 
		elif $"74".pressed == false:
			$"74".pressed = true
			 
		
		if $"75".pressed == true:
			$"75".pressed = false
			 
				 
		elif $"75".pressed == false:
			$"75".pressed = true
			 
			
		if $"64".pressed == true:
			$"64".pressed = false
			 
				 
		elif $"64".pressed == false:
			$"64".pressed = true
			 
		
		if $"84".pressed == true:
			$"84".pressed = false
			 
				 
		elif $"84".pressed == false:
			$"84".pressed = true
			 

	elif bert_updown == 7 and bert_leftright == 5:
		if $"74".pressed == true:
			$"74".pressed = false
			 
				 
		elif $"74".pressed == false:
			$"74".pressed = true
			 
			
		if $"75".pressed == true:
			$"75".pressed = false
			 
				 
		elif $"75".pressed == false:
			$"75".pressed = true
			 
		
		if $"76".pressed == true:
			$"76".pressed = false
			 
				 
		elif $"76".pressed == false:
			$"76".pressed = true
			 
			
		if $"65".pressed == true:
			$"65".pressed = false
			 
				 
		elif $"65".pressed == false:
			$"65".pressed = true
			 
		
		if $"85".pressed == true:
			$"85".pressed = false
			 
				 
		elif $"85".pressed == false:
			$"85".pressed = true
			 

	elif bert_updown == 7 and bert_leftright == 6:
		if $"75".pressed == true:
			$"75".pressed = false
			 
				 
		elif $"75".pressed == false:
			$"75".pressed = true
			 
			
		if $"76".pressed == true:
			$"76".pressed = false
			 
				 
		elif $"76".pressed == false:
			$"76".pressed = true
			 
		
		if $"77".pressed == true:
			$"77".pressed = false
			 
				 
		elif $"77".pressed == false:
			$"77".pressed = true
			 
			
		if $"66".pressed == true:
			$"66".pressed = false
			 
				 
		elif $"66".pressed == false:
			$"66".pressed = true
			 
		
		if $"86".pressed == true:
			$"86".pressed = false
			 
				 
		elif $"86".pressed == false:
			$"86".pressed = true
			 

	elif bert_updown == 7 and bert_leftright == 7:
		if $"76".pressed == true:
			$"76".pressed = false
			 
				 
		elif $"76".pressed == false:
			$"76".pressed = true
			 
			
		if $"77".pressed == true:
			$"77".pressed = false
			 
				 
		elif $"77".pressed == false:
			$"77".pressed = true
			 
		
		if $"78".pressed == true:
			$"78".pressed = false
			 
				 
		elif $"78".pressed == false:
			$"78".pressed = true
			 
			
		if $"67".pressed == true:
			$"67".pressed = false
			 
				 
		elif $"67".pressed == false:
			$"67".pressed = true
			 
		
		if $"87".pressed == true:
			$"87".pressed = false
			 
				 
		elif $"87".pressed == false:
			$"87".pressed = true
			 

	elif bert_updown == 7 and bert_leftright == 8:
		if $"77".pressed == true:
			$"77".pressed = false 
		elif $"77".pressed == false:
			$"77".pressed = true
			 
			
		if $"78".pressed == true:
			$"78".pressed = false 
		elif $"78".pressed == false:
			$"78".pressed = true
			 
		
		if $"79".pressed == true:
			$"79".pressed = false
		elif $"79".pressed == false:
			$"79".pressed = true
			 
			
		if $"68".pressed == true:
			$"68".pressed = false
		elif $"68".pressed == false:
			$"68".pressed = true
			 
		
		if $"88".pressed == true:
			$"88".pressed = false
		elif $"88".pressed == false:
			$"88".pressed = true
			 

	elif bert_updown == 7 and bert_leftright == 9:
		if $"78".pressed == true:
			$"78".pressed = false
		elif $"78".pressed == false:
			$"78".pressed = true
			 
			
		if $"79".pressed == true:
			$"79".pressed = false 
		elif $"79".pressed == false:
			$"79".pressed = true
			 
			
		if $"69".pressed == true:
			$"69".pressed = false
		elif $"69".pressed == false:
			$"69".pressed = true
			 
		
		if $"89".pressed == true:
			$"89".pressed = false 
		elif $"89".pressed == false:
			$"89".pressed = true
			 

	elif bert_updown == 8 and bert_leftright == 0:
		if $"81".pressed == true:
			$"81".pressed = false 
		elif $"81".pressed == false:
			$"81".pressed = true
			 
			
		if $"80".pressed == true:
			$"80".pressed = false
			 
				 
		elif $"80".pressed == false:
			$"80".pressed = true
			 
			
		if $"70".pressed == true:
			$"70".pressed = false
			 
				 
		elif $"70".pressed == false:
			$"70".pressed = true
			 
		
		if $"90".pressed == true:
			$"90".pressed = false
			 
				 
		elif $"90".pressed == false:
			$"90".pressed = true
			 

	elif bert_updown == 8 and bert_leftright == 1:
		if $"80".pressed == true:
			$"80".pressed = false
			 
				 
		elif $"80".pressed == false:
			$"80".pressed = true
			 
		
		if $"81".pressed == true:
			$"81".pressed = false
			 
				 
		elif $"81".pressed == false:
			$"81".pressed = true
			 
		
		if $"82".pressed == true:
			$"82".pressed = false
			 
				 
		elif $"82".pressed == false:
			$"82".pressed = true
			 
			
		if $"71".pressed == true:
			$"71".pressed = false
			 
				 
		elif $"71".pressed == false:
			$"71".pressed = true
			 
		
		if $"91".pressed == true:
			$"91".pressed = false
			 
				 
		elif $"91".pressed == false:
			$"91".pressed = true
			 

	elif bert_updown == 8 and bert_leftright == 2:
		if $"81".pressed == true:
			$"81".pressed = false
			 
				 
		elif $"81".pressed == false:
			$"81".pressed = true
			 
			
		if $"82".pressed == true:
			$"82".pressed = false
			 
				 
		elif $"82".pressed == false:
			$"82".pressed = true
			 
		
		if $"83".pressed == true:
			$"83".pressed = false
			 
				 
		elif $"83".pressed == false:
			$"83".pressed = true
			 
			
		if $"72".pressed == true:
			$"72".pressed = false
			 
				 
		elif $"72".pressed == false:
			$"72".pressed = true
			 
		
		if $"92".pressed == true:
			$"92".pressed = false
			 
				 
		elif $"92".pressed == false:
			$"92".pressed = true
			 

	elif bert_updown == 8 and bert_leftright == 3:
		if $"82".pressed == true:
			$"82".pressed = false
			 
				 
		elif $"82".pressed == false:
			$"82".pressed = true
			 
			
		if $"83".pressed == true:
			$"83".pressed = false
			 
				 
		elif $"83".pressed == false:
			$"83".pressed = true
			 
		
		if $"84".pressed == true:
			$"84".pressed = false
			 
				 
		elif $"84".pressed == false:
			$"84".pressed = true
			 
			
		if $"73".pressed == true:
			$"73".pressed = false
			 
				 
		elif $"73".pressed == false:
			$"73".pressed = true
			 
		
		if $"93".pressed == true:
			$"93".pressed = false
			 
				 
		elif $"93".pressed == false:
			$"93".pressed = true
			 

	elif bert_updown == 8 and bert_leftright == 4:
		if $"83".pressed == true:
			$"83".pressed = false
			 
				 
		elif $"83".pressed == false:
			$"83".pressed = true
			 
			
		if $"84".pressed == true:
			$"84".pressed = false
			 
				 
		elif $"84".pressed == false:
			$"84".pressed = true
			 
		
		if $"85".pressed == true:
			$"85".pressed = false
			 
				 
		elif $"85".pressed == false:
			$"85".pressed = true
			 
			
		if $"74".pressed == true:
			$"74".pressed = false
			 
				 
		elif $"74".pressed == false:
			$"74".pressed = true
			 
		
		if $"94".pressed == true:
			$"94".pressed = false
			 
				 
		elif $"94".pressed == false:
			$"94".pressed = true
			 

	elif bert_updown == 8 and bert_leftright == 5:
		if $"84".pressed == true:
			$"84".pressed = false
			 
				 
		elif $"84".pressed == false:
			$"84".pressed = true
			 
			
		if $"85".pressed == true:
			$"85".pressed = false
			 
				 
		elif $"85".pressed == false:
			$"85".pressed = true
			 
		
		if $"86".pressed == true:
			$"86".pressed = false
			 
				 
		elif $"86".pressed == false:
			$"86".pressed = true
			 
			
		if $"75".pressed == true:
			$"75".pressed = false
			 
				 
		elif $"75".pressed == false:
			$"75".pressed = true
			 
		
		if $"95".pressed == true:
			$"95".pressed = false
			 
				 
		elif $"95".pressed == false:
			$"95".pressed = true
			 

	elif bert_updown == 8 and bert_leftright == 6:
		if $"85".pressed == true:
			$"85".pressed = false
			 
				 
		elif $"85".pressed == false:
			$"85".pressed = true
			 
			
		if $"86".pressed == true:
			$"86".pressed = false
			 
				 
		elif $"86".pressed == false:
			$"86".pressed = true
			 
		
		if $"87".pressed == true:
			$"87".pressed = false
			 
				 
		elif $"87".pressed == false:
			$"87".pressed = true
			 
			
		if $"76".pressed == true:
			$"76".pressed = false
			 
				 
		elif $"76".pressed == false:
			$"76".pressed = true
			 
		
		if $"96".pressed == true:
			$"96".pressed = false
			 
				 
		elif $"96".pressed == false:
			$"96".pressed = true
			 

	elif bert_updown == 8 and bert_leftright == 7:
		if $"86".pressed == true:
			$"86".pressed = false
			 
				 
		elif $"86".pressed == false:
			$"86".pressed = true
			 
			
		if $"87".pressed == true:
			$"87".pressed = false
			 
				 
		elif $"87".pressed == false:
			$"87".pressed = true
			 
		
		if $"88".pressed == true:
			$"88".pressed = false
			 
				 
		elif $"88".pressed == false:
			$"88".pressed = true
			 
			
		if $"77".pressed == true:
			$"77".pressed = false
			 
				 
		elif $"77".pressed == false:
			$"77".pressed = true
			 
		
		if $"97".pressed == true:
			$"97".pressed = false
			 
				 
		elif $"97".pressed == false:
			$"97".pressed = true
			 

	elif bert_updown == 8 and bert_leftright == 8:
		if $"87".pressed == true:
			$"87".pressed = false
			 
				 
		elif $"87".pressed == false:
			$"87".pressed = true
			 
			
		if $"88".pressed == true:
			$"88".pressed = false
			 
				 
		elif $"88".pressed == false:
			$"88".pressed = true
			 
		
		if $"89".pressed == true:
			$"89".pressed = false
			 
				 
		elif $"89".pressed == false:
			$"89".pressed = true
			 
			
		if $"78".pressed == true:
			$"78".pressed = false
			 
				 
		elif $"78".pressed == false:
			$"78".pressed = true
			 
		
		if $"98".pressed == true:
			$"98".pressed = false
			 
				 
		elif $"98".pressed == false:
			$"98".pressed = true
			 

	elif bert_updown == 8 and bert_leftright == 9:
		if $"88".pressed == true:
			$"88".pressed = false
			 
				 
		elif $"88".pressed == false:
			$"88".pressed = true
			 
			
		if $"89".pressed == true:
			$"89".pressed = false
			 
				 
		elif $"89".pressed == false:
			$"89".pressed = true
			 
			
		if $"79".pressed == true:
			$"79".pressed = false
			 
				 
		elif $"79".pressed == false:
			$"79".pressed = true
			 
		
		if $"99".pressed == true:
			$"99".pressed = false
			 
				 
		elif $"99".pressed == false:
			$"99".pressed = true
			 

	elif bert_updown == 9 and bert_leftright == 0:
		if $"91".pressed == true:
			$"91".pressed = false
			 
				 
		elif $"91".pressed == false:
			$"91".pressed = true
			 
			
		if $"90".pressed == true:
			$"90".pressed = false
			 
				 
		elif $"90".pressed == false:
			$"90".pressed = true
			 
			
		if $"80".pressed == true:
			$"80".pressed = false
			 
				 
		elif $"80".pressed == false:
			$"80".pressed = true
			 


	elif bert_updown == 9 and bert_leftright == 1:
		if $"90".pressed == true:
			$"90".pressed = false
			 
				 
		elif $"90".pressed == false:
			$"90".pressed = true
			 
			
		if $"91".pressed == true:
			$"91".pressed = false
			 
				 
		elif $"91".pressed == false:
			$"91".pressed = true
			 
		
		if $"92".pressed == true:
			$"92".pressed = false
			 
				 
		elif $"92".pressed == false:
			$"92".pressed = true
			 
			
		if $"81".pressed == true:
			$"81".pressed = false
			 
				 
		elif $"81".pressed == false:
			$"81".pressed = true
			 

	elif bert_updown == 9 and bert_leftright == 2:
		if $"91".pressed == true:
			$"91".pressed = false
			 
				 
		elif $"91".pressed == false:
			$"91".pressed = true
			 
		
		if $"92".pressed == true:
			$"92".pressed = false
			 
				 
		elif $"92".pressed == false:
			$"92".pressed = true
			 
		
		if $"93".pressed == true:
			$"93".pressed = false
			 
				 
		elif $"93".pressed == false:
			$"93".pressed = true
			 
			
		if $"82".pressed == true:
			$"82".pressed = false
			 
				 
		elif $"82".pressed == false:
			$"82".pressed = true
			 

	elif bert_updown == 9 and bert_leftright == 3:
		if $"92".pressed == true:
			$"92".pressed = false
			 
				 
		elif $"92".pressed == false:
			$"92".pressed = true
			 
		
		if $"93".pressed == true:
			$"93".pressed = false
			 
				 
		elif $"93".pressed == false:
			$"93".pressed = true
		
		if $"94".pressed == true:
			$"94".pressed = false
			 
				 
		elif $"94".pressed == false:
			$"94".pressed = true
			 
			
		if $"83".pressed == true:
			$"83".pressed = false
			 
				 
		elif $"83".pressed == false:
			$"83".pressed = true
			 

	elif bert_updown == 9 and bert_leftright == 4:
		if $"93".pressed == true:
			$"93".pressed = false
			 
				 
		elif $"93".pressed == false:
			$"93".pressed = true
			 
		
		if $"94".pressed == true:
			$"94".pressed = false
			 
				 
		elif $"94".pressed == false:
			$"94".pressed = true
			 
		
		if $"95".pressed == true:
			$"95".pressed = false
			 
				 
		elif $"95".pressed == false:
			$"95".pressed = true
			 
			
		if $"84".pressed == true:
			$"84".pressed = false
			 
				 
		elif $"84".pressed == false:
			$"84".pressed = true
			 

	elif bert_updown == 9 and bert_leftright == 5:
		if $"94".pressed == true:
			$"94".pressed = false
			 
				 
		elif $"94".pressed == false:
			$"94".pressed = true
			 
		
		if $"95".pressed == true:
			$"95".pressed = false
			 
				 
		elif $"95".pressed == false:
			$"95".pressed = true
			 
		
		if $"96".pressed == true:
			$"96".pressed = false
			 
				 
		elif $"96".pressed == false:
			$"96".pressed = true
			 
			
		if $"85".pressed == true:
			$"85".pressed = false
			 
				 
		elif $"85".pressed == false:
			$"85".pressed = true
			 

	elif bert_updown == 9 and bert_leftright == 6:
		if $"95".pressed == true:
			$"95".pressed = false
			 
				 
		elif $"95".pressed == false:
			$"95".pressed = true
			 
			
		if $"96".pressed == true:
			$"96".pressed = false
			 
				 
		elif $"96".pressed == false:
			$"96".pressed = true
			 
		
		if $"97".pressed == true:
			$"97".pressed = false
			 
				 
		elif $"97".pressed == false:
			$"97".pressed = true
			 
			
		if $"86".pressed == true:
			$"86".pressed = false
			 
				 
		elif $"86".pressed == false:
			$"86".pressed = true
			 

	elif bert_updown == 9 and bert_leftright == 7:
		if $"96".pressed == true:
			$"96".pressed = false
			 
				 
		elif $"96".pressed == false:
			$"96".pressed = true
			 
			
		if $"97".pressed == true:
			$"97".pressed = false
			 
				 
		elif $"97".pressed == false:
			$"97".pressed = true
			 
		
		if $"98".pressed == true:
			$"98".pressed = false
			 
				 
		elif $"98".pressed == false:
			$"98".pressed = true
			 
			
		if $"87".pressed == true:
			$"87".pressed = false
			 
				 
		elif $"87".pressed == false:
			$"87".pressed = true
			 

	elif bert_updown == 9 and bert_leftright == 8:
		if $"97".pressed == true:
			$"97".pressed = false
			 
				 
		elif $"97".pressed == false:
			$"97".pressed = true
			 
			
		if $"98".pressed == true:
			$"98".pressed = false
			 
				 
		elif $"98".pressed == false:
			$"98".pressed = true
			 
		
		if $"99".pressed == true:
			$"99".pressed = false
			 
				 
		elif $"99".pressed == false:
			$"99".pressed = true
			 
			
		if $"88".pressed == true:
			$"88".pressed = false
			 
				 
		elif $"88".pressed == false:
			$"88".pressed = true
			 


	elif bert_updown == 9 and bert_leftright == 9:
		if $"98".pressed == true:
			$"98".pressed = false
			 
				 
		elif $"98".pressed == false:
			$"98".pressed = true
			 
			
		if $"99".pressed == true:
			$"99".pressed = false
			 
				 
		elif $"99".pressed == false:
			$"99".pressed = true
			 
			
		if $"89".pressed == true:
			$"89".pressed = false
			 
				 
		elif $"89".pressed == false:
			$"89".pressed = true
			 
		 


func _on_tutorial_button_button_down():
	get_node("tutorial").hide()
	countin()

func _on_return_to_game_button_down():
	get_tree().set_pause(false)
	get_node("menu").hide()

func _on_return_to_village_button_down():
	get_node("are_you_sure").show()


func _on_return_to_main_menu_button_down():
	get_node("are_you_sure_2").show()


func _on_yes_village_button_down():
	get_node("menu").hide()
	get_tree().set_pause(false)
	perks.perk_check()
	get_tree().change_scene("res://strategy.tscn")


func _on_no_village_button_down():
	get_node("are_you_sure").hide()
	get_node("menu").show()


func _on_yes_main_button_down():
	get_tree().set_pause(false)
	get_tree().change_scene("res://player_selection.tscn")


func _on_no_main_button_down():
	get_node("are_you_sure_2").hide()
	get_node("menu").show()


func _on_customer_timeout():
	get_node("customer_display/moneybag").show()
	get_node("customer_display/explosion").show()
	get_node("customer_display/pop_timer").start()

func _on_pop_timer_timeout():
	get_node("customer_display/moneybag").hide()
	get_node("customer_display/explosion").hide()
	
func set_position():
	
	if bert_leftright == 0:
		bert_x = 335.085236
	elif bert_leftright == 1:
		bert_x = 384.340363
	elif bert_leftright == 2:
		bert_x = 434.340363
	elif bert_leftright == 3:
		bert_x = 485.340363
	elif bert_leftright == 4:
		bert_x = 534.340332
	elif bert_leftright == 5:
		bert_x = 584.340332
	elif bert_leftright == 6:
		bert_x = 634.340332
	elif bert_leftright == 7:
		bert_x = 685.340332
	elif bert_leftright == 8:
		bert_x = 735.340332
	elif bert_leftright == 9:
		bert_x = 785.340332
		
	if bert_updown == 0:
		bert_y = 70.690506
	elif bert_updown == 1:
		bert_y = 120.59761
	elif bert_updown == 2:
		bert_y = 169.59761
	elif bert_updown == 3:
		bert_y = 219.59761
	elif bert_updown == 4:
		bert_y = 268.597626
	elif bert_updown == 5:
		bert_y = 318.597626
	elif bert_updown == 6:
		bert_y = 368.597626
	elif bert_updown == 7:
		bert_y = 418.597626
	elif bert_updown == 8:
		bert_y = 469.597626
	elif bert_updown == 9:
		bert_y = 519.597656
	
	bert.set_global_position(Vector2(bert_x, bert_y))
