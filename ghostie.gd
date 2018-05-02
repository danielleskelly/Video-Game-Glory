extends KinematicBody2D

var direction
var size

func _ready():
	_on_ghost_timer_timeout()
	set_physics_process(true)

func _physics_process(delta):
	size = get_viewport_rect()
	var where = global_position
	if where[0] < 0:
		global_position[0] = size.size.x
	elif where[0] > size.size.x:
		global_position[0] = 0
	if where[1] < 0:
		global_position[1] = size.size.y
	elif where[1] > size.size.y:
		global_position[1] = 0
	move_and_collide(direction*delta*100)


func _on_ghost_timer_timeout():
	var which_way = ["left","right","up","down"]
	var choice = which_way[randi() % which_way.size()]
	if choice == "left":
		direction = Vector2(-1,0)
	elif choice == "right":
		direction = Vector2(1,0)
	elif choice == "up":
		direction = Vector2(0,-1)
	elif choice == "down":
		direction = Vector2(0,1)