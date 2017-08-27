extends Node

var customer_choice
var price_choice
var rand_arcade_price
var concession_choice
var concessions_desire
var concessions_price_check
var randomness

var genre_type_one
var genre_type_two
var genre_type_three
var genre_type_four
var genre_type_five
var genre_type_six

var hollyhock_station_one_selection = 0
var hollyhock_station_two_selection = 0
var hollyhock_station_three_selection = 0
var hollyhock_station_four_selection = 0
var hollyhock_station_five_selection = 0
var hollyhock_station_six_selection = 0

var fiyork_station_one_selection = 0
var fiyork_station_two_selection = 0
var fiyork_station_three_selection = 0
var fiyork_station_four_selection = 0
var fiyork_station_five_selection = 0
var fiyork_station_six_selection = 0

var plansey_station_one_selection = 0
var plansey_station_two_selection = 0
var plansey_station_three_selection = 0
var plansey_station_four_selection = 0
var plansey_station_five_selection = 0
var plansey_station_six_selection = 0

var untilly_station_one_selection = 0
var untilly_station_two_selection = 0
var untilly_station_three_selection = 0
var untilly_station_four_selection = 0
var untilly_station_five_selection = 0
var untilly_station_six_selection = 0

var windrow_station_one_selection = 0
var windrow_station_two_selection = 0
var windrow_station_three_selection = 0
var windrow_station_four_selection = 0
var windrow_station_five_selection = 0
var windrow_station_six_selection = 0

var banlon_station_one_selection = 0
var banlon_station_two_selection = 0
var banlon_station_three_selection = 0
var banlon_station_four_selection = 0
var banlon_station_five_selection = 0
var banlon_station_six_selection = 0

var slatten_station_one_selection = 0
var slatten_station_two_selection = 0
var slatten_station_three_selection = 0
var slatten_station_four_selection = 0
var slatten_station_five_selection = 0
var slatten_station_six_selection = 0

var hollyhock_arcade_range_low = 10
var hollyhock_arcade_range_high = 20
var hollyhock_arcade_one_price = 0
var hollyhock_arcade_two_price = 0
var hollyhock_arcade_three_price = 0
var hollyhock_arcade_four_price = 0
var hollyhock_arcade_five_price = 0
var hollyhock_arcade_six_price = 0

var fiyork_arcade_range_low = 8
var fiyork_arcade_range_high = 18
var fiyork_arcade_one_price = 0
var fiyork_arcade_two_price = 0
var fiyork_arcade_three_price = 0
var fiyork_arcade_four_price = 0
var fiyork_arcade_five_price = 0
var fiyork_arcade_six_price = 0

var plansey_arcade_range_low = 15
var plansey_arcade_range_high = 20
var plansey_arcade_one_price = 0
var plansey_arcade_two_price = 0
var plansey_arcade_three_price = 0
var plansey_arcade_four_price = 0
var plansey_arcade_five_price = 0
var plansey_arcade_six_price = 0

var untilly_arcade_range_low = 10
var untilly_arcade_range_high = 25
var untilly_arcade_one_price = 0
var untilly_arcade_two_price = 0
var untilly_arcade_three_price = 0
var untilly_arcade_four_price = 0
var untilly_arcade_five_price = 0
var untilly_arcade_six_price = 0

var windrow_arcade_range_low = 15
var windrow_arcade_range_high = 20
var windrow_arcade_one_price = 0
var windrow_arcade_two_price = 0
var windrow_arcade_three_price = 0
var windrow_arcade_four_price = 0
var windrow_arcade_five_price = 0
var windrow_arcade_six_price = 0

var banlon_arcade_range_low = 15
var banlon_arcade_range_high = 20
var banlon_arcade_one_price = 0
var banlon_arcade_two_price = 0
var banlon_arcade_three_price = 0
var banlon_arcade_four_price = 0
var banlon_arcade_five_price = 0
var banlon_arcade_six_price = 0

var slatten_arcade_range_low = 15
var slatten_arcade_range_high = 20
var slatten_arcade_one_price = 0
var slatten_arcade_two_price = 0
var slatten_arcade_three_price = 0
var slatten_arcade_four_price = 0
var slatten_arcade_five_price = 0
var slatten_arcade_six_price = 0

func _ready():
	add_to_group("Persist")
	
func save():
	var savedict = {
		filename=get_filename(),
		hollyhock_station_one_selection = hollyhock_station_one_selection,
		hollyhock_station_two_selection = hollyhock_station_two_selection,
		hollyhock_station_three_selection = hollyhock_station_three_selection,
		hollyhock_station_four_selection = hollyhock_station_four_selection,
		hollyhock_station_five_selection = hollyhock_station_five_selection,
		hollyhock_station_six_selection = hollyhock_station_six_selection,

		fiyork_station_one_selection = fiyork_station_one_selection,
		fiyork_station_two_selection = fiyork_station_two_selection,
		fiyork_station_three_selection = fiyork_station_three_selection,
		fiyork_station_four_selection = fiyork_station_four_selection,
		fiyork_station_five_selection = fiyork_station_five_selection,
		fiyork_station_six_selection = fiyork_station_six_selection,

		plansey_station_one_selection = plansey_station_one_selection,
		plansey_station_two_selection = plansey_station_two_selection,
		plansey_station_three_selection = plansey_station_three_selection,
		plansey_station_four_selection = plansey_station_four_selection,
		plansey_station_five_selection = plansey_station_five_selection,
		plansey_station_six_selection = plansey_station_six_selection,

		untilly_station_one_selection = untilly_station_one_selection,
		untilly_station_two_selection = untilly_station_two_selection,
		untilly_station_three_selection = untilly_station_three_selection,
		untilly_station_four_selection = untilly_station_four_selection,
		untilly_station_five_selection = untilly_station_five_selection,
		untilly_station_six_selection = untilly_station_six_selection,

		windrow_station_one_selection = windrow_station_one_selection,
		windrow_station_two_selection = windrow_station_two_selection,
		windrow_station_three_selection = windrow_station_three_selection,
		windrow_station_four_selection = windrow_station_four_selection,
		windrow_station_five_selection = windrow_station_five_selection,
		windrow_station_six_selection = windrow_station_six_selection,

		banlon_station_one_selection = banlon_station_one_selection,
		banlon_station_two_selection = banlon_station_two_selection,
		banlon_station_three_selection = banlon_station_three_selection,
		banlon_station_four_selection = banlon_station_four_selection,
		banlon_station_five_selection = banlon_station_five_selection,
		banlon_station_six_selection = banlon_station_six_selection,

		slatten_station_one_selection = slatten_station_one_selection,
		slatten_station_two_selection = slatten_station_two_selection,
		slatten_station_three_selection = slatten_station_three_selection,
		slatten_station_four_selection = slatten_station_four_selection,
		slatten_station_five_selection = slatten_station_five_selection,
		slatten_station_six_selection = slatten_station_six_selection,

		hollyhock_arcade_range_low = hollyhock_arcade_range_low,
		hollyhock_arcade_range_high = hollyhock_arcade_range_high,
		hollyhock_arcade_one_price = hollyhock_arcade_one_price,
		hollyhock_arcade_two_price = hollyhock_arcade_two_price,
		hollyhock_arcade_three_price = hollyhock_arcade_three_price,
		hollyhock_arcade_four_price = hollyhock_arcade_four_price,
		hollyhock_arcade_five_price = hollyhock_arcade_five_price,
		hollyhock_arcade_six_price = hollyhock_arcade_six_price,

		fiyork_arcade_range_low = fiyork_arcade_range_low,
		fiyork_arcade_range_high = fiyork_arcade_range_high,
		fiyork_arcade_one_price = fiyork_arcade_one_price,
		fiyork_arcade_two_price = fiyork_arcade_two_price,
		fiyork_arcade_three_price = fiyork_arcade_three_price,
		fiyork_arcade_four_price = fiyork_arcade_four_price,
		fiyork_arcade_five_price = fiyork_arcade_five_price,
		fiyork_arcade_six_price = fiyork_arcade_six_price,

		plansey_arcade_range_low = plansey_arcade_range_low,
		plansey_arcade_range_high = plansey_arcade_range_high,
		plansey_arcade_one_price = plansey_arcade_one_price,
		plansey_arcade_two_price = plansey_arcade_two_price,
		plansey_arcade_three_price = plansey_arcade_three_price,
		plansey_arcade_four_price = plansey_arcade_four_price,
		plansey_arcade_five_price = plansey_arcade_five_price,
		plansey_arcade_six_price = plansey_arcade_six_price,

		untilly_arcade_range_low = untilly_arcade_range_low,
		untilly_arcade_range_high = untilly_arcade_range_high,
		untilly_arcade_one_price = untilly_arcade_one_price,
		untilly_arcade_two_price = untilly_arcade_two_price,
		untilly_arcade_three_price = untilly_arcade_three_price,
		untilly_arcade_four_price = untilly_arcade_four_price,
		untilly_arcade_five_price = untilly_arcade_five_price,
		untilly_arcade_six_price = untilly_arcade_six_price,

		windrow_arcade_range_low = windrow_arcade_range_low,
		windrow_arcade_range_high = windrow_arcade_range_high,
		windrow_arcade_one_price = windrow_arcade_one_price,
		windrow_arcade_two_price = windrow_arcade_two_price,
		windrow_arcade_three_price = windrow_arcade_three_price,
		windrow_arcade_four_price = windrow_arcade_four_price,
		windrow_arcade_five_price = windrow_arcade_five_price,
		windrow_arcade_six_price = windrow_arcade_six_price,

		banlon_arcade_range_low = banlon_arcade_range_low,
		banlon_arcade_range_high = banlon_arcade_range_high,
		banlon_arcade_one_price = banlon_arcade_one_price,
		banlon_arcade_two_price = banlon_arcade_two_price,
		banlon_arcade_three_price = banlon_arcade_three_price,
		banlon_arcade_four_price = banlon_arcade_four_price,
		banlon_arcade_five_price = banlon_arcade_five_price,
		banlon_arcade_six_price = banlon_arcade_six_price,

		slatten_arcade_range_low = slatten_arcade_range_low,
		slatten_arcade_range_high = slatten_arcade_range_high,
		slatten_arcade_one_price = slatten_arcade_one_price,
		slatten_arcade_two_price = slatten_arcade_two_price,
		slatten_arcade_three_price = slatten_arcade_three_price,
		slatten_arcade_four_price = slatten_arcade_four_price,
		slatten_arcade_five_price = slatten_arcade_five_price,
		slatten_arcade_six_price = slatten_arcade_six_price
	}
	return savedict
	
