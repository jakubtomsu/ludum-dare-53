extends Node2D

onready var package = preload("res://Packages/NormalPackage.tscn")
onready var area = $Area2D

var timer = null

func _physics_process(delta):
	if len(area.get_overlapping_bodies()) == 0:
		var inst = package.instance()
		inst.global_position = global_position
		get_tree().get_root().add_child(inst)
