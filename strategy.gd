extends Node2D

#images
var uncheck = load("res://check_box_unchecked.png")
var check = load("res://check_box_checked.png")

var arcade_best = load("res://arcade_best.png")
var arcade_great = load("res://arcade_great.png")
var arcade_good = load("res://arcade_good.png")
var arcade_decent = load("res://arcade_decent.png")
var arcade_worst = load("res://arcade_worst.png")

var entertainment_best = load("res://entertainment_best.png")
var entertainment_great = load("res://entertainment_great.png")
var entertainment_good = load("res://entertainment_good.png")
var entertainment_decent = load("res://entertainment_decent.png")
var entertainment_worst = load("res://entertainment_worst.png")

var storefront_best = load("res://storefront_best.png")
var storefront_great = load("res://storefront_great.png")
var storefront_good = load("res://storefront_good.png")
var storefront_decent = load("res://storefront_decent.png")
var storefront_worst = load("res://storefront_worst.png")

#display nodes
onready var town_banner = get_node("town_name")
onready var game_over_alert = get_tree().get_current_scene().get_node("game_over_alert")
onready var pre_game_over = get_tree().get_current_scene().get_node("pre_game_over")
onready var hollyhock_complete = get_node("hollyhock_complete")
onready var fiyork_complete = get_node("fiyork_complete")
onready var plansey_complete = get_node("plansey_complete")
onready var untilly_complete = get_node("untilly_complete")
onready var windrow_complete = get_node("windrow_complete")
onready var banlon_complete = get_node("banlon_complete")
onready var slatten_complete = get_node("slatten_complete")
onready var income_output = get_node("finances/to_do_list/one/income_output")
onready var cash = get_node("finances/to_do_list/two/cash_amount")
onready var sales_made_output = get_node("finances/to_do_list/three/sales_made_output")
onready var sales_lost_output = get_node("finances/to_do_list/four/sales_lost_output")
onready var waited_loss_output = get_node("finances/to_do_list/five/waited_loss_output")
onready var storefront_loss_output = get_node("finances/to_do_list/seven/storefront_loss_output")
onready var price_loss_output = get_node("finances/to_do_list/six/price_loss_output")
onready var marketshare_output = get_node("finances/to_do_list/eight/marketshare_output")
onready var loans = get_node("loans/current_loan_output")
onready var ads = get_node("ads/research_output")
onready var current_loan_output = get_node("loans/current_loan_output")
onready var overhead_output = get_node("location_overhead/overhead_output")
onready var sabotage_one = get_node("sabotage1")
onready var sabotage_two = get_node("sabotage2")
onready var sabotage_three = get_node("sabotage3")


#necessary new variables
var credit_limit = 1000

func _ready():
	save_game()
	set_process(true)

