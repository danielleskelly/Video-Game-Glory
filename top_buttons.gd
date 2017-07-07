extends HButtonArray

onready var reports = get_tree().get_current_scene().get_node("report_buttons")
onready var upgrade = get_tree().get_current_scene().get_node("upgrade_buttons")
onready var locals = get_tree().get_current_scene().get_node("locals_buttons")
onready var demands = get_tree().get_current_scene().get_node("demand_buttons")
onready var supply = get_tree().get_current_scene().get_node("supply_buttons")
var research
var loans
var marketing

#allows for the tabs to change
var select 
var report_select
var supply_select
var demand_select
var upgrade_select
var locals_select

func _ready():
	set_process(true)


func _process(delta):
	select = get_selected()
	if (select == 0):
		report_select = reports.get_selected()
		if (report_select == 0):
			if (get_tree().get_current_scene().get_node("AnimationPlayer").get_current_animation() != "finances"):
				if ((get_tree().get_current_scene().get_node("AnimationPlayer").get_current_animation() != "tutorial") and (get_tree().get_current_scene().get_node("AnimationPlayer").get_current_animation() != "tutorial_pt2")):
					get_tree().get_current_scene().get_node("AnimationPlayer").play("finances")
		if (report_select == 1):
			if (get_tree().get_current_scene().get_node("AnimationPlayer").get_current_animation() != "customers"):
				if ((get_tree().get_current_scene().get_node("AnimationPlayer").get_current_animation() != "tutorial") and (get_tree().get_current_scene().get_node("AnimationPlayer").get_current_animation() != "tutorial_pt2")):
					get_tree().get_current_scene().get_node("AnimationPlayer").play("customers")
		if (report_select == 2):
			if (get_tree().get_current_scene().get_node("AnimationPlayer").get_current_animation() != "news"):
				if ((get_tree().get_current_scene().get_node("AnimationPlayer").get_current_animation() != "tutorial") and (get_tree().get_current_scene().get_node("AnimationPlayer").get_current_animation() != "tutorial_pt2")):
					get_tree().get_current_scene().get_node("AnimationPlayer").play("news")
	if (select == 1):
		supply.show()
		supply_select = supply.get_selected()
		if (supply_select == 0):
			if (get_tree().get_current_scene().get_node("AnimationPlayer").get_current_animation() != "games"):
				if ((get_tree().get_current_scene().get_node("AnimationPlayer").get_current_animation() != "tutorial") and (get_tree().get_current_scene().get_node("AnimationPlayer").get_current_animation() != "tutorial_pt2")):
					get_tree().get_current_scene().get_node("AnimationPlayer").play("games")
		if (supply_select == 1):
			if (get_tree().get_current_scene().get_node("AnimationPlayer").get_current_animation() != "supplies"):
				if ((get_tree().get_current_scene().get_node("AnimationPlayer").get_current_animation() != "tutorial") and (get_tree().get_current_scene().get_node("AnimationPlayer").get_current_animation() != "tutorial_pt2")):
					get_tree().get_current_scene().get_node("AnimationPlayer").play("supplies")
	if (select == 2):
		demands.show()
		demand_select = demands.get_selected()
		if (demand_select == 0):
			if (get_tree().get_current_scene().get_node("AnimationPlayer").get_current_animation() != "arcade_pricing"):
				if ((get_tree().get_current_scene().get_node("AnimationPlayer").get_current_animation() != "tutorial") and (get_tree().get_current_scene().get_node("AnimationPlayer").get_current_animation() != "tutorial_pt2")):
					get_tree().get_current_scene().get_node("AnimationPlayer").play("arcade_pricing")
		if (demand_select == 1):
			if (get_tree().get_current_scene().get_node("AnimationPlayer").get_current_animation() != "concessions_pricing"):
				if ((get_tree().get_current_scene().get_node("AnimationPlayer").get_current_animation() != "tutorial") and (get_tree().get_current_scene().get_node("AnimationPlayer").get_current_animation() != "tutorial_pt2")):
					get_tree().get_current_scene().get_node("AnimationPlayer").play("concessions_pricing")
	if (select == 3):
		upgrade.show()
		upgrade_select = upgrade.get_selected()
		if (upgrade_select == 0):
			if (get_tree().get_current_scene().get_node("AnimationPlayer").get_current_animation() != "storefront"):
				if ((get_tree().get_current_scene().get_node("AnimationPlayer").get_current_animation() != "tutorial") and (get_tree().get_current_scene().get_node("AnimationPlayer").get_current_animation() != "tutorial_pt2")):
					get_tree().get_current_scene().get_node("AnimationPlayer").play("storefront")
		if (upgrade_select == 1):
			if (get_tree().get_current_scene().get_node("AnimationPlayer").get_current_animation() != "arcade_upgrades"):
				if ((get_tree().get_current_scene().get_node("AnimationPlayer").get_current_animation() != "tutorial") and (get_tree().get_current_scene().get_node("AnimationPlayer").get_current_animation() != "tutorial_pt2")):
					get_tree().get_current_scene().get_node("AnimationPlayer").play("arcade_upgrades")
		if (upgrade_select == 2):
			if (get_tree().get_current_scene().get_node("AnimationPlayer").get_current_animation() != "entertainment"):
				if ((get_tree().get_current_scene().get_node("AnimationPlayer").get_current_animation() != "tutorial") and (get_tree().get_current_scene().get_node("AnimationPlayer").get_current_animation() != "tutorial_pt2")):
					get_tree().get_current_scene().get_node("AnimationPlayer").play("entertainment")
	if (select == 4):
		locals.show()
		locals_select = locals.get_selected()
		if (locals_select == 0):
			if (get_tree().get_current_scene().get_node("AnimationPlayer").get_current_animation() != "marketing"):
				if ((get_tree().get_current_scene().get_node("AnimationPlayer").get_current_animation() != "tutorial") and (get_tree().get_current_scene().get_node("AnimationPlayer").get_current_animation() != "tutorial_pt2")):
					get_tree().get_current_scene().get_node("AnimationPlayer").play("marketing")
		if (locals_select == 1):
			if (get_tree().get_current_scene().get_node("AnimationPlayer").get_current_animation() != "loans"):
				if ((get_tree().get_current_scene().get_node("AnimationPlayer").get_current_animation() != "tutorial") and (get_tree().get_current_scene().get_node("AnimationPlayer").get_current_animation() != "tutorial_pt2")):
					get_tree().get_current_scene().get_node("AnimationPlayer").play("loans")
	if (select == 5):
			if (get_tree().get_current_scene().get_node("AnimationPlayer").get_current_animation() != "research"):
				if ((get_tree().get_current_scene().get_node("AnimationPlayer").get_current_animation() != "tutorial") and (get_tree().get_current_scene().get_node("AnimationPlayer").get_current_animation() != "tutorial_pt2")):
					get_tree().get_current_scene().get_node("AnimationPlayer").play("research")