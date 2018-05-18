extends RigidBody2D

# class member variables go here, for example:
# var a = 2
# var b = "textvar"

func _ready():
	set_physics_process(true)

func _physics_process(delta):
	update()

func _draw():
	draw_circle(Vector2(-1.885282,11.747609), 1.5, Color(255,255,255))