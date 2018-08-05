extends Node2D

onready var countdown_timer = get_node("countdown_timer")

var hundreds
var tens
var ones
var pixel
var customer

var size

var stopwatch = 0

func _ready():
	size = get_viewport_rect()
	pixel = get_node("pixel")
	customer = get_node("customer")
	randomize()
	get_node("concessions/soda").set_global_position(Vector2(rand_range(0,size.size.x),rand_range(0,size.size.y)))
	get_node("concessions/soda2").set_global_position(Vector2(rand_range(0,size.size.x),rand_range(0,size.size.y)))
	get_node("concessions/soda3").set_global_position(Vector2(rand_range(0,size.size.x),rand_range(0,size.size.y)))
	get_node("concessions/popcorn").set_global_position(Vector2(rand_range(0,size.size.x),rand_range(0,size.size.y)))
	get_node("concessions/popcorn2").set_global_position(Vector2(rand_range(0,size.size.x),rand_range(0,size.size.y)))
	get_node("concessions/popcorn3").set_global_position(Vector2(rand_range(0,size.size.x),rand_range(0,size.size.y)))
	set_physics_process(true)
	set_process(true)
	get_tree().set_pause(true)
	countin()


func countin():
	get_tree().set_pause(true)
	get_node("in").show()
	get_node("in/count_timer").start()

func _process(delta):
	if Input.is_action_pressed("ui_cancel"):
		_on_pixel_button_button_down()
	hundreds = get_node("success_background/hundreths")
	tens = get_node("success_background/tens")
	ones = get_node("success_background/ones")
	point_display()
	countdown_timer.clear()
	countdown_timer.set_text(str(stopwatch))
	
func _physics_process(delta):
	var where = get_node("customer").global_position
	if where[0] < 0:
		get_node("customer").global_position[0] = size.size.x
	elif where[0] > size.size.x:
		get_node("customer").global_position[0] = 0
	if where[1] < 0:
		get_node("customer").global_position[1] = size.size.y
	elif where[1] > size.size.y:
		get_node("customer").global_position[1] = 0
	var direction = Vector2(0,0)
	if (Input.is_action_pressed("move_up")):
		direction+= Vector2(0,-1)
	elif (Input.is_action_pressed("move_down")):
		direction+= Vector2(0,1)
	elif (Input.is_action_pressed("move_left")):
		direction+= Vector2(-1,0)
	elif (Input.is_action_pressed("move_right")):
		direction+= Vector2(1,0)
	var collision_info = customer.move_and_collide(direction*delta*200)
	if collision_info:
		if collision_info.collider_id == get_node("ghostie_one").get_instance_id() or collision_info.collider_id == get_node("ghostie_two").get_instance_id() or collision_info.collider_id == get_node("ghostie_three").get_instance_id() or collision_info.collider_id == get_node("ghostie_four").get_instance_id() or collision_info.collider_id == get_node("ghostie_four").get_instance_id() or collision_info.collider_id == get_node("ghostie_two2").get_instance_id() or collision_info.collider_id == get_node("ghostie_two3").get_instance_id() or collision_info.collider_id == get_node("ghostie_four2").get_instance_id() or collision_info.collider_id == get_node("ghostie_four3").get_instance_id():
			
			var game_over = get_tree().get_nodes_in_group("game_over")
			for x in game_over:
				x.show()
				get_tree().set_pause(true)
		if collision_info.collider.get_parent().get_parent().get_name() == "concessions":
			collision_info.collider.get_parent().set_global_position(Vector2(rand_range(0,size.size.x),rand_range(0,size.size.y)))
			perks.success += 1

func _on_day_timer_timeout():
	stopwatch += 1

func _on_pixel_button_button_down():
	get_node("menu/sound_slider").set_value(int(sound.volume + 50))
	get_tree().set_pause(true)
	get_node("menu").show()

func _on_sound_slider_value_changed( value ):
	AudioServer.set_bus_volume_db(0,value - 50)
	
func point_display():
		var one_ones_digit = ((perks.success + perks.perk_final_count)) % 10
		var one_tens_digit = ((perks.success + perks.perk_final_count) / 10) % 10
		var one_hunds_digit = ((perks.success + perks.perk_final_count) / 100) % 10
		hundreds.clear()
		hundreds.add_text(str(one_hunds_digit))
		tens.clear()
		tens.add_text(str(one_tens_digit))
		ones.clear()
		ones.add_text(str(one_ones_digit))

func _on_return_to_game_button_down():
	get_tree().set_pause(false)
	get_node("menu").hide()

func _on_game_over_button_button_down():
	perks.success = 0
	get_tree().set_pause(false)
	rewards_globals.million_total_minigame_points = perks.success + int(rewards_globals.million_total_minigame_points)
	if int(stopwatch) > int(rewards_globals.three_min_yed):
		rewards_globals.three_min_yed = stopwatch
	get_tree().change_scene("res://endless_mode.tscn")

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


func _on_return_to_village_button_down():
	get_node("are_you_sure").show()


func _on_yes_village_button_down():
	perks.success = 0
	get_tree().set_pause(false)
	rewards_globals.million_total_minigame_points = perks.success + int(rewards_globals.million_total_minigame_points)
	if int(stopwatch) > int(rewards_globals.three_min_yed):
		rewards_globals.three_min_yed = stopwatch
	get_tree().change_scene("res://endless_mode.tscn")
	

func _on_no_village_button_down():
	get_node("are_you_sure").hide()