extends Node2D

onready var credit_limit_output = get_node("credit_limit_output")
onready var current_loan_output = get_node("current_loan_output")
onready var daily_interest_output = get_node("daily_interest_output")
onready var borrow_output_black = get_node("borrow_output_black")
onready var borrow_output_gray = get_node("borrow_output_gray")
onready var payback_output_black = get_node("pay_back_output_black")
onready var payback_output_gray = get_node("pay_back_output_gray")
onready var borrow_input_background_black = get_node("borrow_input_background_black")
onready var borrow_input_background_gray = get_node("borrow_input_background_gray")
onready var payback_input_background_black = get_node("payback_input_background_black")
onready var payback_input_background_gray = get_node("payback_input_background_gray")

var borrow_input_is_selected = false
var payback_input_is_selected = false
var hollyhock_loans_input_key = false

var borrow = 0
var payback = 0

func _ready():
	set_process_input(true)
	set_process(true)


func _input(event):
	if (event.type == InputEvent.MOUSE_BUTTON):
		if (get_tree().get_current_scene().get_node("locals_buttons").get_selected() == 1):
			var mouse_pos = get_global_mouse_pos()
			var borrow_background_pos = get_node("borrow_input_background_black").get_global_pos()
			var borrow_background_offset = get_node("borrow_input_background_black").get_relative_transform_to_parent(self) * borrow_background_pos
			var borrow_scale = get_node("borrow_input_background_black").get_global_scale()
			var bbh = get_node("borrow_input_background_black").get_texture().get_height() * borrow_scale.y
			var bbw = get_node("borrow_input_background_black").get_texture().get_width() * borrow_scale.x
			var payback_background_pos = get_node("payback_input_background_black").get_global_pos()
			var payback_background_offset = get_node("payback_input_background_black").get_relative_transform_to_parent(self) * payback_background_pos
			var payback_scale = get_node("payback_input_background_black").get_global_scale()
			var pbh = get_node("payback_input_background_black").get_texture().get_height() * payback_scale.y
			var pbw = get_node("payback_input_background_black").get_texture().get_width() * payback_scale.x
			
			if ((mouse_pos.x > borrow_background_pos.x - borrow_background_offset.x) and (mouse_pos.x < borrow_background_pos.x - borrow_background_offset.x + bbw) and (mouse_pos.y > borrow_background_pos.y - borrow_background_offset.y) and (mouse_pos.y < borrow_background_pos.y - borrow_background_offset.y + bbh)):
				borrow_input_is_selected = true
			elif ((mouse_pos.x > payback_background_pos.x - payback_background_offset.x) and (mouse_pos.x < payback_background_pos.x - payback_background_offset.x + pbw) and (mouse_pos.y > payback_background_pos.y - payback_background_offset.y) and (mouse_pos.y < payback_background_pos.y - payback_background_offset.y + pbh)):
				payback_input_is_selected = true
			else:
				borrow_input_is_selected = false
				payback_input_is_selected = false
	if (towns.town_select == "hollyhock"):
		if (borrow_input_is_selected == true):
			if (get_tree().get_current_scene().get_node("locals_buttons").get_selected() == 1):
				if (get_node("debounce_borrow").get_time_left() == 0):
					if (event.type == InputEvent.KEY):
						if (keys.hollyhock_loans_input_key == true):
							borrow = 0
						if (event.scancode == 48):
							keys.hollyhock_loans_input_key = false
							borrow = int(str(borrow) + "0")
							get_node("debounce_borrow").start()
						if (event.scancode == 49):
							keys.hollyhock_loans_input_key = false
							borrow = int(str(borrow) + "1")
							get_node("debounce_borrow").start()
						if (event.scancode == 50):
							keys.hollyhock_loans_input_key = false
							borrow = int(str(borrow) + "2")
							get_node("debounce_borrow").start()
						if (event.scancode == 51):
							keys.hollyhock_loans_input_key = false
							borrow = int(str(borrow) + "3")
							get_node("debounce_borrow").start()
						if (event.scancode == 52):
							keys.hollyhock_loans_input_key = false
							borrow = int(str(borrow) + "4")
							get_node("debounce_borrow").start()
						if (event.scancode == 53):
							keys.hollyhock_loans_input_key = false
							borrow = int(str(borrow) + "5")
							get_node("debounce_borrow").start()
						if (event.scancode == 54):
							keys.hollyhock_loans_input_key = false
							borrow = int(str(borrow) + "6")
							get_node("debounce_borrow").start()
						if (event.scancode == 55):
							keys.hollyhock_loans_input_key = false
							borrow = int(str(borrow) + "7")
							get_node("debounce_borrow").start()
						if (event.scancode == 56):
							keys.hollyhock_loans_input_key = false
							borrow = int(str(borrow) + "8")
							get_node("debounce_borrow").start()
						if (event.scancode == 57):
							keys.hollyhock_loans_input_key = false
							borrow = int(str(borrow) + "9")
							get_node("debounce_borrow").start()
		if (payback_input_is_selected == true):
			if (get_tree().get_current_scene().get_node("locals_buttons").get_selected() == 1):
				if (get_node("debounce_payback").get_time_left() == 0):
					if (event.type == InputEvent.KEY):
						if (keys.hollyhock_loans_input_key == true):
							payback = 0
						if (event.scancode == 48):
							keys.hollyhock_loans_input_key = false
							payback = int(str(payback) + "0")
							get_node("debounce_payback").start()
						if (event.scancode == 49):
							keys.hollyhock_loans_input_key = false
							payback = int(str(payback) + "1")
							get_node("debounce_payback").start()
						if (event.scancode == 50):
							keys.hollyhock_loans_input_key = false
							payback = int(str(payback) + "2")
							get_node("debounce_payback").start()
						if (event.scancode == 51):
							keys.hollyhock_loans_input_key = false
							payback = int(str(payback) + "3")
							get_node("debounce_payback").start()
						if (event.scancode == 52):
							keys.hollyhock_loans_input_key = false
							payback = int(str(payback) + "4")
							get_node("debounce_payback").start()
						if (event.scancode == 53):
							keys.hollyhock_loans_input_key = false
							payback = int(str(payback) + "5")
							get_node("debounce_payback").start()
						if (event.scancode == 54):
							keys.hollyhock_loans_input_key = false
							payback = int(str(payback) + "6")
							get_node("debounce_payback").start()
						if (event.scancode == 55):
							keys.hollyhock_loans_input_key = false
							payback = int(str(payback) + "7")
							get_node("debounce_payback").start()
						if (event.scancode == 56):
							keys.hollyhock_loans_input_key = false
							payback = int(str(payback) + "8")
							get_node("debounce_payback").start()
						if (event.scancode == 57):
							keys.hollyhock_loans_input_key = false
							payback = int(str(payback) + "9")
							get_node("debounce_payback").start()