func _process(delta):
	#all town displays
	cash.clear()
	cash.add_text("$" + str(int(global.cash)))
	current_loan_output.clear()
	current_loan_output.add_text("$" + str(global.current_loan))
	waited_loss_output.clear()
	waited_loss_output.add_text(str(global.waited_loss))
	price_loss_output.clear()
	price_loss_output.add_text(str(global.price_loss))
	storefront_loss_output.clear()
	storefront_loss_output.add_text(str(global.storefront_loss))
	income_output.clear()
	income_output.add_text("$ " + str(global.income))
	sales_made_output.clear()
	sales_made_output.add_text(str(global.sales_made))
	sales_lost_output.clear()
	sales_lost_output.add_text(str(global.sales_lost))
	overhead_output.clear()
	overhead_output.add_text(str(global.overhead))
	
	ads.clear()
	if global.genre_two_key == false:
		get_node("ads/research_purchase").show()
		ads.add_text("The Masses \n $500")
	elif global.genre_two_key == true and global.genre_three_key == false:
		get_node("ads/research_purchase").show()
		ads.add_text("The Last Holdouts \n $800")
	elif global.genre_two_key == true and global.genre_three_key == true:
		get_node("ads/research_purchase").hide()
	
	#upgrades
	var arcade_ok = get_node("upgrades/arcades/arcade_upgrade")
	if global.arcade_best_key == true:
		get_node("upgrades/arcades/image").set_texture(arcade_best)
		arcade_ok.hide()
	elif global.arcade_best_key == false and global.arcade_great_key == true:
		get_node("upgrades/arcades/image").set_texture(arcade_great)
		arcade_ok.show()
	elif global.arcade_great_key == false and global.arcade_good_key == true:
		get_node("upgrades/arcades/image").set_texture(arcade_good)
		arcade_ok.show()
	elif global.arcade_good_key == false and global.arcade_decent_key == true:
		get_node("upgrades/arcades/image").set_texture(arcade_decent)
		arcade_ok.show()
	elif global.arcade_decent_key == false and global.arcade_worst_key == true:
		get_node("upgrades/arcades/image").set_texture(arcade_worst)
		arcade_ok.show()
			
	var entertainment_ok = get_node("upgrades/entertainment/entertainment_upgrade")
	if global.entertainment_best_key == true:
		get_node("upgrades/entertainment/image").set_texture(entertainment_best)
		entertainment_ok.hide()
	elif global.entertainment_best_key == false and global.entertainment_great_key == true:
		get_node("upgrades/entertainment/image").set_texture(entertainment_great)
		entertainment_ok.show()
	elif global.entertainment_great_key == false and global.entertainment_good_key == true:
		get_node("upgrades/entertainment/image").set_texture(entertainment_good)
		entertainment_ok.show()
	elif global.entertainment_good_key == false and global.entertainment_decent_key == true:
		get_node("upgrades/entertainment/image").set_texture(entertainment_decent)
		entertainment_ok.show()
	elif global.entertainment_decent_key == false and global.entertainment_worst_key == true:
		get_node("upgrades/entertainment/image").set_texture(entertainment_worst)
		entertainment_ok.show()
	
	var storefront_ok = get_node("upgrades/storefront/storefront_upgrade")
	if global.storefront_best_key == true:
		get_node("upgrades/storefront/image").set_texture(storefront_best)
		storefront_ok.hide()
	elif global.storefront_best_key == false and global.storefront_great_key == true:
		get_node("upgrades/storefront/image").set_texture(storefront_great)
		storefront_ok.show()
	elif global.storefront_great_key == false and global.storefront_good_key == true:
		get_node("upgrades/storefront/image").set_texture(storefront_good)
		storefront_ok.show()
	elif global.storefront_good_key == false and global.storefront_decent_key == true:
		get_node("upgrades/storefront/image").set_texture(storefront_decent)
		storefront_ok.show()
	elif global.storefront_decent_key == false and global.storefront_worst_key == true:
		get_node("upgrades/storefront/image").set_texture(storefront_worst)
		storefront_ok.show()
		
	if (arcade_day.playershare > 1):
		marketshare_output.clear()
		marketshare_output.add_text("%100")
	else:
		marketshare_output.clear()
		marketshare_output.add_text("%" + str(int(arcade_day.playershare * 100)))
		
	if Input.is_action_pressed("ui_cancel"):
		_on_pixel_button_button_down()
	
	#town specific displays
	if (global.town_select == "hollyhock"):
		#not sabotaged
		sabotage_one.hide()
		sabotage_two.hide()
		sabotage_three.hide()
		#level win and/or win requirements
		if (arcade_day.playershare >= .75):
			hollyhock_complete.show()
			get_tree().set_pause(true)
		else:
			get_node("town_business/to_do_list/one/check_box").set_texture(uncheck)
			get_node("town_business/to_do_list/one/task").clear()
			get_node("town_business/to_do_list/one/task").add_text("Hollyhock Playershare of %75 or more")
			get_node("town_business/to_do_list/two").hide()
			get_node("town_business/to_do_list/three").hide()
			get_node("town_business/to_do_list/four").hide()
			get_node("town_business/to_do_list/five").hide()
			get_node("town_business/to_do_list/six").hide()
			
		#town blink cursor
		if (get_node("cursor_blink").get_time_left() > 1):
			town_banner.clear()
			town_banner.add_text("Hollyhock...")
		elif ((get_node("cursor_blink").get_time_left() < 1) and (get_node("cursor_blink").get_time_left() != 0)):
			town_banner.clear()
			town_banner.add_text("Hollyhock...^")
		elif (get_node("cursor_blink").get_time_left() == 0):
			get_node("cursor_blink").start()
	
	
	elif (global.town_select == "fiyork"):
		if (global.storefront_sabotage_key == false) and (global.entertainment_sabotage_key == false) and (global.arcade_sabotage_key == false):
			fiyork_complete.show()
			get_tree().set_pause(true)
		else:
			get_node("town_business/to_do_list/one/task").clear()
			get_node("town_business/to_do_list/one/task").add_text("Repair Storefront Sabotage")
			get_node("town_business/to_do_list/two/task").clear()
			get_node("town_business/to_do_list/two/task").add_text("Repair Entertainment Sabotage")
			get_node("town_business/to_do_list/three/task").clear()
			get_node("town_business/to_do_list/three/task").add_text("Repair Arcade Sabotage")
			if (global.storefront_sabotage_key == false):
				get_node("town_business/to_do_list/one/check_box").set_texture(check)
				get_node("town_business/to_do_list/one/line").show()
				sabotage_three.hide()
				$upgrades/storefront/storefront_upgrade.show()
			else:
				get_node("town_business/to_do_list/one/check_box").set_texture(uncheck)
				get_node("town_business/to_do_list/one/line").hide()
				sabotage_three.show()
				$upgrades/storefront/storefront_upgrade.hide()
			if (global.entertainment_sabotage_key == false):
				get_node("town_business/to_do_list/two/check_box").set_texture(check)
				get_node("town_business/to_do_list/two/line").show()
				sabotage_two.hide()
				$upgrades/entertainment/entertainment_upgrade.show()
			else:
				get_node("town_business/to_do_list/two/check_box").set_texture(uncheck)
				get_node("town_business/to_do_list/two/line").hide()
				sabotage_two.show()
				$upgrades/entertainment/entertainment_upgrade.hide()
			if (global.arcade_sabotage_key == false):
				get_node("town_business/to_do_list/three/check_box").set_texture(check)
				get_node("town_business/to_do_list/three/line").show()
				sabotage_one.hide()
				$upgrades/arcades/arcade_upgrade.show()
			else:
				get_node("town_business/to_do_list/three/check_box").set_texture(uncheck)
				get_node("town_business/to_do_list/three/line").hide()
				sabotage_one.show()
				$upgrades/arcades/arcade_upgrade.hide()
			get_node("town_business/to_do_list/four").hide()
			get_node("town_business/to_do_list/five").hide()
			get_node("town_business/to_do_list/six").hide()
		if (get_node("cursor_blink").get_time_left() > 1):
			town_banner.clear()
			town_banner.add_text("Fiyork...")
		elif ((get_node("cursor_blink").get_time_left() < 1) and (get_node("cursor_blink").get_time_left() != 0)):
			town_banner.clear()
			town_banner.add_text("Fiyork...l")
		elif (get_node("cursor_blink").get_time_left() == 0):
			get_node("cursor_blink").start()
	
	elif (global.town_select == "untilly"):
		#not sabotaged
		sabotage_one.hide()
		sabotage_two.hide()
		sabotage_three.hide()
		if (int(global.cash) >= 500) and (int(global.current_loan) <= 0):
			untilly_complete.show()
			get_tree().set_pause(true)
		else:
			get_node("town_business/to_do_list/one/task").clear()
			get_node("town_business/to_do_list/one/task").add_text("$500 Cash")
			get_node("town_business/to_do_list/two/task").clear()
			get_node("town_business/to_do_list/two/task").add_text("No Loans")
			if (int(global.cash) >= 500):
				get_node("town_business/to_do_list/one/check_box").set_texture(check)
				get_node("town_business/to_do_list/one/line").show()
			else:
				get_node("town_business/to_do_list/one/check_box").set_texture(uncheck)
				get_node("town_business/to_do_list/one/line").hide()
			if (int(global.current_loan) <= 0):
				get_node("town_business/to_do_list/two/check_box").set_texture(check)
				get_node("town_business/to_do_list/two/line").show()
			get_node("town_business/to_do_list/three").hide()
			get_node("town_business/to_do_list/four").hide()
			get_node("town_business/to_do_list/five").hide()
			get_node("town_business/to_do_list/six").hide()
		if (get_node("cursor_blink").get_time_left() > 1):
			town_banner.clear()
			town_banner.add_text("Untilly...")
		elif ((get_node("cursor_blink").get_time_left() < 1) and (get_node("cursor_blink").get_time_left() != 0)):
			town_banner.clear()
			town_banner.add_text("Untilly...l")
		elif (get_node("cursor_blink").get_time_left() == 0):
			get_node("cursor_blink").start()
	
	elif (global.town_select == "plansey"):
		#not sabotaged
		sabotage_one.hide()
		sabotage_two.hide()
		sabotage_three.hide()
		if (arcade_day.playershare >= .75) and (global.current_loan == 0) and (global.genre_two_key == true):
			plansey_complete.show()
			get_tree().set_pause(true)
		else:
			get_node("town_business/to_do_list/one/task").clear()
			get_node("town_business/to_do_list/one/task").add_text("Plansey Playershare of %75 or more")
			get_node("town_business/to_do_list/two/task").clear()
			get_node("town_business/to_do_list/two/task").add_text("No Loans")
			get_node("town_business/to_do_list/three/task").clear()
			get_node("town_business/to_do_list/three/task").add_text("Reach 'The Masses'")
			if (arcade_day.playershare >= .75):
				get_node("town_business/to_do_list/one/check_box").set_texture(check)
				get_node("town_business/to_do_list/one/line").show()
			else:
				get_node("town_business/to_do_list/one/check_box").set_texture(uncheck)
				get_node("town_business/to_do_list/one/line").hide()
			if (global.current_loan == 0):
				get_node("town_business/to_do_list/two/check_box").set_texture(check)
				get_node("town_business/to_do_list/two/line").show()
			else:
				get_node("town_business/to_do_list/two/check_box").set_texture(uncheck)
				get_node("town_business/to_do_list/two/line").hide()
			if (global.genre_two_key == true):
				get_node("town_business/to_do_list/three/check_box").set_texture(check)
				get_node("town_business/to_do_list/three/line").show()
			else:
				get_node("town_business/to_do_list/three/check_box").set_texture(uncheck)
				get_node("town_business/to_do_list/three/line").hide()
			get_node("town_business/to_do_list/four").hide()
			get_node("town_business/to_do_list/five").hide()
			get_node("town_business/to_do_list/six").hide()
		if (get_node("cursor_blink").get_time_left() > 1):
			town_banner.clear()
			town_banner.add_text("Plansey...")
		elif ((get_node("cursor_blink").get_time_left() < 1) and (get_node("cursor_blink").get_time_left() != 0)):
			town_banner.clear()
			town_banner.add_text("Plansey...l")
		elif (get_node("cursor_blink").get_time_left() == 0):
			get_node("cursor_blink").start()
	
	elif (global.town_select == "windrow"):
		if (global.entertainment_sabotage_key == false) and (global.storefront_sabotage_key == false) and (global.arcade_sabotage_key == false) and (global.genre_two_key == true) and (global.genre_three_key == true):
			windrow_complete.show()
			get_tree().set_pause(true)
		else:
			get_node("town_business/to_do_list/one/task").clear()
			get_node("town_business/to_do_list/one/task").add_text("Repair Entertainment Sabotage")
			get_node("town_business/to_do_list/two/task").clear()
			get_node("town_business/to_do_list/two/task").add_text("Repair Storefront Sabotage")
			get_node("town_business/to_do_list/three/task").clear()
			get_node("town_business/to_do_list/three/task").add_text("Repair Arcade Sabotage")
			get_node("town_business/to_do_list/four/task").clear()
			get_node("town_business/to_do_list/four/task").add_text("Reach 'The Masses'")
			get_node("town_business/to_do_list/five/task").clear()
			get_node("town_business/to_do_list/five/task").add_text("Reach 'The Last Holdouts'")
			if (global.entertainment_sabotage_key == false):
				get_node("town_business/to_do_list/one/check_box").set_texture(check)
				get_node("town_business/to_do_list/one/line").show()
				sabotage_two.hide()
				$upgrades/entertainment/entertainment_upgrade.show()
			else:
				get_node("town_business/to_do_list/one/check_box").set_texture(uncheck)
				get_node("town_business/to_do_list/one/line").hide()
				sabotage_two.show()
				$upgrades/entertainment/entertainment_upgrade.hide()
			if (global.storefront_sabotage_key == false):
				get_node("town_business/to_do_list/two/check_box").set_texture(check)
				get_node("town_business/to_do_list/two/line").show()
				sabotage_three.hide()
				$upgrades/storefront/storefront_upgrade.show()
			else:
				get_node("town_business/to_do_list/two/check_box").set_texture(uncheck)
				get_node("town_business/to_do_list/two/line").hide()
				sabotage_three.show()
				$upgrades/storefront/storefront_upgrade.hide()
			if (global.arcade_sabotage_key == false):
				get_node("town_business/to_do_list/three/check_box").set_texture(check)
				get_node("town_business/to_do_list/three/line").show()
				sabotage_one.hide()
				$upgrades/arcades/arcade_upgrade.show()
			else:
				get_node("town_business/to_do_list/three/check_box").set_texture(uncheck)
				get_node("town_business/to_do_list/three/line").hide()
				sabotage_one.show()
				$upgrades/arcades/arcade_upgrade.hide()
			if (global.genre_two_key == true):
				get_node("town_business/to_do_list/four/check_box").set_texture(check)
				get_node("town_business/to_do_list/four/line").show()
			else:
				get_node("town_business/to_do_list/four/check_box").set_texture(uncheck)
				get_node("town_business/to_do_list/four/line").hide()
			if (global.genre_three_key == true):
				get_node("town_business/to_do_list/five/check_box").set_texture(check)
				get_node("town_business/to_do_list/five/line").show()
			else:
				get_node("town_business/to_do_list/five/check_box").set_texture(uncheck)
				get_node("town_business/to_do_list/five/line").hide()
			get_node("town_business/to_do_list/six").hide()
		if (get_node("cursor_blink").get_time_left() > 1):
			town_banner.clear()
			town_banner.add_text("Windrow...")
		elif ((get_node("cursor_blink").get_time_left() < 1) and (get_node("cursor_blink").get_time_left() != 0)):
			town_banner.clear()
			town_banner.add_text("Windrow...l")
		elif (get_node("cursor_blink").get_time_left() == 0):
			get_node("cursor_blink").start()
	
	elif (global.town_select == "banlon"):
		#not sabotaged
		sabotage_one.hide()
		sabotage_two.hide()
		sabotage_three.hide()
		if (int(global.cash) >= 1000) and (global.current_loan == 0) and (global.genre_two_key == true) and (global.genre_three_key == true):
			banlon_complete.show()
			get_tree().set_pause(true)
		else:
			get_node("town_business/to_do_list/one/task").clear()
			get_node("town_business/to_do_list/one/task").add_text("Have $1000 Cash")
			get_node("town_business/to_do_list/two/task").clear()
			get_node("town_business/to_do_list/two/task").add_text("No Loans")
			get_node("town_business/to_do_list/three/task").clear()
			get_node("town_business/to_do_list/three/task").add_text("Reach 'The Masses'")
			get_node("town_business/to_do_list/four/task").clear()
			get_node("town_business/to_do_list/four/task").add_text("Reach 'The Last Holdouts'")
			if (int(global.cash) >= 1000):
				get_node("town_business/to_do_list/one/check_box").set_texture(check)
				get_node("town_business/to_do_list/one/line").show()
			else:
				get_node("town_business/to_do_list/one/check_box").set_texture(uncheck)
				get_node("town_business/to_do_list/one/line").hide()
			if (global.current_loan == 0):
				get_node("town_business/to_do_list/two/check_box").set_texture(check)
				get_node("town_business/to_do_list/two/line").show()
			else:
				get_node("town_business/to_do_list/two/check_box").set_texture(uncheck)
				get_node("town_business/to_do_list/two/line").hide()
			if (global.genre_two_key == true):
				get_node("town_business/to_do_list/three/check_box").set_texture(check)
				get_node("town_business/to_do_list/three/line").show()
			else:
				get_node("town_business/to_do_list/three/check_box").set_texture(uncheck)
				get_node("town_business/to_do_list/three/line").hide()
			if (global.genre_three_key == true):
				get_node("town_business/to_do_list/four/check_box").set_texture(check)
				get_node("town_business/to_do_list/four/line").show()
			else:
				get_node("town_business/to_do_list/four/check_box").set_texture(uncheck)
				get_node("town_business/to_do_list/four/line").hide()
			get_node("town_business/to_do_list/five").hide()
			get_node("town_business/to_do_list/six").hide()
		if (get_node("cursor_blink").get_time_left() > 1):
			town_banner.clear()
			town_banner.add_text("Banlon...")
		elif ((get_node("cursor_blink").get_time_left() < 1) and (get_node("cursor_blink").get_time_left() != 0)):
			town_banner.clear()
			town_banner.add_text("Banlon...l")
		elif (get_node("cursor_blink").get_time_left() == 0):
			get_node("cursor_blink").start()
	
	elif (global.town_select == "slatten"):
		if (global.storefront_sabotage_key == false) and (global.entertainment_sabotage_key == false) and (global.arcade_sabotage_key == false) and (int(global.cash) >= 500) and (global.current_loan == 0) and (global.genre_two_key == true) and (global.genre_three_key == true):
			slatten_complete.show()
			get_tree().set_pause(true)
		else:
			get_node("town_business/to_do_list/one/task").clear()
			get_node("town_business/to_do_list/one/task").add_text("Repair the Storefront Sabotage")
			get_node("town_business/to_do_list/two/task").clear()
			get_node("town_business/to_do_list/two/task").add_text("Repair the Entertainment Sabotage")
			get_node("town_business/to_do_list/three/task").clear()
			get_node("town_business/to_do_list/three/task").add_text("Repair the Arcade Sabotage")
			get_node("town_business/to_do_list/four/task").clear()
			get_node("town_business/to_do_list/four/task").add_text("Have $500 Cash")
			get_node("town_business/to_do_list/five/task").clear()
			get_node("town_business/to_do_list/five/task").add_text("No Loans")
			get_node("town_business/to_do_list/six/task").clear()
			get_node("town_business/to_do_list/six/task").add_text("Reach 'The Last Holdouts'")
			if (global.storefront_sabotage_key == false):
				get_node("town_business/to_do_list/one/check_box").set_texture(check)
				get_node("town_business/to_do_list/one/line").show()
				sabotage_three.hide()
				$upgrades/storefront/storefront_upgrade.show()
			else:
				get_node("town_business/to_do_list/one/check_box").set_texture(uncheck)
				get_node("town_business/to_do_list/one/line").hide()
				sabotage_three.show()
				$upgrades/storefront/storefront_upgrade.hide()
			if (global.entertainment_sabotage_key == false):
				get_node("town_business/to_do_list/two/check_box").set_texture(check)
				get_node("town_business/to_do_list/two/line").show()
				sabotage_two.hide()
				$upgrades/entertainment/entertainment_upgrade.show()
			else:
				get_node("town_business/to_do_list/two/check_box").set_texture(uncheck)
				get_node("town_business/to_do_list/two/line").hide()
				sabotage_two.show()
				$upgrades/entertainment/entertainment_upgrade.hide()
			if (global.arcade_sabotage_key == false):
				get_node("town_business/to_do_list/three/check_box").set_texture(check)
				get_node("town_business/to_do_list/three/line").show()
				sabotage_one.hide()
				$upgrades/arcades/arcade_upgrade.show()
			else:
				get_node("town_business/to_do_list/three/check_box").set_texture(uncheck)
				get_node("town_business/to_do_list/three/line").hide()
				sabotage_one.show()
				$upgrades/arcades/arcade_upgrade.hide()
			if (int(global.cash) >= 500):
				get_node("town_business/to_do_list/four/check_box").set_texture(check)
				get_node("town_business/to_do_list/four/line").show()
			else:
				get_node("town_business/to_do_list/four/check_box").set_texture(uncheck)
				get_node("town_business/to_do_list/four/line").hide()
			if (global.current_loan == 0):
				get_node("town_business/to_do_list/five/check_box").set_texture(check)
				get_node("town_business/to_do_list/five/line").show()
			else:
				get_node("town_business/to_do_list/five/check_box").set_texture(uncheck)
				get_node("town_business/to_do_list/five/line").hide()
			if (global.genre_three_key == true):
				get_node("town_business/to_do_list/six/check_box").set_texture(check)
				get_node("town_business/to_do_list/six/line").show()
			else:
				get_node("town_business/to_do_list/six/check_box").set_texture(uncheck)
				get_node("town_business/to_do_list/six/line").hide()
		if (get_node("cursor_blink").get_time_left() > 1):
			town_banner.clear()
			town_banner.add_text("Slatten...")
		elif ((get_node("cursor_blink").get_time_left() < 1) and (get_node("cursor_blink").get_time_left() != 0)):
			town_banner.clear()
			town_banner.add_text("Slatten...l")
		elif (get_node("cursor_blink").get_time_left() == 0):
			get_node("cursor_blink").start()

