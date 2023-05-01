extends Node2D

export var health_to_add = 2

func _on_Area2D_body_entered(body):
	if body.is_in_group("player"):
		body.add_health(health_to_add)
		$PickupAudio.play()
		visible = false
		yield($PickupAudio, "finished")
		queue_free()
