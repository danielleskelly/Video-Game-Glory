extends Node

var hollyhock_town_population = 100
var hollyhock_advertising_max = 100
var hollyhock_advertising = 0
var hollyhock_player_marketshare = .1

var fiyork_town_population = 200
var fiyork_advertising_max = 100
var fiyork_advertising = 0
var fiyork_player_marketshare = .1

var plansey_town_population = 200
var plansey_advertising_max = 100
var plansey_advertising = 0
var plansey_player_marketshare = .1

var windrow_town_population = 200
var windrow_advertising_max = 100
var windrow_advertising = 0
var windrow_player_marketshare = .1

var banlon_town_population = 200
var banlon_advertising_max = 100
var banlon_advertising = 0
var banlon_player_marketshare = .1

var slatten_town_population = 200
var slatten_advertising_max = 100
var slatten_advertising = 0
var slatten_player_marketshare = .1

var untilly_town_population = 200
var untilly_advertising_max = 100
var untilly_advertising = 0
var untilly_player_marketshare = .1

#base market share calculations
var player_marketshare_effect
var comp_one_marketshare_effect
var comp_two_marketshare_effect

#marketing marketshare adjustments
var marketshare_adjustment
var player_marketing_adjustment

#prediction customer adjustments
var player_prediction_one = 0
var player_prediction_two = 0
var player_prediction_three = 0

var meta_prediction = .55
var classic_prediction = .45
var strategy_prediction = .30
var time_management_prediction = .58
var platformer_prediction = .58
var adventure_prediction = .58
var shooter_prediction = .32
var casual_prediction = .99
var nostalgic_prediction = .67

func _ready():
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
		if (hollyhock.hollyhock_genre_two_key == true):
			player_prediction_two = player_marketing_adjustment * classic_prediction
		#and again for the third genre
		if (hollyhock.hollyhock_genre_three_key == true):
			player_prediction_three = player_marketing_adjustment * platformer_prediction
	if (towns.town_select == "fiyork"):
		#sets the population, advertising max, storefront keys, and predictions based on the town
		#determines base player marketshare
		player_marketshare_effect = fiyork_town_population * fiyork_player_marketshare
		#determines base competitor one marketshare
		marketshare_adjustment = .1 * fiyork_town_population * float(fiyork_advertising) / float(fiyork_advertising_max)
		#adjusts player marketshare up for marketing
		player_marketing_adjustment = player_marketshare_effect + marketshare_adjustment
		#total number of customers interested in the first genre
		player_prediction_one = player_marketing_adjustment * shooter_prediction
		#then if the second genre is available it performs the actions from prediction forward for the second genre
		if (fiyork.fiyork_genre_two_key == true):
			player_prediction_two = player_marketing_adjustment * adventure_prediction
		#and again for the third genre
		if (fiyork.fiyork_genre_three_key == true):
			player_prediction_three = player_marketing_adjustment * casual_prediction
	if (towns.town_select == "plansey"):
		#sets the population, advertising max, storefront keys, and predictions based on the town
		#determines base player marketshare
		player_marketshare_effect = plansey_town_population * plansey_player_marketshare
		#determines base competitor one marketshare
		marketshare_adjustment = .1 * plansey_town_population * float(plansey_advertising) / float(plansey_advertising_max)
		#adjusts player marketshare up for marketing
		player_marketing_adjustment = player_marketshare_effect + marketshare_adjustment
		#total number of customers interested in the first genre
		player_prediction_one = player_marketing_adjustment * nostalgic_prediction
		#then if the second genre is available it performs the actions from prediction forward for the second genre
		if (plansey.plansey_genre_two_key == true):
			player_prediction_two = player_marketing_adjustment * strategy_prediction
		#and again for the third genre
		if (plansey.plansey_genre_three_key == true):
			player_prediction_three = player_marketing_adjustment * platformer_prediction
	if (towns.town_select == "windrow"):
		#sets the population, advertising max, storefront keys, and predictions based on the town
		#determines base player marketshare
		player_marketshare_effect = windrow_town_population * windrow_player_marketshare
		#determines base competitor one marketshare
		marketshare_adjustment = .1 * windrow_town_population * float(windrow_advertising) / float(windrow_advertising_max)
		#adjusts player marketshare up for marketing
		player_marketing_adjustment = player_marketshare_effect + marketshare_adjustment
		#total number of customers interested in the first genre
		player_prediction_one = player_marketing_adjustment * platformer_prediction
		#then if the second genre is available it performs the actions from prediction forward for the second genre
		if (windrow.windrow_genre_two_key == true):
			player_prediction_two = player_marketing_adjustment * time_management_prediction
		#and again for the third genre
		if (windrow.windrow_genre_three_key == true):
			player_prediction_three = player_marketing_adjustment * meta_prediction
	if (towns.town_select == "banlon"):
		#sets the population, advertising max, storefront keys, and predictions based on the town
		#determines base player marketshare
		player_marketshare_effect = banlon_town_population * banlon_player_marketshare
		#determines base competitor one marketshare
		marketshare_adjustment = .1 * banlon_town_population * float(banlon_advertising) / float(banlon_advertising_max)
		#adjusts player marketshare up for marketing
		player_marketing_adjustment = player_marketshare_effect + marketshare_adjustment
		#total number of customers interested in the first genre
		player_prediction_one = player_marketing_adjustment * strategy_prediction
		#then if the second genre is available it performs the actions from prediction forward for the second genre
		if (banlon.banlon_genre_two_key == true):
			player_prediction_two = player_marketing_adjustment * shooter_prediction
		#and again for the third genre
		if (banlon.banlon_genre_three_key == true):
			player_prediction_three = player_marketing_adjustment * adventure_prediction
	if (towns.town_select == "slatten"):
		#sets the population, advertising max, storefront keys, and predictions based on the town
		#determines base player marketshare
		player_marketshare_effect = slatten_town_population * slatten_player_marketshare
		#determines base competitor one marketshare
		marketshare_adjustment = .1 * slatten_town_population * float(slatten_advertising) / float(slatten_advertising_max)
		#adjusts player marketshare up for marketing
		player_marketing_adjustment = player_marketshare_effect + marketshare_adjustment
		#total number of customers interested in the first genre
		player_prediction_one = player_marketing_adjustment * classic_prediction
		#then if the second genre is available it performs the actions from prediction forward for the second genre
		if (slatten.slatten_genre_two_key == true):
			player_prediction_two = player_marketing_adjustment * casual_prediction
		#and again for the third genre
		if (slatten.slatten_genre_three_key == true):
			player_prediction_three = player_marketing_adjustment * nostalgic_prediction
	if (towns.town_select == "untilly"):
		#sets the population, advertising max, storefront keys, and predictions based on the town
		#determines base player marketshare
		player_marketshare_effect = untilly_town_population * untilly_player_marketshare
		#determines base competitor one marketshare
		marketshare_adjustment = .1 * untilly_town_population * float(untilly_advertising) / float(untilly_advertising_max)
		#adjusts player marketshare up for marketing
		player_marketing_adjustment = player_marketshare_effect + marketshare_adjustment
		#total number of customers interested in the first genre
		player_prediction_one = player_marketing_adjustment * casual_prediction
		#then if the second genre is available it performs the actions from prediction forward for the second genre
		if (untilly.untilly_genre_two_key == true):
			player_prediction_two = player_marketing_adjustment * shooter_prediction
		#and again for the third genre
		if (untilly.untilly_genre_three_key == true):
			player_prediction_three = player_marketing_adjustment * time_management_prediction

