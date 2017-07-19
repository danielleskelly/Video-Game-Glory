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
	if (towns.town_select == "fiyork"):
		supply_one_purchase = get_node("supply_one").freezie_purchase
		supply_two_purchase = get_node("supply_two").pizza_purchase
		supplies.fiyork_freezie_count = supplies.fiyork_freezie_count + supply_one_purchase
		supplies.fiyork_pizza_count = supplies.fiyork_pizza_count + supply_two_purchase
		get_node("supply_one").freezie_purchase = 0
		get_node("supply_two").pizza_purchase = 0
		var total_deduc = get_node("overall_total_output").get_text()
		money.fiyork_balance = money.fiyork_balance - int(total_deduc)
	if (towns.town_select == "plansey"):
		supply_one_purchase = get_node("supply_one").energy_purchase
		supply_two_purchase = get_node("supply_two").nachos_purchase
		supplies.plansey_energy_count = supplies.plansey_energy_count + supply_one_purchase
		supplies.plansey_nachos_count = supplies.plansey_nachos_count + supply_two_purchase
		get_node("supply_one").energy_purchase = 0
		get_node("supply_two").nachos_purchase = 0
		var total_deduc = get_node("overall_total_output").get_text()
		money.plansey_balance = money.plansey_balance - int(total_deduc)
	if (towns.town_select == "untilly"):
		supply_one_purchase = get_node("supply_one").soda_purchase
		supply_two_purchase = get_node("supply_two").popcorn_purchase
		supplies.untilly_soda_count = supplies.untilly_soda_count + supply_one_purchase
		supplies.untilly_popcorn_count = supplies.untilly_popcorn_count + supply_two_purchase
		get_node("supply_one").soda_purchase = 0
		get_node("supply_two").popcorn_purchase = 0
		var total_deduc = get_node("overall_total_output").get_text()
		money.untilly_balance = money.untilly_balance - int(total_deduc)
	if (towns.town_select == "windrow"):
		supply_one_purchase = get_node("supply_one").freezie_purchase
		supply_two_purchase = get_node("supply_two").pizza_purchase
		supplies.windrow_freezie_count = supplies.windrow_freezie_count + supply_one_purchase
		supplies.windrow_pizza_count = supplies.windrow_pizza_count + supply_two_purchase
		get_node("supply_one").freezie_purchase = 0
		get_node("supply_two").pizza_purchase = 0
		var total_deduc = get_node("overall_total_output").get_text()
		money.windrow_balance = money.windrow_balance - int(total_deduc)
	if (towns.town_select == "banlon"):
		supply_one_purchase = get_node("supply_one").energy_purchase
		supply_two_purchase = get_node("supply_two").nachos_purchase
		supplies.banlon_energy_count = supplies.banlon_energy_count + supply_one_purchase
		supplies.banlon_nachos_count = supplies.banlon_nachos_count + supply_two_purchase
		get_node("supply_one").energy_purchase = 0
		get_node("supply_two").nachos_purchase = 0
		var total_deduc = get_node("overall_total_output").get_text()
		money.banlon_balance = money.banlon_balance - int(total_deduc)
	if (towns.town_select == "slatten"):
		supply_one_purchase = get_node("supply_one").freezie_purchase
		supply_two_purchase = get_node("supply_two").popcorn_purchase
		supplies.slatten_freezie_count = supplies.slatten_freezie_count + supply_one_purchase
		supplies.slatten_popcorn_count = supplies.slatten_popcorn_count + supply_two_purchase
		get_node("supply_one").freezie_purchase = 0
		get_node("supply_two").popcorn_purchase = 0
		var total_deduc = get_node("overall_total_output").get_text()
		money.slatten_balance = money.slatten_balance - int(total_deduc)
	supplies.purchase_total = 0