func _on_start_day_button_up():
	global.game_over_check()
	if global.game_over == true:
		game_over_alert.show()
		get_tree().set_pause(true)
	elif global.pre_game_over == true:
		pre_game_over.show()
		get_tree().set_pause(true)
	elif global.game_over == false and global.pre_game_over == false:
		perks.perks()
		get_node("skip_or_play/perk_output").clear()
		get_node("skip_or_play/perk_output").add_text(str(perks.perk))
		get_node("skip_or_play/perk_goal_output").clear()
		get_node("skip_or_play/perk_goal_output").add_text(str(perks.perk_goal))
		get_node("skip_or_play").show()

func _on_continue_ok_button_down():
	if (global.town_select == "hollyhock"):
		hollyhock_complete.hide()
		global.endless_unlocked = true
		global.yellow_eating_dot = true
		rewards_globals.complete_hollyhock = true
		rewards_globals.unseen += 1
		get_tree().change_scene("res://story_piece_three.tscn")
	elif (global.town_select == "fiyork"):
		fiyork_complete.hide()
		global.shoot_that_rock = true
		rewards_globals.complete_fiyork = true
		rewards_globals.unseen += 1
		get_tree().change_scene("res://story_piece_four.tscn")
	elif (global.town_select == "untilly"):
		plansey_complete.hide()
		global.falling_shapes_organization = true
		rewards_globals.complete_plansey = true
		rewards_globals.unseen += 1
		get_tree().change_scene("res://story_piece_five.tscn")
	elif (global.town_select == "plansey"):
		untilly_complete.hide()
		global.mathmatic_mastication = true
		rewards_globals.complete_untilly = true
		rewards_globals.unseen += 1
		get_tree().change_scene("res://story_piece_six.tscn")
	elif (global.town_select == "windrow"):
		windrow_complete.hide()
		global.tall_wall_fall_ball = true
		rewards_globals.complete_windrow = true
		rewards_globals.unseen += 1
		get_tree().change_scene("res://story_piece_seven.tscn")
	elif (global.town_select == "banlon"):
		banlon_complete.hide()
		global.jump_and_dodge = true
		rewards_globals.complete_banlon = true
		rewards_globals.unseen += 1
		get_tree().change_scene("res://story_piece_eight.tscn")
	elif (global.town_select == "slatten"):
		slatten_complete.hide()
		global.lights_off = true
		rewards_globals.complete_slatten = true
		rewards_globals.unseen += 1
		get_tree().change_scene("res://story_piece_nine.tscn")
	global.daily_reset()
	get_tree().set_pause(false)

