extends Node

var check
var price_check

var type_pass

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

func _ready():
	set_process(true)
	pass
	
func _process(delta):
	pass

func check_one():
	set_genre.set_genre_type()
	if (towns.town_select == "hollyhock"):
		check = hollyhock_arcade_range_high - hollyhock_arcade_one_price #check if the arcade price is too high
		if (set_genre.genre_type_one == "meta"):
			type_pass = customer_math.meta_prediction
		if (set_genre.genre_type_one == "classic"):
			type_pass = customer_math.classic_prediction
		if (set_genre.genre_type_two == "platformer"):
			type_pass = customer_math.platformer_prediction
		if ((check <= 0) and (type_pass < .75)):
			price_check = false
		else:
			price_check = true
	if (towns.town_select == "fiyork"):
		check = fiyork_arcade_range_high - fiyork_arcade_one_price #check if the arcade price is too high
		if (set_genre.genre_type_one == "shooter"):
			type_pass = customer_math.shooter_prediction
		if (set_genre.genre_type_one == "adventure"):
			type_pass = customer_math.adventure_prediction
		if (set_genre.genre_type_two == "casual"):
			type_pass = customer_math.casual_prediction
		if ((check <= 0) and (type_pass < .75)):
			price_check = false
		else:
			price_check = true

func check_two():
	set_genre.set_genre_type()
	if (towns.town_select == "hollyhock"):
		check = hollyhock_arcade_range_high - hollyhock_arcade_two_price #check if the arcade price is too high
		if (set_genre.genre_type_two == "meta"):
			type_pass = customer_math.meta_prediction
		if (set_genre.genre_type_two == "classic"):
			type_pass = customer_math.classic_prediction
		if (set_genre.genre_type_two == "platformer"):
			type_pass = customer_math.platformer_prediction
		if ((check <= 0) and (type_pass < .75)):
			price_check = false
		else:
			price_check = true
	if (towns.town_select == "fiyork"):
		check = fiyork_arcade_range_high - fiyork_arcade_two_price #check if the arcade price is too high
		if (set_genre.genre_type_one == "shooter"):
			type_pass = customer_math.shooter_prediction
		if (set_genre.genre_type_one == "adventure"):
			type_pass = customer_math.adventure_prediction
		if (set_genre.genre_type_two == "casual"):
			type_pass = customer_math.casual_prediction
		if ((check <= 0) and (type_pass < .75)):
			price_check = false
		else:
			price_check = true
			
func check_three():
	set_genre.set_genre_type()
	if (towns.town_select == "hollyhock"):
		check = hollyhock_arcade_range_high - hollyhock_arcade_three_price #check if the arcade price is too high
		if (set_genre.genre_type_three == "meta"):
			type_pass = customer_math.meta_prediction
		if (set_genre.genre_type_three == "classic"):
			type_pass = customer_math.classic_prediction
		if (set_genre.genre_type_three == "platformer"):
			type_pass = customer_math.platformer_prediction
		if ((check <= 0) and (type_pass < .75)):
			price_check = false
		else:
			price_check = true
	if (towns.town_select == "fiyork"):
		check = fiyork_arcade_range_high - fiyork_arcade_three_price #check if the arcade price is too high
		if (set_genre.genre_type_one == "shooter"):
			type_pass = customer_math.shooter_prediction
		if (set_genre.genre_type_one == "adventure"):
			type_pass = customer_math.adventure_prediction
		if (set_genre.genre_type_two == "casual"):
			type_pass = customer_math.casual_prediction
		if ((check <= 0) and (type_pass < .75)):
			price_check = false
		else:
			price_check = true


func check_four():
	set_genre.set_genre_type()
	if (towns.town_select == "hollyhock"):
		check = hollyhock_arcade_range_high - hollyhock_arcade_four_price #check if the arcade price is too high
		if (set_genre.genre_type_four == "meta"):
			type_pass = customer_math.meta_prediction
		if (set_genre.genre_type_four == "classic"):
			type_pass = customer_math.classic_prediction
		if (set_genre.genre_type_four == "platformer"):
			type_pass = customer_math.platformer_prediction
		if ((check <= 0) and (type_pass < .75)):
			price_check = false
		else:
			price_check = true
	if (towns.town_select == "fiyork"):
		check = fiyork_arcade_range_high - fiyork_arcade_four_price #check if the arcade price is too high
		if (set_genre.genre_type_one == "shooter"):
			type_pass = customer_math.shooter_prediction
		if (set_genre.genre_type_one == "adventure"):
			type_pass = customer_math.adventure_prediction
		if (set_genre.genre_type_two == "casual"):
			type_pass = customer_math.casual_prediction
		if ((check <= 0) and (type_pass < .75)):
			price_check = false
		else:
			price_check = true


func check_five():
	set_genre.set_genre_type()
	if (towns.town_select == "hollyhock"):
		check = hollyhock_arcade_range_high - hollyhock_arcade_five_price #check if the arcade price is too high
		if (set_genre.genre_type_five == "meta"):
			type_pass = customer_math.meta_prediction
		if (set_genre.genre_type_five == "classic"):
			type_pass = customer_math.classic_prediction
		if (set_genre.genre_type_five == "platformer"):
			type_pass = customer_math.platformer_prediction
		if ((check <= 0) and (type_pass < .75)):
			price_check = false
		else:
			price_check = true
	if (towns.town_select == "fiyork"):
		check = fiyork_arcade_range_high - fiyork_arcade_five_price #check if the arcade price is too high
		if (set_genre.genre_type_one == "shooter"):
			type_pass = customer_math.shooter_prediction
		if (set_genre.genre_type_one == "adventure"):
			type_pass = customer_math.adventure_prediction
		if (set_genre.genre_type_two == "casual"):
			type_pass = customer_math.casual_prediction
		if ((check <= 0) and (type_pass < .75)):
			price_check = false
		else:
			price_check = true


func check_six():
	set_genre.set_genre_type()
	if (towns.town_select == "hollyhock"):
		check = hollyhock_arcade_range_high - hollyhock_arcade_six_price #check if the arcade price is too high
		if (set_genre.genre_type_six == "meta"):
			type_pass = customer_math.meta_prediction
		if (set_genre.genre_type_six == "classic"):
			type_pass = customer_math.classic_prediction
		if (set_genre.genre_type_six == "platformer"):
			type_pass = customer_math.platformer_prediction
		if ((check <= 0) and (type_pass < .75)):
			price_check = false
		else:
			price_check = true
	if (towns.town_select == "fiyork"):
		check = fiyork_arcade_range_high - fiyork_arcade_six_price #check if the arcade price is too high
		if (set_genre.genre_type_one == "shooter"):
			type_pass = customer_math.shooter_prediction
		if (set_genre.genre_type_one == "adventure"):
			type_pass = customer_math.adventure_prediction
		if (set_genre.genre_type_two == "casual"):
			type_pass = customer_math.casual_prediction
		if ((check <= 0) and (type_pass < .75)):
			price_check = false
		else:
			price_check = true