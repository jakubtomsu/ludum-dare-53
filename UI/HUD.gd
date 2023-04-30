extends Control

onready var score = $Score
onready var time = $Time

func _process(delta):
	score.text = "Score: " + str(int(Global.level.score))
	time.text = "Time: " + str(stepify(Global.level.sec_since_start(), 0.01))
