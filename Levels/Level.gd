extends Node

export var next_level_name = ""
export var time_limit = 100.0

var score: float = 0.0
var start_time = 0
var packages_left = 0

func _ready():
	Global.level = self
	start_time = OS.get_ticks_msec()
	packages_left = len(get_tree().get_nodes_in_group("package"))

func sec_since_start():
	return (OS.get_ticks_msec() - start_time) / 1000.0

func next_level():
	Global.change_scene(next_level_name)
