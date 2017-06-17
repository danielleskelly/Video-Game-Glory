extends Node2D

onready var research_fund_output = get_node("research_output")
onready var days_left_output = get_node("days_left_output")
onready var research_spending_output_black = get_node("daily_research_output_black")
onready var research_spending_output_gray = get_node("daily_research_output_gray")
onready var research_spending_background_black = get_node("input_background_black")
onready var research_spending_background_gray = get_node("input_background_gray")

var block = false
var input_is_selected = false

func _ready():
	set_process(true)
	set_process_input(true)
	
func _input(event):
	if (event.type == InputEvent.MOUSE_BUTTON):
		if (get_tree().get_current_scene().get_node("top_buttons").get_selected() == 8):
			var mouse_pos = get_global_mouse_pos()
			var background_pos = get_node("input_background_black").get_global_pos()
			var bh = get_node("input_background_black").get_texture().get_height()
			var bw = get_node("input_background_black").get_texture().get_width()
			if ((mouse_pos.x > background_pos.x) and (mouse_pos.x < background_pos.x + bw) and (mouse_pos.y > background_pos.y) and (mouse_pos.y < background_pos.y + bh)):
				input_is_selected = true
			else:
				input_is_selected = false
	if (global.town_select == "hollyhock"):
		if (input_is_selected == true):
			if (get_tree().get_current_scene().get_node("top_buttons").get_selected() == 8):
				if (get_node("debounce").get_time_left() == 0):
					if (event.type == InputEvent.KEY):
						if (global.hollyhock_research_input_key == true):
							global.hollyhock_research_spending = 0
						if (event.scancode == 48):
							global.hollyhock_research_input_key = false
							global.hollyhock_research_spending = int(str(global.hollyhock_research_spending) + "0")
							get_node("debounce").start()
						if (event.scancode == 49):
							global.hollyhock_research_input_key = false
							global.hollyhock_research_spending = int(str(global.hollyhock_research_spending) + "1")
							get_node("debounce").start()
						if (event.scancode == 50):
							global.hollyhock_research_input_key = false
							global.hollyhock_research_spending = int(str(global.hollyhock_research_spending) + "2")
							get_node("debounce").start()
						if (event.scancode == 51):
							global.hollyhock_research_input_key = false
							global.hollyhock_research_spending = int(str(global.hollyhock_research_spending) + "3")
							get_node("debounce").start()
						if (event.scancode == 52):
							global.hollyhock_research_input_key = false
							global.hollyhock_research_spending = int(str(global.hollyhock_research_spending) + "4")
							get_node("debounce").start()
						if (event.scancode == 53):
							global.hollyhock_research_input_key = false
							global.hollyhock_research_spending = int(str(global.hollyhock_research_spending) + "5")
							get_node("debounce").start()
						if (event.scancode == 54):
							global.hollyhock_research_input_key = false
							global.hollyhock_research_spending = int(str(global.hollyhock_research_spending) + "6")
							get_node("debounce").start()
						if (event.scancode == 55):
							global.hollyhock_research_input_key = false
							global.hollyhock_research_spending = int(str(global.hollyhock_research_spending) + "7")
							get_node("debounce").start()
						if (event.scancode == 56):
							global.hollyhock_research_input_key = false
							global.hollyhock_research_spending = int(str(global.hollyhock_research_spending) + "8")
							get_node("debounce").start()
						if (event.scancode == 57):
							global.hollyhock_research_input_key = false
							global.hollyhock_research_spending = int(str(global.hollyhock_research_spending) + "9")
							get_node("debounce").start()


func _process(delta):
	if (global.town_select == "hollyhock"):
		research_fund_output.clear()
		research_fund_output.add_text(str(global.hollyhock_research_fund))
		research_spending_output_black.clear()
		research_spending_output_gray.clear()
		research_spending_output_black.add_text(str(global.hollyhock_research_spending))
		research_spending_output_gray.add_text(str(global.hollyhock_research_spending))
		if (input_is_selected == true):
			research_spending_background_gray.show()
			research_spending_background_black.set_hidden(true)
			research_spending_output_gray.set_hidden(true)
			research_spending_output_black.show()
		if (input_is_selected == false):
			research_spending_background_gray.set_hidden(true)
			research_spending_background_black.show()
			research_spending_output_gray.show()
			research_spending_output_black.set_hidden(true)
		if (global.hollyhock_research_one_key == false):
			if (global.hollyhock_research_spending == 0):
				var spending_stand_in = 1
				global.hollyhock_days_left_research = global.hollyhock_research_total_one / (spending_stand_in + global.hollyhock_research_fund)
			if (global.hollyhock_research_spending > 0):
				global.hollyhock_days_left_research = global.hollyhock_research_total_one / (global.hollyhock_research_spending + global.hollyhock_research_fund)
		if ((global.hollyhock_research_one_key == true) and (global.hollyhock_research_two_key == false)):
			if (global.hollyhock_research_spending == 0):
				var spending_stand_in = 1
				global.hollyhock_days_left_research = global.hollyhock_research_total_two / (spending_stand_in + global.hollyhock_research_fund)
			if (global.hollyhock_research_spending > 0):
				global.hollyhock_days_left_research = global.hollyhock_research_total_two / (global.hollyhock_research_spending + global.hollyhock_research_fund)
		if ((global.hollyhock_research_one_key == true) and (global.hollyhock_research_two_key == true)):
			block = true
	days_left_output.clear()
	days_left_output.add_text(str(global.hollyhock_days_left_research))

func _on_research_lower_button_down():
	if (global.town_select == "hollyhock"):
		if (block == false):
			if (global.hollyhock_research_spending > 1):
				global.hollyhock_research_spending = global.hollyhock_research_spending - 1
				global.hollyhock_expenses = global.hollyhock_expenses - 1
		if (block == true):
			pass

func _on_research_raise_button_down():
	if (global.town_select == "hollyhock"):
		if (block == false):
			if (global.hollyhock_research_spending + 1 <= global.hollyhock_cash):
				global.hollyhock_research_spending = global.hollyhock_research_spending + 1
				global.hollyhock_expenses = global.hollyhock_expenses + 1
		if (block == true):
			pass

func _on_confirm_button_down():
	global.hollyhock_research_input_key = true
	if (global.town_select == "hollyhock"):
		input_is_selected = false
		if (global.hollyhock_research_one_key == false):
			if (global.hollyhock_research_spending > global.hollyhock_research_total_one):
				global.hollyhock_research_spending = global.hollyhock_research_total_one
			if ((global.hollyhock_research_one_key == true) and (global.hollyhock_research_two_key == false)):
				if (global.hollyhock_research_spending > global.hollyhock_research_total_two):
					global.hollyhock_research_spending = global.hollyhock_research_total_two
				if ((global.hollyhock_research_one_key == true) and (global.hollyhock_research_two_key == true)):
					global.hollyhock_research_spending = 0
	
