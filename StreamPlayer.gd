extends StreamPlayer

var song1
var song2
var song3
var song4
var song5
var song6
var song7
var song8
var song9
var song10
var song11
var song12
var song13
var song14
var song15
var song16
var song17
var song_array



func _ready():
	set_process(true)
	song1 = load("res://stream_files/bad_wings.ogg")
	song2 = load("res://stream_files/becoming_harmonious.ogg")
	song3 = load("res://stream_files/bullet_train.ogg")
	song4 = load("res://stream_files/center_of_gravity.ogg")
	song5 = load("res://stream_files/immunize.ogg")
	song6 = load("res://stream_files/salt_in_the_wounds.ogg")
	song7 = load("res://stream_files/self_vs_self.ogg")
	song8 = load("res://stream_files/set_me_on_fire.ogg")
	song9 = load("res://stream_files/the_fountain.ogg")
	song10 = load("res://stream_files/the_island_pt_1.ogg")
	song11 = load("res://stream_files/the_island_short.ogg")
	song12 = load("res://stream_files/under_the_waves.ogg")
	song13 = load("res://stream_files/watercolour.ogg")
	song14 = load("res://stream_files/watercolour_short.ogg")
	song15 = load("res://stream_files/witchcraft.ogg")
	song16 = load("res://stream_files/young_god.ogg")
	song17 = load("res://stream_files/stayin_alive_remix.ogg")
	song_array = [song1, song2, song3, song4, song5, song6, song7, song8, song9, song10, song11, song12, song13, song14, song15, song16, song17]


func _process(delta):
	if (self.is_playing() != true):
		var song = song_array[randi() % song_array.size()]
		self.set_stream(song)
		self.play()


func _on_mute_button_pressed():
	if (self.is_paused() == false):
		self.set_paused(true)
	else:
		self.set_paused(false)
