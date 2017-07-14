extends Node

var hollyhock_balance = 400
var hollyhock_expenses = 0
var hollyhock_cash
var fiyork_balance = 200
var fiyork_expenses = 0
var fiyork_cash
var income = 0

func _ready():
	set_process(true)
	
func _process(delta):
	if (towns.town_select == "hollyhock"):
		hollyhock_cash = hollyhock_balance - hollyhock_expenses
		hollyhock_expenses = int(customer_math.hollyhock_advertising) + int(hollyhock.hollyhock_research_spending)
	if (towns.town_select == "fiyork"):
		fiyork_cash = fiyork_balance - fiyork_expenses
		fiyork_expenses = int(customer_math.fiyork_advertising) + int(fiyork.fiyork_research_spending)