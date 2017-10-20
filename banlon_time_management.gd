extends Node2D

onready var countdown_timer = get_node("countdown_timer")

var new_volume

var hundreds
var tens
var ones

var customer_choice
var price_choice
var randomness
var rand_arcade_price
var concession_choice
var concessions_desire
var concessions_price_check

onready var pixel = get_node("pixel")

var direction
var current_pos

var frog_colliders
var cars

func _ready():
	pixel_small()
	get_node("StreamPlayer").set_volume(sound.volume)
	current_pos = "a"
	set_process(true)

func _process(delta):
	hundreds = get_node("success_background/hundreths")
	tens = get_node("success_background/tens")
	ones = get_node("success_background/ones")
	point_display()
	countdown_timer.clear()
	countdown_timer.add_text(str(int(get_node("day_timer").get_time_left())))
	frog_colliders = get_node("frog").get_colliding_bodies()
	for x in frog_colliders:
		if (x.is_in_group("car") == true):
			reset_frog()
	var frog_pos = get_node("frog").get_pos()
	if (Input.is_action_pressed("move_left")):
		direction = Vector2(-1.0, 0.0)
		frog_pos += direction * 25 * delta
		get_node("frog").set_pos(frog_pos)
	if (Input.is_action_pressed("move_right")):
		direction = Vector2(1.0, 0.0)
		frog_pos += direction * 25 * delta
		get_node("frog").set_pos(frog_pos)
	if (Input.is_action_pressed("move_up")) and (get_node("jump_timer").get_time_left() == 0):
		if (current_pos == "a"):
			current_pos = "b"
			get_node("frog").set_pos(Vector2(frog_pos.x, 13.569057))
		elif (current_pos == "b"):
			current_pos = "c"
			get_node("frog").set_pos(Vector2(frog_pos.x, -1.493553))
		elif (current_pos == "c"):
			current_pos = "d"
			get_node("frog").set_pos(Vector2(frog_pos.x, -16.731302))
		elif (current_pos == "d"):
			get_node("frog").set_pos(Vector2(frog_pos.x, -27.590385))
			get_node("notification").set_hidden(false)
			get_node("note_timer").start()
		get_node("jump_timer").start()
	if (Input.is_action_pressed("move_down")) and (get_node("jump_timer").get_time_left() == 0):
		if (current_pos == "e"):
			current_pos = "d"
			get_node("frog").set_pos(Vector2(frog_pos.x, -16.731302))
		elif (current_pos == "d"):
			current_pos = "c"
			get_node("frog").set_pos(Vector2(frog_pos.x, -1.493553))
		elif (current_pos == "c"):
			current_pos = "b"
			get_node("frog").set_pos(Vector2(frog_pos.x, 13.569057))
		elif (current_pos == "b"):
			current_pos = "a"
			get_node("frog").set_pos(Vector2(frog_pos.x, 27.931084))
		get_node("jump_timer").start()
	

func _on_note_timer_timeout():
	get_node("notification").set_hidden(true)
	perks.success = perks.success + 10
	reset_frog()
	
func reset_frog():
	if perks.success > 5:
		perks.success = perks.success - 5
	get_node("frog").set_pos(Vector2(27.389816, 27.931084))
	current_pos = "a"
	
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
	pixel.set_pos(Vector2(0, 0))
	pixel.set_scale(Vector2(1, 1))


func pixel_big():
	pixel.set_pos(Vector2(160.260422, -142.383102))
	pixel.set_scale(Vector2(4.694381, 5.103124))

func _on_day_timer_timeout():
	perk_check()
	get_tree().change_scene("res://strategy.tscn")


func perk_check():
	if (towns.town_select == "banlon"):
		if (int(perks.perk_goal) <= int(perks.success)):
			if (perks.perk_num == 1):
				supplies.banlon_energy_count = supplies.banlon_energy_count + 5
				supplies.banlon_nachos_count = supplies.banlon_nachos_count + 5
			elif (perks.perk_num == 2):
				customer_math.banlon_player_marketshare = int(customer_math.banlon_player_marketshare) + .1
			elif (perks.perk_num == 3):
				money.banlon_balance = money.banlon_balance + 50
			elif (perks.perk_num == 4):
				supplies.banlon_energy_count = supplies.banlon_energy_count + 10
				supplies.banlon_nachos_count = supplies.banlon_nachos_count + 10
			elif (perks.perk_num == 5):
				supplies.banlon_energy_count = supplies.banlon_energy_count + 20
				supplies.banlon_nachos_count = supplies.banlon_nachos_count + 20
			elif (perks.perk_num == 6):
				money.banlon_balance = money.banlon_balance + 25


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