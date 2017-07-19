extends Node2D

var eight_texture = load("res://tetris_s.png")
var six_texture = load("res://tetris_knight.png")
var four_texture = load("res://tetris_square.png")
var two_texture = load("res://tetris_bar.png")

var where
var direction
const move_speed = 50

func _ready():
	set_as_active()
	set_process(true)
	
func _process(delta):
	var eight_hits = get_tree().get_nodes_in_group("eight_hits")
	for x in eight_hits:
		x.get_child(0).set_texture(eight_texture)
	var six_hits = get_tree().get_nodes_in_group("six_hits")
	for x in six_hits:
		x.get_child(0).set_texture(six_texture)
	var four_hits = get_tree().get_nodes_in_group("four_hits")
	for x in four_hits:
		x.get_child(0).set_texture(four_texture)
	var two_hits = get_tree().get_nodes_in_group("two_hits")
	for x in two_hits:
		x.get_child(0).set_texture(two_texture)
	where = get_node("paddle").get_pos()
	if (Input.is_action_pressed("move_left")):
		direction = Vector2(-1.0, 0.0)
		where += direction * move_speed * delta
		get_node("paddle").set_pos(where)
	if (Input.is_action_pressed("move_right")):
		direction = Vector2(1.0, 0.0)
		where += direction * move_speed * delta
		get_node("paddle").set_pos(where)
		
func set_as_active():
	var one = get_tree().get_nodes_in_group("a")
	for x in one:
		x.add_to_group("active")
		x.add_to_group("eight_hits")
		x.show()
	one = get_tree().get_nodes_in_group("b")
	for x in one:
		x.add_to_group("active")
		x.add_to_group("six_hits")
		x.show()
	one = get_tree().get_nodes_in_group("c")
	for x in one:
		x.add_to_group("active")
		x.add_to_group("four_hits")
		x.show()
	one = get_tree().get_nodes_in_group("d")
	for x in one:
		x.add_to_group("active")
		x.add_to_group("two_hits")
		x.show()