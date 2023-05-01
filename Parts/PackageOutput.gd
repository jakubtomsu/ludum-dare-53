extends Node2D

export var package_type_number: int = 0

func _ready():
	yield(get_tree().create_timer(1.0), "timeout")
	$AnimatedSprite.play()

func _process(delta):
	for body in $Area2D.get_overlapping_bodies():
		if body.is_in_group("package"):
			if not body.is_grabbed:
				body.queue_free()
				Global.level.score += 2
				var fx = preload("res://FallEffect.tscn").instance()
				get_parent().add_child(fx)
				fx.global_position = body.global_position
				$DepositAudio.play()
				$DepositParticles.emitting = true
