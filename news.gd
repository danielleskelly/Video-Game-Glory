extends Node2D

onready var todays_news_output = get_node("todays_news_output")
onready var game_forecast_output = get_node("game_forecast_output")

var random_news_piece

func _ready():
	set_process(true)

func _process(delta):
	random_news()
	todays_news_output.clear()
	todays_news_output.add_text(random_news_piece)
	if (global.town_select == "hollyhock"):
		game_forecast_output.clear()
		game_forecast_output.add_text("Meta %" + str(int(global.meta_prediction * 100)) + "\n")
		if (global.hollyhock_genre_two_key == true):
			game_forecast_output.add_text("Classic %" + str(int(global.classic_prediction * 100)) + "\n")
		if (global.hollyhock_genre_three_key == true):
			game_forecast_output.add_text("Platformer %" + str(int(global.platformer_prediction * 100)))
	
	
func random_news():
	randomize()
	var random_newsies = ["This is a silly thing to make people giggle."]
	random_news_piece = random_newsies[randi() % random_newsies.size()]