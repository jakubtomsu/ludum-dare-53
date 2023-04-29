extends Node2D

export var strength: float = 8.0

onready var area = $Area2D

func _physics_process(delta):
	var force = Vector2(0, strength).rotated(rotation)
	for b in area.get_overlapping_bodies():
		if b.has_method("conveyor_belt_apply_force"):
			b.conveyor_belt_apply_force(force)
