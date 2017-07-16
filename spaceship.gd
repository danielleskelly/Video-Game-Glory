extends RigidBody2D

func _ready():
	set_fixed_process(true)
	pass

func _fixed_process(delta):
	var bodies = get_colliding_bodies()
	for body in bodies:
		if (body.is_in_group("rocks")):
			if (perks.success > 5):
				perks.success = perks.success - 5