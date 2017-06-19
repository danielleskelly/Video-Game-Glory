extends Node

var hollyhock_town_population = 100
var hollyhock_genre_two_key = false
var hollyhock_genre_three_key = false
var hollyhock_advertising_max = 100
var hollyhock_advertising = 20

var hollyhock_player_marketshare = .1
var hollyhock_competitor_one_marketshare = .63
var hollyhock_competitor_two_marketshare= .46


#base market share calculations
var player_marketshare_effect
var comp_one_marketshare_effect
var comp_two_marketshare_effect

#marketing marketshare adjustments
var marketshare_adjustment
var player_marketing_adjustment
var comp_one_adjusted_marketshare
var comp_two_adjusted_marketshare

#prediction customer adjustments
var player_prediction_one = 0
var player_prediction_two = 0
var player_prediction_three = 0

var one_sales_made = 0
var two_sales_made = 0
var one_sales_lost = 0
var two_sales_lost = 0
var one_cash = 233
var two_cash = 484

var meta_prediction = .55
var classic_prediction = .45
var strategy_prediction = .30
var time_management_prediction = .58
var platformer_prediction = .58
var adventure_prediction = .58

func _ready():
	# Called every time the node is added to the scene.
	# Initialization here
	pass

func customer_math():
	#performs the calculations to determine the number of customers that will enter the store
	if (global.town_select == "hollyhock"): 	
		#sets the population, advertising max, storefront keys, and predictions based on the town
		#determines base player marketshare
		player_marketshare_effect = hollyhock_town_population * hollyhock_player_marketshare
		#determines base competitor one marketshare
		comp_one_marketshare_effect = hollyhock_town_population * hollyhock_competitor_one_marketshare
		#determines base competitor two marketshare
		comp_two_marketshare_effect = hollyhock_town_population * hollyhock_competitor_two_marketshare
		#creates the adjustment number for marketing
		marketshare_adjustment = .1 * hollyhock_town_population * float(hollyhock_advertising) / float(hollyhock_advertising_max)
		#adjusts player marketshare up for marketing
		player_marketing_adjustment = player_marketshare_effect + marketshare_adjustment
		#adjusts competitor one marketshare down by half for marketing
		comp_one_adjusted_marketshare = comp_two_marketshare_effect - float(marketshare_adjustment) / 2
		#adjusts competitor one marketshare down by half for marketing
		comp_two_adjusted_marketshare = comp_two_marketshare_effect - float(marketshare_adjustment) / 2
		#sets the competitors sales made and sales lost
		randomize()
		one_sales_made = range(0, comp_one_adjusted_marketshare + 1)[randi()%range(0, comp_one_adjusted_marketshare + 1).size()]
		one_sales_lost = int(comp_one_adjusted_marketshare - one_sales_made)
		one_cash = one_sales_made * 10
		two_sales_made = range(0, comp_two_adjusted_marketshare + 1)[randi()%range(0, comp_two_adjusted_marketshare + 1).size()]
		two_sales_lost = int(comp_two_adjusted_marketshare - two_sales_made)
		two_cash = two_sales_made * 10
		#completes the player's specific calculations
		#total number of customers interested in the first genre
		player_prediction_one = player_marketing_adjustment * meta_prediction
		#then if the second genre is available it performs the actions from prediction forward for the second genre
		if (hollyhock_genre_two_key == true):
			player_prediction_two = player_marketing_adjustment * classic_prediction
		#and again for the third genre
		if (hollyhock_genre_three_key == true):
			player_prediction_three = player_marketing_adjustment * platformer_prediction
			
func new_predictions():
	if (global.town_select == "hollyhock"):
		randomize()
		meta_prediction = rand_range(.15, 1)
		randomize()
		classic_prediction = rand_range(.15, 1 - meta_prediction)
		randomize()
		platformer_prediction = rand_range(.15, 1 - (meta_prediction + classic_prediction))

