extends Node2D
onready var game_forecast_output_one = get_node("game_forecast_output_one")
onready var game_forecast_output_two = get_node("game_forecast_output_two")
onready var game_forecast_output_three = get_node("game_forecast_output_three")

var random_news_piece

var meta_icon = load("res://meta_genre.png")

func _ready():
	set_process(true)

func _process(delta):
	if (towns.town_select == "hollyhock"):
		game_forecast_output_one.clear()
		game_forecast_output_one.add_text("Meta %" + str(int(customer_math.meta_prediction * 100)) + "\n\n")
		get_node("genre_one_icon").set_texture(meta_icon)
		get_node("genre_one_icon").set_scale(Vector2(.35,.5))
		if (hollyhock.hollyhock_genre_two_key == true):
			game_forecast_output_two.clear()
			game_forecast_output_two.add_text("Classic %" + str(int(customer_math.classic_prediction * 100)) + "\n\n")
			get_node("genre_two_icon").set_texture(meta_icon)
			get_node("genre_two_icon").set_scale(Vector2(.35,.5))
		elif (hollyhock.hollyhock_genre_two_key == false):
			get_node("genre_two_icon").set_hidden(true)
			get_node("genre_one_background1").set_hidden(true)
		if (hollyhock.hollyhock_genre_three_key == true):
			game_forecast_output_three.clear()
			game_forecast_output_three.add_text("Platformer %" + str(int(customer_math.platformer_prediction * 100)))
			get_node("genre_three_icon").set_texture(meta_icon)
			get_node("genre_three_icon").set_scale(Vector2(.35,.5))
		elif (hollyhock.hollyhock_genre_three_key == false):
			get_node("genre_three_icon").set_hidden(true)
			get_node("genre_one_background2").set_hidden(true)
	if (towns.town_select == "fiyork"):
		game_forecast_output_one.clear()
		game_forecast_output_one.add_text("Shooter %" + str(int(customer_math.shooter_prediction * 100)) + "\n\n")
		get_node("genre_one_icon").set_texture(meta_icon)
		get_node("genre_one_icon").set_scale(Vector2(.35,.5))
		if (fiyork.fiyork_genre_two_key == true):
			game_forecast_output_two.clear()
			game_forecast_output_two.add_text("Adventure %" + str(int(customer_math.adventure_prediction * 100)) + "\n\n")
			get_node("genre_two_icon").set_texture(meta_icon)
			get_node("genre_two_icon").set_scale(Vector2(.35,.5))
		elif (fiyork.fiyork_genre_two_key == false):
			get_node("genre_two_icon").set_hidden(true)
			get_node("genre_one_background1").set_hidden(true)
		if (fiyork.fiyork_genre_three_key == true):
			game_forecast_output_three.clear()
			game_forecast_output_three.add_text("Casual %" + str(int(customer_math.casual_prediction * 100)))
			get_node("genre_three_icon").set_texture(meta_icon)
			get_node("genre_three_icon").set_scale(Vector2(.35,.5))
		elif (fiyork.fiyork_genre_three_key == false):
			get_node("genre_three_icon").set_hidden(true)
			get_node("genre_one_background2").set_hidden(true)
	if (towns.town_select == "plansey"):
		game_forecast_output_one.clear()
		game_forecast_output_one.add_text("Nostalgic %" + str(int(customer_math.nostalgic_prediction * 100)) + "\n\n")
		get_node("genre_one_icon").set_texture(meta_icon)
		get_node("genre_one_icon").set_scale(Vector2(.35,.5))
		if (plansey.plansey_genre_two_key == true):
			game_forecast_output_two.clear()
			game_forecast_output_two.add_text("Strategy %" + str(int(customer_math.strategy_prediction * 100)) + "\n\n")
			get_node("genre_two_icon").set_texture(meta_icon)
			get_node("genre_two_icon").set_scale(Vector2(.35,.5))
		elif (plansey.plansey_genre_two_key == false):
			get_node("genre_two_icon").set_hidden(true)
			get_node("genre_one_background1").set_hidden(true)
		if (plansey.plansey_genre_three_key == true):
			game_forecast_output_three.clear()
			game_forecast_output_three.add_text("Platformer %" + str(int(customer_math.platformer_prediction * 100)))
			get_node("genre_three_icon").set_texture(meta_icon)
			get_node("genre_three_icon").set_scale(Vector2(.35,.5))
		elif (plansey.plansey_genre_three_key == false):
			get_node("genre_three_icon").set_hidden(true)
			get_node("genre_one_background2").set_hidden(true)
	if (towns.town_select == "untilly"):
		game_forecast_output_one.clear()
		game_forecast_output_one.add_text("Casual %" + str(int(customer_math.casual_prediction * 100)) + "\n\n")
		get_node("genre_one_icon").set_texture(meta_icon)
		get_node("genre_one_icon").set_scale(Vector2(.35,.5))
		if (untilly.untilly_genre_two_key == true):
			game_forecast_output_two.clear()
			game_forecast_output_two.add_text("Shooter %" + str(int(customer_math.shooter_prediction * 100)) + "\n\n")
			get_node("genre_two_icon").set_texture(meta_icon)
			get_node("genre_two_icon").set_scale(Vector2(.35,.5))
		elif (untilly.untilly_genre_two_key == false):
			get_node("genre_two_icon").set_hidden(true)
			get_node("genre_one_background1").set_hidden(true)
		if (untilly.untilly_genre_three_key == true):
			game_forecast_output_three.clear()
			game_forecast_output_three.add_text("Time Management %" + str(int(customer_math.time_management_prediction * 100)))
			get_node("genre_three_icon").set_texture(meta_icon)
			get_node("genre_three_icon").set_scale(Vector2(.35,.5))
		elif (untilly.untilly_genre_three_key == false):
			get_node("genre_three_icon").set_hidden(true)
			get_node("genre_one_background2").set_hidden(true)
	if (towns.town_select == "windrow"):
		game_forecast_output_one.clear()
		game_forecast_output_one.add_text("Platformer %" + str(int(customer_math.platformer_prediction * 100)) + "\n\n")
		get_node("genre_one_icon").set_texture(meta_icon)
		get_node("genre_one_icon").set_scale(Vector2(.35,.5))
		if (windrow.windrow_genre_two_key == true):
			game_forecast_output_two.clear()
			game_forecast_output_two.add_text("Time Management %" + str(int(customer_math.time_management_prediction * 100)) + "\n\n")
			get_node("genre_two_icon").set_texture(meta_icon)
			get_node("genre_two_icon").set_scale(Vector2(.35,.5))
		elif (windrow.windrow_genre_two_key == false):
			get_node("genre_two_icon").set_hidden(true)
			get_node("genre_one_background1").set_hidden(true)
		if (windrow.windrow_genre_three_key == true):
			game_forecast_output_three.clear()
			game_forecast_output_three.add_text("Meta %" + str(int(customer_math.meta_prediction * 100)))
			get_node("genre_three_icon").set_texture(meta_icon)
			get_node("genre_three_icon").set_scale(Vector2(.35,.5))
		elif (windrow.windrow_genre_three_key == false):
			get_node("genre_three_icon").set_hidden(true)
			get_node("genre_one_background2").set_hidden(true)
	if (towns.town_select == "banlon"):
		game_forecast_output_one.clear()
		game_forecast_output_one.add_text("Strategy %" + str(int(customer_math.strategy_prediction * 100)) + "\n\n")
		get_node("genre_one_icon").set_texture(meta_icon)
		get_node("genre_one_icon").set_scale(Vector2(.35,.5))
		if (banlon.banlon_genre_two_key == true):
			game_forecast_output_two.clear()
			game_forecast_output_two.add_text("Shooter %" + str(int(customer_math.shooter_prediction * 100)) + "\n\n")
			get_node("genre_two_icon").set_texture(meta_icon)
			get_node("genre_two_icon").set_scale(Vector2(.35,.5))
		elif (banlon.banlon_genre_two_key == false):
			get_node("genre_two_icon").set_hidden(true)
			get_node("genre_one_background1").set_hidden(true)
		if (banlon.banlon_genre_three_key == true):
			game_forecast_output_three.clear()
			game_forecast_output_three.add_text("Adventure %" + str(int(customer_math.adventure_prediction * 100)))
			get_node("genre_three_icon").set_texture(meta_icon)
			get_node("genre_three_icon").set_scale(Vector2(.35,.5))
		elif (banlon.banlon_genre_three_key == false):
			get_node("genre_three_icon").set_hidden(true)
			get_node("genre_one_background2").set_hidden(true)
	if (towns.town_select == "slatten"):
		game_forecast_output_one.clear()
		game_forecast_output_one.add_text("Classic %" + str(int(customer_math.classic_prediction * 100)) + "\n\n")
		get_node("genre_one_icon").set_texture(meta_icon)
		get_node("genre_one_icon").set_scale(Vector2(.35,.5))
		if (slatten.slatten_genre_two_key == true):
			game_forecast_output_two.clear()
			game_forecast_output_two.add_text("Casual %" + str(int(customer_math.casual_prediction * 100)) + "\n\n")
			get_node("genre_two_icon").set_texture(meta_icon)
			get_node("genre_two_icon").set_scale(Vector2(.35,.5))
		elif (slatten.slatten_genre_two_key == false):
			get_node("genre_two_icon").set_hidden(true)
			get_node("genre_one_background1").set_hidden(true)
		if (slatten.slatten_genre_three_key == true):
			game_forecast_output_three.clear()
			game_forecast_output_three.add_text("Time Management %" + str(int(customer_math.time_management_prediction * 100)))
			get_node("genre_three_icon").set_texture(meta_icon)
			get_node("genre_three_icon").set_scale(Vector2(.35,.5))
		elif (slatten.slatten_genre_three_key == false):
			get_node("genre_three_icon").set_hidden(true)
			get_node("genre_one_background2").set_hidden(true)