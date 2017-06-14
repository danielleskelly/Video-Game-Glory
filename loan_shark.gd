extends Node2D

onready var credit_limit_output = get_node("credit_limit_output")
onready var current_loan_output = get_node("current_loan_output")
onready var daily_interest_output = get_node("daily_interest_output")
onready var borrow_output = get_node("borrow_output")
onready var payback_output = get_node("pay_back_output")

var borrow = 0
var payback = 0

func _ready():
	set_process(true)

func _process(delta):
	if (global.town_select == "hollyhock"):
		credit_limit_output.clear()
		credit_limit_output.add_text(str(global.credit_limit))
		current_loan_output.clear()
		current_loan_output.add_text(str(global.hollyhock_current_loan))
	daily_interest_output.clear()
	daily_interest_output.add_text("%" + str(global.daily_interest * 100))
	borrow_output.clear()
	borrow_output.add_text(str(borrow))
	payback_output.clear()
	payback_output.add_text(str(payback))

func _on_borrow_lower_button_down():
	if (borrow > 0):
		borrow = borrow - 1

func _on_borrow_raise_button_down():
	if (borrow + 1 < global.credit_limit):
		borrow = borrow + 1

func _on_pack_back_lower_button_down():
	if (payback > 0):
		payback = payback - 1

func _on_pack_back_raise_button_down():
	if (global.town_select == "hollyhock"):
		if ((payback < global.hollyhock_current_loan) and (global.hollyhock_cash >= payback)):
			payback = payback + 1

func _on_confirm_button_down():
	if (global.town_select == "hollyhock"):
		global.hollyhock_current_loan = global.hollyhock_current_loan - payback
		global.credit_limit = global.credit_limit + payback
		global.hollyhock_current_loan = global.hollyhock_current_loan + borrow
		global.credit_limit = global.credit_limit - borrow
		global.hollyhock_balance = global.hollyhock_balance + borrow
		global.hollyhock_balance = global.hollyhock_balance - payback
	borrow = 0
	payback = 0