func _on_game_over_ok_button_down():
	global.daily_reset()
	global.level_reset()
	game_over_alert.hide()
	get_tree().set_pause(false)


func _on_pre_game_over_button_down():
	pre_game_over.hide()
	get_tree().set_pause(false)
	

func _on_skip_button_down():
	rewards_globals.fifty_business_days = int(rewards_globals.fifty_business_days) + 1
	global.daily_reset()
	get_node("skip_or_play").hide()
	arcade_day.business_day()
	get_tree().change_scene("res://strategy.tscn")

func _on_play_button_down():
	rewards_globals.minigames_played = int(rewards_globals.minigames_played) + 1
	rewards_globals.fifty_business_days = int(rewards_globals.fifty_business_days) + 1
	if global.income > int(rewards_globals.earn_thousand):
		rewards_globals.earn_thousand = global.income
	global.daily_reset()
	get_node("skip_or_play").hide()
	arcade_day.business_day()
	if (global.town_select == "hollyhock"):
		get_tree().change_scene("res://hollyhock_time_management.tscn")
	elif (global.town_select == "fiyork"):
		get_tree().change_scene("res://fiyork_time_management.tscn")
	elif (global.town_select == "plansey"):
		get_tree().change_scene("res://plansey_time_management.tscn")
	elif (global.town_select == "untilly"):
		get_tree().change_scene("res://untilly_time_management.tscn")
	elif (global.town_select == "windrow"):
		get_tree().change_scene("res://windrow_time_management.tscn")
	elif (global.town_select == "banlon"):
		get_tree().change_scene("res://banlon_time_management.tscn")
	elif (global.town_select == "slatten"):
		get_tree().change_scene("res://slatten_time_management.tscn")

