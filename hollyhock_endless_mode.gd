extends Node2D

onready var countdown_timer = get_node("countdown_timer")

var customer_choice
var price_choice
var randomness
var rand_arcade_price
var concession_choice
var concessions_desire
var concessions_price_check

var new_volume

var hundreds
var tens
var ones

var stopwatch = 0

onready var pixel = get_node("pixel")

func _ready():
	get_node("StreamPlayer").set_volume(sound.volume)
	set_process(true)

func _process(delta):
	if Input.is_action_pressed("ui_cancel"):
		_on_pixel_button_button_down()
	hundreds = get_node("success_background/hundreths")
	tens = get_node("success_background/tens")
	ones = get_node("success_background/ones")
	point_display()
	countdown_timer.clear()
	countdown_timer.set_text(str(stopwatch))
	

func _on_day_timer_timeout():
	stopwatch += 1
	

func perk_check():
	if (towns.town_select == "hollyhock"):
		if (int(perks.perk_goal) <= int(perks.success)):
			if (perks.perk_num == 1):
				supplies.hollyhock_soda_count = supplies.hollyhock_soda_count + 5
				supplies.hollyhock_popcorn_count = supplies.hollyhock_popcorn_count + 5
			elif (perks.perk_num == 2):
				customer_math.hollyhock_player_marketshare = int(customer_math.hollyhock_player_marketshare) + .1
			elif (perks.perk_num == 3):
				money.hollyhock_balance = money.hollyhock_balance + 50
			elif (perks.perk_num == 4):
				supplies.hollyhock_soda_count = supplies.hollyhock_soda_count + 10
				supplies.hollyhock_popcorn_count = supplies.hollyhock_popcorn_count + 10
			elif (perks.perk_num == 5):
				supplies.hollyhock_soda_count = supplies.hollyhock_soda_count + 20
				supplies.hollyhock_popcorn_count = supplies.hollyhock_popcorn_count + 20
			elif (perks.perk_num == 6):
				money.hollyhock_balance = money.hollyhock_balance + 25

func _on_pixel_button_button_down():
	get_tree().set_pause(true)
	get_node("menu").set_hidden(false)
	get_node("menu/sound_slider").set_value(int(sound.volume * 100))
	

func _on_sound_slider_value_changed( value ):
	new_volume = value / 100
	sound.volume = new_volume
	get_node("StreamPlayer").set_volume(new_volume)
	
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


func _on_game_over_button_button_up():
	get_tree().set_pause(false)
	get_tree().change_scene("res://endless_mode.tscn")