func hollyhock_day():
	customer_math.customer_math()
	for x in range(0, customer_math.player_prediction_one + 1):
		storefront_check.storefront_check()
		if (storefront_check.storefront_choice == true):
			quick_wait_check()
			customer_choice = randomness[randi() % randomness.size()]
			if (customer_choice == true):
				rand_arcade_price = [hollyhock_arcade_one_price]
				if (hollyhock_station_two_selection == 1):
					rand_arcade_price.append(hollyhock_arcade_two_price)
				if (hollyhock_station_three_selection == 1):
					rand_arcade_price.append(hollyhock_arcade_three_price)
				if (hollyhock_station_four_selection == 1):
					rand_arcade_price.append(hollyhock_arcade_four_price)
				if (hollyhock_station_five_selection == 1):
					rand_arcade_price.append(hollyhock_arcade_five_price)
				if (hollyhock_station_six_selection == 1):
					rand_arcade_price.append(hollyhock_arcade_six_price)
				price_choice = rand_arcade_price[randi() % rand_arcade_price.size()]
				if (price_choice < hollyhock_arcade_range_high):
					money.hollyhock_balance = money.hollyhock_balance + price_choice
					money.income = money.income + price_choice
					customer_globals.sales_made = customer_globals.sales_made + 1
					var concession_rand = [true, true, false]
					concession_choice = concession_rand[randi() % concession_rand.size()]
					if (concession_choice == true):
						var concession_options = ["soda", "popcorn", "both"]
						concessions_desire = concession_options[randi() % concession_options.size()]
						if (concessions_desire == "soda"):
							if (supplies.hollyhock_soda_count > 0):
								var check_soda = supplies.soda_range_high - supplies.hollyhock_soda_price #check if the soda price is too high
								if (check_soda <= 0):
									concessions_price_check = false
								else:
									concessions_price_check = true
								if (concessions_price_check == true): #if the price is not too high
									buy_soda()
						if (concessions_desire == "popcorn"):
							if (supplies.hollyhock_popcorn_count > 0):
								var check_popcorn = supplies.popcorn_range_high - supplies.hollyhock_popcorn_price #check if the soda price is too high
								if (check_popcorn <= 0):
									concessions_price_check = false
								else:
									concessions_price_check = true
								if (concessions_price_check == true): #if the price is not too high
									buy_popcorn()
						if (concessions_desire == "both"):
							if ((supplies.hollyhock_soda_count > 0) and (supplies.hollyhock_popcorn_count > 0)):
								var check_soda = supplies.soda_range_high - supplies.hollyhock_soda_price #check if the soda price is too high
								var check_popcorn = supplies.popcorn_range_high - supplies.hollyhock_popcorn_price #check if the popcorn price is too high
								if ((check_soda <= 0) or (check_popcorn <= 0)):
									concessions_price_check = false
								else:
									concessions_price_check = true
								if (concessions_price_check == true): #if the price is not too high
									buy_soda()
									buy_popcorn()
				else:
					customer_globals.sales_lost = customer_globals.sales_lost + 1
					customer_globals.price_loss = customer_globals.price_loss + 1
			else:
				customer_globals.sales_lost = customer_globals.sales_lost + 1
				customer_globals.waited_loss = customer_globals.waited_loss + 1
		else: 
			customer_globals.sales_lost = customer_globals.sales_lost + 1
			customer_globals.storefront_loss = customer_globals.storefront_loss + 1
	if (hollyhock.hollyhock_genre_two_key == true):
		for x in range(0, customer_math.player_prediction_two + 1):
			storefront_check.storefront_check()
			if (storefront_check.storefront_choice == true):
				quick_wait_check()
				customer_choice = randomness[randi() % randomness.size()]
				if (customer_choice == true):
					rand_arcade_price = [hollyhock_arcade_one_price]
					if (hollyhock_station_two_selection == 1):
						rand_arcade_price.append(hollyhock_arcade_two_price)
					if (hollyhock_station_three_selection == 1):
						rand_arcade_price.append(hollyhock_arcade_three_price)
					if (hollyhock_station_four_selection == 1):
						rand_arcade_price.append(hollyhock_arcade_four_price)
					if (hollyhock_station_five_selection == 1):
						rand_arcade_price.append(hollyhock_arcade_five_price)
					if (hollyhock_station_six_selection == 1):
						rand_arcade_price.append(hollyhock_arcade_six_price)
					price_choice = rand_arcade_price[randi() % rand_arcade_price.size()]
					if (price_choice < hollyhock_arcade_range_high):
						money.hollyhock_balance = money.hollyhock_balance + price_choice
						money.income = money.income + price_choice
						customer_globals.sales_made = customer_globals.sales_made + 1
						var concession_rand = [true, true, false]
						concession_choice = concession_rand[randi() % concession_rand.size()]
						if (concession_choice == true):
							var concession_options = ["soda", "popcorn", "both"]
							concessions_desire = concession_options[randi() % concession_options.size()]
							if (concessions_desire == "soda"):
								if (supplies.hollyhock_soda_count > 0):
									var check_soda = supplies.soda_range_high - supplies.hollyhock_soda_price #check if the soda price is too high
									if (check_soda <= 0):
										concessions_price_check = false
									else:
										concessions_price_check = true
									if (concessions_price_check == true): #if the price is not too high
										buy_soda()
							if (concessions_desire == "popcorn"):
								if (supplies.hollyhock_popcorn_count > 0):
									var check_popcorn = supplies.popcorn_range_high - supplies.hollyhock_popcorn_price #check if the soda price is too high
									if (check_popcorn <= 0):
										concessions_price_check = false
									else:
										concessions_price_check = true
									if (concessions_price_check == true): #if the price is not too high
										buy_popcorn()
							if (concessions_desire == "both"):
								if ((supplies.hollyhock_soda_count > 0) and (supplies.hollyhock_popcorn_count > 0)):
									var check_soda = supplies.soda_range_high - supplies.hollyhock_soda_price #check if the soda price is too high
									var check_popcorn = supplies.popcorn_range_high - supplies.hollyhock_popcorn_price #check if the popcorn price is too high
									if ((check_soda <= 0) or (check_popcorn <= 0)):
										concessions_price_check = false
									else:
										concessions_price_check = true
									if (concessions_price_check == true): #if the price is not too high
										buy_soda()
										buy_popcorn()
					else:
						customer_globals.sales_lost = customer_globals.sales_lost + 1
						customer_globals.price_loss = customer_globals.price_loss + 1
				else:
					customer_globals.sales_lost = customer_globals.sales_lost + 1
					customer_globals.waited_loss = customer_globals.waited_loss + 1
			else: 
				customer_globals.sales_lost = customer_globals.sales_lost + 1
				customer_globals.storefront_loss = customer_globals.storefront_loss + 1
	if (hollyhock.hollyhock_genre_three_key == true):
		for x in range(0, customer_math.player_prediction_three + 1):
			storefront_check.storefront_check()
			if (storefront_check.storefront_choice == true):
				quick_wait_check()
				customer_choice = randomness[randi() % randomness.size()]
				if (customer_choice == true):
					rand_arcade_price = [hollyhock_arcade_one_price]
					if (hollyhock_station_two_selection == 1):
						rand_arcade_price.append(hollyhock_arcade_two_price)
					if (hollyhock_station_three_selection == 1):
						rand_arcade_price.append(hollyhock_arcade_three_price)
					if (hollyhock_station_four_selection == 1):
						rand_arcade_price.append(hollyhock_arcade_four_price)
					if (hollyhock_station_five_selection == 1):
						rand_arcade_price.append(hollyhock_arcade_five_price)
					if (hollyhock_station_six_selection == 1):
						rand_arcade_price.append(hollyhock_arcade_six_price)
					price_choice = rand_arcade_price[randi() % rand_arcade_price.size()]
					if (price_choice < hollyhock_arcade_range_high):
						money.hollyhock_balance = money.hollyhock_balance + price_choice
						money.income = money.income + price_choice
						customer_globals.sales_made = customer_globals.sales_made + 1
						var concession_rand = [true, true, false]
						concession_choice = concession_rand[randi() % concession_rand.size()]
						if (concession_choice == true):
							var concession_options = ["soda", "popcorn", "both"]
							concessions_desire = concession_options[randi() % concession_options.size()]
							if (concessions_desire == "soda"):
								if (supplies.hollyhock_soda_count > 0):
									var check_soda = supplies.soda_range_high - supplies.hollyhock_soda_price #check if the soda price is too high
									if (check_soda <= 0):
										concessions_price_check = false
									else:
										concessions_price_check = true
									if (concessions_price_check == true): #if the price is not too high
										buy_soda()
							if (concessions_desire == "popcorn"):
								if (supplies.hollyhock_popcorn_count > 0):
									var check_popcorn = supplies.popcorn_range_high - supplies.hollyhock_popcorn_price #check if the soda price is too high
									if (check_popcorn <= 0):
										concessions_price_check = false
									else:
										concessions_price_check = true
									if (concessions_price_check == true): #if the price is not too high
										buy_popcorn()
							if (concessions_desire == "both"):
								if ((supplies.hollyhock_soda_count > 0) and (supplies.hollyhock_popcorn_count > 0)):
									var check_soda = supplies.soda_range_high - supplies.hollyhock_soda_price #check if the soda price is too high
									var check_popcorn = supplies.popcorn_range_high - supplies.hollyhock_popcorn_price #check if the popcorn price is too high
									if ((check_soda <= 0) or (check_popcorn <= 0)):
										concessions_price_check = false
									else:
										concessions_price_check = true
									if (concessions_price_check == true): #if the price is not too high
										buy_soda()
										buy_popcorn()
					else:
						customer_globals.sales_lost = customer_globals.sales_lost + 1
						customer_globals.price_loss = customer_globals.price_loss + 1
				else:
					customer_globals.sales_lost = customer_globals.sales_lost + 1
					customer_globals.waited_loss = customer_globals.waited_loss + 1
			else: 
				customer_globals.sales_lost = customer_globals.sales_lost + 1
				customer_globals.storefront_loss = customer_globals.storefront_loss + 1
				
