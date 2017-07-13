extends Node

var hollyhock_balance = 400
var hollyhock_expenses = 0
var income = 0
var hollyhock_cash

func _ready():
	set_process(true)
	
func _process(delta):
	if (towns.town_select == "hollyhock"):
		hollyhock_cash = hollyhock_balance - hollyhock_expenses
		hollyhock_expenses = int(customer_math.hollyhock_advertising) + int(hollyhock.hollyhock_research_spending)