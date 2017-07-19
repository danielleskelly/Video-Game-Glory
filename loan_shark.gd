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
	if (towns.town_select == "plansey"):
		credit_limit_output.clear()
		credit_limit_output.add_text(str(loans.credit_limit))
		current_loan_output.clear()
		current_loan_output.add_text(str(plansey.plansey_current_loan))
	if (towns.town_select == "plansey"):
		credit_limit_output.clear()
		credit_limit_output.add_text(str(loans.credit_limit))
		current_loan_output.clear()
		current_loan_output.add_text(str(plansey.plansey_current_loan))
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
	if (towns.town_select == "untilly"):
		if ((int(payback) <= untilly.untilly_current_loan) and (money.untilly_cash >= payback)):
			payback = int(payback) + 1
			payback_output.clear()
			payback_output.set_text(str(payback))
	if (towns.town_select == "windrow"):
		credit_limit_output.clear()
		credit_limit_output.add_text(str(loans.credit_limit))
		current_loan_output.clear()
		current_loan_output.add_text(str(windrow.windrow_current_loan))
	if (towns.town_select == "banlon"):
		credit_limit_output.clear()
		credit_limit_output.add_text(str(loans.credit_limit))
		current_loan_output.clear()
		current_loan_output.add_text(str(banlon.banlon_current_loan))
	if (towns.town_select == "slatten"):
		credit_limit_output.clear()
		credit_limit_output.add_text(str(loans.credit_limit))
		current_loan_output.clear()
		current_loan_output.add_text(str(slatten.slatten_current_loan))


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
	if (towns.town_select == "plansey"):
		borrow = get_node("borrow_output").get_text()
		payback = get_node("payback_output").get_text()
		if (int(borrow) > (3000 - plansey.plansey_current_loan)):
			borrow = 3000 - plansey.plansey_current_loan
		if (int(payback) > plansey.plansey_current_loan):
			payback = plansey.plansey_current_loan
		if (int(payback) > money.plansey_cash):
			payback = money.plansey_cash
		money.plansey_balance = (money.plansey_balance - int(payback)) + int(borrow)
		plansey.plansey_current_loan = (plansey.plansey_current_loan - int(payback)) + int(borrow)
		loans.credit_limit = 3000 - plansey.plansey_current_loan
	if (towns.town_select == "untilly"):
		borrow = get_node("borrow_output").get_text()
		payback = get_node("payback_output").get_text()
		if (int(borrow) > (3000 - untilly.untilly_current_loan)):
			borrow = 3000 - untilly.untilly_current_loan
		if (int(payback) > untilly.untilly_current_loan):
			payback = untilly.untilly_current_loan
		if (int(payback) > money.untilly_cash):
			payback = money.untilly_cash
		money.untilly_balance = (money.untilly_balance - int(payback)) + int(borrow)
		untilly.untilly_current_loan = (untilly.untilly_current_loan - int(payback)) + int(borrow)
		loans.credit_limit = 3000 - untilly.untilly_current_loan
	if (towns.town_select == "windrow"):
		borrow = get_node("borrow_output").get_text()
		payback = get_node("payback_output").get_text()
		if (int(borrow) > (3000 - windrow.windrow_current_loan)):
			borrow = 3000 - windrow.windrow_current_loan
		if (int(payback) > windrow.windrow_current_loan):
			payback = windrow.windrow_current_loan
		if (int(payback) > money.windrow_cash):
			payback = money.windrow_cash
		money.windrow_balance = (money.windrow_balance - int(payback)) + int(borrow)
		windrow.windrow_current_loan = (windrow.windrow_current_loan - int(payback)) + int(borrow)
		loans.credit_limit = 3000 - windrow.windrow_current_loan
	if (towns.town_select == "banlon"):
		borrow = get_node("borrow_output").get_text()
		payback = get_node("payback_output").get_text()
		if (int(borrow) > (3000 - banlon.banlon_current_loan)):
			borrow = 3000 - banlon.banlon_current_loan
		if (int(payback) > banlon.banlon_current_loan):
			payback = banlon.banlon_current_loan
		if (int(payback) > money.banlon_cash):
			payback = money.banlon_cash
		money.banlon_balance = (money.banlon_balance - int(payback)) + int(borrow)
		banlon.banlon_current_loan = (banlon.banlon_current_loan - int(payback)) + int(borrow)
		loans.credit_limit = 3000 - banlon.banlon_current_loan
	if (towns.town_select == "slatten"):
		borrow = get_node("borrow_output").get_text()
		payback = get_node("payback_output").get_text()
		if (int(borrow) > (3000 - slatten.slatten_current_loan)):
			borrow = 3000 - slatten.slatten_current_loan
		if (int(payback) > slatten.slatten_current_loan):
			payback = slatten.slatten_current_loan
		if (int(payback) > money.slatten_cash):
			payback = money.slatten_cash
		money.slatten_balance = (money.slatten_balance - int(payback)) + int(borrow)
		slatten.slatten_current_loan = (slatten.slatten_current_loan - int(payback)) + int(borrow)
		loans.credit_limit = 3000 - slatten.slatten_current_loan
	borrow = 0
	payback = 0
	borrow_output.clear()
	borrow_output.set_text(str(borrow))
	payback_output.clear()
	payback_output.set_text(str(payback))