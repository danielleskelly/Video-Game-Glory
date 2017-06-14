extends Node2D

onready var player_output = get_node("player_name")
onready var competitor_one_output = get_node("competitor_one")
onready var competitor_two_output = get_node("competitor_two")
onready var player_cash_output = get_node("player_cash_output")
onready var comp_one_cash_output = get_node("comp_1_cash_output")
onready var comp_two_cash_output = get_node("comp_2_cash_output")
onready var player_marketshare_output = get_node("player_marketshare_output")
onready var comp_one_marketshare_output = get_node("comp_1_marketshare_output")
onready var comp_two_marketshare_output = get_node("comp_2_marketshare_output")
onready var player_sales_made_output = get_node("player_sales_made_output")
onready var comp_one_sales_made_output = get_node("comp_1_sales_made_output")
onready var comp_two_sales_made_output = get_node("comp_2_sales_made_output")
onready var player_sales_lost_output = get_node("player_sales_lost_output")
onready var comp_one_sales_lost_output = get_node("comp_1_sales_lost_output")
onready var comp_two_sales_lost_output = get_node("comp_2_sales_lost_output")
onready var competitor_one_out_of_business = get_node("competitor_one_out_of_business")
onready var competitor_two_out_of_business = get_node("competitor_two_out_of_business")

func _ready():
	set_process(true)

func _process(delta):
	if (global.town_select == "hollyhock"):
		if (global.hollyhock_competitor_one_marketshare <= 0):
			competitor_one_out_of_business.show()
		else:
			competitor_one_out_of_business.set_hidden(true)
		if (global.hollyhock_competitor_two_marketshare <= 0):
			competitor_two_out_of_business.show()
		else:
			competitor_two_out_of_business.set_hidden(true)
		player_cash_output.clear()
		player_cash_output.add_text(str(global.hollyhock_cash))
		if (global.hollyhock_player_marketshare > 1):
			player_marketshare_output.clear()
			player_marketshare_output.add_text("%100")
		else:
			player_marketshare_output.clear()
			player_marketshare_output.add_text("%" + str(int(global.hollyhock_player_marketshare * 100)))
		if (global.hollyhock_competitor_one_marketshare < 0):
			comp_one_marketshare_output.clear()
			comp_one_marketshare_output.add_text("%0")
		else:
			comp_one_marketshare_output.clear()
			comp_one_marketshare_output.add_text("%" + str(int(global.hollyhock_competitor_one_marketshare * 100)))
		if (global.hollyhock_competitor_two_marketshare < 0):
			comp_two_marketshare_output.clear()
			comp_two_marketshare_output.add_text("%0")
		else:
			comp_two_marketshare_output.clear()
			comp_two_marketshare_output.add_text("%" + str(int(global.hollyhock_competitor_two_marketshare * 100)))
	player_output.clear()
	player_output.add_text(global.player_name)
	competitor_one_output.clear()
	competitor_one_output.add_text(global.competitor_one)
	competitor_two_output.clear()
	competitor_two_output.add_text(global.competitor_two)
	comp_one_cash_output.clear()
	comp_one_cash_output.add_text(str(global.one_cash))
	comp_two_cash_output.clear()
	comp_two_cash_output.add_text(str(global.two_cash))
	player_sales_made_output.clear()
	player_sales_made_output.add_text(str(global.sales_made))
	comp_one_sales_made_output.clear()
	comp_one_sales_made_output.add_text(str(global.one_sales_made))
	comp_two_sales_made_output.clear()
	comp_two_sales_made_output.add_text(str(global.two_sales_made))
	player_sales_lost_output.clear()
	player_sales_lost_output.add_text(str(global.sales_lost))
	comp_one_sales_lost_output.clear()
	comp_one_sales_lost_output.add_text(str(global.one_sales_lost))
	comp_two_sales_lost_output.clear()
	comp_two_sales_lost_output.add_text(str(global.two_sales_lost))