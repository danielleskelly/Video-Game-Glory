extends Node2D

onready var countdown_timer = get_node("countdown_timer")

var customer_choice
var price_choice
var randomness
var rand_arcade_price
var concession_choice
var concessions_desire
var concessions_price_check

var flag_in_play
var new_volume

var hundreds
var tens
var ones

onready var pixel = get_node("pixel")

func _ready():
	pixel_small()
	get_node("StreamPlayer").set_volume(sound.volume)
	set_process(true)

func _process(delta):
	hundreds = get_node("success_background/hundreths")
	tens = get_node("success_background/tens")
	ones = get_node("success_background/ones")
	point_display()
	countdown_timer.clear()
	countdown_timer.add_text(str(int(get_node("day_timer").get_time_left())))
	

func _on_day_timer_timeout():
	perk_check()
	get_tree().change_scene("res://strategy.tscn")
	

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
				
func pixel_small():
	pixel.set_pos(Vector2(15.587059, 31.145905))
	pixel.set_scale(Vector2(1.490551, 1.481762))
	
func pixel_big():
	pixel.set_pos(Vector2(17.404663, 71.34024))
	pixel.set_scale(Vector2(2.601525, 3.259631))

func _on_pixel_button_button_down():
	pixel_big()
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
	pixel_small()
	get_tree().set_pause(false)
	get_node("menu").set_hidden(true)


func _on_return_to_village_button_down():
	get_node("menu").set_hidden(true)
	get_node("are_you_sure").set_hidden(false)


func _on_yes_village_button_down():
	get_node("menu").set_hidden(true)
	perk_check()
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
