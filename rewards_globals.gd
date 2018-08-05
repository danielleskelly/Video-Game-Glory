extends Node

var unseen = 0

var complete_hollyhock = false
var complete_fiyork = false
var complete_untilly = false
var complete_plansey = false
var complete_windrow = false
var complete_banlon = false
var complete_slatten = false

var minigames_played = 0
var minigames_unlocked = false
var points_in_one_minigame = 0
var points_unlocked = false
var million_total_minigame_points = 0
var million_total_unlocked = false
var fifty_business_days = 0
var fifty_days_unlocked = false
var hundred_per_hollyhock = false
var hundred_per_fiyork = false
var hundred_per_untilly = false
var hundred_per_plansey = false
var hundred_per_windrow = false
var hundred_per_banlon = false
var hundred_per_slatten = false

var total_player_satisfaction = []
var total_player_unlocked = false

var find_saboteur = false
var complete_all_levels = false
var earn_thousand_unlocked = false
var earn_thousand = 0

var three_min_yed = 0
var three_min_str = 0
var three_min_fso = 0
var three_min_math_mast = 0
var three_min_twfb = 0
var three_min_jad = 0
var three_min_lo = 0

var three_min_yed_unlocked = false
var three_min_str_unlocked = false
var three_min_fso_unlocked = false
var three_min_math_mast_unlocked = false
var three_min_twfb_unlocked = false
var three_min_jad_unlocked = false
var three_min_lo_unlocked = false


func _ready():
	set_process(true)
	
func _process(delta):
	if int(earn_thousand) > 1000 and str(earn_thousand_unlocked) == str(false):
		earn_thousand = true
		unseen += 1
	if int(minigames_played) > 30 and str(minigames_unlocked) == str(false):
		minigames_unlocked = true
		unseen += 1
	if str(points_unlocked) == str(false) and int(points_in_one_minigame) > 100:
		points_unlocked = true
		unseen += 1
	if str(million_total_unlocked) == str(false) and int(million_total_minigame_points) > 1000000:
		million_total_unlocked = true
		unseen += 1
	if str(fifty_days_unlocked) == str(false) and int(fifty_business_days) > 50:
		fifty_days_unlocked = true
		unseen += 1
	if int(arcade_day.playershare) >= 1 and str(hundred_per_hollyhock) == str(false):
		hundred_per_hollyhock = true
		total_player_satisfaction.append(0)
	if int(arcade_day.playershare) >= 1 and str(hundred_per_fiyork) == str(false):
		hundred_per_fiyork = true
		total_player_satisfaction.append(0)
	if int(arcade_day.playershare) >= 1 and str(hundred_per_untilly) == str(false):
		hundred_per_untilly = true
		total_player_satisfaction.append(0)
	if int(arcade_day.playershare) >= 1 and str(hundred_per_plansey) == str(false):
		hundred_per_plansey = true
		total_player_satisfaction.append(0)
	if int(arcade_day.playershare) >= 1 and str(hundred_per_windrow) == str(false):
		hundred_per_windrow = true
		total_player_satisfaction.append(0)
	if int(arcade_day.playershare) >= 1 and str(hundred_per_banlon) == str(false):
		hundred_per_banlon = true
		total_player_satisfaction.append(0)
	if int(arcade_day.playershare) >= 1 and str(hundred_per_slatten) == str(false):
		hundred_per_slatten = true
		total_player_satisfaction.append(0)
		
	if int(total_player_satisfaction.size()) == 7 and bool(total_player_unlocked) == false:
		total_player_unlocked = true
		unseen += 1
		
	if int(three_min_yed) > 180 and str(three_min_yed_unlocked) == str(false):
		three_min_yed_unlocked = true
		unseen += 1
	if int(three_min_str) > 180 and str(three_min_str_unlocked) == str(false):
		three_min_str_unlocked = true
		unseen += 1
	if int(three_min_fso) > 180 and str(three_min_fso_unlocked) == str(false):
		three_min_fso_unlocked = true
		unseen += 1
	if int(three_min_math_mast) > 180 and str(three_min_math_mast_unlocked) == str(false):
		three_min_math_mast_unlocked = true
		unseen += 1
	if int(three_min_twfb) > 180 and str(three_min_twfb_unlocked) == str(false):
		three_min_twfb_unlocked = true
		unseen += 1
	if int(three_min_jad) > 180 and str(three_min_jad_unlocked) == str(false):
		three_min_jad_unlocked = true
		unseen += 1
	if int(three_min_lo) > 180 and str(three_min_lo_unlocked) == str(false):
		three_min_lo_unlocked = true
		unseen += 1