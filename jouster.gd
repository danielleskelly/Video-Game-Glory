extends RigidBody2D


var colliders

func _ready():
	set_process(true)
	
func _process(delta):
	colliders = get_colliding_bodies()
	for x in colliders:
		print(x.get_name())