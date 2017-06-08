extends HButtonArray

var select
var report_select
var upgrade_select
var locals_select
var pricing_select

var reports
var upgrade
var locals
var finances
var customers
var competition
var news
var supplies
var games
var marketing
var storefront
var repairman
var entertainment
var deus
var contractor
var loans
var research
var pricing
var concessions_pricing
var arcade_pricing



func _ready():
	set_process(true)
	reports = get_tree().get_current_scene().get_node("report_buttons")
	upgrade = get_tree().get_current_scene().get_node("upgrade_buttons")
	locals = get_tree().get_current_scene().get_node("locals_buttons")
	pricing = get_tree().get_current_scene().get_node("pricing_buttons")
	finances = get_tree().get_current_scene().get_node("finances_full")
	customers = get_tree().get_current_scene().get_node("customers")
	competition = get_tree().get_current_scene().get_node("competition")
	news = get_tree().get_current_scene().get_node("news")
	supplies = get_tree().get_current_scene().get_node("supplies_full")
	games = get_tree().get_current_scene().get_node("games")
	marketing = get_tree().get_current_scene().get_node("marketing")
	storefront = get_tree().get_current_scene().get_node("storefront")
	repairman = get_tree().get_current_scene().get_node("repairman")
	entertainment = get_tree().get_current_scene().get_node("entertainment")
	deus = get_tree().get_current_scene().get_node("deus_ex_machina")
	contractor = get_tree().get_current_scene().get_node("contractor")
	loans = get_tree().get_current_scene().get_node("loans")
	research = get_tree().get_current_scene().get_node("research")
	concessions_pricing = get_tree().get_current_scene().get_node("concessions_pricing")
	arcade_pricing = get_tree().get_current_scene().get_node("arcade_pricing")
	pass

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
			repairman.show()
		if (upgrade_select == 2):
			entertainment.show()
		if (upgrade_select == 3):
			deus.show()
	if (select == 7):
		locals.show()
		locals_select = locals.get_selected()
		if (locals_select == 0):
			contractor.show()
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
	repairman.set_hidden(true)
	entertainment.set_hidden(true)
	deus.set_hidden(true)
	contractor.set_hidden(true)
	loans.set_hidden(true)
	research.set_hidden(true)
	pricing.set_hidden(true)
	concessions_pricing.set_hidden(true)
	arcade_pricing.set_hidden(true)