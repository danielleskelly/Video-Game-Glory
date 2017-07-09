extends HButtonArray

onready var animator = get_tree().get_current_scene().get_node("AnimationPlayer")
onready var reports = get_tree().get_current_scene().get_node("report_buttons")
onready var upgrade = get_tree().get_current_scene().get_node("upgrade_buttons")
onready var locals = get_tree().get_current_scene().get_node("locals_buttons")
onready var demands = get_tree().get_current_scene().get_node("demand_buttons")
onready var supply = get_tree().get_current_scene().get_node("supply_buttons")
var research
var loans
var marketing
var ignore

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
			if (animator.get_current_animation() != "finances"):
				check()
				if (ignore == false):
					get_tree().get_current_scene().get_node("AnimationPlayer").play("finances")
		if (report_select == 1):
			if (animator.get_current_animation() != "customers"):
				check()
				if (ignore == false):
					get_tree().get_current_scene().get_node("AnimationPlayer").play("customers")
		if (report_select == 2):
			if (animator.get_current_animation() != "news"):
				check()
				if (ignore == false):
					get_tree().get_current_scene().get_node("AnimationPlayer").play("news")
	if (select == 1):
		supply.show()
		supply_select = supply.get_selected()
		if (supply_select == 0):
			if (animator.get_current_animation() != "games"):
				check()
				if (ignore == false):
					get_tree().get_current_scene().get_node("AnimationPlayer").play("games")
		if (supply_select == 1):
			if (animator.get_current_animation() != "supplies"):
				check()
				if (ignore == false):
					get_tree().get_current_scene().get_node("AnimationPlayer").play("supplies")
	if (select == 2):
		demands.show()
		demand_select = demands.get_selected()
		if (demand_select == 0):
			if (animator.get_current_animation() != "arcade_pricing"):
				check()
				if (ignore == false):
					get_tree().get_current_scene().get_node("AnimationPlayer").play("arcade_pricing")
		if (demand_select == 1):
			if (animator.get_current_animation() != "concessions_pricing"):
				check()
				if (ignore == false):
					get_tree().get_current_scene().get_node("AnimationPlayer").play("concessions_pricing")
	if (select == 3):
		upgrade.show()
		upgrade_select = upgrade.get_selected()
		if (upgrade_select == 0):
			if (animator.get_current_animation() != "storefront"):
				check()
				if (ignore == false):
					get_tree().get_current_scene().get_node("AnimationPlayer").play("storefront")
		if (upgrade_select == 1):
			if (animator.get_current_animation() != "arcade_upgrades"):
				check()
				if (ignore == false):
					get_tree().get_current_scene().get_node("AnimationPlayer").play("arcade_upgrades")
		if (upgrade_select == 2):
			if (animator.get_current_animation() != "entertainment"):
				check()
				if (ignore == false):
					get_tree().get_current_scene().get_node("AnimationPlayer").play("entertainment")
	if (select == 4):
		locals.show()
		locals_select = locals.get_selected()
		if (locals_select == 0):
			if (animator.get_current_animation() != "marketing"):
				check()
				if (ignore == false):
					get_tree().get_current_scene().get_node("AnimationPlayer").play("marketing")
		if (locals_select == 1):
			if (animator.get_current_animation() != "loans"):
				check()
				if (ignore == false):
					get_tree().get_current_scene().get_node("AnimationPlayer").play("loans")
	if (select == 5):
			if (animator.get_current_animation() != "research"):
				check()
				if (ignore == false):
					get_tree().get_current_scene().get_node("AnimationPlayer").play("research")
					
					
func check():
	ignore = false
	var ignore_array = ["tutorial", "tutorial_pt2", "tutorial_pt3", "tutorial_pt4", "tutorial_pt5", "tutorial_pt6"]
	for x in ignore_array:
		if (animator.get_current_animation() == x):
			ignore = true