func fiyork_day():
	customer_math.customer_math()
	for x in range(0, customer_math.player_prediction_one + 1):
		storefront_check.storefront_check()
		if (storefront_check.storefront_choice == true):
			quick_wait_check()
			customer_choice = randomness[randi() % randomness.size()]
			if (customer_choice == true):
				rand_arcade_price = [fiyork_arcade_one_price]
				if (fiyork_station_two_selection == 1):
					rand_arcade_price.append(fiyork_arcade_two_price)
				if (fiyork_station_three_selection == 1):
					rand_arcade_price.append(fiyork_arcade_three_price)
				if (fiyork_station_four_selection == 1):
					rand_arcade_price.append(fiyork_arcade_four_price)
				if (fiyork_station_five_selection == 1):
					rand_arcade_price.append(fiyork_arcade_five_price)
				if (fiyork_station_six_selection == 1):
					rand_arcade_price.append(fiyork_arcade_six_price)
				price_choice = rand_arcade_price[randi() % rand_arcade_price.size()]
				if (price_choice < fiyork_arcade_range_high):
					money.fiyork_balance = money.fiyork_balance + price_choice
					money.income = money.income + price_choice
					customer_globals.sales_made = customer_globals.sales_made + 1
					var concession_rand = [true, true, false]
					concession_choice = concession_rand[randi() % concession_rand.size()]
					if (concession_choice == true):
						var concession_options = ["freezie", "pizza", "both"]
						concessions_desire = concession_options[randi() % concession_options.size()]
						if (concessions_desire == "freezie"):
							if (supplies.fiyork_freezie_count > 0):
								var check_freezie = supplies.freezie_range_high - supplies.fiyork_freezie_price #check if the freezie price is too high
								if (check_freezie <= 0):
									concessions_price_check = false
								else:
									concessions_price_check = true
								if (concessions_price_check == true): #if the price is not too high
									buy_freezie()
						if (concessions_desire == "pizza"):
							if (supplies.fiyork_pizza_count > 0):
								var check_pizza = supplies.pizza_range_high - supplies.fiyork_pizza_price #check if the freezie price is too high
								if (check_pizza <= 0):
									concessions_price_check = false
								else:
									concessions_price_check = true
								if (concessions_price_check == true): #if the price is not too high
									buy_pizza()
						if (concessions_desire == "both"):
							if ((supplies.fiyork_freezie_count > 0) and (supplies.fiyork_pizza_count > 0)):
								var check_freezie = supplies.freezie_range_high - supplies.fiyork_freezie_price #check if the freezie price is too high
								var check_pizza = supplies.pizza_range_high - supplies.fiyork_pizza_price #check if the pizza price is too high
								if ((check_freezie <= 0) or (check_pizza <= 0)):
									concessions_price_check = false
								else:
									concessions_price_check = true
								if (concessions_price_check == true): #if the price is not too high
									buy_freezie()
									buy_pizza()
				else:
					customer_globals.sales_lost = customer_globals.sales_lost + 1
					customer_globals.price_loss = customer_globals.price_loss + 1
			else:
				customer_globals.sales_lost = customer_globals.sales_lost + 1
				customer_globals.waited_loss = customer_globals.waited_loss + 1
		else: 
			customer_globals.sales_lost = customer_globals.sales_lost + 1
			customer_globals.storefront_loss = customer_globals.storefront_loss + 1
	if (fiyork.fiyork_genre_two_key == true):
		for x in range(0, customer_math.player_prediction_two + 1):
			storefront_check.storefront_check()
			if (storefront_check.storefront_choice == true):
				quick_wait_check()
				customer_choice = randomness[randi() % randomness.size()]
				if (customer_choice == true):
					rand_arcade_price = [fiyork_arcade_one_price]
					if (fiyork_station_two_selection == 1):
						rand_arcade_price.append(fiyork_arcade_two_price)
					if (fiyork_station_three_selection == 1):
						rand_arcade_price.append(fiyork_arcade_three_price)
					if (fiyork_station_four_selection == 1):
						rand_arcade_price.append(fiyork_arcade_four_price)
					if (fiyork_station_five_selection == 1):
						rand_arcade_price.append(fiyork_arcade_five_price)
					if (fiyork_station_six_selection == 1):
						rand_arcade_price.append(fiyork_arcade_six_price)
					price_choice = rand_arcade_price[randi() % rand_arcade_price.size()]
					if (price_choice < fiyork_arcade_range_high):
						money.fiyork_balance = money.fiyork_balance + price_choice
						money.income = money.income + price_choice
						customer_globals.sales_made = customer_globals.sales_made + 1
						var concession_rand = [true, true, false]
						concession_choice = concession_rand[randi() % concession_rand.size()]
						if (concession_choice == true):
							var concession_options = ["freezie", "pizza", "both"]
							concessions_desire = concession_options[randi() % concession_options.size()]
							if (concessions_desire == "freezie"):
								if (supplies.fiyork_freezie_count > 0):
									var check_freezie = supplies.freezie_range_high - supplies.fiyork_freezie_price #check if the freezie price is too high
									if (check_freezie <= 0):
										concessions_price_check = false
									else:
										concessions_price_check = true
									if (concessions_price_check == true): #if the price is not too high
										buy_freezie()
							if (concessions_desire == "pizza"):
								if (supplies.fiyork_pizza_count > 0):
									var check_pizza = supplies.pizza_range_high - supplies.fiyork_pizza_price #check if the freezie price is too high
									if (check_pizza <= 0):
										concessions_price_check = false
									else:
										concessions_price_check = true
									if (concessions_price_check == true): #if the price is not too high
										buy_pizza()
							if (concessions_desire == "both"):
								if ((supplies.fiyork_freezie_count > 0) and (supplies.fiyork_pizza_count > 0)):
									var check_freezie = supplies.freezie_range_high - supplies.fiyork_freezie_price #check if the freezie price is too high
									var check_pizza = supplies.pizza_range_high - supplies.fiyork_pizza_price #check if the pizza price is too high
									if ((check_freezie <= 0) or (check_pizza <= 0)):
										concessions_price_check = false
									else:
										concessions_price_check = true
									if (concessions_price_check == true): #if the price is not too high
										buy_freezie()
										buy_pizza()
					else:
						customer_globals.sales_lost = customer_globals.sales_lost + 1
						customer_globals.price_loss = customer_globals.price_loss + 1
				else:
					customer_globals.sales_lost = customer_globals.sales_lost + 1
					customer_globals.waited_loss = customer_globals.waited_loss + 1
			else: 
				customer_globals.sales_lost = customer_globals.sales_lost + 1
				customer_globals.storefront_loss = customer_globals.storefront_loss + 1
	if (fiyork.fiyork_genre_three_key == true):
		for x in range(0, customer_math.player_prediction_three + 1):
			storefront_check.storefront_check()
			if (storefront_check.storefront_choice == true):
				quick_wait_check()
				customer_choice = randomness[randi() % randomness.size()]
				if (customer_choice == true):
					rand_arcade_price = [fiyork_arcade_one_price]
					if (fiyork_station_two_selection == 1):
						rand_arcade_price.append(fiyork_arcade_two_price)
					if (fiyork_station_three_selection == 1):
						rand_arcade_price.append(fiyork_arcade_three_price)
					if (fiyork_station_four_selection == 1):
						rand_arcade_price.append(fiyork_arcade_four_price)
					if (fiyork_station_five_selection == 1):
						rand_arcade_price.append(fiyork_arcade_five_price)
					if (fiyork_station_six_selection == 1):
						rand_arcade_price.append(fiyork_arcade_six_price)
					price_choice = rand_arcade_price[randi() % rand_arcade_price.size()]
					if (price_choice < fiyork_arcade_range_high):
						money.fiyork_balance = money.fiyork_balance + price_choice
						money.income = money.income + price_choice
						customer_globals.sales_made = customer_globals.sales_made + 1
						var concession_rand = [true, true, false]
						concession_choice = concession_rand[randi() % concession_rand.size()]
						if (concession_choice == true):
							var concession_options = ["freezie", "pizza", "both"]
							concessions_desire = concession_options[randi() % concession_options.size()]
							if (concessions_desire == "freezie"):
								if (supplies.fiyork_freezie_count > 0):
									var check_freezie = supplies.freezie_range_high - supplies.fiyork_freezie_price #check if the freezie price is too high
									if (check_freezie <= 0):
										concessions_price_check = false
									else:
										concessions_price_check = true
									if (concessions_price_check == true): #if the price is not too high
										buy_freezie()
							if (concessions_desire == "pizza"):
								if (supplies.fiyork_pizza_count > 0):
									var check_pizza = supplies.pizza_range_high - supplies.fiyork_pizza_price #check if the freezie price is too high
									if (check_pizza <= 0):
										concessions_price_check = false
									else:
										concessions_price_check = true
									if (concessions_price_check == true): #if the price is not too high
										buy_pizza()
							if (concessions_desire == "both"):
								if ((supplies.fiyork_freezie_count > 0) and (supplies.fiyork_pizza_count > 0)):
									var check_freezie = supplies.freezie_range_high - supplies.fiyork_freezie_price #check if the freezie price is too high
									var check_pizza = supplies.pizza_range_high - supplies.fiyork_pizza_price #check if the pizza price is too high
									if ((check_freezie <= 0) or (check_pizza <= 0)):
										concessions_price_check = false
									else:
										concessions_price_check = true
									if (concessions_price_check == true): #if the price is not too high
										buy_freezie()
										buy_pizza()
					else:
						customer_globals.sales_lost = customer_globals.sales_lost + 1
						customer_globals.price_loss = customer_globals.price_loss + 1
				else:
					customer_globals.sales_lost = customer_globals.sales_lost + 1
					customer_globals.waited_loss = customer_globals.waited_loss + 1
			else: 
				customer_globals.sales_lost = customer_globals.sales_lost + 1
				customer_globals.storefront_loss = customer_globals.storefront_loss + 1
				
