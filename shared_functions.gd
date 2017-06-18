extends Node


var genre_type
var prediction_one
var prediction_two
var prediction_three

func _ready():
    pass

func set_genre_type(): #sets the genre of the games based on the town
    if global.town_select == "hollyhock":
        if (global.hollyhock_station_one_selection == 0):
            genre_type = "none"
            get_node("genre_display/meta").set_hidden(true)
            get_node("genre_display/classic").set_hidden(true)
            get_node("genre_display/platformer").set_hidden(true)
            get_node("genre_display/strategy").set_hidden(true)
            get_node("genre_display/time_management").set_hidden(true)
            get_node("genre_display/adventure").set_hidden(true)
        if (global.hollyhock_station_one_selection == 1):
            genre_type = "meta"
            get_node("genre_display/meta").show()
get_node("genre_display/classic").set_hidden(true)
get_node("genre_display/platformer").set_hidden(true)
get_node("genre_display/strategy").set_hidden(true)
get_node("genre_display/time_management").set_hidden(true)
get_node("genre_display/adventure").set_hidden(true)
prediction_one = global.meta_prediction
if (global.hollyhock_station_one_selection == 2):
genre_type = "classic"
get_node("genre_display/meta").set_hidden(true)
get_node("genre_display/classic").show()
get_node("genre_display/platformer").set_hidden(true)
get_node("genre_display/strategy").set_hidden(true)
get_node("genre_display/time_management").set_hidden(true)
get_node("genre_display/adventure").set_hidden(true)
prediction_two = global.classic_prediction
if (global.hollyhock_station_one_selection == 3):
genre_type = "platformer"
get_node("genre_display/meta").set_hidden(true)
get_node("genre_display/classic").set_hidden(true)
get_node("genre_display/platformer").show()
get_node("genre_display/strategy").set_hidden(true)
get_node("genre_display/time_management").set_hidden(true)
get_node("genre_display/adventure").set_hidden(true)
prediction_three = global.platformer_prediction
