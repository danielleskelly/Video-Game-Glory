extends Node2D

onready var supply_one = get_tree().get_current_scene().get_node("supply_one")
onready var supply_two = get_tree().get_current_scene().get_node("supply_two")

var supply_one_purchase
var supply_two_purchase

var overall_total

func _ready():
	pass

func _on_confirm_button_down():
	if (towns.town_select == "hollyhock"):
		supply_one_purchase = get_node("supply_one").soda_purchase
		supply_two_purchase = get_node("supply_two").popcorn_purchase
		supplies.hollyhock_soda_count = supplies.hollyhock_soda_count + supply_one_purchase
		supplies.hollyhock_popcorn_count = supplies.hollyhock_popcorn_count + supply_two_purchase
		get_node("supply_one").soda_purchase = 0
		get_node("supply_two").popcorn_purchase = 0
		var total_deduc = get_node("overall_total_output").get_text()
		money.hollyhock_balance = money.hollyhock_balance - int(total_deduc)
	supplies.purchase_total = 0