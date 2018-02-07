extends Node

var hollyhock_balance
var hollyhock_expenses
var hollyhock_cash

var fiyork_balance
var fiyork_expenses
var fiyork_cash

var plansey_balance
var plansey_expenses
var plansey_cash

var untilly_balance
var untilly_expenses
var untilly_cash


var windrow_balance
var windrow_expenses
var windrow_cash

var banlon_balance
var banlon_expenses
var banlon_cash

var slatten_balance
var slatten_expenses
var slatten_cash

var income = 0

func _ready():
	hollyhock_balance = 400
	hollyhock_expenses = 0
	hollyhock_cash = hollyhock_balance - hollyhock_expenses
	fiyork_balance = 400
	fiyork_expenses = 0
	fiyork_cash = fiyork_balance - fiyork_expenses
	plansey_balance = 400
	plansey_expenses = 0
	plansey_cash = plansey_balance - plansey_expenses
	untilly_balance = 200
	untilly_expenses = 0
	untilly_cash = untilly_balance - untilly_expenses
	windrow_balance = 800
	windrow_expenses = 0
	windrow_cash = windrow_balance - windrow_expenses
	banlon_balance = 200
	banlon_expenses = 0
	banlon_cash = banlon_balance - banlon_expenses
	slatten_balance = 500
	slatten_expenses = 0
	slatten_cash = slatten_balance - slatten_expenses
	set_process(true)

func _process(delta):
	if (towns.town_select == "hollyhock"):
		hollyhock_expenses = int(customer_math.hollyhock_advertising) + int(hollyhock.hollyhock_research_spending)
		hollyhock_cash = hollyhock_balance - hollyhock_expenses
	if (towns.town_select == "fiyork"):
		fiyork_cash = fiyork_balance - fiyork_expenses
		fiyork_expenses = int(customer_math.fiyork_advertising) + int(fiyork.fiyork_research_spending)
	if (towns.town_select == "plansey"):
		plansey_cash = plansey_balance - plansey_expenses
		plansey_expenses = int(customer_math.plansey_advertising) + int(plansey.plansey_research_spending)
	if (towns.town_select == "untilly"):
		untilly_cash = untilly_balance - untilly_expenses
		untilly_expenses = int(customer_math.untilly_advertising) + int(untilly.untilly_research_spending)
	if (towns.town_select == "windrow"):
		windrow_cash = windrow_balance - windrow_expenses
		windrow_expenses = int(customer_math.windrow_advertising) + int(windrow.windrow_research_spending)
	if (towns.town_select == "banlon"):
		banlon_cash = banlon_balance - banlon_expenses
		banlon_expenses = int(customer_math.banlon_advertising) + int(banlon.banlon_research_spending)
	if (towns.town_select == "slatten"):
		slatten_cash = slatten_balance - slatten_expenses
		slatten_expenses = int(customer_math.slatten_advertising) + int(slatten.slatten_research_spending)