func _process(delta):
	if (towns.town_select == "hollyhock"):
		credit_limit_output.clear()
		credit_limit_output.add_text(str(loans.credit_limit))
		current_loan_output.clear()
		current_loan_output.add_text(str(hollyhock.hollyhock_current_loan))
	daily_interest_output.clear()
	daily_interest_output.add_text("%" + str(loans.daily_interest * 100))
	borrow_output_black.clear()
	borrow_output_gray.clear()
	if (borrow_input_is_selected == true):
		borrow_output_gray.set_hidden(true)
		borrow_output_black.show()
		borrow_input_background_black.set_hidden(true)
		borrow_input_background_gray.show()
	elif (borrow_input_is_selected == false):
		borrow_output_gray.show()
		borrow_output_black.set_hidden(true)
		borrow_input_background_black.show()
		borrow_input_background_gray.set_hidden(true)
	payback_output_black.clear()
	payback_output_gray.clear()
	if (payback_input_is_selected == true):
		payback_output_gray.set_hidden(true)
		payback_output_black.show()
		payback_input_background_black.set_hidden(true)
		payback_input_background_gray.show()
	elif (payback_input_is_selected == false):
		payback_output_gray.show()
		payback_output_black.set_hidden(true)
		payback_input_background_black.show()
		payback_input_background_gray.set_hidden(true)
	borrow_output_black.add_text(str(borrow))
	borrow_output_gray.add_text(str(borrow))
	payback_output_black.add_text(str(payback))
	payback_output_gray.add_text(str(payback))

func _on_borrow_lower_button_down():
	if (borrow > 0):
		borrow = borrow - 1

func _on_borrow_raise_button_down():
	if (borrow + 1 < loans.credit_limit):
		borrow = borrow + 1

func _on_payback_lower_button_down():
	if (payback > 0):
		payback = payback - 1

func _on_payback_raise_button_down():
	if (towns.town_select == "hollyhock"):
		if ((payback <= hollyhock.hollyhock_current_loan) and (money.hollyhock_cash >= payback)):
			payback = payback + 1

func _on_confirm_button_down():
	if (borrow > loans.credit_limit):
		borrow = loans.credit_limit
	if (payback > hollyhock.hollyhock_current_loan):
		payback = hollyhock.hollyhock_current_loan
	if (towns.town_select == "hollyhock"):
		hollyhock.hollyhock_current_loan = hollyhock.hollyhock_current_loan - payback
		loans.credit_limit = loans.credit_limit + payback
		hollyhock.hollyhock_current_loan = hollyhock.hollyhock_current_loan + borrow
		loans.credit_limit = loans.credit_limit - borrow
		money.hollyhock_balance = money.hollyhock_balance + borrow
		money.hollyhock_balance = money.hollyhock_balance - payback
	borrow = 0
	payback = 0
	borrow_input_is_selected = false
	payback_input_is_selected = false