extends RigidBody2D

func _ready():
	set_fixed_process(true)
	pass

func _fixed_process(delta):
	var bodies = get_colliding_bodies()
	for body in bodies:
		if (body.is_in_group("rocks")):
			var parent_name = get_parent().get_name()
			if parent_name == "time_management":
				if (perks.success > 5):
					perks.success = perks.success - 5
			elif parent_name == "endless_mode":
				get_tree().set_pause(true)
				var game_over = get_tree().get_nodes_in_group("game_over")
				for x in game_over:
					x.show()