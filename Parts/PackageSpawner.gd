extends StaticBody2D

onready var package = preload("res://Packages/NormalPackage.tscn")

var timer = null

func _ready():
	timer = Timer.new()
	add_child(timer)
	timer.connect("timeout", self, "_on_Timer_timeout")
	timer.set_wait_time(1.0)
	timer.set_one_shot(false)
	timer.start()

func _on_Timer_timeout():
	var inst = package.instance()
	inst.global_position = global_position + Vector2(0, Global.TILE_SIZE)
	get_tree().get_root().add_child(inst)
