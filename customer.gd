extends Node2D

var cust_one = load("res://customer_one.png")
var cust_two = load("res://customer_two.png")
var cust_three = load("res://customer_four.png")
var cust_four = load("res://customer_five.png")
var cust_five = load("res://customer_six.png")

var avatars = []
var avatar_choice

var colliders
var direction
var where
const move_speed = 25

var reset_pos

func _ready():
	reset_pos = get_pos()
	change_avatar()
	set_process(true)
	
func _process(delta):
	colliders = get_node("RigidBody2D").get_colliding_bodies()
	if (colliders.size() > 0):
		for x in colliders:
			if (x.get_name() == "queue"):
				reset()
			if (x.get_name() == "goal"):
				customer_create.success = int(customer_create.success) + 1
				change_avatar()
	where = get_pos()
	if (Input.is_action_pressed("move_up")):
		direction = Vector2(0.0, -1.0)
		where += direction * move_speed * delta
		set_pos(where)
	if (Input.is_action_pressed("move_left")):
		direction = Vector2(-1.0, 0.0)
		where += direction * move_speed * delta
		set_pos(where)
	if (Input.is_action_pressed("move_down")):
		direction = Vector2(0.0, 1.0)
		where += direction * move_speed * delta
		set_pos(where)
	if (Input.is_action_pressed("move_right")):
		direction = Vector2(1.0, 0.0)
		where += direction * move_speed * delta
		set_pos(where)

func change_avatar():
	set_hidden(true)
	reset()
	randomize()
	avatars = [cust_one, cust_two, cust_three, cust_four, cust_five]
	avatar_choice = avatars[randi() % avatars.size()]
	get_node("pic").set_texture(avatar_choice)
	set_hidden(false)
	
func reset():
	set_pos(reset_pos)