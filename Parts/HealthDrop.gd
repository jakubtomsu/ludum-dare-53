extends Node2D

export var health_to_add = 2

func _on_Area2D_body_entered(body):
	if body.is_in_group("player"):
		if body.health < body.max_health:
			body.add_health(health_to_add)
			queue_free()
