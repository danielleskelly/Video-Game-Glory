extends Node2D

onready var sales_made_output = get_node("sales_made_output")
onready var waited_loss_output = get_node("waited_loss_output")
onready var price_loss_output = get_node("price_loss_output")
onready var sabatoge_loss_output = get_node("sabatoge_loss_output")
onready var storefront_loss_output = get_node("storefront_loss_output")


func _ready():
	set_process(true)

func _process(delta):
	sales_made_output.clear()
	sales_made_output.add_text(str(customer_globals.sales_made))
	waited_loss_output.clear()
	waited_loss_output.add_text(str(customer_globals.waited_loss))
	price_loss_output.clear()
	price_loss_output.add_text(str(customer_globals.price_loss))
	sabatoge_loss_output.clear()
	sabatoge_loss_output.add_text(str(customer_globals.sabatoge_loss))
	storefront_loss_output.clear()
	storefront_loss_output.add_text(str(customer_globals.storefront_loss))