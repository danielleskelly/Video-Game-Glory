extends Node

var hollyhock_town_population = 500
var hollyhock_genre_two_key = false
var hollyhock_genre_three_key = false
var hollyhock_advertising_max = 100
var hollyhock_advertising = 0

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
	if (towns.town_select == "hollyhock"):
		#sets the population, advertising max, storefront keys, and predictions based on the town
		#determines base player marketshare
		player_marketshare_effect = hollyhock_town_population * hollyhock_player_marketshare
		#determines base competitor one marketshare
		marketshare_adjustment = .1 * hollyhock_town_population * float(hollyhock_advertising) / float(hollyhock_advertising_max)
		#adjusts player marketshare up for marketing
		player_marketing_adjustment = player_marketshare_effect + marketshare_adjustment
		#total number of customers interested in the first genre
		player_prediction_one = player_marketing_adjustment * meta_prediction
		#then if the second genre is available it performs the actions from prediction forward for the second genre
		if (hollyhock_genre_two_key == true):
			player_prediction_two = player_marketing_adjustment * classic_prediction
		#and again for the third genre
		if (hollyhock_genre_three_key == true):
			player_prediction_three = player_marketing_adjustment * platformer_prediction
			
func new_predictions():
	if (towns.town_select == "hollyhock"):
		randomize()
		meta_prediction = rand_range(.15, 1)
		randomize()
		classic_prediction = rand_range(.15, 1 - meta_prediction)
		randomize()
		platformer_prediction = rand_range(.15, 1 - (meta_prediction + classic_prediction))

func daily_marketshare_adjustment():
	if (towns.town_select == "hollyhock"):
		if (customer_math.hollyhock_player_marketshare == 1):
			pass
		else:
			if ((customer_globals.sales_made > customer_globals.sales_lost) and (money.hollyhock_cash > 100)):
				hollyhock_player_marketshare = hollyhock_player_marketshare + .2
			elif ((customer_globals.sales_made > customer_globals.sales_lost) or (money.hollyhock_cash > 100)):
				hollyhock_player_marketshare = hollyhock_player_marketshare + .1