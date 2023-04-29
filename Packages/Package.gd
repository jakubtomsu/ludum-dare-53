extends RigidBody2D

func conveyor_belt_apply_force(force: Vector2):
	apply_central_impulse(force)
