extends RigidBody2D

var colliders
var collider_id

func _ready():
	set_process(true)
	
func _process(delta):
	colliders = get_colliding_bodies()
	if (get_parent().is_in_group("path") == true):
		if (colliders.size() == 0) or (colliders[0].is_greater_than(self) == true) :
				get_parent().set_offset(get_parent().get_offset() + (20*delta))