extends Node

var check
var price_check

var type_pass

var arcade_one_range_low = 10
var arcade_two_range_low = 10
var arcade_three_range_low = 10
var arcade_four_range_low = 10
var arcade_five_range_low = 10
var arcade_six_range_low = 10
var arcade_one_range_high = 20
var arcade_two_range_high = 20
var arcade_three_range_high = 20
var arcade_four_range_high = 20
var arcade_five_range_high = 20
var arcade_six_range_high = 20
var hollyhock_arcade_one_price = 15
var hollyhock_arcade_two_price = 15
var hollyhock_arcade_three_price = 0
var hollyhock_arcade_four_price = 0
var hollyhock_arcade_five_price = 0
var hollyhock_arcade_six_price = 0

func _ready():
	set_process(true)
	pass
	
func _process(delta):
	pass

func check_one():
	set_genre.set_genre_type()
	if (towns.town_select == "hollyhock"):
		check = arcade_one_range_high - hollyhock_arcade_one_price #check if the arcade price is too high
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
			
func check_two():
	set_genre.set_genre_type()
	if (towns.town_select == "hollyhock"):
		check = arcade_two_range_high - hollyhock_arcade_two_price #check if the arcade price is too high
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
			
func check_three():
	set_genre.set_genre_type()
	if (towns.town_select == "hollyhock"):
		check = arcade_three_range_high - hollyhock_arcade_three_price #check if the arcade price is too high
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
			
func check_four():
	set_genre.set_genre_type()
	if (towns.town_select == "hollyhock"):
		check = arcade_four_range_high - hollyhock_arcade_four_price #check if the arcade price is too high
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

func check_five():
	set_genre.set_genre_type()
	if (towns.town_select == "hollyhock"):
		check = arcade_five_range_high - hollyhock_arcade_five_price #check if the arcade price is too high
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
			
func check_six():
	set_genre.set_genre_type()
	if (towns.town_select == "hollyhock"):
		check = arcade_six_range_high - hollyhock_arcade_six_price #check if the arcade price is too high
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