func untilly_day():
	customer_math.customer_math()
	for x in range(0, customer_math.player_prediction_one + 1):
		storefront_check.storefront_check()
		if (storefront_check.storefront_choice == true):
			quick_wait_check()
			customer_choice = randomness[randi() % randomness.size()]
			if (customer_choice == true):
				rand_arcade_price = [untilly_arcade_one_price]
				if (untilly_station_two_selection == 1):
					rand_arcade_price.append(untilly_arcade_two_price)
				if (untilly_station_three_selection == 1):
					rand_arcade_price.append(untilly_arcade_three_price)
				if (untilly_station_four_selection == 1):
					rand_arcade_price.append(untilly_arcade_four_price)
				if (untilly_station_five_selection == 1):
					rand_arcade_price.append(untilly_arcade_five_price)
				if (untilly_station_six_selection == 1):
					rand_arcade_price.append(untilly_arcade_six_price)
				price_choice = rand_arcade_price[randi() % rand_arcade_price.size()]
				if (price_choice < untilly_arcade_range_high):
					money.untilly_balance = money.untilly_balance + price_choice
					money.income = money.income + price_choice
					customer_globals.sales_made = customer_globals.sales_made + 1
					var concession_rand = [true, true, false]
					concession_choice = concession_rand[randi() % concession_rand.size()]
					if (concession_choice == true):
						var concession_options = ["soda", "popcorn", "both"]
						concessions_desire = concession_options[randi() % concession_options.size()]
						if (concessions_desire == "soda"):
							if (supplies.untilly_soda_count > 0):
								var check_soda = supplies.soda_range_high - supplies.untilly_soda_price #check if the soda price is too high
								if (check_soda <= 0):
									concessions_price_check = false
								else:
									concessions_price_check = true
								if (concessions_price_check == true): #if the price is not too high
									buy_soda()
						if (concessions_desire == "popcorn"):
							if (supplies.untilly_popcorn_count > 0):
								var check_popcorn = supplies.popcorn_range_high - supplies.untilly_popcorn_price #check if the soda price is too high
								if (check_popcorn <= 0):
									concessions_price_check = false
								else:
									concessions_price_check = true
								if (concessions_price_check == true): #if the price is not too high
									buy_popcorn()
						if (concessions_desire == "both"):
							if ((supplies.untilly_soda_count > 0) and (supplies.untilly_popcorn_count > 0)):
								var check_soda = supplies.soda_range_high - supplies.untilly_soda_price #check if the soda price is too high
								var check_popcorn = supplies.popcorn_range_high - supplies.untilly_popcorn_price #check if the popcorn price is too high
								if ((check_soda <= 0) or (check_popcorn <= 0)):
									concessions_price_check = false
								else:
									concessions_price_check = true
								if (concessions_price_check == true): #if the price is not too high
									buy_soda()
									buy_popcorn()
				else:
					customer_globals.sales_lost = customer_globals.sales_lost + 1
					customer_globals.price_loss = customer_globals.price_loss + 1
			else:
				customer_globals.sales_lost = customer_globals.sales_lost + 1
				customer_globals.waited_loss = customer_globals.waited_loss + 1
		else: 
			customer_globals.sales_lost = customer_globals.sales_lost + 1
			customer_globals.storefront_loss = customer_globals.storefront_loss + 1
	if (untilly.untilly_genre_two_key == true):
		for x in range(0, customer_math.player_prediction_two + 1):
			storefront_check.storefront_check()
			if (storefront_check.storefront_choice == true):
				quick_wait_check()
				customer_choice = randomness[randi() % randomness.size()]
				if (customer_choice == true):
					rand_arcade_price = [untilly_arcade_one_price]
					if (untilly_station_two_selection == 1):
						rand_arcade_price.append(untilly_arcade_two_price)
					if (untilly_station_three_selection == 1):
						rand_arcade_price.append(untilly_arcade_three_price)
					if (untilly_station_four_selection == 1):
						rand_arcade_price.append(untilly_arcade_four_price)
					if (untilly_station_five_selection == 1):
						rand_arcade_price.append(untilly_arcade_five_price)
					if (untilly_station_six_selection == 1):
						rand_arcade_price.append(untilly_arcade_six_price)
					price_choice = rand_arcade_price[randi() % rand_arcade_price.size()]
					if (price_choice < untilly_arcade_range_high):
						money.untilly_balance = money.untilly_balance + price_choice
						money.income = money.income + price_choice
						customer_globals.sales_made = customer_globals.sales_made + 1
						var concession_rand = [true, true, false]
						concession_choice = concession_rand[randi() % concession_rand.size()]
						if (concession_choice == true):
							var concession_options = ["soda", "popcorn", "both"]
							concessions_desire = concession_options[randi() % concession_options.size()]
							if (concessions_desire == "soda"):
								if (supplies.untilly_soda_count > 0):
									var check_soda = supplies.soda_range_high - supplies.untilly_soda_price #check if the soda price is too high
									if (check_soda <= 0):
										concessions_price_check = false
									else:
										concessions_price_check = true
									if (concessions_price_check == true): #if the price is not too high
										buy_soda()
							if (concessions_desire == "popcorn"):
								if (supplies.untilly_popcorn_count > 0):
									var check_popcorn = supplies.popcorn_range_high - supplies.untilly_popcorn_price #check if the soda price is too high
									if (check_popcorn <= 0):
										concessions_price_check = false
									else:
										concessions_price_check = true
									if (concessions_price_check == true): #if the price is not too high
										buy_popcorn()
							if (concessions_desire == "both"):
								if ((supplies.untilly_soda_count > 0) and (supplies.untilly_popcorn_count > 0)):
									var check_soda = supplies.soda_range_high - supplies.untilly_soda_price #check if the soda price is too high
									var check_popcorn = supplies.popcorn_range_high - supplies.untilly_popcorn_price #check if the popcorn price is too high
									if ((check_soda <= 0) or (check_popcorn <= 0)):
										concessions_price_check = false
									else:
										concessions_price_check = true
									if (concessions_price_check == true): #if the price is not too high
										buy_soda()
										buy_popcorn()
					else:
						customer_globals.sales_lost = customer_globals.sales_lost + 1
						customer_globals.price_loss = customer_globals.price_loss + 1
				else:
					customer_globals.sales_lost = customer_globals.sales_lost + 1
					customer_globals.waited_loss = customer_globals.waited_loss + 1
			else: 
				customer_globals.sales_lost = customer_globals.sales_lost + 1
				customer_globals.storefront_loss = customer_globals.storefront_loss + 1
	if (untilly.untilly_genre_three_key == true):
		for x in range(0, customer_math.player_prediction_three + 1):
			storefront_check.storefront_check()
			if (storefront_check.storefront_choice == true):
				quick_wait_check()
				customer_choice = randomness[randi() % randomness.size()]
				if (customer_choice == true):
					rand_arcade_price = [untilly_arcade_one_price]
					if (untilly_station_two_selection == 1):
						rand_arcade_price.append(untilly_arcade_two_price)
					if (untilly_station_three_selection == 1):
						rand_arcade_price.append(untilly_arcade_three_price)
					if (untilly_station_four_selection == 1):
						rand_arcade_price.append(untilly_arcade_four_price)
					if (untilly_station_five_selection == 1):
						rand_arcade_price.append(untilly_arcade_five_price)
					if (untilly_station_six_selection == 1):
						rand_arcade_price.append(untilly_arcade_six_price)
					price_choice = rand_arcade_price[randi() % rand_arcade_price.size()]
					if (price_choice < untilly_arcade_range_high):
						money.untilly_balance = money.untilly_balance + price_choice
						money.income = money.income + price_choice
						customer_globals.sales_made = customer_globals.sales_made + 1
						var concession_rand = [true, true, false]
						concession_choice = concession_rand[randi() % concession_rand.size()]
						if (concession_choice == true):
							var concession_options = ["soda", "popcorn", "both"]
							concessions_desire = concession_options[randi() % concession_options.size()]
							if (concessions_desire == "soda"):
								if (supplies.untilly_soda_count > 0):
									var check_soda = supplies.soda_range_high - supplies.untilly_soda_price #check if the soda price is too high
									if (check_soda <= 0):
										concessions_price_check = false
									else:
										concessions_price_check = true
									if (concessions_price_check == true): #if the price is not too high
										buy_soda()
							if (concessions_desire == "popcorn"):
								if (supplies.untilly_popcorn_count > 0):
									var check_popcorn = supplies.popcorn_range_high - supplies.untilly_popcorn_price #check if the soda price is too high
									if (check_popcorn <= 0):
										concessions_price_check = false
									else:
										concessions_price_check = true
									if (concessions_price_check == true): #if the price is not too high
										buy_popcorn()
							if (concessions_desire == "both"):
								if ((supplies.untilly_soda_count > 0) and (supplies.untilly_popcorn_count > 0)):
									var check_soda = supplies.soda_range_high - supplies.untilly_soda_price #check if the soda price is too high
									var check_popcorn = supplies.popcorn_range_high - supplies.untilly_popcorn_price #check if the popcorn price is too high
									if ((check_soda <= 0) or (check_popcorn <= 0)):
										concessions_price_check = false
									else:
										concessions_price_check = true
									if (concessions_price_check == true): #if the price is not too high
										buy_soda()
										buy_popcorn()
					else:
						customer_globals.sales_lost = customer_globals.sales_lost + 1
						customer_globals.price_loss = customer_globals.price_loss + 1
				else:
					customer_globals.sales_lost = customer_globals.sales_lost + 1
					customer_globals.waited_loss = customer_globals.waited_loss + 1
			else: 
				customer_globals.sales_lost = customer_globals.sales_lost + 1
				customer_globals.storefront_loss = customer_globals.storefront_loss + 1
	
