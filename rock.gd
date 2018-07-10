extends RigidBody2D

var random_pic
var pic_choice
var freezie
var pizza

func _ready():
	set_pic()
	set_physics_process(true)
	pass

func _physics_process(delta):
	var bodies = get_colliding_bodies()
	for body in bodies:
		if (body.is_in_group("ship")) and get_node("collision_timer").get_time_left() == 0:
			get_node("collision_timer").start()
			if get_parent().get_name() == "time_management":
				if (perks.success > 5):
					perks.success = perks.success - 5
			elif get_parent().get_name() == "endless_mode":
				var game_over = get_tree().get_nodes_in_group("game_over")
				for x in game_over:
					x.show()
					get_tree().set_pause(true)
				
				
func set_pic():
	freezie = get_node("freezie_pic")
	pizza = get_node("pizza_pic")
	randomize()
	random_pic = [freezie, pizza]
	freezie.hide()
	pizza.hide()
	pic_choice = random_pic[randi() % random_pic.size()]
	pic_choice.show()