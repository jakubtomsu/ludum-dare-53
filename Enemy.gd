extends KinematicBody2D

var velocity = Vector2()
# like a stun factor just reversed
var movement_factor: float = 0.0

func _process(delta):
	velocity += (Global.player.position - position).normalized() * delta * 20 * movement_factor
	velocity /= 1.0 + delta * 2.0 * movement_factor
	
	movement_factor = lerp(movement_factor, 1.0, delta * 2.0)

func _physics_process(delta):
	velocity = move_and_slide(velocity)