func plansey_day():
	customer_math.customer_math()
	for x in range(0, customer_math.player_prediction_one + 1):
		storefront_check.storefront_check()
		if (storefront_check.storefront_choice == true):
			quick_wait_check()
			customer_choice = randomness[randi() % randomness.size()]
			if (customer_choice == true):
				rand_arcade_price = [plansey_arcade_one_price]
				if (plansey_station_two_selection == 1):
					rand_arcade_price.append(plansey_arcade_two_price)
				if (plansey_station_three_selection == 1):
					rand_arcade_price.append(plansey_arcade_three_price)
				if (plansey_station_four_selection == 1):
					rand_arcade_price.append(plansey_arcade_four_price)
				if (plansey_station_five_selection == 1):
					rand_arcade_price.append(plansey_arcade_five_price)
				if (plansey_station_six_selection == 1):
					rand_arcade_price.append(plansey_arcade_six_price)
				price_choice = rand_arcade_price[randi() % rand_arcade_price.size()]
				if (price_choice < plansey_arcade_range_high):
					money.plansey_balance = money.plansey_balance + price_choice
					money.income = money.income + price_choice
					customer_globals.sales_made = customer_globals.sales_made + 1
					var concession_rand = [true, true, false]
					concession_choice = concession_rand[randi() % concession_rand.size()]
					if (concession_choice == true):
						var concession_options = ["energy", "nachos", "both"]
						concessions_desire = concession_options[randi() % concession_options.size()]
						if (concessions_desire == "energy"):
							if (supplies.plansey_energy_count > 0):
								var check_energy = supplies.energy_range_high - supplies.plansey_energy_price #check if the energy price is too high
								if (check_energy <= 0):
									concessions_price_check = false
								else:
									concessions_price_check = true
								if (concessions_price_check == true): #if the price is not too high
									buy_energy()
						if (concessions_desire == "nachos"):
							if (supplies.plansey_nachos_count > 0):
								var check_nachos = supplies.nachos_range_high - supplies.plansey_nachos_price #check if the energy price is too high
								if (check_nachos <= 0):
									concessions_price_check = false
								else:
									concessions_price_check = true
								if (concessions_price_check == true): #if the price is not too high
									buy_nachos()
						if (concessions_desire == "both"):
							if ((supplies.plansey_energy_count > 0) and (supplies.plansey_nachos_count > 0)):
								var check_energy = supplies.energy_range_high - supplies.plansey_energy_price #check if the energy price is too high
								var check_nachos = supplies.nachos_range_high - supplies.plansey_nachos_price #check if the nachos price is too high
								if ((check_energy <= 0) or (check_nachos <= 0)):
									concessions_price_check = false
								else:
									concessions_price_check = true
								if (concessions_price_check == true): #if the price is not too high
									buy_energy()
									buy_nachos()
				else:
					customer_globals.sales_lost = customer_globals.sales_lost + 1
					customer_globals.price_loss = customer_globals.price_loss + 1
			else:
				customer_globals.sales_lost = customer_globals.sales_lost + 1
				customer_globals.waited_loss = customer_globals.waited_loss + 1
		else: 
			customer_globals.sales_lost = customer_globals.sales_lost + 1
			customer_globals.storefront_loss = customer_globals.storefront_loss + 1
	if (plansey.plansey_genre_two_key == true):
		for x in range(0, customer_math.player_prediction_two + 1):
			storefront_check.storefront_check()
			if (storefront_check.storefront_choice == true):
				quick_wait_check()
				customer_choice = randomness[randi() % randomness.size()]
				if (customer_choice == true):
					rand_arcade_price = [plansey_arcade_one_price]
					if (plansey_station_two_selection == 1):
						rand_arcade_price.append(plansey_arcade_two_price)
					if (plansey_station_three_selection == 1):
						rand_arcade_price.append(plansey_arcade_three_price)
					if (plansey_station_four_selection == 1):
						rand_arcade_price.append(plansey_arcade_four_price)
					if (plansey_station_five_selection == 1):
						rand_arcade_price.append(plansey_arcade_five_price)
					if (plansey_station_six_selection == 1):
						rand_arcade_price.append(plansey_arcade_six_price)
					price_choice = rand_arcade_price[randi() % rand_arcade_price.size()]
					if (price_choice < plansey_arcade_range_high):
						money.plansey_balance = money.plansey_balance + price_choice
						money.income = money.income + price_choice
						customer_globals.sales_made = customer_globals.sales_made + 1
						var concession_rand = [true, true, false]
						concession_choice = concession_rand[randi() % concession_rand.size()]
						if (concession_choice == true):
							var concession_options = ["energy", "nachos", "both"]
							concessions_desire = concession_options[randi() % concession_options.size()]
							if (concessions_desire == "energy"):
								if (supplies.plansey_energy_count > 0):
									var check_energy = supplies.energy_range_high - supplies.plansey_energy_price #check if the energy price is too high
									if (check_energy <= 0):
										concessions_price_check = false
									else:
										concessions_price_check = true
									if (concessions_price_check == true): #if the price is not too high
										buy_energy()
							if (concessions_desire == "nachos"):
								if (supplies.plansey_nachos_count > 0):
									var check_nachos = supplies.nachos_range_high - supplies.plansey_nachos_price #check if the energy price is too high
									if (check_nachos <= 0):
										concessions_price_check = false
									else:
										concessions_price_check = true
									if (concessions_price_check == true): #if the price is not too high
										buy_nachos()
							if (concessions_desire == "both"):
								if ((supplies.plansey_energy_count > 0) and (supplies.plansey_nachos_count > 0)):
									var check_energy = supplies.energy_range_high - supplies.plansey_energy_price #check if the energy price is too high
									var check_nachos = supplies.nachos_range_high - supplies.plansey_nachos_price #check if the nachos price is too high
									if ((check_energy <= 0) or (check_nachos <= 0)):
										concessions_price_check = false
									else:
										concessions_price_check = true
									if (concessions_price_check == true): #if the price is not too high
										buy_energy()
										buy_nachos()
					else:
						customer_globals.sales_lost = customer_globals.sales_lost + 1
						customer_globals.price_loss = customer_globals.price_loss + 1
				else:
					customer_globals.sales_lost = customer_globals.sales_lost + 1
					customer_globals.waited_loss = customer_globals.waited_loss + 1
			else: 
				customer_globals.sales_lost = customer_globals.sales_lost + 1
				customer_globals.storefront_loss = customer_globals.storefront_loss + 1
	if (plansey.plansey_genre_three_key == true):
		for x in range(0, customer_math.player_prediction_three + 1):
			storefront_check.storefront_check()
			if (storefront_check.storefront_choice == true):
				quick_wait_check()
				customer_choice = randomness[randi() % randomness.size()]
				if (customer_choice == true):
					rand_arcade_price = [plansey_arcade_one_price]
					if (plansey_station_two_selection == 1):
						rand_arcade_price.append(plansey_arcade_two_price)
					if (plansey_station_three_selection == 1):
						rand_arcade_price.append(plansey_arcade_three_price)
					if (plansey_station_four_selection == 1):
						rand_arcade_price.append(plansey_arcade_four_price)
					if (plansey_station_five_selection == 1):
						rand_arcade_price.append(plansey_arcade_five_price)
					if (plansey_station_six_selection == 1):
						rand_arcade_price.append(plansey_arcade_six_price)
					price_choice = rand_arcade_price[randi() % rand_arcade_price.size()]
					if (price_choice < plansey_arcade_range_high):
						money.plansey_balance = money.plansey_balance + price_choice
						money.income = money.income + price_choice
						customer_globals.sales_made = customer_globals.sales_made + 1
						var concession_rand = [true, true, false]
						concession_choice = concession_rand[randi() % concession_rand.size()]
						if (concession_choice == true):
							var concession_options = ["energy", "nachos", "both"]
							concessions_desire = concession_options[randi() % concession_options.size()]
							if (concessions_desire == "energy"):
								if (supplies.plansey_energy_count > 0):
									var check_energy = supplies.energy_range_high - supplies.plansey_energy_price #check if the energy price is too high
									if (check_energy <= 0):
										concessions_price_check = false
									else:
										concessions_price_check = true
									if (concessions_price_check == true): #if the price is not too high
										buy_energy()
							if (concessions_desire == "nachos"):
								if (supplies.plansey_nachos_count > 0):
									var check_nachos = supplies.nachos_range_high - supplies.plansey_nachos_price #check if the energy price is too high
									if (check_nachos <= 0):
										concessions_price_check = false
									else:
										concessions_price_check = true
									if (concessions_price_check == true): #if the price is not too high
										buy_nachos()
							if (concessions_desire == "both"):
								if ((supplies.plansey_energy_count > 0) and (supplies.plansey_nachos_count > 0)):
									var check_energy = supplies.energy_range_high - supplies.plansey_energy_price #check if the energy price is too high
									var check_nachos = supplies.nachos_range_high - supplies.plansey_nachos_price #check if the nachos price is too high
									if ((check_energy <= 0) or (check_nachos <= 0)):
										concessions_price_check = false
									else:
										concessions_price_check = true
									if (concessions_price_check == true): #if the price is not too high
										buy_energy()
										buy_nachos()
					else:
						customer_globals.sales_lost = customer_globals.sales_lost + 1
						customer_globals.price_loss = customer_globals.price_loss + 1
				else:
					customer_globals.sales_lost = customer_globals.sales_lost + 1
					customer_globals.waited_loss = customer_globals.waited_loss + 1
			else: 
				customer_globals.sales_lost = customer_globals.sales_lost + 1
				customer_globals.storefront_loss = customer_globals.storefront_loss + 1
	
func windrow_day():
	customer_math.customer_math()
	for x in range(0, customer_math.player_prediction_one + 1):
		storefront_check.storefront_check()
		if (storefront_check.storefront_choice == true):
			quick_wait_check()
			customer_choice = randomness[randi() % randomness.size()]
			if (customer_choice == true):
				rand_arcade_price = [windrow_arcade_one_price]
				if (windrow_station_two_selection == 1):
					rand_arcade_price.append(windrow_arcade_two_price)
				if (windrow_station_three_selection == 1):
					rand_arcade_price.append(windrow_arcade_three_price)
				if (windrow_station_four_selection == 1):
					rand_arcade_price.append(windrow_arcade_four_price)
				if (windrow_station_five_selection == 1):
					rand_arcade_price.append(windrow_arcade_five_price)
				if (windrow_station_six_selection == 1):
					rand_arcade_price.append(windrow_arcade_six_price)
				price_choice = rand_arcade_price[randi() % rand_arcade_price.size()]
				if (price_choice < windrow_arcade_range_high):
					money.windrow_balance = money.windrow_balance + price_choice
					money.income = money.income + price_choice
					customer_globals.sales_made = customer_globals.sales_made + 1
					var concession_rand = [true, true, false]
					concession_choice = concession_rand[randi() % concession_rand.size()]
					if (concession_choice == true):
						var concession_options = ["freezie", "pizza", "both"]
						concessions_desire = concession_options[randi() % concession_options.size()]
						if (concessions_desire == "freezie"):
							if (supplies.windrow_freezie_count > 0):
								var check_freezie = supplies.freezie_range_high - supplies.windrow_freezie_price #check if the freezie price is too high
								if (check_freezie <= 0):
									concessions_price_check = false
								else:
									concessions_price_check = true
								if (concessions_price_check == true): #if the price is not too high
									buy_freezie()
						if (concessions_desire == "pizza"):
							if (supplies.windrow_pizza_count > 0):
								var check_pizza = supplies.pizza_range_high - supplies.windrow_pizza_price #check if the freezie price is too high
								if (check_pizza <= 0):
									concessions_price_check = false
								else:
									concessions_price_check = true
								if (concessions_price_check == true): #if the price is not too high
									buy_pizza()
						if (concessions_desire == "both"):
							if ((supplies.windrow_freezie_count > 0) and (supplies.windrow_pizza_count > 0)):
								var check_freezie = supplies.freezie_range_high - supplies.windrow_freezie_price #check if the freezie price is too high
								var check_pizza = supplies.pizza_range_high - supplies.windrow_pizza_price #check if the pizza price is too high
								if ((check_freezie <= 0) or (check_pizza <= 0)):
									concessions_price_check = false
								else:
									concessions_price_check = true
								if (concessions_price_check == true): #if the price is not too high
									buy_freezie()
									buy_pizza()
				else:
					customer_globals.sales_lost = customer_globals.sales_lost + 1
					customer_globals.price_loss = customer_globals.price_loss + 1
			else:
				customer_globals.sales_lost = customer_globals.sales_lost + 1
				customer_globals.waited_loss = customer_globals.waited_loss + 1
		else: 
			customer_globals.sales_lost = customer_globals.sales_lost + 1
			customer_globals.storefront_loss = customer_globals.storefront_loss + 1
	if (windrow.windrow_genre_two_key == true):
		for x in range(0, customer_math.player_prediction_two + 1):
			storefront_check.storefront_check()
			if (storefront_check.storefront_choice == true):
				quick_wait_check()
				customer_choice = randomness[randi() % randomness.size()]
				if (customer_choice == true):
					rand_arcade_price = [windrow_arcade_one_price]
					if (windrow_station_two_selection == 1):
						rand_arcade_price.append(windrow_arcade_two_price)
					if (windrow_station_three_selection == 1):
						rand_arcade_price.append(windrow_arcade_three_price)
					if (windrow_station_four_selection == 1):
						rand_arcade_price.append(windrow_arcade_four_price)
					if (windrow_station_five_selection == 1):
						rand_arcade_price.append(windrow_arcade_five_price)
					if (windrow_station_six_selection == 1):
						rand_arcade_price.append(windrow_arcade_six_price)
					price_choice = rand_arcade_price[randi() % rand_arcade_price.size()]
					if (price_choice < windrow_arcade_range_high):
						money.windrow_balance = money.windrow_balance + price_choice
						money.income = money.income + price_choice
						customer_globals.sales_made = customer_globals.sales_made + 1
						var concession_rand = [true, true, false]
						concession_choice = concession_rand[randi() % concession_rand.size()]
						if (concession_choice == true):
							var concession_options = ["freezie", "pizza", "both"]
							concessions_desire = concession_options[randi() % concession_options.size()]
							if (concessions_desire == "freezie"):
								if (supplies.windrow_freezie_count > 0):
									var check_freezie = supplies.freezie_range_high - supplies.windrow_freezie_price #check if the freezie price is too high
									if (check_freezie <= 0):
										concessions_price_check = false
									else:
										concessions_price_check = true
									if (concessions_price_check == true): #if the price is not too high
										buy_freezie()
							if (concessions_desire == "pizza"):
								if (supplies.windrow_pizza_count > 0):
									var check_pizza = supplies.pizza_range_high - supplies.windrow_pizza_price #check if the freezie price is too high
									if (check_pizza <= 0):
										concessions_price_check = false
									else:
										concessions_price_check = true
									if (concessions_price_check == true): #if the price is not too high
										buy_pizza()
							if (concessions_desire == "both"):
								if ((supplies.windrow_freezie_count > 0) and (supplies.windrow_pizza_count > 0)):
									var check_freezie = supplies.freezie_range_high - supplies.windrow_freezie_price #check if the freezie price is too high
									var check_pizza = supplies.pizza_range_high - supplies.windrow_pizza_price #check if the pizza price is too high
									if ((check_freezie <= 0) or (check_pizza <= 0)):
										concessions_price_check = false
									else:
										concessions_price_check = true
									if (concessions_price_check == true): #if the price is not too high
										buy_freezie()
										buy_pizza()
					else:
						customer_globals.sales_lost = customer_globals.sales_lost + 1
						customer_globals.price_loss = customer_globals.price_loss + 1
				else:
					customer_globals.sales_lost = customer_globals.sales_lost + 1
					customer_globals.waited_loss = customer_globals.waited_loss + 1
			else: 
				customer_globals.sales_lost = customer_globals.sales_lost + 1
				customer_globals.storefront_loss = customer_globals.storefront_loss + 1
	if (windrow.windrow_genre_three_key == true):
		for x in range(0, customer_math.player_prediction_three + 1):
			storefront_check.storefront_check()
			if (storefront_check.storefront_choice == true):
				quick_wait_check()
				customer_choice = randomness[randi() % randomness.size()]
				if (customer_choice == true):
					rand_arcade_price = [windrow_arcade_one_price]
					if (windrow_station_two_selection == 1):
						rand_arcade_price.append(windrow_arcade_two_price)
					if (windrow_station_three_selection == 1):
						rand_arcade_price.append(windrow_arcade_three_price)
					if (windrow_station_four_selection == 1):
						rand_arcade_price.append(windrow_arcade_four_price)
					if (windrow_station_five_selection == 1):
						rand_arcade_price.append(windrow_arcade_five_price)
					if (windrow_station_six_selection == 1):
						rand_arcade_price.append(windrow_arcade_six_price)
					price_choice = rand_arcade_price[randi() % rand_arcade_price.size()]
					if (price_choice < windrow_arcade_range_high):
						money.windrow_balance = money.windrow_balance + price_choice
						money.income = money.income + price_choice
						customer_globals.sales_made = customer_globals.sales_made + 1
						var concession_rand = [true, true, false]
						concession_choice = concession_rand[randi() % concession_rand.size()]
						if (concession_choice == true):
							var concession_options = ["freezie", "pizza", "both"]
							concessions_desire = concession_options[randi() % concession_options.size()]
							if (concessions_desire == "freezie"):
								if (supplies.windrow_freezie_count > 0):
									var check_freezie = supplies.freezie_range_high - supplies.windrow_freezie_price #check if the freezie price is too high
									if (check_freezie <= 0):
										concessions_price_check = false
									else:
										concessions_price_check = true
									if (concessions_price_check == true): #if the price is not too high
										buy_freezie()
							if (concessions_desire == "pizza"):
								if (supplies.windrow_pizza_count > 0):
									var check_pizza = supplies.pizza_range_high - supplies.windrow_pizza_price #check if the freezie price is too high
									if (check_pizza <= 0):
										concessions_price_check = false
									else:
										concessions_price_check = true
									if (concessions_price_check == true): #if the price is not too high
										buy_pizza()
							if (concessions_desire == "both"):
								if ((supplies.windrow_freezie_count > 0) and (supplies.windrow_pizza_count > 0)):
									var check_freezie = supplies.freezie_range_high - supplies.windrow_freezie_price #check if the freezie price is too high
									var check_pizza = supplies.pizza_range_high - supplies.windrow_pizza_price #check if the pizza price is too high
									if ((check_freezie <= 0) or (check_pizza <= 0)):
										concessions_price_check = false
									else:
										concessions_price_check = true
									if (concessions_price_check == true): #if the price is not too high
										buy_freezie()
										buy_pizza()
					else:
						customer_globals.sales_lost = customer_globals.sales_lost + 1
						customer_globals.price_loss = customer_globals.price_loss + 1
				else:
					customer_globals.sales_lost = customer_globals.sales_lost + 1
					customer_globals.waited_loss = customer_globals.waited_loss + 1
			else: 
				customer_globals.sales_lost = customer_globals.sales_lost + 1
				customer_globals.storefront_loss = customer_globals.storefront_loss + 1
				
				
