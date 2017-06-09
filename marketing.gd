extends Node2D

var advertising
var ad_output


func _ready():
	ad_output = get_node("ad_output")
	set_process(true)

func _process(delta):
	advertising = global.advertising
	if (advertising == 0):
		ad_output.clear()
		ad_output.add_text("None")
	if ((advertising > 0) and (advertising < 10)):
		ad_output.clear()
		ad_output.add_text("Windshield Love Notes")
	if ((advertising > 10) and (advertising < 20)):
		ad_output.clear()
		ad_output.add_text("Decent Word of Mouth")
	if ((advertising > 20) and (advertising < 30)):
		ad_output.clear()
		ad_output.add_text("Agressive Street Team")
	if ((advertising > 30) and (advertising < 40)):
		ad_output.clear()
		ad_output.add_text("Dancing Penguin Hand Outs")
	if ((advertising > 40) and (advertising < 50)):
		ad_output.clear()
		ad_output.add_text("Top 40 DJ Shout Out")
	if ((advertising > 50) and (advertising < 60)):
		ad_output.clear()
		ad_output.add_text("Cheap Celebrity Endorsement Tweet")
	if ((advertising > 60) and (advertising < 70)):
		ad_output.clear()
		ad_output.add_text("Kindly Grandma Commercial")
	if ((advertising > 70) and (advertising < 80)):
		ad_output.clear()
		ad_output.add_text("Forcible Store Delivery")
	if ((advertising > 80) and (advertising < 90)):
		ad_output.clear()
		ad_output.add_text("Big Brother 24 Hour Broadcast")
	if ((advertising > 90) and (advertising < 100)):
		ad_output.clear()
		ad_output.add_text("Sandman Endorsement Bribe")