func new_predictions():
	if (towns.town_select == "hollyhock"):
		randomize()
		meta_prediction = rand_range(.15, 1)
		randomize()
		classic_prediction = rand_range(.15, 1 - meta_prediction)
		randomize()
		platformer_prediction = rand_range(.15, 1 - (meta_prediction + classic_prediction))
	if (towns.town_select == "fiyork"):
		randomize()
		shooter_prediction = rand_range(.15, 1)
		randomize()
		adventure_prediction = rand_range(.15, 1 - shooter_prediction)
		randomize()
		casual_prediction = rand_range(.15, 1 - (shooter_prediction + adventure_prediction))
	if (towns.town_select == "plansey"):
		randomize()
		nostalgic_prediction = rand_range(.15, 1)
		randomize()
		strategy_prediction = rand_range(.15, 1 - nostalgic_prediction)
		randomize()
		platformer_prediction = rand_range(.15, 1 - (nostalgic_prediction + strategy_prediction))
	if (towns.town_select == "slatten"):
		randomize()
		platformer_prediction = rand_range(.15, 1)
		randomize()
		time_management_prediction = rand_range(.15, 1 - platformer_prediction)
		randomize()
		meta_prediction = rand_range(.15, 1 - (platformer_prediction + time_management_prediction))
	if (towns.town_select == "banlon"):
		randomize()
		strategy_prediction = rand_range(.15, 1)
		randomize()
		shooter_prediction = rand_range(.15, 1 - strategy_prediction)
		randomize()
		adventure_prediction = rand_range(.15, 1 - (strategy_prediction + shooter_prediction))
	if (towns.town_select == "windrow"):
		randomize()
		classic_prediction = rand_range(.15, 1)
		randomize()
		casual_prediction = rand_range(.15, 1 - classic_prediction)
		randomize()
		nostalgic_prediction = rand_range(.15, 1 - (classic_prediction + casual_prediction))
	if (towns.town_select == "untilly"):
		randomize()
		casual_prediction = rand_range(.15, 1)
		randomize()
		shooter_prediction = rand_range(.15, 1 - casual_prediction)
		randomize()
		time_management_prediction = rand_range(.15, 1 - (casual_prediction + shooter_prediction))