func banlon_day():
	customer_math.customer_math()
	for x in range(0, customer_math.player_prediction_one + 1):
		storefront_check.storefront_check()
		if (storefront_check.storefront_choice == true):
			quick_wait_check()
			customer_choice = randomness[randi() % randomness.size()]
			if (customer_choice == true):
				rand_arcade_price = [banlon_arcade_one_price]
				if (banlon_station_two_selection == 1):
					rand_arcade_price.append(banlon_arcade_two_price)
				if (banlon_station_three_selection == 1):
					rand_arcade_price.append(banlon_arcade_three_price)
				if (banlon_station_four_selection == 1):
					rand_arcade_price.append(banlon_arcade_four_price)
				if (banlon_station_five_selection == 1):
					rand_arcade_price.append(banlon_arcade_five_price)
				if (banlon_station_six_selection == 1):
					rand_arcade_price.append(banlon_arcade_six_price)
				price_choice = rand_arcade_price[randi() % rand_arcade_price.size()]
				if (price_choice < banlon_arcade_range_high):
					money.banlon_balance = money.banlon_balance + price_choice
					money.income = money.income + price_choice
					customer_globals.sales_made = customer_globals.sales_made + 1
					var concession_rand = [true, true, false]
					concession_choice = concession_rand[randi() % concession_rand.size()]
					if (concession_choice == true):
						var concession_options = ["energy", "nachos", "both"]
						concessions_desire = concession_options[randi() % concession_options.size()]
						if (concessions_desire == "energy"):
							if (supplies.banlon_energy_count > 0):
								var check_energy = supplies.energy_range_high - supplies.banlon_energy_price #check if the energy price is too high
								if (check_energy <= 0):
									concessions_price_check = false
								else:
									concessions_price_check = true
								if (concessions_price_check == true): #if the price is not too high
									buy_energy()
						if (concessions_desire == "nachos"):
							if (supplies.banlon_nachos_count > 0):
								var check_nachos = supplies.nachos_range_high - supplies.banlon_nachos_price #check if the energy price is too high
								if (check_nachos <= 0):
									concessions_price_check = false
								else:
									concessions_price_check = true
								if (concessions_price_check == true): #if the price is not too high
									buy_nachos()
						if (concessions_desire == "both"):
							if ((supplies.banlon_energy_count > 0) and (supplies.banlon_nachos_count > 0)):
								var check_energy = supplies.energy_range_high - supplies.banlon_energy_price #check if the energy price is too high
								var check_nachos = supplies.nachos_range_high - supplies.banlon_nachos_price #check if the nachos price is too high
								if ((check_energy <= 0) or (check_nachos <= 0)):
									concessions_price_check = false
								else:
									concessions_price_check = true
								if (concessions_price_check == true): #if the price is not too high
									buy_energy()
									buy_nachos()
				else:
					customer_globals.sales_lost = customer_globals.sales_lost + 1
					customer_globals.price_loss = customer_globals.price_loss + 1
			else:
				customer_globals.sales_lost = customer_globals.sales_lost + 1
				customer_globals.waited_loss = customer_globals.waited_loss + 1
		else: 
			customer_globals.sales_lost = customer_globals.sales_lost + 1
			customer_globals.storefront_loss = customer_globals.storefront_loss + 1
	if (banlon.banlon_genre_two_key == true):
		for x in range(0, customer_math.player_prediction_two + 1):
			storefront_check.storefront_check()
			if (storefront_check.storefront_choice == true):
				quick_wait_check()
				customer_choice = randomness[randi() % randomness.size()]
				if (customer_choice == true):
					rand_arcade_price = [banlon_arcade_one_price]
					if (banlon_station_two_selection == 1):
						rand_arcade_price.append(banlon_arcade_two_price)
					if (banlon_station_three_selection == 1):
						rand_arcade_price.append(banlon_arcade_three_price)
					if (banlon_station_four_selection == 1):
						rand_arcade_price.append(banlon_arcade_four_price)
					if (banlon_station_five_selection == 1):
						rand_arcade_price.append(banlon_arcade_five_price)
					if (banlon_station_six_selection == 1):
						rand_arcade_price.append(banlon_arcade_six_price)
					price_choice = rand_arcade_price[randi() % rand_arcade_price.size()]
					if (price_choice < banlon_arcade_range_high):
						money.banlon_balance = money.banlon_balance + price_choice
						money.income = money.income + price_choice
						customer_globals.sales_made = customer_globals.sales_made + 1
						var concession_rand = [true, true, false]
						concession_choice = concession_rand[randi() % concession_rand.size()]
						if (concession_choice == true):
							var concession_options = ["energy", "nachos", "both"]
							concessions_desire = concession_options[randi() % concession_options.size()]
							if (concessions_desire == "energy"):
								if (supplies.banlon_energy_count > 0):
									var check_energy = supplies.energy_range_high - supplies.banlon_energy_price #check if the energy price is too high
									if (check_energy <= 0):
										concessions_price_check = false
									else:
										concessions_price_check = true
									if (concessions_price_check == true): #if the price is not too high
										buy_energy()
							if (concessions_desire == "nachos"):
								if (supplies.banlon_nachos_count > 0):
									var check_nachos = supplies.nachos_range_high - supplies.banlon_nachos_price #check if the energy price is too high
									if (check_nachos <= 0):
										concessions_price_check = false
									else:
										concessions_price_check = true
									if (concessions_price_check == true): #if the price is not too high
										buy_nachos()
							if (concessions_desire == "both"):
								if ((supplies.banlon_energy_count > 0) and (supplies.banlon_nachos_count > 0)):
									var check_energy = supplies.energy_range_high - supplies.banlon_energy_price #check if the energy price is too high
									var check_nachos = supplies.nachos_range_high - supplies.banlon_nachos_price #check if the nachos price is too high
									if ((check_energy <= 0) or (check_nachos <= 0)):
										concessions_price_check = false
									else:
										concessions_price_check = true
									if (concessions_price_check == true): #if the price is not too high
										buy_energy()
										buy_nachos()
					else:
						customer_globals.sales_lost = customer_globals.sales_lost + 1
						customer_globals.price_loss = customer_globals.price_loss + 1
				else:
					customer_globals.sales_lost = customer_globals.sales_lost + 1
					customer_globals.waited_loss = customer_globals.waited_loss + 1
			else: 
				customer_globals.sales_lost = customer_globals.sales_lost + 1
				customer_globals.storefront_loss = customer_globals.storefront_loss + 1
	if (banlon.banlon_genre_three_key == true):
		for x in range(0, customer_math.player_prediction_three + 1):
			storefront_check.storefront_check()
			if (storefront_check.storefront_choice == true):
				quick_wait_check()
				customer_choice = randomness[randi() % randomness.size()]
				if (customer_choice == true):
					rand_arcade_price = [banlon_arcade_one_price]
					if (banlon_station_two_selection == 1):
						rand_arcade_price.append(banlon_arcade_two_price)
					if (banlon_station_three_selection == 1):
						rand_arcade_price.append(banlon_arcade_three_price)
					if (banlon_station_four_selection == 1):
						rand_arcade_price.append(banlon_arcade_four_price)
					if (banlon_station_five_selection == 1):
						rand_arcade_price.append(banlon_arcade_five_price)
					if (banlon_station_six_selection == 1):
						rand_arcade_price.append(banlon_arcade_six_price)
					price_choice = rand_arcade_price[randi() % rand_arcade_price.size()]
					if (price_choice < banlon_arcade_range_high):
						money.banlon_balance = money.banlon_balance + price_choice
						money.income = money.income + price_choice
						customer_globals.sales_made = customer_globals.sales_made + 1
						var concession_rand = [true, true, false]
						concession_choice = concession_rand[randi() % concession_rand.size()]
						if (concession_choice == true):
							var concession_options = ["energy", "nachos", "both"]
							concessions_desire = concession_options[randi() % concession_options.size()]
							if (concessions_desire == "energy"):
								if (supplies.banlon_energy_count > 0):
									var check_energy = supplies.energy_range_high - supplies.banlon_energy_price #check if the energy price is too high
									if (check_energy <= 0):
										concessions_price_check = false
									else:
										concessions_price_check = true
									if (concessions_price_check == true): #if the price is not too high
										buy_energy()
							if (concessions_desire == "nachos"):
								if (supplies.banlon_nachos_count > 0):
									var check_nachos = supplies.nachos_range_high - supplies.banlon_nachos_price #check if the energy price is too high
									if (check_nachos <= 0):
										concessions_price_check = false
									else:
										concessions_price_check = true
									if (concessions_price_check == true): #if the price is not too high
										buy_nachos()
							if (concessions_desire == "both"):
								if ((supplies.banlon_energy_count > 0) and (supplies.banlon_nachos_count > 0)):
									var check_energy = supplies.energy_range_high - supplies.banlon_energy_price #check if the energy price is too high
									var check_nachos = supplies.nachos_range_high - supplies.banlon_nachos_price #check if the nachos price is too high
									if ((check_energy <= 0) or (check_nachos <= 0)):
										concessions_price_check = false
									else:
										concessions_price_check = true
									if (concessions_price_check == true): #if the price is not too high
										buy_energy()
										buy_nachos()
					else:
						customer_globals.sales_lost = customer_globals.sales_lost + 1
						customer_globals.price_loss = customer_globals.price_loss + 1
				else:
					customer_globals.sales_lost = customer_globals.sales_lost + 1
					customer_globals.waited_loss = customer_globals.waited_loss + 1
			else: 
				customer_globals.sales_lost = customer_globals.sales_lost + 1
				customer_globals.storefront_loss = customer_globals.storefront_loss + 1

