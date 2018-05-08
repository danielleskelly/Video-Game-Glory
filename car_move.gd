extends PathFollow2D

var cars
var timer = 0
var car_location = 0
export var car_speed = .0001


func _ready():
	set_physics_process(true)


func _fixed_process(delta):
	timer += delta
	cars = get_children()
	for x in cars:
		x.get_parent().set_unit_offset(car_location)
	car_location += car_speed