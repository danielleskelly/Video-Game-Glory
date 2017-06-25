extends Node

var hollyhock_balance = 200
var hollyhock_expenses = 20
var income = 0
var hollyhock_cash

func _ready():
	set_process(true)
	
func _process(delta):
	hollyhock_cash = hollyhock_balance - hollyhock_expenses