func slatten_day():
	customer_math.customer_math()
	for x in range(0, customer_math.player_prediction_one + 1):
		storefront_check.storefront_check()
		if (storefront_check.storefront_choice == true):
			quick_wait_check()
			customer_choice = randomness[randi() % randomness.size()]
			if (customer_choice == true):
				rand_arcade_price = [slatten_arcade_one_price]
				if (slatten_station_two_selection == 1):
					rand_arcade_price.append(slatten_arcade_two_price)
				if (slatten_station_three_selection == 1):
					rand_arcade_price.append(slatten_arcade_three_price)
				if (slatten_station_four_selection == 1):
					rand_arcade_price.append(slatten_arcade_four_price)
				if (slatten_station_five_selection == 1):
					rand_arcade_price.append(slatten_arcade_five_price)
				if (slatten_station_six_selection == 1):
					rand_arcade_price.append(slatten_arcade_six_price)
				price_choice = rand_arcade_price[randi() % rand_arcade_price.size()]
				if (price_choice < slatten_arcade_range_high):
					money.slatten_balance = money.slatten_balance + price_choice
					money.income = money.income + price_choice
					customer_globals.sales_made = customer_globals.sales_made + 1
					var concession_rand = [true, true, false]
					concession_choice = concession_rand[randi() % concession_rand.size()]
					if (concession_choice == true):
						var concession_options = ["freezie", "popcorn", "both"]
						concessions_desire = concession_options[randi() % concession_options.size()]
						if (concessions_desire == "freezie"):
							if (supplies.slatten_freezie_count > 0):
								var check_freezie = supplies.freezie_range_high - supplies.slatten_freezie_price #check if the freezie price is too high
								if (check_freezie <= 0):
									concessions_price_check = false
								else:
									concessions_price_check = true
								if (concessions_price_check == true): #if the price is not too high
									buy_freezie()
						if (concessions_desire == "popcorn"):
							if (supplies.slatten_popcorn_count > 0):
								var check_popcorn = supplies.popcorn_range_high - supplies.slatten_popcorn_price #check if the freezie price is too high
								if (check_popcorn <= 0):
									concessions_price_check = false
								else:
									concessions_price_check = true
								if (concessions_price_check == true): #if the price is not too high
									buy_popcorn()
						if (concessions_desire == "both"):
							if ((supplies.slatten_freezie_count > 0) and (supplies.slatten_popcorn_count > 0)):
								var check_freezie = supplies.freezie_range_high - supplies.slatten_freezie_price #check if the freezie price is too high
								var check_popcorn = supplies.popcorn_range_high - supplies.slatten_popcorn_price #check if the popcorn price is too high
								if ((check_freezie <= 0) or (check_popcorn <= 0)):
									concessions_price_check = false
								else:
									concessions_price_check = true
								if (concessions_price_check == true): #if the price is not too high
									buy_freezie()
									buy_popcorn()
				else:
					customer_globals.sales_lost = customer_globals.sales_lost + 1
					customer_globals.price_loss = customer_globals.price_loss + 1
			else:
				customer_globals.sales_lost = customer_globals.sales_lost + 1
				customer_globals.waited_loss = customer_globals.waited_loss + 1
		else: 
			customer_globals.sales_lost = customer_globals.sales_lost + 1
			customer_globals.storefront_loss = customer_globals.storefront_loss + 1
	if (slatten.slatten_genre_two_key == true):
		for x in range(0, customer_math.player_prediction_two + 1):
			storefront_check.storefront_check()
			if (storefront_check.storefront_choice == true):
				quick_wait_check()
				customer_choice = randomness[randi() % randomness.size()]
				if (customer_choice == true):
					rand_arcade_price = [slatten_arcade_one_price]
					if (slatten_station_two_selection == 1):
						rand_arcade_price.append(slatten_arcade_two_price)
					if (slatten_station_three_selection == 1):
						rand_arcade_price.append(slatten_arcade_three_price)
					if (slatten_station_four_selection == 1):
						rand_arcade_price.append(slatten_arcade_four_price)
					if (slatten_station_five_selection == 1):
						rand_arcade_price.append(slatten_arcade_five_price)
					if (slatten_station_six_selection == 1):
						rand_arcade_price.append(slatten_arcade_six_price)
					price_choice = rand_arcade_price[randi() % rand_arcade_price.size()]
					if (price_choice < slatten_arcade_range_high):
						money.slatten_balance = money.slatten_balance + price_choice
						money.income = money.income + price_choice
						customer_globals.sales_made = customer_globals.sales_made + 1
						var concession_rand = [true, true, false]
						concession_choice = concession_rand[randi() % concession_rand.size()]
						if (concession_choice == true):
							var concession_options = ["freezie", "popcorn", "both"]
							concessions_desire = concession_options[randi() % concession_options.size()]
							if (concessions_desire == "freezie"):
								if (supplies.slatten_freezie_count > 0):
									var check_freezie = supplies.freezie_range_high - supplies.slatten_freezie_price #check if the freezie price is too high
									if (check_freezie <= 0):
										concessions_price_check = false
									else:
										concessions_price_check = true
									if (concessions_price_check == true): #if the price is not too high
										buy_freezie()
							if (concessions_desire == "popcorn"):
								if (supplies.slatten_popcorn_count > 0):
									var check_popcorn = supplies.popcorn_range_high - supplies.slatten_popcorn_price #check if the freezie price is too high
									if (check_popcorn <= 0):
										concessions_price_check = false
									else:
										concessions_price_check = true
									if (concessions_price_check == true): #if the price is not too high
										buy_popcorn()
							if (concessions_desire == "both"):
								if ((supplies.slatten_freezie_count > 0) and (supplies.slatten_popcorn_count > 0)):
									var check_freezie = supplies.freezie_range_high - supplies.slatten_freezie_price #check if the freezie price is too high
									var check_popcorn = supplies.popcorn_range_high - supplies.slatten_popcorn_price #check if the popcorn price is too high
									if ((check_freezie <= 0) or (check_popcorn <= 0)):
										concessions_price_check = false
									else:
										concessions_price_check = true
									if (concessions_price_check == true): #if the price is not too high
										buy_freezie()
										buy_popcorn()
					else:
						customer_globals.sales_lost = customer_globals.sales_lost + 1
						customer_globals.price_loss = customer_globals.price_loss + 1
				else:
					customer_globals.sales_lost = customer_globals.sales_lost + 1
					customer_globals.waited_loss = customer_globals.waited_loss + 1
			else: 
				customer_globals.sales_lost = customer_globals.sales_lost + 1
				customer_globals.storefront_loss = customer_globals.storefront_loss + 1
	if (slatten.slatten_genre_three_key == true):
		for x in range(0, customer_math.player_prediction_three + 1):
			storefront_check.storefront_check()
			if (storefront_check.storefront_choice == true):
				quick_wait_check()
				customer_choice = randomness[randi() % randomness.size()]
				if (customer_choice == true):
					rand_arcade_price = [slatten_arcade_one_price]
					if (slatten_station_two_selection == 1):
						rand_arcade_price.append(slatten_arcade_two_price)
					if (slatten_station_three_selection == 1):
						rand_arcade_price.append(slatten_arcade_three_price)
					if (slatten_station_four_selection == 1):
						rand_arcade_price.append(slatten_arcade_four_price)
					if (slatten_station_five_selection == 1):
						rand_arcade_price.append(slatten_arcade_five_price)
					if (slatten_station_six_selection == 1):
						rand_arcade_price.append(slatten_arcade_six_price)
					price_choice = rand_arcade_price[randi() % rand_arcade_price.size()]
					if (price_choice < slatten_arcade_range_high):
						money.slatten_balance = money.slatten_balance + price_choice
						money.income = money.income + price_choice
						customer_globals.sales_made = customer_globals.sales_made + 1
						var concession_rand = [true, true, false]
						concession_choice = concession_rand[randi() % concession_rand.size()]
						if (concession_choice == true):
							var concession_options = ["freezie", "popcorn", "both"]
							concessions_desire = concession_options[randi() % concession_options.size()]
							if (concessions_desire == "freezie"):
								if (supplies.slatten_freezie_count > 0):
									var check_freezie = supplies.freezie_range_high - supplies.slatten_freezie_price #check if the freezie price is too high
									if (check_freezie <= 0):
										concessions_price_check = false
									else:
										concessions_price_check = true
									if (concessions_price_check == true): #if the price is not too high
										buy_freezie()
							if (concessions_desire == "popcorn"):
								if (supplies.slatten_popcorn_count > 0):
									var check_popcorn = supplies.popcorn_range_high - supplies.slatten_popcorn_price #check if the freezie price is too high
									if (check_popcorn <= 0):
										concessions_price_check = false
									else:
										concessions_price_check = true
									if (concessions_price_check == true): #if the price is not too high
										buy_popcorn()
							if (concessions_desire == "both"):
								if ((supplies.slatten_freezie_count > 0) and (supplies.slatten_popcorn_count > 0)):
									var check_freezie = supplies.freezie_range_high - supplies.slatten_freezie_price #check if the freezie price is too high
									var check_popcorn = supplies.popcorn_range_high - supplies.slatten_popcorn_price #check if the popcorn price is too high
									if ((check_freezie <= 0) or (check_popcorn <= 0)):
										concessions_price_check = false
									else:
										concessions_price_check = true
									if (concessions_price_check == true): #if the price is not too high
										buy_freezie()
										buy_popcorn()
					else:
						customer_globals.sales_lost = customer_globals.sales_lost + 1
						customer_globals.price_loss = customer_globals.price_loss + 1
				else:
					customer_globals.sales_lost = customer_globals.sales_lost + 1
					customer_globals.waited_loss = customer_globals.waited_loss + 1
			else: 
				customer_globals.sales_lost = customer_globals.sales_lost + 1
				customer_globals.storefront_loss = customer_globals.storefront_loss + 1
	
	
	
