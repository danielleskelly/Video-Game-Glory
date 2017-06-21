extends Node

var charge_price
var price_check

func _ready():
	# Called every time the node is added to the scene.
	# Initialization here
	pass
	
func concessions_purchase():
	if (global.town_select == "hollyhock"):
		if ((supplies.hollyhock_soda_count > 0) and (supplies.hollyhock_popcorn_count > 0)):
			var check_soda = supplies.soda_range_high - global.hollyhock_soda_price #check if the soda price is too high
			var check_popcorn = supplies.popcorn_range_high - global.hollyhock_popcorn_price #check if the popcorn price is too high
			if ((check_soda <= 0) or (check_popcorn <= 0)):
				price_check = false
			else:
				price_check = true
			if (price_check == true): #if the price is not too high
				charge_price = global.hollyhock_soda_price + global.hollyhock_popcorn_price
				global.hollyhock_balance = global.hollyhock_balance + charge_price
				supplies.hollyhock_soda_count = supplies.hollyhock_soda_count - 1
				supplies.hollyhock_popcorn_count = supplies.hollyhock_popcorn_count - 1
				global.soda_yesterday_used = global.soda_yesterday_used + 1
				global.popcorn_yesterday_used = global.popcorn_yesterday_used + 1
				global.income = global.income + charge_price
