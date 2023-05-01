extends Node

var player = null
var tilemap = null
var level = null
var cam = null

const TILE_SIZE: float = 8.0

func fail_level():
	# quick_restart()
	level.finish_screen.on_finish("failed")

func quick_restart():
	get_tree().paused = false
	get_tree().reload_current_scene()

func _on_DeathTimer_timeout():
	quick_restart()

func change_scene(name):
	get_tree().paused = false
	get_tree().change_scene(name)
