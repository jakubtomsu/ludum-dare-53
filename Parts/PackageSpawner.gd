extends Node2D


onready var normal_package = preload("res://Packages/NormalPackage.tscn")
onready var area = $Area2D

var time_until_next_spawn = 0.0

func _process(delta):
	time_until_next_spawn -= delta
	if time_until_next_spawn < 0 and len(area.get_overlapping_bodies()) == 0:
		var inst = normal_package.instance()
		inst.global_position = global_position
		get_tree().get_root().add_child(inst)
		time_until_next_spawn = 5.0
