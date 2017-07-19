extends Node

var sales_made = 0
var sales_lost = 0
var storefront_loss = 0
var price_loss = 0
var waited_loss = 0
var sabatoge_loss = 0

func _ready():
	pass

func customer_reset():
	sales_made = 0
	sales_lost = 0
	storefront_loss = 0
	price_loss = 0
	waited_loss = 0
	sabatoge_loss = 0
	money.income = 0