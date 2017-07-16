extends Sprite

func _ready():
	pass

func _on_continue_pressed():
	get_tree().set_pause(false)
	hide()

func _on_restart_pressed():
	var currentScene = get_tree().get_current_scene().get_filename()
	get_tree().change_scene(currentScene)
	get_tree().set_pause(false)

func _on_quit_pressed():
	get_tree().quit()
