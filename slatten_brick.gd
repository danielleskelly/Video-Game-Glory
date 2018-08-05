extends TextureButton

var brick_num = 0

var zero_texture = preload("res://white_box.png")
var one_texture = preload("res://green_slatten_box.png")

func _ready():
	set_physics_process(true)

func _physics_process(delta):
	if brick_num == 0:
		self.texture_normal = zero_texture
	elif brick_num == 1:
		self.texture_normal = one_texture