func _on_pixel_button_button_down():
	get_node("menu/sound_slider").set_value(int(sound.volume + 50))
	get_tree().set_pause(true)
	get_node("menu").show()

func _on_sound_slider_value_changed( value ):
	AudioServer.set_bus_volume_db(0,value - 50)

func _on_return_to_game_button_down():
	get_tree().set_pause(false)
	get_node("menu").hide()

func _on_restart_village_button_down():
	get_node("menu").hide()
	get_node("are_you_sure").show()


func _on_yes_restart_button_down():
	get_tree().set_pause(false)
	global.daily_reset()
	global.level_reset()

func _on_no_restart_button_down():
	get_node("are_you_sure").hide()
	get_node("menu").show()

func _on_quit_to_main_button_down():
	get_node("menu").hide()
	get_node("are_you_sure_2").show()

func _on_yes_main_menu_button_down():
	get_tree().set_pause(false)
	get_tree().change_scene("res://player_selection.tscn")

func _on_no_main_menu_button_down():
	get_node("are_you_sure_2").hide()
	get_node("menu").show()

func save_game():
	var savegame = File.new()
	savegame.open(str("user://savegame.save"), File.WRITE)
	savegame.store_line(str(global.town_select))
	savegame.store_line(str(global.endless_unlocked))
	savegame.store_line(str(rewards_globals.complete_hollyhock))
	savegame.store_line(str(rewards_globals.complete_fiyork))
	savegame.store_line(str(rewards_globals.complete_untilly))
	savegame.store_line(str(rewards_globals.complete_plansey))
	savegame.store_line(str(rewards_globals.complete_windrow))
	savegame.store_line(str(rewards_globals.complete_banlon))
	savegame.store_line(str(rewards_globals.complete_slatten))
	savegame.store_line(str(rewards_globals.minigames_played))
	savegame.store_line(str(rewards_globals.points_in_one_minigame))
	savegame.store_line(str(rewards_globals.million_total_minigame_points))
	savegame.store_line(str(rewards_globals.fifty_business_days))
	savegame.store_line(str(rewards_globals.hundred_per_hollyhock))
	savegame.store_line(str(rewards_globals.hundred_per_fiyork))
	savegame.store_line(str(rewards_globals.hundred_per_untilly))
	savegame.store_line(str(rewards_globals.hundred_per_plansey))
	savegame.store_line(str(rewards_globals.hundred_per_windrow))
	savegame.store_line(str(rewards_globals.hundred_per_banlon))
	savegame.store_line(str(rewards_globals.hundred_per_slatten))
	savegame.store_line(str(rewards_globals.find_saboteur))
	savegame.store_line(str(rewards_globals.complete_all_levels))
	savegame.store_line(str(rewards_globals.earn_thousand))
	savegame.store_line(str(rewards_globals.earn_thousand_unlocked))
	savegame.store_line(str(rewards_globals.three_min_yed))
	savegame.store_line(str(rewards_globals.three_min_str))
	savegame.store_line(str(rewards_globals.three_min_fso))
	savegame.store_line(str(rewards_globals.three_min_math_mast))
	savegame.store_line(str(rewards_globals.three_min_twfb))
	savegame.store_line(str(rewards_globals.three_min_jad))
	savegame.store_line(str(rewards_globals.three_min_lo))
	savegame.store_line(str(global.yellow_eating_dot))
	savegame.store_line(str(global.shoot_that_rock))
	savegame.store_line(str(global.falling_shapes_organization))
	savegame.store_line(str(global.mathmatic_mastication))
	savegame.store_line(str(global.tall_wall_fall_ball))
	savegame.store_line(str(global.jump_and_dodge))
	savegame.store_line(str(global.lights_off))
	savegame.close()

