extends Node

export var next_level_name = ""
export var time_limit = 100.0
onready var finish_screen = $UI/FinishScreen

var score: float = 0.0
var start_time = 0
var packages_left = 0

func _ready():
	seed(OS.get_ticks_usec())
	Global.level = self
	start_time = OS.get_ticks_msec()
	packages_left = len(get_tree().get_nodes_in_group("package"))

func sec_since_start():
	return (OS.get_ticks_msec() - start_time) / 1000.0

func next_level():
	Global.change_scene(next_level_name)

func _process(delta):
	if sec_since_start() > time_limit:
		finish_screen.on_finish("Finished!")
