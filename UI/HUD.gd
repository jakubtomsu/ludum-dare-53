extends Control

onready var hearts = $Hearts
onready var time = $Time

func _process(delta):
	hearts.rect_size.x = 10 * ceil(Global.player.health)
	time.text = "Time: " + str(stepify(Global.level.sec_since_start(), 0.01))
