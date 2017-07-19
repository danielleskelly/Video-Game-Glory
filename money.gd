extends Node

var hollyhock_balance = 400
var hollyhock_expenses = 0
var hollyhock_cash

var fiyork_balance = 200
var fiyork_expenses = 0
var fiyork_cash

var plansey_balance = 200
var plansey_expenses = 0
var plansey_cash

var untilly_balance = 200
var untilly_expenses = 0
var untilly_cash

var windrow_balance = 200
var windrow_expenses = 0
var windrow_cash

var banlon_balance = 200
var banlon_expenses = 0
var banlon_cash

var slatten_balance = 200
var slatten_expenses = 0
var slatten_cash

var income = 0

func _ready():
	add_to_group("Persist")
	set_process(true)
	
func save():
	var savedict = {
		filename=get_filename(),
		hollyhock_balance = hollyhock_balance,
		hollyhock_expenses = hollyhock_expenses,
		fiyork_balance = fiyork_balance,
		fiyork_expenses = fiyork_expenses,
		plansey_balance = plansey_balance,
		plansey_expenses = plansey_expenses,
		untilly_balance = untilly_balance,
		untilly_expenses = untilly_expenses,
		windrow_balance = windrow_balance,
		windrow_expenses = windrow_expenses,
		banlon_balance = banlon_balance,
		banlon_expenses = banlon_expenses,
		slatten_balance = slatten_balance,
		slatten_expenses = slatten_expenses
	}
	
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