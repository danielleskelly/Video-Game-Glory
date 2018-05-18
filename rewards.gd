extends Node2D

func _ready():
	set_process(true)
	
func _process(delta):
	if rewards_globals.complete_hollyhock == true:
		get_node("complete_hollyhock").set_texture(load("res://hollyhock.png"))
		get_node("complete_hollyhock/tooltip").set_tooltip("Completed Hollyhock! Good job!")
	elif rewards_globals.complete_hollyhock == false:
		get_node("complete_hollyhock").set_texture(load("res://hollyhock_greyscale.png"))
		get_node("complete_hollyhock/tooltip").set_tooltip("Complete Hollyhock 0/1")
	if rewards_globals.complete_fiyork == true:
		get_node("complete_fiyork").set_texture(load("res://fiyork.png"))
		get_node("complete_fiyork/tooltip").set_tooltip("Completed Fiyork! Good job!")
	elif rewards_globals.complete_fiyork == false:
		get_node("complete_fiyork").set_texture(load("res://fiyork_greyscale.png"))
		get_node("complete_fiyork/tooltip").set_tooltip("Complete Fiyork 0/1")
	if rewards_globals.complete_untilly == true:
		get_node("complete_untilly").set_texture(load("res://untilly.png"))
		get_node("complete_untilly/tooltip").set_tooltip("Completed Untilly! Good job!")
	elif rewards_globals.complete_untilly == false:
		get_node("complete_untilly").set_texture(load("res://untilly_greyscale.png"))
		get_node("complete_untilly/tooltip").set_tooltip("Complete Untilly 0/1")
	if rewards_globals.complete_plansey == true:
		get_node("complete_plansey").set_texture(load("res://plansey.png"))
		get_node("complete_plansey/tooltip").set_tooltip("Completed Plansey! Good job!")
	elif rewards_globals.complete_plansey == false:
		get_node("complete_plansey").set_texture(load("res://plansey_greyscale.png"))
		get_node("complete_plansey/tooltip").set_tooltip("Complete Plansey 0/1")
	if rewards_globals.complete_windrow == true:
		get_node("complete_windrow").set_texture(load("res://windrow.png"))
		get_node("complete_windrow/tooltip").set_tooltip("Completed Windrow! Good job!")
	elif rewards_globals.complete_windrow == false:
		get_node("complete_windrow").set_texture(load("res://windrow_greyscale.png"))
		get_node("complete_windrow/tooltip").set_tooltip("Complete Windrow 0/1")
	if rewards_globals.complete_banlon == true:
		get_node("complete_banlon").set_texture(load("res://banlon.png"))
		get_node("complete_banlon/tooltip").set_tooltip("Completed Banlon! Good job!")
	elif rewards_globals.complete_banlon == false:
		get_node("complete_banlon").set_texture(load("res://banlon_greyscale.png"))
		get_node("complete_banlon/tooltip").set_tooltip("Complete Banlon 0/1")
	if rewards_globals.complete_slatten == true:
		get_node("complete_slatten").set_texture(load("res://slatten.png"))
		get_node("complete_slatten/tooltip").set_tooltip("Completed Slatten! Good job!")
	elif rewards_globals.complete_slatten == false:
		get_node("complete_slatten").set_texture(load("res://slatten_greyscale.png"))
		get_node("complete_slatten/tooltip").set_tooltip("Complete Slatten 0/1")
	if rewards_globals.minigames_played > 30:
		get_node("minigames_played").set_texture(load("res://classic.png"))
		get_node("minigames_played/tooltip").set_tooltip("You are getting pretty good at these minigames! Keep it up!")
	elif rewards_globals.minigames_played < 30:
		get_node("minigames_played").set_texture(load("res://classic_greyscale.png"))
		get_node("minigames_played/tooltip").set_tooltip("Minigames Played " + str(rewards_globals.minigames_played) + " / 30")
	if rewards_globals.points_in_one_minigame > 100:
		get_node("points_in_one_minigame").set_texture(load("res://popcorn.png"))
		get_node("points_in_one_minigame/tooltip").set_tooltip("You are a pro, even if it is only in one game...")
	elif rewards_globals.points_in_one_minigame < 100:
		get_node("points_in_one_minigame").set_texture(load("res://popcorn_greyscale.png"))
		get_node("points_in_one_minigame/tooltip").set_tooltip("100 Points in One Minigame " + str(rewards_globals.points_in_one_minigame) + " / 100")
	if rewards_globals.fifty_business_days > 50:
		get_node("fifty_business_days").set_texture(load("res://file_icon.png"))
		get_node("fifty_business_days/tooltip").set_tooltip("You have survived at this job longer than any of you predecessors! Very well done!")
	elif rewards_globals.fifty_business_days < 50:
		get_node("fifty_business_days").set_texture(load("res://file_icon_greyscale.png"))
		get_node("fifty_business_days/tooltip").set_tooltip("50 Business Days " + str(rewards_globals.fifty_business_days) + " / 50")
	if rewards_globals.million_total_minigame_points > 1000000:
		get_node("million_total_points").set_texture(load("res://soda.png"))
		get_node("million_total_points/tooltip").set_tooltip("You have recieved the title Master of Minigames! Rock on!")
	elif rewards_globals.million_total_minigame_points < 1000000:
		get_node("million_total_points").set_texture(load("res://soda_greyscale.png"))
		get_node("million_total_points/tooltip").set_tooltip("One Million Minigame Points " + str(rewards_globals.million_total_minigame_points) + " / 1000000")
	if rewards_globals.total_player_satisfaction.size() == 7:
		get_node("total_player_satisfaction").set_texture(load("res://customer_four.png"))
		get_node("total_player_satisfaction/tooltip").set_tooltip("You have made every player within our kingdom happy! I don't even know how that is possible!")
	elif rewards_globals.total_player_satisfaction.size() < 7:
		get_node("total_player_satisfaction").set_texture(load("res://customer_four_greyscale.png"))
		get_node("total_player_satisfaction/tooltip").set_tooltip("100% Customer Satisfation in All Towns " + str(rewards_globals.total_player_satisfaction.size()) + " / 7")
	if rewards_globals.three_min_yed >= 180:
		get_node("three_min_yed").set_texture(load("res://green_ghostie.png"))
		get_node("three_min_yed/tooltip").set_tooltip("You are the best at Yellow Eating Dot! Good job!")
	elif rewards_globals.three_min_yed < 180:
		get_node("three_min_yed").set_texture(load("res://green_ghostie_greyscale.png"))
		get_node("three_min_yed/tooltip").set_tooltip("Yellow Eating Dot Current High Score " + str(rewards_globals.three_min_yed) + " / 180")
	if rewards_globals.three_min_str >= 180:
		get_node("three_min_str").set_texture(load("res://pizza.png"))
		get_node("three_min_str/tooltip").set_tooltip("You are the best at Shoot that Rock! Good job!")
	elif rewards_globals.three_min_str < 180:
		get_node("three_min_str").set_texture(load("res://pizza_greyscale.png"))
		get_node("three_min_str/tooltip").set_tooltip("Shoot that Rock! Current High Score " + str(rewards_globals.three_min_str) + " / 180")
	if rewards_globals.three_min_fso >= 180:
		get_node("three_min_fso").set_texture(load("res://tetris_bar.png"))
		get_node("three_min_fso/Sprite").set_texture(load("res://tetris_bar.png"))
		get_node("three_min_fso/Sprite1").set_texture(load("res://tetris_bar.png"))
		get_node("three_min_fso/Sprite2").set_texture(load("res://tetris_bar.png"))
		get_node("three_min_fso/tooltip").set_tooltip("You are the best at Falling Shapes Organization! Good job!")
	elif rewards_globals.three_min_fso < 180:
		get_node("three_min_fso").set_texture(load("res://tetris_bar_greyscale.png"))
		get_node("three_min_fso/Sprite").set_texture(load("res://tetris_bar_greyscale.png"))
		get_node("three_min_fso/Sprite1").set_texture(load("res://tetris_bar_greyscale.png"))
		get_node("three_min_fso/Sprite2").set_texture(load("res://tetris_bar_greyscale.png"))
		get_node("three_min_fso/tooltip").set_tooltip("Falling Shapes Organization Current High Score " + str(rewards_globals.three_min_fso) + " / 180")
	if rewards_globals.three_min_math_mast >= 180:
		get_node("three_min_math_mast").set_texture(load("res://pixel_front.png"))
		get_node("three_min_math_mast/tooltip").set_tooltip("You are the best at Mathmatic Mastication! Good job!")
	elif rewards_globals.three_min_math_mast < 180:
		get_node("three_min_math_mast").set_texture(load("res://pixel_greyscale.png"))
		get_node("three_min_math_mast/tooltip").set_tooltip("Mathmatic Mastication Current High Score " + str(rewards_globals.three_min_math_mast) + " / 180")
	if rewards_globals.three_min_twfb >= 180:
		get_node("three_min_twfb").set_texture(load("res://bullet.png"))
		get_node("three_min_twfb/Sprite").set_texture(load("res://inner_box.png"))
		get_node("three_min_twfb/tooltip").set_tooltip("You are the best at Tall Wall Fall Ball! Good job!")
	elif rewards_globals.three_min_twfb < 180:
		get_node("three_min_twfb").set_texture(load("res://bullet_greyscale.png"))
		get_node("three_min_twfb/Sprite").set_texture(load("res://inner_box_greyscale.png"))
		get_node("three_min_twfb/tooltip").set_tooltip("Tall Wall Fall Ball Current High Score " + str(rewards_globals.three_min_twfb) + " / 180")
	if rewards_globals.three_min_jad >= 180:
		get_node("three_min_jad").set_texture(load("res://road.png"))
		get_node("three_min_jad/Sprite").set_texture(load("res://ship.png"))
		get_node("three_min_jad/tooltip").set_tooltip("You are the best at Jump and Dodge! Good job!")
	elif rewards_globals.three_min_jad < 180:
		get_node("three_min_jad").set_texture(load("res://road_greyscale.png"))
		get_node("three_min_jad/Sprite").set_texture(load("res://sam_head_greyscale.png"))
		get_node("three_min_jad/tooltip").set_tooltip("Jump and Dodge Current High Score " + str(rewards_globals.three_min_jad) + " / 180")
	if rewards_globals.three_min_lo >= 180:
		get_node("three_min_lo").set_texture(load("res://pixel.png"))
		get_node("three_min_lo/Sprite 2").set_texture(load("res://sam_head.png"))
		get_node("three_min_lo/tooltip").set_tooltip("You are the best at Lights Off! Good job!")
	elif rewards_globals.three_min_lo < 180:
		get_node("three_min_lo").set_texture(load("res://sam_head_greyscale.png"))
		get_node("three_min_lo/Sprite 2").set_texture(load("res://sam_head_greyscale.png"))
		get_node("three_min_lo/tooltip").set_tooltip("Lights Off! Current High Score " + str(rewards_globals.three_min_lo) + " / 180")
	if rewards_globals.find_saboteur == true:
		get_node("find_saboteur").set_texture(load("res://sam.png"))
		get_node("find_saboteur/tooltip").set_tooltip("You have uncovered the saboteur and achieved Video Game Glory!!!")
	elif rewards_globals.find_saboteur == false:
		get_node("find_saboteur").set_texture(load("res://sam_greyscale.png"))
		get_node("find_saboteur/tooltip").set_tooltip("Uncover the identity of the saboteur!")
	if rewards_globals.complete_all_levels == true:
		get_node("complete_all_levels").set_texture(load("res://ceo.png"))
		get_node("complete_all_levels/tooltip").set_tooltip("You have completed all the the levels. Congratulations on surviving!")
	elif rewards_globals.complete_all_levels == false:
		get_node("complete_all_levels").set_texture(load("res://ceo_greyscale.png"))
		get_node("complete_all_levels/tooltip").set_tooltip("Complete All Levels")
	if rewards_globals.earn_thousand_unlocked == true:
		get_node("earn_thousand").set_texture(load("res://moneybag.png"))
		get_node("earn_thousand/tooltip").set_tooltip("You have earned $1000 in one day. Way to exceed goals!")
	elif rewards_globals.earn_thousand_unlocked == false:
		get_node("earn_thousand").set_texture(load("res://moneybag_greyscale.png"))
		get_node("earn_thousand/tooltip").set_tooltip("Earn $1000 in one Day " + str(rewards_globals.earn_thousand) + " / 1000")


func _on_back_button_button_down():
	get_tree().change_scene("res://player_selection.tscn")
