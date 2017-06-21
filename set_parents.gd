extends Node

# class member variables go here, for example:
# var a = 2
# var b = "textvar"

func _ready():
	# Called every time the node is added to the scene.
	# Initialization here
	pass

func set_parents():
	if ((get_parent().get_parent().get_name() == "zone_one_path") and (concession_choice == true)):
		concessions_timer.start()
		old_parent = get_tree().get_current_scene().get_node("zone_one_path")
		new_parent = get_tree().get_current_scene().get_node("zone_one_to_conc")
		move_node = get_tree().get_current_scene().get_node("zone_one_path").get_child(0)
		get_tree().get_current_scene().get_node("arcade_zone_one").add_to_group("free")
	if ((get_parent().get_parent().get_name() == "zone_one_path") and (concession_choice == false)):
		exit_timer.start()
		old_parent = get_tree().get_current_scene().get_node("zone_one_path")
		new_parent = get_tree().get_current_scene().get_node("zone_one_to_exit")
		move_node = get_tree().get_current_scene().get_node("zone_one_path").get_child(0)
		get_tree().get_current_scene().get_node("arcade_zone_one").add_to_group("free")
	if ((get_parent().get_parent().get_name() == "zone_two_path") and (concession_choice == true)):
		concessions_timer.start()
		old_parent = get_tree().get_current_scene().get_node("zone_two_path")
		new_parent = get_tree().get_current_scene().get_node("zone_two_to_conc")
		move_node = get_tree().get_current_scene().get_node("zone_two_path").get_child(0)
		get_tree().get_current_scene().get_node("arcade_zone_two").add_to_group("free")
	if ((get_parent().get_parent().get_name() == "zone_two_path") and (concession_choice == false)):
		exit_timer.start()
		old_parent = get_tree().get_current_scene().get_node("zone_two_path")
		new_parent = get_tree().get_current_scene().get_node("zone_two_to_exit")
		move_node = get_tree().get_current_scene().get_node("zone_two_path").get_child(0)
		get_tree().get_current_scene().get_node("arcade_zone_two").add_to_group("free")
	if ((get_parent().get_parent().get_name() == "zone_three_path") and (concession_choice == true)):
		concessions_timer.start()
		old_parent = get_tree().get_current_scene().get_node("zone_three_path")
		new_parent = get_tree().get_current_scene().get_node("zone_three_to_conc")
		move_node = get_tree().get_current_scene().get_node("zone_three_path").get_child(0)
		get_tree().get_current_scene().get_node("arcade_zone_three").add_to_group("free")
	if ((get_parent().get_parent().get_name() == "zone_three_path") and (concession_choice == false)):
		exit_timer.start()
		old_parent = get_tree().get_current_scene().get_node("zone_three_path")
		new_parent = get_tree().get_current_scene().get_node("zone_three_to_exit")
		move_node = get_tree().get_current_scene().get_node("zone_three_path").get_child(0)
		get_tree().get_current_scene().get_node("arcade_zone_three").add_to_group("free")
	if ((get_parent().get_parent().get_name() == "zone_four_path") and (concession_choice == true)):
		concessions_timer.start()
		old_parent = get_tree().get_current_scene().get_node("zone_four_path")
		new_parent = get_tree().get_current_scene().get_node("zone_four_to_conc")
		move_node = get_tree().get_current_scene().get_node("zone_four_path").get_child(0)
		get_tree().get_current_scene().get_node("arcade_zone_four").add_to_group("free")
	if ((get_parent().get_parent().get_name() == "zone_four_path") and (concession_choice == false)):
		exit_timer.start()
		old_parent = get_tree().get_current_scene().get_node("zone_four_path")
		new_parent = get_tree().get_current_scene().get_node("zone_four_to_exit")
		move_node = get_tree().get_current_scene().get_node("zone_four_path").get_child(0)
		get_tree().get_current_scene().get_node("arcade_zone_four").add_to_group("free")
	if ((get_parent().get_parent().get_name() == "zone_five_path") and (concession_choice == true)):
		concessions_timer.start()
		old_parent = get_tree().get_current_scene().get_node("zone_five_path")
		new_parent = get_tree().get_current_scene().get_node("zone_five_to_conc")
		move_node = get_tree().get_current_scene().get_node("zone_five_path").get_child(0)
		get_tree().get_current_scene().get_node("arcade_zone_five").add_to_group("free")
	if ((get_parent().get_parent().get_name() == "zone_five_path") and (concession_choice == false)):
		exit_timer.start()
		old_parent = get_tree().get_current_scene().get_node("zone_five_path")
		new_parent = get_tree().get_current_scene().get_node("zone_five_to_exit")
		move_node = get_tree().get_current_scene().get_node("zone_five_path").get_child(0)
		get_tree().get_current_scene().get_node("arcade_zone_five").add_to_group("free")
	if ((get_parent().get_parent().get_name() == "zone_six_path") and (concession_choice == true)):
		concessions_timer.start()
		old_parent = get_tree().get_current_scene().get_node("zone_six_path")
		new_parent = get_tree().get_current_scene().get_node("zone_six_to_conc")
		move_node = get_tree().get_current_scene().get_node("zone_six_path").get_child(0)
		get_tree().get_current_scene().get_node("arcade_zone_six").add_to_group("free")
	if ((get_parent().get_parent().get_name() == "zone_six_path") and (concession_choice == false)):
		exit_timer.start()
		old_parent = get_tree().get_current_scene().get_node("zone_six_path")
		new_parent = get_tree().get_current_scene().get_node("zone_six_to_exit")
		move_node = get_tree().get_current_scene().get_node("zone_six_path").get_child(0)
		get_tree().get_current_scene().get_node("arcade_zone_six").add_to_group("free")