func daily_marketshare_adjustment():
	if (towns.town_select == "hollyhock"):
		if (hollyhock_player_marketshare == 1):
			pass
		else:
			if ((customer_globals.sales_made > customer_globals.sales_lost) and (money.hollyhock_cash > 100)):
				hollyhock_player_marketshare = hollyhock_player_marketshare + .2
			elif ((customer_globals.sales_made > customer_globals.sales_lost) or (money.hollyhock_cash > 100)):
				hollyhock_player_marketshare = hollyhock_player_marketshare + .1
	if (towns.town_select == "fiyork"):
		if (fiyork_player_marketshare >= 1):
			pass
		elif (fiyork_player_marketshare <= 0):
			pass
		else:
			if ((customer_globals.sales_made > customer_globals.sales_lost) and (money.fiyork_cash > 100)):
				fiyork_player_marketshare = fiyork_player_marketshare + .1
			elif ((customer_globals.sales_made > customer_globals.sales_lost) or (money.fiyork_cash > 100)):
				fiyork_player_marketshare = fiyork_player_marketshare + .05
			else:
				fiyork_player_marketshare = fiyork_player_marketshare - .05
	if (towns.town_select == "plansey"):
		if (plansey_player_marketshare >= 1):
			pass
		elif (plansey_player_marketshare <= 0):
			pass
		else:
			if ((customer_globals.sales_made > customer_globals.sales_lost) and (money.plansey_cash > 100)):
				plansey_player_marketshare = plansey_player_marketshare + .1
			elif ((customer_globals.sales_made > customer_globals.sales_lost) or (money.plansey_cash > 100)):
				plansey_player_marketshare = plansey_player_marketshare + .05
			else:
				plansey_player_marketshare = plansey_player_marketshare - .05
	if (towns.town_select == "windrow"):
		if (windrow_player_marketshare >= 1):
			pass
		elif (windrow_player_marketshare <= 0):
			pass
		else:
			if ((customer_globals.sales_made > customer_globals.sales_lost) and (money.windrow_cash > 100)):
				windrow_player_marketshare = windrow_player_marketshare + .1
			elif ((customer_globals.sales_made > customer_globals.sales_lost) or (money.windrow_cash > 100)):
				windrow_player_marketshare = windrow_player_marketshare + .05
			else:
				windrow_player_marketshare = windrow_player_marketshare - .05
	if (towns.town_select == "banlon"):
		if (banlon_player_marketshare >= 1):
			pass
		elif (banlon_player_marketshare <= 0):
			pass
		else:
			if ((customer_globals.sales_made > customer_globals.sales_lost) and (money.banlon_cash > 100)):
				banlon_player_marketshare = banlon_player_marketshare + .1
			elif ((customer_globals.sales_made > customer_globals.sales_lost) or (money.banlon_cash > 100)):
				banlon_player_marketshare = banlon_player_marketshare + .05
			else:
				banlon_player_marketshare = banlon_player_marketshare - .05
	if (towns.town_select == "slatten"):
		if (slatten_player_marketshare >= 1):
			pass
		elif (slatten_player_marketshare <= 0):
			pass
		else:
			if ((customer_globals.sales_made > customer_globals.sales_lost) and (money.slatten_cash > 100)):
				slatten_player_marketshare = slatten_player_marketshare + .1
			elif ((customer_globals.sales_made > customer_globals.sales_lost) or (money.slatten_cash > 100)):
				slatten_player_marketshare = slatten_player_marketshare + .05
			else:
				slatten_player_marketshare = slatten_player_marketshare - .05
	if (towns.town_select == "untilly"):
		if (untilly_player_marketshare >= 1):
			pass
		elif (untilly_player_marketshare <= 0):
			pass
		else:
			if ((customer_globals.sales_made > customer_globals.sales_lost) and (money.untilly_cash > 100)):
				untilly_player_marketshare = untilly_player_marketshare + .1
			elif ((customer_globals.sales_made > customer_globals.sales_lost) or (money.untilly_cash > 100)):
				untilly_player_marketshare = untilly_player_marketshare + .05
			else:
				untilly_player_marketshare = untilly_player_marketshare - .05
