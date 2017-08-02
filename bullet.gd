extends RigidBody2D

func _ready():
	set_fixed_process(true)
	
func _fixed_process(delta):
	set_scale(Vector2(.1,.1))
