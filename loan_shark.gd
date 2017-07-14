extends Node2D

onready var credit_limit_output = get_node("credit_limit_output")
onready var current_loan_output = get_node("current_loan_output")
onready var daily_interest_output = get_node("daily_interest_output")
onready var borrow_output = get_node("borrow_output")
onready var payback_output = get_node("payback_output")

var borrow = 0
var payback = 0

func _ready():
	payback_output.clear()
	payback_output.set_text(str(payback))
	borrow_output.clear()
	borrow_output.set_text(str(borrow))
	set_process(true)

func _process(delta):
	if (towns.town_select == "hollyhock"):
		credit_limit_output.clear()
		credit_limit_output.add_text(str(loans.credit_limit))
		current_loan_output.clear()
		current_loan_output.add_text(str(hollyhock.hollyhock_current_loan))
	if (towns.town_select == "fiyork"):
		credit_limit_output.clear()
		credit_limit_output.add_text(str(loans.credit_limit))
		current_loan_output.clear()
		current_loan_output.add_text(str(fiyork.fiyork_current_loan))
	daily_interest_output.clear()
	daily_interest_output.add_text("%" + str(loans.daily_interest * 100))


func _on_borrow_lower_button_down():
	if (int(borrow) > 0):
		borrow = int(borrow) - 1
		borrow_output.clear()
		borrow_output.set_text(str(borrow))

func _on_borrow_raise_button_down():
	if (int(borrow) + 1 <= loans.credit_limit):
		borrow = int(borrow) + 1
		borrow_output.clear()
		borrow_output.set_text(str(borrow))

func _on_payback_lower_button_down():
	if (payback > 0):
		payback = int(payback) - 1
		payback_output.clear()
		payback_output.set_text(str(payback))

func _on_payback_raise_button_down():
	if (towns.town_select == "hollyhock"):
		if ((int(payback) <= hollyhock.hollyhock_current_loan) and (money.hollyhock_cash >= payback)):
			payback = int(payback) + 1
			payback_output.clear()
			payback_output.set_text(str(payback))
	if (towns.town_select == "fiyork"):
		if ((int(payback) <= fiyork.fiyork_current_loan) and (money.fiyork_cash >= payback)):
			payback = int(payback) + 1
			payback_output.clear()
			payback_output.set_text(str(payback))

func _on_confirm_button_down():
	if (towns.town_select == "hollyhock"):
		borrow = get_node("borrow_output").get_text()
		payback = get_node("payback_output").get_text()
		if (int(borrow) > (3000 - hollyhock.hollyhock_current_loan)):
			borrow = 3000 - hollyhock.hollyhock_current_loan
		if (int(payback) > hollyhock.hollyhock_current_loan):
			payback = hollyhock.hollyhock_current_loan
		if (int(payback) > money.hollyhock_cash):
			payback = money.hollyhock_cash
		money.hollyhock_balance = (money.hollyhock_balance - int(payback)) + int(borrow)
		hollyhock.hollyhock_current_loan = (hollyhock.hollyhock_current_loan - int(payback)) + int(borrow)
		loans.credit_limit = 3000 - hollyhock.hollyhock_current_loan
	if (towns.town_select == "fiyork"):
		borrow = get_node("borrow_output").get_text()
		payback = get_node("payback_output").get_text()
		if (int(borrow) > (3000 - fiyork.fiyork_current_loan)):
			borrow = 3000 - fiyork.fiyork_current_loan
		if (int(payback) > fiyork.fiyork_current_loan):
			payback = fiyork.fiyork_current_loan
		if (int(payback) > money.fiyork_cash):
			payback = money.fiyork_cash
		money.fiyork_balance = (money.fiyork_balance - int(payback)) + int(borrow)
		fiyork.fiyork_current_loan = (fiyork.fiyork_current_loan - int(payback)) + int(borrow)
		loans.credit_limit = 3000 - fiyork.fiyork_current_loan
	borrow = 0
	payback = 0
	borrow_output.clear()
	borrow_output.set_text(str(borrow))
	payback_output.clear()
	payback_output.set_text(str(payback))