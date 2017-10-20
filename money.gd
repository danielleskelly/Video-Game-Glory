extends Node

var hollyhock_balance = 400
var hollyhock_expenses = 0
var hollyhock_cash = hollyhock_balance - hollyhock_expenses

var fiyork_balance = 400
var fiyork_expenses = 0
var fiyork_cash = fiyork_balance - fiyork_expenses

var plansey_balance = 400
var plansey_expenses = 0
var plansey_cash = plansey_balance - plansey_expenses

var untilly_balance = 200
var untilly_expenses = 0
var untilly_cash = untilly_balance - untilly_expenses

var windrow_balance = 800
var windrow_expenses = 0
var windrow_cash = windrow_balance - windrow_expenses

var banlon_balance = 200
var banlon_expenses = 0
var banlon_cash = banlon_balance - banlon_expenses

var slatten_balance = 500
var slatten_expenses = 0
var slatten_cash = slatten_balance - slatten_expenses

var income = 0

func _ready():
	pass
	
func _process(delta):
	if (towns.town_select == "hollyhock"):
		hollyhock_cash = hollyhock_balance - hollyhock_expenses
		hollyhock_expenses = int(customer_math.hollyhock_advertising) + int(hollyhock.hollyhock_research_spending)
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