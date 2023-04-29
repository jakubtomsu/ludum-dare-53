extends KinematicBody2D

var velocity = Vector2()

export var move_accel: float = 40.0
export var move_damp: float = 10.0

func apply_damping(x, damp: float, delta: float):
	return x * (1.0 / (1.0 + damp * delta))

func _physics_process(delta: float):
	var move_dir = Vector2()
	if Input.is_key_pressed(KEY_LEFT):
		move_dir.x -= 1.0
	if Input.is_key_pressed(KEY_RIGHT):
		move_dir.x += 1.0
	if Input.is_key_pressed(KEY_UP):
		move_dir.y -= 1.0
	if Input.is_key_pressed(KEY_DOWN):
		move_dir.y += 1.0
	
	velocity += move_dir * move_accel
	
	velocity = apply_damping(velocity, move_damp, delta)
	
	velocity = move_and_slide(velocity)
