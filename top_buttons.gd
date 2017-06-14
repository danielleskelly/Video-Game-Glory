extends HButtonArray

onready var reports = get_tree().get_current_scene().get_node("report_buttons")
onready var upgrade = get_tree().get_current_scene().get_node("upgrade_buttons")
onready var locals = get_tree().get_current_scene().get_node("locals_buttons")
onready var pricing = get_tree().get_current_scene().get_node("pricing_buttons")
onready var finances = get_tree().get_current_scene().get_node("finances_full")
onready var customers = get_tree().get_current_scene().get_node("customers")
onready var competition = get_tree().get_current_scene().get_node("competition")
onready var news = get_tree().get_current_scene().get_node("news")
onready var supplies = get_tree().get_current_scene().get_node("supplies_full")
onready var games = get_tree().get_current_scene().get_node("games")
onready var marketing = get_tree().get_current_scene().get_node("marketing")
onready var storefront = get_tree().get_current_scene().get_node("storefront")
onready var arcade_upgrade = get_tree().get_current_scene().get_node("arcade_upgrade")
onready var entertainment = get_tree().get_current_scene().get_node("entertainment")
onready var sabatoge = get_tree().get_current_scene().get_node("sabatoge")
onready var loans = get_tree().get_current_scene().get_node("loans")
onready var research = get_tree().get_current_scene().get_node("research")
onready var concessions_pricing = get_tree().get_current_scene().get_node("concessions_pricing")
onready var arcade_pricing = get_tree().get_current_scene().get_node("arcade_pricing")

#allows for the tabs to change
var select 
var report_select
var pricing_select
var upgrade_select
var locals_select

func _ready():
	set_process(true)

func _process(delta):
	hide()
	select = get_selected()
	if (select == 0):
		reports.show()
		report_select = reports.get_selected()
		if (report_select == 0):
			finances.show()
		if (report_select == 1):
			customers.show()
		if (report_select == 2):
			competition.show()
	if (select == 1):
		news.show()
	if (select == 2):
		supplies.show()
	if (select == 3):
		games.show()
	if (select == 4):
		pricing.show()
		pricing_select = pricing.get_selected()
		if (pricing_select == 0):
			concessions_pricing.show()
		if (pricing_select == 1):
			arcade_pricing.show()
	if (select == 5):
		marketing.show()
	if (select == 6):
		upgrade.show()
		upgrade_select = upgrade.get_selected()
		if (upgrade_select == 0):
			storefront.show()
		if (upgrade_select == 1):
			arcade_upgrade.show()
		if (upgrade_select == 2):
			entertainment.show()
	if (select == 7):
		locals.show()
		locals_select = locals.get_selected()
		if (locals_select == 0):
			sabatoge.show()
		if (locals_select == 1):
			loans.show()
	if (select == 8):
		research.show()

func hide():
	reports.set_hidden(true)
	upgrade.set_hidden(true)
	locals.set_hidden(true)
	finances.set_hidden(true)
	customers.set_hidden(true)
	competition.set_hidden(true)
	news.set_hidden(true)
	supplies.set_hidden(true)
	games.set_hidden(true)
	marketing.set_hidden(true)
	storefront.set_hidden(true)
	arcade_upgrade.set_hidden(true)
	entertainment.set_hidden(true)
	sabatoge.set_hidden(true)
	loans.set_hidden(true)
	research.set_hidden(true)
	pricing.set_hidden(true)
	concessions_pricing.set_hidden(true)
	arcade_pricing.set_hidden(true)