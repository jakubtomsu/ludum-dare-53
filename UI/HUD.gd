extends Control

onready var hearts = $Hearts
onready var time = $Time

func _ready():
	visible = true

func _process(delta):
	hearts.rect_size.x = 10 * ceil(Global.player.health)
	time.text = "Time left: " + str(stepify(Global.level.time_limit - Global.level.sec_since_start(), 0.1))
