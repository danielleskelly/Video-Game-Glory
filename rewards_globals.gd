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
	if earn_thousand > 1000 and earn_thousand_unlocked == false:
		earn_thousand = true
		unseen += 1
	if minigames_played > 30 and minigames_unlocked == false:
		minigames_unlocked = true
		unseen += 1
	if points_unlocked == false and points_in_one_minigame > 100:
		points_unlocked = true
		unseen += 1
	if million_total_unlocked == false and million_total_minigame_points > 1000000:
		million_total_unlocked = true
		unseen += 1
	if fifty_days_unlocked == false and fifty_business_days > 50:
		fifty_days_unlocked = true
		unseen += 1
	if customer_math.hollyhock_player_marketshare >= 1 and hundred_per_hollyhock == false:
		hundred_per_hollyhock = true
		total_player_satisfaction.append(0)
	if customer_math.fiyork_player_marketshare >= 1 and hundred_per_fiyork == false:
		hundred_per_fiyork = true
		total_player_satisfaction.append(0)
	if customer_math.untilly_player_marketshare >= 1 and hundred_per_untilly == false:
		hundred_per_untilly = true
		total_player_satisfaction.append(0)
	if customer_math.plansey_player_marketshare >= 1 and hundred_per_plansey == false:
		hundred_per_plansey = true
		total_player_satisfaction.append(0)
	if customer_math.windrow_player_marketshare >= 1 and hundred_per_windrow == false:
		hundred_per_windrow = true
		total_player_satisfaction.append(0)
	if customer_math.banlon_player_marketshare >= 1 and hundred_per_banlon == false:
		hundred_per_banlon = true
		total_player_satisfaction.append(0)
	if customer_math.slatten_player_marketshare >= 1 and hundred_per_slatten == false:
		hundred_per_slatten = true
		total_player_satisfaction.append(0)
		
	if total_player_satisfaction == 7 and total_player_unlocked == false:
		total_player_unlocked = true
		unseen += 1
		
	if three_min_yed > 180 and three_min_yed_unlocked == false:
		three_min_yed_unlocked = true
		unseen += 1
	if three_min_str > 180 and three_min_str_unlocked == false:
		three_min_str_unlocked = true
		unseen += 1
	if three_min_fso > 180 and three_min_fso_unlocked == false:
		three_min_fso_unlocked = true
		unseen += 1
	if three_min_math_mast > 180 and three_min_math_mast_unlocked == false:
		three_min_math_mast_unlocked = true
		unseen += 1
	if three_min_twfb > 180 and three_min_twfb_unlocked == false:
		three_min_twfb_unlocked = true
		unseen += 1
	if three_min_jad > 180 and three_min_jad_unlocked == false:
		three_min_jad_unlocked = true
		unseen += 1
	if three_min_lo > 180 and three_min_lo_unlocked == false:
		three_min_lo_unlocked = true
		unseen += 1