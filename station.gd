extends Node

func _ready():
	pass
	
func clear_shit():
	get_tree().get_current_scene().get_node("games/station_one/dropdown").clear()
	get_tree().get_current_scene().get_node("games/station_two/dropdown").clear()
	get_tree().get_current_scene().get_node("games/station_three/dropdown").clear()
	get_tree().get_current_scene().get_node("games/station_four/dropdown").clear()
	get_tree().get_current_scene().get_node("games/station_five/dropdown").clear()
	get_tree().get_current_scene().get_node("games/station_six/dropdown").clear()
	
	
func add_items():
	var dropdown = get_tree().get_current_scene().get_node("games/station_one/dropdown")
	dropdown.add_item("Make a Selection...")
	if (towns.town_select == "hollyhock"):
		dropdown.add_item("Video Game Glory")
		if (hollyhock.hollyhock_genre_two_key == true):
			dropdown.add_item("Yellow Eating Dot")
		if (hollyhock.hollyhock_genre_three_key == true):
			dropdown.add_item("Super Secret Spy")
	if (towns.town_select == "fiyork"):
		dropdown.add_item("Shoot that Rock!")
		if (fiyork.fiyork_genre_two_key == true):
			dropdown.add_item("Legendary Zilda")
		if (fiyork.fiyork_genre_three_key == true):
			dropdown.add_item("Get Those Unicorns Home!")
	if (towns.town_select == "plansey"):
		dropdown.add_item("Mathmatic Mastication")
		if (plansey.plansey_genre_two_key == true):
			dropdown.add_item("Car Wash Tycoon")
		if (plansey.plansey_genre_three_key == true):
			dropdown.add_item("Awesome Purple Dragon!")
	if (towns.town_select == "untilly"):
		dropdown.add_item("Falling Shapes Organization")
		if (untilly.untilly_genre_two_key == true):
			dropdown.add_item("Angel's Hat")
		if (untilly.untilly_genre_three_key == true):
			dropdown.add_item("Cooking Father")
	if (towns.town_select == "slatten"):
		dropdown.add_item("A Plumber and His Brother")
		if (windrow.windrow_genre_two_key == true):
			dropdown.add_item("Move Those Boxes")
		if (windrow.windrow_genre_three_key == true):
			dropdown.add_item("Video Game Glory")
	if (towns.town_select == "banlon"):
		dropdown.add_item("Jump and Dodge!")
		if (banlon.banlon_genre_two_key == true):
			dropdown.add_item("Alien Attackers!")
		if (banlon.banlon_genre_three_key == true):
			dropdown.add_item("Search Out That Guy!")
	if (towns.town_select == "windrow"):
		dropdown.add_item("Tall Wall Fall Ball")
		if (slatten.slatten_genre_two_key == true):
			dropdown.add_item("Ranchplace")
		if (slatten.slatten_genre_three_key == true):
			dropdown.add_item("Two Paddles and a Ball")
	dropdown = get_tree().get_current_scene().get_node("games/station_two/dropdown")
	dropdown.add_item("Make a Selection...")
	if (towns.town_select == "hollyhock"):
		dropdown.add_item("Video Game Glory")
		if (hollyhock.hollyhock_genre_two_key == true):
			dropdown.add_item("Yellow Eating Dot")
		if (hollyhock.hollyhock_genre_three_key == true):
			dropdown.add_item("Super Secret Spy")
	if (towns.town_select == "fiyork"):
		dropdown.add_item("Shoot that Rock!")
		if (fiyork.fiyork_genre_two_key == true):
			dropdown.add_item("Legendary Zilda")
		if (fiyork.fiyork_genre_three_key == true):
			dropdown.add_item("Get Those Unicorns Home!")
	if (towns.town_select == "plansey"):
		dropdown.add_item("Mathmatic Mastication")
		if (plansey.plansey_genre_two_key == true):
			dropdown.add_item("Car Wash Tycoon")
		if (plansey.plansey_genre_three_key == true):
			dropdown.add_item("Awesome Purple Dragon!")
	if (towns.town_select == "untilly"):
		dropdown.add_item("Falling Shapes Organization")
		if (untilly.untilly_genre_two_key == true):
			dropdown.add_item("Angel's Hat")
		if (untilly.untilly_genre_three_key == true):
			dropdown.add_item("Cooking Father")
	if (towns.town_select == "slatten"):
		dropdown.add_item("A Plumber and His Brother")
		if (windrow.windrow_genre_two_key == true):
			dropdown.add_item("Move Those Boxes")
		if (windrow.windrow_genre_three_key == true):
			dropdown.add_item("Video Game Glory")
	if (towns.town_select == "banlon"):
		dropdown.add_item("Jump and Dodge!")
		if (banlon.banlon_genre_two_key == true):
			dropdown.add_item("Alien Attackers!")
		if (banlon.banlon_genre_three_key == true):
			dropdown.add_item("Search Out That Guy!")
	if (towns.town_select == "windrow"):
		dropdown.add_item("Tall Wall Fall Ball")
		if (slatten.slatten_genre_two_key == true):
			dropdown.add_item("Ranchplace")
		if (slatten.slatten_genre_three_key == true):
			dropdown.add_item("Two Paddles and a Ball")
	dropdown = get_tree().get_current_scene().get_node("games/station_three/dropdown")
	dropdown.add_item("Make a Selection...")
	if (towns.town_select == "hollyhock"):
		dropdown.add_item("Video Game Glory")
		if (hollyhock.hollyhock_genre_two_key == true):
			dropdown.add_item("Yellow Eating Dot")
		if (hollyhock.hollyhock_genre_three_key == true):
			dropdown.add_item("Super Secret Spy")
	if (towns.town_select == "fiyork"):
		dropdown.add_item("Shoot that Rock!")
		if (fiyork.fiyork_genre_two_key == true):
			dropdown.add_item("Legendary Zilda")
		if (fiyork.fiyork_genre_three_key == true):
			dropdown.add_item("Get Those Unicorns Home!")
	if (towns.town_select == "plansey"):
		dropdown.add_item("Mathmatic Mastication")
		if (plansey.plansey_genre_two_key == true):
			dropdown.add_item("Car Wash Tycoon")
		if (plansey.plansey_genre_three_key == true):
			dropdown.add_item("Awesome Purple Dragon!")
	if (towns.town_select == "untilly"):
		dropdown.add_item("Falling Shapes Organization")
		if (untilly.untilly_genre_two_key == true):
			dropdown.add_item("Angel's Hat")
		if (untilly.untilly_genre_three_key == true):
			dropdown.add_item("Cooking Father")
	if (towns.town_select == "slatten"):
		dropdown.add_item("A Plumber and His Brother")
		if (windrow.windrow_genre_two_key == true):
			dropdown.add_item("Move Those Boxes")
		if (windrow.windrow_genre_three_key == true):
			dropdown.add_item("Video Game Glory")
	if (towns.town_select == "banlon"):
		dropdown.add_item("Jump and Dodge!")
		if (banlon.banlon_genre_two_key == true):
			dropdown.add_item("Alien Attackers!")
		if (banlon.banlon_genre_three_key == true):
			dropdown.add_item("Search Out That Guy!")
	if (towns.town_select == "windrow"):
		dropdown.add_item("Tall Wall Fall Ball")
		if (slatten.slatten_genre_two_key == true):
			dropdown.add_item("Ranchplace")
		if (slatten.slatten_genre_three_key == true):
			dropdown.add_item("Two Paddles and a Ball")
	dropdown = get_tree().get_current_scene().get_node("games/station_four/dropdown")
	dropdown.add_item("Make a Selection...")
	if (towns.town_select == "hollyhock"):
		dropdown.add_item("Video Game Glory")
		if (hollyhock.hollyhock_genre_two_key == true):
			dropdown.add_item("Yellow Eating Dot")
		if (hollyhock.hollyhock_genre_three_key == true):
			dropdown.add_item("Super Secret Spy")
	if (towns.town_select == "fiyork"):
		dropdown.add_item("Shoot that Rock!")
		if (fiyork.fiyork_genre_two_key == true):
			dropdown.add_item("Legendary Zilda")
		if (fiyork.fiyork_genre_three_key == true):
			dropdown.add_item("Get Those Unicorns Home!")
	if (towns.town_select == "plansey"):
		dropdown.add_item("Mathmatic Mastication")
		if (plansey.plansey_genre_two_key == true):
			dropdown.add_item("Car Wash Tycoon")
		if (plansey.plansey_genre_three_key == true):
			dropdown.add_item("Awesome Purple Dragon!")
	if (towns.town_select == "untilly"):
		dropdown.add_item("Falling Shapes Organization")
		if (untilly.untilly_genre_two_key == true):
			dropdown.add_item("Angel's Hat")
		if (untilly.untilly_genre_three_key == true):
			dropdown.add_item("Cooking Father")
	if (towns.town_select == "slatten"):
		dropdown.add_item("A Plumber and His Brother")
		if (windrow.windrow_genre_two_key == true):
			dropdown.add_item("Move Those Boxes")
		if (windrow.windrow_genre_three_key == true):
			dropdown.add_item("Video Game Glory")
	if (towns.town_select == "banlon"):
		dropdown.add_item("Jump and Dodge!")
		if (banlon.banlon_genre_two_key == true):
			dropdown.add_item("Alien Attackers!")
		if (banlon.banlon_genre_three_key == true):
			dropdown.add_item("Search Out That Guy!")
	if (towns.town_select == "windrow"):
		dropdown.add_item("Tall Wall Fall Ball")
		if (slatten.slatten_genre_two_key == true):
			dropdown.add_item("Ranchplace")
		if (slatten.slatten_genre_three_key == true):
			dropdown.add_item("Two Paddles and a Ball")
	dropdown = get_tree().get_current_scene().get_node("games/station_five/dropdown")
	dropdown.add_item("Make a Selection...")
	if (towns.town_select == "hollyhock"):
		dropdown.add_item("Video Game Glory")
		if (hollyhock.hollyhock_genre_two_key == true):
			dropdown.add_item("Yellow Eating Dot")
		if (hollyhock.hollyhock_genre_three_key == true):
			dropdown.add_item("Super Secret Spy")
	if (towns.town_select == "fiyork"):
		dropdown.add_item("Shoot that Rock!")
		if (fiyork.fiyork_genre_two_key == true):
			dropdown.add_item("Legendary Zilda")
		if (fiyork.fiyork_genre_three_key == true):
			dropdown.add_item("Get Those Unicorns Home!")
	if (towns.town_select == "plansey"):
		dropdown.add_item("Mathmatic Mastication")
		if (plansey.plansey_genre_two_key == true):
			dropdown.add_item("Car Wash Tycoon")
		if (plansey.plansey_genre_three_key == true):
			dropdown.add_item("Awesome Purple Dragon!")
	if (towns.town_select == "untilly"):
		dropdown.add_item("Falling Shapes Organization")
		if (untilly.untilly_genre_two_key == true):
			dropdown.add_item("Angel's Hat")
		if (untilly.untilly_genre_three_key == true):
			dropdown.add_item("Cooking Father")
	if (towns.town_select == "slatten"):
		dropdown.add_item("A Plumber and His Brother")
		if (windrow.windrow_genre_two_key == true):
			dropdown.add_item("Move Those Boxes")
		if (windrow.windrow_genre_three_key == true):
			dropdown.add_item("Video Game Glory")
	if (towns.town_select == "banlon"):
		dropdown.add_item("Jump and Dodge!")
		if (banlon.banlon_genre_two_key == true):
			dropdown.add_item("Alien Attackers!")
		if (banlon.banlon_genre_three_key == true):
			dropdown.add_item("Search Out That Guy!")
	if (towns.town_select == "windrow"):
		dropdown.add_item("Tall Wall Fall Ball")
		if (slatten.slatten_genre_two_key == true):
			dropdown.add_item("Ranchplace")
		if (slatten.slatten_genre_three_key == true):
			dropdown.add_item("Two Paddles and a Ball")
	dropdown = get_tree().get_current_scene().get_node("games/station_six/dropdown")
	dropdown.add_item("Make a Selection...")
	if (towns.town_select == "hollyhock"):
		dropdown.add_item("Video Game Glory")
		if (hollyhock.hollyhock_genre_two_key == true):
			dropdown.add_item("Yellow Eating Dot")
		if (hollyhock.hollyhock_genre_three_key == true):
			dropdown.add_item("Super Secret Spy")
	if (towns.town_select == "fiyork"):
		dropdown.add_item("Shoot that Rock!")
		if (fiyork.fiyork_genre_two_key == true):
			dropdown.add_item("Legendary Zilda")
		if (fiyork.fiyork_genre_three_key == true):
			dropdown.add_item("Get Those Unicorns Home!")
	if (towns.town_select == "plansey"):
		dropdown.add_item("Mathmatic Mastication")
		if (plansey.plansey_genre_two_key == true):
			dropdown.add_item("Car Wash Tycoon")
		if (plansey.plansey_genre_three_key == true):
			dropdown.add_item("Awesome Purple Dragon!")
	if (towns.town_select == "untilly"):
		dropdown.add_item("Falling Shapes Organization")
		if (untilly.untilly_genre_two_key == true):
			dropdown.add_item("Angel's Hat")
		if (untilly.untilly_genre_three_key == true):
			dropdown.add_item("Cooking Father")
	if (towns.town_select == "slatten"):
		dropdown.add_item("A Plumber and His Brother")
		if (windrow.windrow_genre_two_key == true):
			dropdown.add_item("Move Those Boxes")
		if (windrow.windrow_genre_three_key == true):
			dropdown.add_item("Video Game Glory")
	if (towns.town_select == "banlon"):
		dropdown.add_item("Jump and Dodge!")
		if (banlon.banlon_genre_two_key == true):
			dropdown.add_item("Alien Attackers!")
		if (banlon.banlon_genre_three_key == true):
			dropdown.add_item("Search Out That Guy!")
	if (towns.town_select == "windrow"):
		dropdown.add_item("Tall Wall Fall Ball")
		if (slatten.slatten_genre_two_key == true):
			dropdown.add_item("Ranchplace")
		if (slatten.slatten_genre_three_key == true):
			dropdown.add_item("Two Paddles and a Ball")