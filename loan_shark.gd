extends Node2D

var credit_limit
var credit_limit_output
var current_loan
var current_loan_output
var daily_interest
var daily_interest_output
var borrow_output
var borrow = 0
var payback_output
var payback = 0
var cash

func _ready():
	credit_limit_output = get_node("credit_limit_output")
	current_loan_output = get_node("current_loan_output")
	daily_interest_output = get_node("daily_interest_output")
	borrow_output = get_node("borrow_output")
	payback_output = get_node("pay_back_output")
	set_process(true)

func _process(delta):
	get_globals()
	credit_limit_output.clear()
	credit_limit_output.add_text(str(credit_limit))
	current_loan_output.clear()
	current_loan_output.add_text(str(current_loan))
	daily_interest_output.clear()
	daily_interest_output.add_text(str(daily_interest))
	borrow_output.clear()
	borrow_output.add_text(str(borrow))
	payback_output.clear()
	payback_output.add_text(str(payback))
	
func get_globals():
	credit_limit = global.credit_limit
	current_loan = global.current_loan
	daily_interest = global.daily_interest
	cash = global.balance - global.expenses


func _on_borrow_lower_button_down():
	if (borrow > 0):
		borrow = borrow - 1


func _on_borrow_raise_button_down():
	if (borrow < credit_limit):
		borrow = borrow + 1

func _on_pack_back_lower_button_down():
	if (payback > 0):
		payback = payback - 1
		


func _on_pack_back_raise_button_down():
	if ((payback < current_loan) and (cash >= payback)):
		payback = payback + 1


func _on_confirm_button_down():
	global.current_loan = global.current_loan - payback
	global.credit_limit = global.credit_limit + payback
	global.current_loan = global.current_loan + borrow
	global.credit_limit = global.credit_limit - borrow
	global.balance = global.balance + borrow
	global.balance = global.balance - payback
	borrow = 0
	payback = 0