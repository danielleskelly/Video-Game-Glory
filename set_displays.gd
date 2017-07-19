extends Node

var genre_one_count
var genre_two_count
var genre_three_count
var genre_two_key
var genre_three_key
var genre_one_name
var genre_one_icon
var genre_two_name
var genre_two_icon
var genre_three_name
var genre_three_icon
var supply_one_count
var supply_one_name
var supply_one_icon
var supply_two_count
var supply_two_name
var supply_two_icon

func _ready():
	# Called every time the node is added to the scene.
	# Initialization here
	pass

func set_that_shit():
	if (towns.town_select == "hollyhock"):
		supply_one_count = supplies.hollyhock_soda_count
		supply_one_name = "Soda"
		supply_one_icon = load("res://concessions_want.png")
		supply_two_count = supplies.hollyhock_popcorn_count
		supply_two_name = "Popcorn"
		supply_two_icon = load("res://popcorn.png")
		genre_one_count = customer_math.meta_prediction
		genre_one_name = "Meta"
		genre_one_icon = load("res://meta_genre.png")
		genre_two_count = customer_math.classic_prediction
		genre_two_key = hollyhock.hollyhock_genre_two_key
		genre_two_name = "Classic"
		genre_three_count = customer_math.platformer_prediction
		genre_three_name = "Platformer"
		genre_three_key = hollyhock.hollyhock_genre_three_key
	if (towns.town_select == "fiyork"):
		supply_one_count = supplies.fiyork_freezie_count
		supply_one_name = "Freezie"
		supply_one_icon = load("res://concessions_want.png")
		supply_two_count = supplies.fiyork_pizza_count
		supply_two_name = "Pizza"
		supply_two_icon = load("res://pizza.png")
		genre_one_count = customer_math.shooter_prediction
		genre_one_name = "Shooter"
		genre_one_icon = load("res://meta_genre.png")
		genre_two_count = customer_math.adventure_prediction
		genre_two_key = customer_math.fiyork_genre_two_key
		genre_two_name = "Adventure"
		genre_three_count = customer_math.casual_prediction
		genre_three_name = "Casual"
		genre_three_key = customer_math.fiyork_genre_three_key
	if (towns.town_select == "untilly"):
		supply_one_count = supplies.untilly_soda_count
		supply_one_name = "Soda"
		supply_one_icon = load("res://concessions_want.png")
		supply_two_count = supplies.untilly_popcorn_count
		supply_two_name = "Popcorn"
		supply_two_icon = load("res://popcorn.png")
		genre_one_count = customer_math.casual_prediction
		genre_one_name = "Casual"
		genre_one_icon = load("res://meta_genre.png")
		genre_two_count = customer_math.shooter_prediction
		genre_two_key = customer_math.untilly_genre_two_key
		genre_two_name = "Shooter"
		genre_three_count = customer_math.time_management_prediction
		genre_three_name = "Time Management"
		genre_three_key = customer_math.untilly_genre_three_key
	if (towns.town_select == "plansey"):
		supply_one_count = supplies.plansey_energy_count
		supply_one_name = "Energy"
		supply_one_icon = load("res://concessions_want.png")
		supply_two_count = supplies.plansey_nachos_count
		supply_two_name = "Nachos"
		supply_two_icon = load("res://popcorn.png")
		genre_one_count = customer_math.nostalgic_prediction
		genre_one_name = "Nostalgic"
		genre_one_icon = load("res://meta_genre.png")
		genre_two_count = customer_math.strategy_prediction
		genre_two_key = customer_math.plansey_genre_two_key
		genre_two_name = "Strategy"
		genre_three_count = customer_math.platformer_prediction
		genre_three_name = "Platformer"
		genre_three_key = customer_math.plansey_genre_three_key
	if (towns.town_select == "windrow"):
		supply_one_count = supplies.windrow_freezie_count
		supply_one_name = "Freezie"
		supply_one_icon = load("res://concessions_want.png")
		supply_two_count = supplies.windrow_pizza_count
		supply_two_name = "Pizza"
		supply_two_icon = load("res://pizza.png")
		genre_one_count = customer_math.classic_prediction
		genre_one_name = "Classic"
		genre_one_icon = load("res://meta_genre.png")
		genre_two_count = customer_math.casual_prediction
		genre_two_key = customer_math.windrow_genre_two_key
		genre_two_name = "Casual"
		genre_three_count = customer_math.nostalgic_prediction
		genre_three_name = "Nostalgic"
		genre_three_key = customer_math.windrow_genre_three_key
	if (towns.town_select == "banlon"):
		supply_one_count = supplies.banlon_energy_count
		supply_one_name = "Energy"
		supply_one_icon = load("res://concessions_want.png")
		supply_two_count = supplies.banlon_nachos_count
		supply_two_name = "Nachos"
		supply_two_icon = load("res://popcorn.png")
		genre_one_count = customer_math.strategy_prediction
		genre_one_name = "Strategy"
		genre_one_icon = load("res://meta_genre.png")
		genre_two_count = customer_math.shooter_prediction
		genre_two_key = customer_math.banlon_genre_two_key
		genre_two_name = "Shooter"
		genre_three_count = customer_math.adventure_prediction
		genre_three_name = "Adventure"
		genre_three_key = customer_math.banlon_genre_three_key
	if (towns.town_select == "slatten"):
		supply_one_count = supplies.slatten_freezie_count
		supply_one_name = "Freezie"
		supply_one_icon = load("res://concessions_want.png")
		supply_two_count = supplies.slatten_popcorn_count
		supply_two_name = "Popcorn"
		supply_two_icon = load("res://popcorn.png")
		genre_one_count = customer_math.platformer_prediction
		genre_one_name = "Platformer"
		genre_one_icon = load("res://meta_genre.png")
		genre_two_count = customer_math.time_management_prediction
		genre_two_key = customer_math.slatten_genre_two_key
		genre_two_name = "Time Management"
		genre_three_count = customer_math.meta_prediction
		genre_three_name = "Meta"
		genre_three_key = customer_math.slatten_genre_three_key