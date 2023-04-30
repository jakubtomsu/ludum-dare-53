extends Control

onready var score = $Score
onready var time = $Time

func _process(delta):
	time.text = "Time: " + str(stepify(Global.level.sec_since_start(), 0.01))
