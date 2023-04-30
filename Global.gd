extends Node

var player = null
var tilemap = null
var level = null

const TILE_SIZE: float = 16.0

func fail_level():
	get_tree().reload_current_scene()