func daily_marketshare_adjustment():
	if (global.town_select == "hollyhock"):
		if (global.hollyhock_player_marketshare == 1):
			pass
		else:
			if ((hollyhock_competitor_one_marketshare > 0) and (hollyhock_competitor_two_marketshare > 0)):
				if ((customer_globals.sales_made > customer_globals.sales_lost) and (global.hollyhock_cash > 100)):
					hollyhock_player_marketshare = hollyhock_player_marketshare + .2
					hollyhock_competitor_one_marketshare = hollyhock_competitor_one_marketshare - .1
					hollyhock_competitor_two_marketshare = hollyhock_competitor_two_marketshare - .1
				elif ((customer_globals.sales_made > customer_globals.sales_lost) or (global.hollyhock_cash > 100)):
					hollyhock_player_marketshare = hollyhock_player_marketshare + .1
					hollyhock_competitor_one_marketshare = hollyhock_competitor_one_marketshare - .05
					hollyhock_competitor_two_marketshare = hollyhock_competitor_two_marketshare - .05
			elif ((hollyhock_competitor_one_marketshare <= 0) and (hollyhock_competitor_two_marketshare > 0)):
				if ((customer_globals.sales_made > customer_globals.sales_lost) and (global.hollyhock_cash > 100)):
					hollyhock_player_marketshare = hollyhock_player_marketshare + .2
					hollyhock_competitor_two_marketshare = hollyhock_competitor_two_marketshare - .2
				elif ((customer_globals.sales_made > customer_globals.sales_lost) or (global.hollyhock_cash > 100)):
					hollyhock_player_marketshare = hollyhock_player_marketshare + .1
					hollyhock_competitor_two_marketshare = hollyhock_competitor_two_marketshare - .1
			elif ((hollyhock_competitor_two_marketshare <= 0) and (hollyhock_competitor_one_marketshare <= 0)):
				pass

func delete_children():
	var customer_queue_children = get_tree().get_current_scene().get_node("customer_queue").get_children()
	for child in customer_queue_children:
		child.queue_free()
	var zone_one_path_children = get_tree().get_current_scene().get_node("zone_one_path").get_children()
	for child in zone_one_path_children:
		child.queue_free()
	var zone_two_path_children = get_tree().get_current_scene().get_node("zone_two_path").get_children()
	for child in zone_two_path_children:
		child.queue_free()
	var zone_three_path_children = get_tree().get_current_scene().get_node("zone_three_path").get_children()
	for child in zone_three_path_children:
		child.queue_free()
	var zone_four_path_children = get_tree().get_current_scene().get_node("zone_four_path").get_children()
	for child in zone_four_path_children:
		child.queue_free()
	var zone_five_path_children = get_tree().get_current_scene().get_node("zone_five_path").get_children()
	for child in zone_five_path_children:
		child.queue_free()
	var zone_six_path_children = get_tree().get_current_scene().get_node("zone_six_path").get_children()
	for child in zone_six_path_children:
		child.queue_free()
	var queue_to_exit_children = get_tree().get_current_scene().get_node("queue_to_exit").get_children()
	for child in queue_to_exit_children:
		child.queue_free()
	var zone_one_to_conc_children = get_tree().get_current_scene().get_node("zone_one_to_conc").get_children()
	for child in zone_one_to_conc_children:
		child.queue_free()
	var zone_two_to_conc_children = get_tree().get_current_scene().get_node("zone_two_to_conc").get_children()
	for child in zone_two_to_conc_children:
		child.queue_free()
	var zone_three_to_conc_children = get_tree().get_current_scene().get_node("zone_three_to_conc").get_children()
	for child in zone_two_to_conc_children:
		child.queue_free()
	var zone_four_to_conc_children = get_tree().get_current_scene().get_node("zone_four_to_conc").get_children()
	for child in zone_four_to_conc_children:
		child.queue_free()
	var zone_five_to_conc_children = get_tree().get_current_scene().get_node("zone_five_to_conc").get_children()
	for child in zone_five_to_conc_children:
		child.queue_free()
	var zone_six_to_conc_children = get_tree().get_current_scene().get_node("zone_six_to_conc").get_children()
	for child in zone_six_to_conc_children:
		child.queue_free()
	var zone_one_to_exit_children = get_tree().get_current_scene().get_node("zone_one_to_exit").get_children()
	for child in zone_one_to_exit_children:
		child.queue_free()
	var zone_two_to_exit_children = get_tree().get_current_scene().get_node("zone_two_to_exit").get_children()
	for child in zone_two_to_exit_children:
		child.queue_free()
	var zone_three_to_exit_children = get_tree().get_current_scene().get_node("zone_three_to_exit").get_children()
	for child in zone_two_to_exit_children:
		child.queue_free()
	var zone_four_to_exit_children = get_tree().get_current_scene().get_node("zone_four_to_exit").get_children()
	for child in zone_four_to_exit_children:
		child.queue_free()
	var zone_five_to_exit_children = get_tree().get_current_scene().get_node("zone_five_to_exit").get_children()
	for child in zone_five_to_exit_children:
		child.queue_free()
	var zone_six_to_exit_children = get_tree().get_current_scene().get_node("zone_six_to_exit").get_children()
	for child in zone_six_to_exit_children:
		child.queue_free()
	var concessions_to_exit_children = get_tree().get_current_scene().get_node("concessions_to_exit").get_children()
	for child in concessions_to_exit_children:
		child.queue_free()