func _on_autosave_timeout():
	get_node("autosaved").show()
	get_node("timer_notify").start()
	save_game()

func _on_timer_notify_timeout():
	get_node("autosaved").hide()

func _on_borrow_button_down():
	if int(global.current_loan) + 10 <= credit_limit:
		global.current_loan = int(global.current_loan) + 10
		global.cash = int(global.cash) + 10

func _on_payback_button_down():
	if int(global.cash) >= 10 and int(global.current_loan) >= 10:
		global.current_loan = int(global.current_loan) - 10
		global.cash = int(global.cash) - 10

func _on_loan_button_button_down():
	get_node("loans").show()
	get_node("ads").hide()

func _on_ads_button_button_down():
	get_node("loans").hide()
	get_node("ads").show()

func _on_research_purchase_button_down():
	if global.genre_two_key == false and global.cash >= 500:
		global.cash = int(global.cash) - 500
		global.genre_two_key = true
	elif global.genre_two_key == false and global.cash < 500:
		get_node("notify").clear()
		get_node("notify").set_text("You can't afford that!")
		get_node("notify").show()
		get_node("notify2").start()
	elif global.genre_two_key == true and global.genre_three_key == false:
		if global.cash >= 800:
			global.cash = int(global.cash) - 800
			global.genre_three_key = true
		else:
			get_node("notify").clear()
			get_node("notify").set_text("You can't afford that!")
			get_node("notify").show()
			get_node("notify2").start()
	elif global.genre_two_key == true and global.genre_three_key == true:
		pass

