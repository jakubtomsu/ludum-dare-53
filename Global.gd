extends Node

var player = null
var tilemap = null
var level = null

const TILE_SIZE: float = 8.0

func fail_level():
	quick_restart()
	
func quick_restart():
	get_tree().reload_current_scene()
