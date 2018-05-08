extends Sprite

var size

func _ready():
	set_physics_process(true)
	
func _physics_process(delta):
	size = get_viewport_rect()
	var collision_info = get_child(0)
	print(collision_info.get_parent().get_
	#if collision_info.get_parent().get_parent().get_name() == "behind_assets":
		#set_global_position(Vector2(rand_range(0,size.size.x),rand_range(0,size.size.y)))