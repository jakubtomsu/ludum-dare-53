extends Node2D

export var package_type_number: int = 0

func _on_Area2D_body_entered(body):
	if body.is_in_group("package"):
		body.queue_free()
		Global.level.score += 1
		$AnimatedSprite.play()
