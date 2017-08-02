extends PathFollow2D

var cars

func _ready():
	set_fixed_process(true)
	
func _fixed_process(delta):
	cars = get_children()
	for x in cars:
		x.get_parent().set_offset(x.get_parent().get_offset() + (10*delta))