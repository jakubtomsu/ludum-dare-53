extends Node2D

export(String, MULTILINE) var text = "Text"
export var speed: float = 10.0

onready var label = $Control/Label
onready var sprite = $Sprite

func _ready():
	label.text = text
	
func _process(delta):
	sprite.position.y = sin((OS.get_ticks_msec() / 1000.0) * speed)
