extends Node2D

onready var countdown_timer = get_node("countdown_timer")

var hundreds
var tens
var ones

var size
var screen_size
var div = 25
var spawn_box  = []

onready var pixel = get_node("pixel")

func _ready():
	size = get_viewport_rect()
	get_node("spaceship").set_global_position(Vector2(size.size.x/2, size.size.y/2))
	if global.sales_made != 0:
		var time = 120/global.sales_made
		get_node("customer_display/customer").set_wait_time(time)
		get_node("customer_display/customer").start()
	else:
		pass
	if global.fiyork_tutorial == false:
		global.fiyork_tutorial = true
		get_node("tutorial").show()
		get_tree().set_pause(true)
	else:
		get_tree().set_pause(true)
		countin()
	
	screen_size = get_viewport_rect().size
	
	# top
	for i in range(0,div):
		spawn_box.append(Vector2((i * (screen_size.x))/div, 0))
	
	# bottom
	for i in range(0, div):
		spawn_box.append(Vector2((i * (screen_size.x))/div, screen_size.y))
	
	# left
	for i in range(0, div):
		spawn_box.append(Vector2(0, (i * (screen_size.y))/div))
	
	# right
	for i in range(0, div) :
		spawn_box.append(Vector2(screen_size.x, (i + (screen_size.y))/div))
	
	set_physics_process(true)
	set_process(true)

func _physics_process(delta):
	var spaceship = get_node("spaceship")
	if Input.is_action_pressed("move_right"):
		spaceship.rotate(.075)
	if Input.is_action_pressed("move_left"):
		spaceship.rotate(-.075)
	if Input.is_action_pressed("fire") and get_node("bullet_timer").get_time_left() == 0:
		var bullet_load = preload("res://bullet.tscn")
		var ship_rot = get_node("spaceship").get_rotation() + PI*1.5
		var dir_vec = Vector2(cos(ship_rot), sin(ship_rot))
		var distance_from_me = 40
		var spawn_point = get_node("spaceship").get_global_position() + (dir_vec * distance_from_me)
		var bullet = bullet_load.instance()
		bullet.add_to_group("bullets")
		bullet.set_global_position(spawn_point)
		bullet.apply_impulse(Vector2(0,0), Vector2(dir_vec*500))
		get_tree().get_root().add_child(bullet)
		get_node("bullet_timer").start()
		
	while (( get_tree().get_nodes_in_group("rocks").size() < 10 ) and (get_node("rock_timer").get_time_left() == 0)) :
		var rock_load = preload("res://rock.scn")
		var rock = rock_load.instance()
		var spawn_dot = spawn_box[randi() % spawn_box.size()]
		rock.set_global_position(spawn_dot)
		var ship_pos = get_node("spaceship").get_global_position()
		var dir_vec = (ship_pos - spawn_dot) + Vector2(rand_range(-102,102), rand_range(-102,102))
		add_child(rock)
		rock.add_to_group("rocks")
		rock.apply_impulse(Vector2(0,0), Vector2(dir_vec*.1))
		get_node("rock_timer").start()
	var rocks = get_tree().get_nodes_in_group("rocks")
	for z in rocks:
		clear_rocks(z)
		
	var bodies = get_tree().get_nodes_in_group("rocks")
	for body in bodies:
		var colliders = body.get_colliding_bodies()
		for collider in colliders:
			if (collider.is_in_group("bullets")):
				perks.success = perks.success + 2
				if body.get_global_position() != null:
					var explosion_place = body.get_global_position()
					get_node("explosion").set_global_position(explosion_place)
					get_node("explosion").show()
					body.free()
					get_node("pop_timer").start()

func _process(delta):
	size = get_viewport_rect()
	hundreds = get_node("success_background/hundreths")
	tens = get_node("success_background/tens")
	ones = get_node("success_background/ones")
	point_display()
	countdown_timer.clear()
	countdown_timer.add_text(str(int(get_node("day_timer").get_time_left())))
	
	if (Input.is_action_pressed("pause")):
			get_tree().set_pause(true)
			get_node("pause_popup").show()

func _on_pop_timer_timeout():
	get_node("explosion").hide()

func clear_rocks(z):
	var rock_place = z.get_global_position() 
	if ((rock_place.x < -100) or (rock_place.x > screen_size.x) or (rock_place.y < -100) or (rock_place.y > screen_size.y)):
		z.remove_from_group("rocks")
		z.free()

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
	get_node("customer_display/customer_pop_timer").start()

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