func quick_wait_check():
	if (towns.town_select == "hollyhock"):
		if (hollyhock.hollyhock_entertainment_best_key == true):
			randomness = [true, true, true, true, true]
		if (hollyhock.hollyhock_entertainment_best_key == false) and (hollyhock.hollyhock_entertainment_great_key == true):
			randomness = [true, true, true, true, false]
		if (hollyhock.hollyhock_entertainment_great_key == false) and (hollyhock.hollyhock_entertainment_good_key == true):
			randomness = [true, true, true, false]
		if (hollyhock.hollyhock_entertainment_good_key == false) and (hollyhock.hollyhock_entertainment_decent_key == true):
			randomness = [true, true, true, false]
		if (hollyhock.hollyhock_entertainment_decent_key == false) and (hollyhock.hollyhock_entertainment_worst_key == true):
			randomness = [true, true, false]
	if (towns.town_select == "fiyork"):
		if (fiyork.fiyork_entertainment_best_key == true):
			randomness = [true, true, true, true, true]
		if (fiyork.fiyork_entertainment_best_key == false) and (fiyork.fiyork_entertainment_great_key == true):
			randomness = [true, true, true, true, false]
		if (fiyork.fiyork_entertainment_great_key == false) and (fiyork.fiyork_entertainment_good_key == true):
			randomness = [true, true, true, false]
		if (fiyork.fiyork_entertainment_good_key == false) and (fiyork.fiyork_entertainment_decent_key == true):
			randomness = [true, true, true, false]
		if (fiyork.fiyork_entertainment_decent_key == false) and (fiyork.fiyork_entertainment_worst_key == true):
			randomness = [true, true, false]
	if (towns.town_select == "plansey"):
		if (plansey.plansey_entertainment_best_key == true):
			randomness = [true, true, true, true, true]
		if (plansey.plansey_entertainment_best_key == false) and (plansey.plansey_entertainment_great_key == true):
			randomness = [true, true, true, true, false]
		if (plansey.plansey_entertainment_great_key == false) and (plansey.plansey_entertainment_good_key == true):
			randomness = [true, true, true, false]
		if (plansey.plansey_entertainment_good_key == false) and (plansey.plansey_entertainment_decent_key == true):
			randomness = [true, true, true, false]
		if (plansey.plansey_entertainment_decent_key == false) and (plansey.plansey_entertainment_worst_key == true):
			randomness = [true, true, false]
	if (towns.town_select == "untilly"):
		if (untilly.untilly_entertainment_best_key == true):
			randomness = [true, true, true, true, true]
		if (untilly.untilly_entertainment_best_key == false) and (untilly.untilly_entertainment_great_key == true):
			randomness = [true, true, true, true, false]
		if (untilly.untilly_entertainment_great_key == false) and (untilly.untilly_entertainment_good_key == true):
			randomness = [true, true, true, false]
		if (untilly.untilly_entertainment_good_key == false) and (untilly.untilly_entertainment_decent_key == true):
			randomness = [true, true, true, false]
		if (untilly.untilly_entertainment_decent_key == false) and (untilly.untilly_entertainment_worst_key == true):
			randomness = [true, true, false]
	if (towns.town_select == "windrow"):
		if (windrow.windrow_entertainment_best_key == true):
			randomness = [true, true, true, true, true]
		if (windrow.windrow_entertainment_best_key == false) and (windrow.windrow_entertainment_great_key == true):
			randomness = [true, true, true, true, false]
		if (windrow.windrow_entertainment_great_key == false) and (windrow.windrow_entertainment_good_key == true):
			randomness = [true, true, true, false]
		if (windrow.windrow_entertainment_good_key == false) and (windrow.windrow_entertainment_decent_key == true):
			randomness = [true, true, true, false]
		if (windrow.windrow_entertainment_decent_key == false) and (windrow.windrow_entertainment_worst_key == true):
			randomness = [true, true, false]
	if (towns.town_select == "banlon"):
		if (banlon.banlon_entertainment_best_key == true):
			randomness = [true, true, true, true, true]
		if (banlon.banlon_entertainment_best_key == false) and (banlon.banlon_entertainment_great_key == true):
			randomness = [true, true, true, true, false]
		if (banlon.banlon_entertainment_great_key == false) and (banlon.banlon_entertainment_good_key == true):
			randomness = [true, true, true, false]
		if (banlon.banlon_entertainment_good_key == false) and (banlon.banlon_entertainment_decent_key == true):
			randomness = [true, true, true, false]
		if (banlon.banlon_entertainment_decent_key == false) and (banlon.banlon_entertainment_worst_key == true):
			randomness = [true, true, false]
	if (towns.town_select == "slatten"):
		if (slatten.slatten_entertainment_best_key == true):
			randomness = [true, true, true, true, true]
		if (slatten.slatten_entertainment_best_key == false) and (slatten.slatten_entertainment_great_key == true):
			randomness = [true, true, true, true, false]
		if (slatten.slatten_entertainment_great_key == false) and (slatten.slatten_entertainment_good_key == true):
			randomness = [true, true, true, false]
		if (slatten.slatten_entertainment_good_key == false) and (slatten.slatten_entertainment_decent_key == true):
			randomness = [true, true, true, false]
		if (slatten.slatten_entertainment_decent_key == false) and (slatten.slatten_entertainment_worst_key == true):
			randomness = [true, true, false]
		
func buy_soda():
	if (towns.town_select == "hollyhock"):
		var charge_price = supplies.hollyhock_soda_price
		money.hollyhock_balance = money.hollyhock_balance + charge_price
		supplies.hollyhock_soda_count = supplies.hollyhock_soda_count - 1
		money.income = money.income + charge_price
	if (towns.town_select == "untilly"):
		var charge_price = supplies.untilly_soda_price
		money.untilly_balance = money.untilly_balance + charge_price
		supplies.untilly_soda_count = supplies.untilly_soda_count - 1
		money.income = money.income + charge_price
		
func buy_freezie():
	if (towns.town_select == "fiyork"):
		var charge_price = supplies.fiyork_freezie_price
		money.fiyork_balance = money.fiyork_balance + charge_price
		supplies.fiyork_freezie_count = supplies.fiyork_freezie_count - 1
		money.income = money.income + charge_price
	if (towns.town_select == "windrow"):
		var charge_price = supplies.windrow_freezie_price
		money.windrow_balance = money.windrow_balance + charge_price
		supplies.windrow_freezie_count = supplies.windrow_freezie_count - 1
		money.income = money.income + charge_price
	if (towns.town_select == "slatten"):
		var charge_price = supplies.slatten_freezie_price
		money.slatten_balance = money.slatten_balance + charge_price
		supplies.slatten_freezie_count = supplies.slatten_freezie_count - 1
		money.income = money.income + charge_price
		
func buy_energy():
	if (towns.town_select == "plansey"):
		var charge_price = supplies.plansey_energy_price
		money.plansey_balance = money.plansey_balance + charge_price
		supplies.plansey_energy_count = supplies.plansey_energy_count - 1
		money.income = money.income + charge_price
	if (towns.town_select == "banlon"):
		var charge_price = supplies.banlon_energy_price
		money.banlon_balance = money.banlon_balance + charge_price
		supplies.banlon_energy_count = supplies.banlon_energy_count - 1
		money.income = money.income + charge_price
		
	
func buy_popcorn():
	if (towns.town_select == "hollyhock"):
		var charge_price = supplies.hollyhock_popcorn_price
		money.hollyhock_balance = money.hollyhock_balance + charge_price
		supplies.hollyhock_popcorn_count = supplies.hollyhock_popcorn_count - 1
		money.income = money.income + charge_price
	if (towns.town_select == "untilly"):
		var charge_price = supplies.untilly_popcorn_price
		money.untilly_balance = money.untilly_balance + charge_price
		supplies.untilly_popcorn_count = supplies.untilly_popcorn_count - 1
		money.income = money.income + charge_price
	if (towns.town_select == "slatten"):
		var charge_price = supplies.slatten_popcorn_price
		money.slatten_balance = money.slatten_balance + charge_price
		supplies.slatten_popcorn_count = supplies.slatten_popcorn_count - 1
		money.income = money.income + charge_price
		
		
func buy_pizza():
	if (towns.town_select == "fiyork"):
		var charge_price = supplies.fiyork_pizza_price
		money.fiyork_balance = money.fiyork_balance + charge_price
		supplies.fiyork_pizza_count = supplies.fiyork_pizza_count - 1
		money.income = money.income + charge_price
	if (towns.town_select == "windrow"):
		var charge_price = supplies.windrow_pizza_price
		money.windrow_balance = money.windrow_balance + charge_price
		supplies.windrow_pizza_count = supplies.windrow_pizza_count - 1
		money.income = money.income + charge_price
		
func buy_nachos():
	if (towns.town_select == "plansey"):
		var charge_price = supplies.plansey_nachos_price
		money.plansey_balance = money.plansey_balance + charge_price
		supplies.plansey_nachos_count = supplies.plansey_nachos_count - 1
		money.income = money.income + charge_price
	if (towns.town_select == "banlon"):
		var charge_price = supplies.banlon_nachos_price
		money.banlon_balance = money.banlon_balance + charge_price
		supplies.banlon_nachos_count = supplies.banlon_nachos_count - 1
		money.income = money.income + charge_price