func _on_arcade_upgrade_button_down():
	if global.arcade_best_key == true:
		pass
	elif global.arcade_best_key == false and global.arcade_great_key == true:
		if global.cash >= 500:
			global.cash = int(global.cash) - 500
			global.arcade_best_key = true
		else:
			get_node("notify").clear()
			get_node("notify").set_text("You can't afford that!")
			get_node("notify").show()
			get_node("notify2").start()
	elif global.arcade_great_key == false and global.arcade_good_key == true:
		if global.cash >= 400:
			global.cash = int(global.cash) - 400
			global.arcade_great_key = true
		else:
			get_node("notify").clear()
			get_node("notify").set_text("You can't afford that!")
			get_node("notify").show()
			get_node("notify2").start()
	elif global.arcade_good_key == false and global.arcade_decent_key == true:
		if global.cash >= 300:
			global.cash = int(global.cash) - 300
			global.arcade_good_key = true
		else:
			get_node("notify").clear()
			get_node("notify").set_text("You can't afford that!")
			get_node("notify").show()
			get_node("notify2").start()
	elif global.arcade_decent_key == false and global.arcade_worst_key == true:
		if global.cash >= 200:
			global.cash = int(global.cash) - 200
			global.arcade_decent_key = true
		else:
			get_node("notify").clear()
			get_node("notify").set_text("You can't afford that!")
			get_node("notify").show()
			get_node("notify2").start()

