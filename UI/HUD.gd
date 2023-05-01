extends Control

onready var hearts = $Hearts
onready var time = $VBoxContainer/Time
onready var score = $VBoxContainer/Score

func _ready():
	visible = true

func _process(delta):
	hearts.rect_size.x = 10 * ceil(Global.player.health)
	score.text = "Score: " + str(int(Global.level.score))
	time.text = "Time left: " + str(stepify(Global.level.time_limit - Global.level.sec_since_start(), 0.1))
