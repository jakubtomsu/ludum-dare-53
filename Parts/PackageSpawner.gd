extends Node2D

onready var normal_package = preload("res://Packages/NormalPackage.tscn")
onready var area = $Area2D

func _on_Timer_timeout():
	#if len(area.get_overlapping_bodies()) == 0:
		var inst = normal_package.instance()
		get_tree().get_root().add_child(inst)
		inst.global_position = global_position
