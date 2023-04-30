extends KinematicBody2D

export var damping: float = 1.0

var velocity = Vector2()

func conveyor_belt_apply_force(force: Vector2):
	velocity += force

func _physics_process(delta):
	var old_velocity = velocity
	velocity = move_and_slide(velocity)
	var damp = damping if get_slide_count() == 0 else 10
	velocity *= 1.0 / (1.0 + delta * damp)

	for i in range(0, get_slide_count()):
		var col = get_slide_collision(i)
		if col != null:
			velocity = old_velocity.bounce(col.normal) * 0.4
			if col.collider.is_in_group("enemy"):
				var b = col.collider
				b.velocity = old_velocity
				b.movement_factor = 0

func ease_out_bounce(x: float) -> float:
	var n1 := 7.5625
	var d1 := 2.75
	if x < 1.0 / d1:
		return n1 * x * x
	elif x < 2.0 / d1:
		x -= 1.5 / d1
		return n1 * (x) * x + 0.75
	elif x < 2.5 / d1:
		x -= 2.25 / d1
		return n1 * (x) * x + 0.9375
	else:
		if x > 1.0:
			return 1.0
		x -= 2.625 / d1
		return n1 * (x) * x + 0.984375
