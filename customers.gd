extends Node2D

var happy
var happy_output

var neutral
var neutral_output

var waited
var waited_output

var supplies_loss
var supplies_output

var sabatoge
var sabatoge_output

var shabby
var shabby_output

func _ready():
	happy_output = get_node("happy_output")
	neutral_output = get_node("neutral_output")
	waited_output = get_node("waited_too_long_output")
	supplies_output = get_node("ran_out_output")
	sabatoge_output = get_node("sabatoge_output")
	shabby_output = get_node("shabby_output")
	set_process(true)
	pass

func _process(delta):
	get_globals()
	happy_output.clear()
	happy_output.add_text(happy)
	neutral_output.clear()
	neutral_output.add_text(neutral)
	waited_output.clear()
	waited_output.add_text(waited)
	supplies_output.clear()
	supplies_output.add_text(supplies_loss)
	sabatoge_output.clear()
	sabatoge_output.add_text(sabatoge)
	shabby_output.clear()
	shabby_output.add_text(shabby)
	
func get_globals():
	happy = str(global.happy)
	neutral = str(global.neutral)
	waited = str(global.waited)
	supplies_loss = str(global.supplies_loss)
	sabatoge = str(global.sabatoge)
	shabby = str(global.shabby)