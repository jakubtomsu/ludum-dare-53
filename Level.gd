extends Node

var score: float = 0.0

var start_time = 0

func _ready():
	Global.level = self
	start_time = OS.get_ticks_msec()

func sec_since_start():
	return (OS.get_ticks_msec() - start_time) / 1000.0