func _on_entertainment_upgrade_button_down():
	if global.entertainment_best_key == true:
		pass
	elif global.entertainment_best_key == false and global.entertainment_great_key == true:
		if global.cash >= 500:
			global.cash = int(global.cash) - 500
			global.entertainment_best_key = true
		else:
			get_node("notify").clear()
			get_node("notify").set_text("You can't afford that!")
			get_node("notify").show()
			get_node("notify2").start()
	elif global.entertainment_great_key == false and global.entertainment_good_key == true:
		if global.cash >= 400:
			global.cash = int(global.cash) - 400
			global.entertainment_great_key = true
		else:
			get_node("notify").clear()
			get_node("notify").set_text("You can't afford that!")
			get_node("notify").show()
			get_node("notify2").start()
	elif global.entertainment_good_key == false and global.entertainment_decent_key == true:
		if global.cash >= 300:
			global.cash = int(global.cash) - 300
			global.entertainment_good_key = true
		else:
			get_node("notify").clear()
			get_node("notify").set_text("You can't afford that!")
			get_node("notify").show()
			get_node("notify2").start()
	elif global.entertainment_decent_key == false and global.entertainment_worst_key == true:
		if global.cash >= 200:
			global.cash = int(global.cash) - 200
			global.entertainment_decent_key = true
		else:
			get_node("notify").clear()
			get_node("notify").set_text("You can't afford that!")
			get_node("notify").show()
			get_node("notify2").start()

func _on_storefront_upgrade_button_down():
	if global.storefront_best_key == true:
		pass
	elif global.storefront_best_key == false and global.storefront_great_key == true:
		if global.cash >= 500:
			global.cash = int(global.cash) - 500
			global.storefront_best_key = true
		else:
			get_node("notify").clear()
			get_node("notify").set_text("You can't afford that!")
			get_node("notify").show()
			get_node("notify2").start()
	elif global.storefront_great_key == false and global.storefront_good_key == true:
		if global.cash >= 400:
			global.cash = int(global.cash) - 400
			global.storefront_great_key = true
		else:
			get_node("notify").clear()
			get_node("notify").set_text("You can't afford that!")
			get_node("notify").show()
			get_node("notify2").start()
	elif global.storefront_good_key == false and global.storefront_decent_key == true:
		if global.cash >= 300:
			global.cash = int(global.cash) - 300
			global.storefront_good_key = true
		else:
			get_node("notify").clear()
			get_node("notify").set_text("You can't afford that!")
			get_node("notify").show()
			get_node("notify2").start()
	elif global.storefront_decent_key == false and global.storefront_worst_key == true:
		if global.cash >= 200:
			global.cash = int(global.cash) - 200
			global.storefront_decent_key = true
		else:
			get_node("notify").clear()
			get_node("notify").set_text("You can't afford that!")
			get_node("notify").show()
			get_node("notify2").start()

func _on_notify2_timeout():
	get_node("notify").hide()


