extends Node

var where_to

var arcade_one
var arcade_two
var arcade_three
var arcade_four
var arcade_five
var arcade_six

var in_arcade_one
var in_arcade_two
var in_arcade_three
var in_arcade_four
var in_arcade_five
var in_arcade_six

func _ready():
	pass

func figure_out_where_to():
	arcade_one = get_tree().get_current_scene().get_node("arcade_zone_one/arcade_button")
	arcade_two = get_tree().get_current_scene().get_node("arcade_zone_two/arcade_button")
	arcade_three = get_tree().get_current_scene().get_node("arcade_zone_three/arcade_button")
	arcade_four = get_tree().get_current_scene().get_node("arcade_zone_four/arcade_button")
	arcade_five = get_tree().get_current_scene().get_node("arcade_zone_five/arcade_button")
	arcade_six = get_tree().get_current_scene().get_node("arcade_zone_six/arcade_button")
	var arcade_one_pos = arcade_one.get_global_pos()
	var arcade_one_size = arcade_one.get_size()
	var arcade_two_pos = arcade_two.get_global_pos()
	var arcade_two_size = arcade_two.get_size()
	var arcade_three_pos = arcade_three.get_global_pos()
	var arcade_three_size = arcade_three.get_size()
	var arcade_four_pos = arcade_four.get_global_pos()
	var arcade_four_size = arcade_four.get_size()
	var arcade_five_pos = arcade_five.get_global_pos()
	var arcade_five_size = arcade_five.get_size()
	var arcade_six_pos = arcade_six.get_global_pos()
	var arcade_six_size = arcade_six.get_size()
	var in_x_one = where_to.x > arcade_one_pos.x and where_to.x < (arcade_one_pos.x + (arcade_one_size.x *2))
	var in_y_one = where_to.y > arcade_one_pos.y and where_to.y < (arcade_one_pos.y + (arcade_one_size.y *2))
	var in_x_two = where_to.x > arcade_two_pos.x and where_to.x < (arcade_two_pos.x + (arcade_two_size.x *2))
	var in_y_two = where_to.y > arcade_two_pos.y and where_to.y < (arcade_two_pos.y + (arcade_two_size.y *2))
	var in_x_three = where_to.x > arcade_three_pos.x and where_to.x < (arcade_three_pos.x + (arcade_three_size.x *2))
	var in_y_three = where_to.y > arcade_three_pos.y and where_to.y < (arcade_three_pos.y + (arcade_three_size.y *2))
	var in_x_four = where_to.x > arcade_four_pos.x and where_to.x < (arcade_four_pos.x + (arcade_four_size.x *2))
	var in_y_four = where_to.y > arcade_four_pos.y and where_to.y < (arcade_four_pos.y + (arcade_four_size.y *2))
	var in_x_five = where_to.x > arcade_five_pos.x and where_to.x < (arcade_five_pos.x + (arcade_five_size.x *2))
	var in_y_five = where_to.y > arcade_five_pos.y and where_to.y < (arcade_five_pos.y + (arcade_five_size.y *2))
	var in_x_six = where_to.x > arcade_six_pos.x and where_to.x < (arcade_six_pos.x + (arcade_six_size.x *2))
	var in_y_six = where_to.y > arcade_six_pos.y and where_to.y < (arcade_six_pos.y + (arcade_six_size.y *2))
	in_arcade_one = in_x_one and in_y_one
	in_arcade_two = in_x_two and in_y_two
	in_arcade_three = in_x_three and in_y_three
	in_arcade_four = in_x_four and in_y_four
	in_arcade_five = in_x_five and in_y_five
	in_arcade_six = in_x_six and in_y_six
