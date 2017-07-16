extends RigidBody2D

var random_pic
var pic_choice
var freezie
var pizza

func _ready():
	set_pic()
	set_process(true)
	pass

func _process(delta):
	var bodies = self.get_colliding_bodies()
	for body in bodies:
		if (body.is_in_group("ship")):
			if (perks.success > 5):
				perks.success = perks.success - 5
				
				
func set_pic():
	freezie = get_node("freezie_pic")
	pizza = get_node("pizza_pic")
	randomize()
	random_pic = [freezie, pizza]
	freezie.hide()
	pizza.hide()
	pic_choice = random_pic[randi() % random_pic.size()]
	pic_choice.show()