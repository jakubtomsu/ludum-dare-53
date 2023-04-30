extends Node2D

export var package_type_number: int = 0

func _on_Area2D_body_entered(body):
	body.queue_free()
	if body.is_in_group("package"):
		Global.level.score += 1
