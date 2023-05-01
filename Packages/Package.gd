extends KinematicBody2D

export var push_force: float = 180
export var damping: float = 3.0

onready var fall_area = $FallArea
onready var particles = $CPUParticles2D

var velocity = Vector2()
var is_grabbed = false
var time_alive: float = 0.0

func conveyor_belt_apply_force(force: Vector2):
	velocity += force * 0.7

func player_push(dir: Vector2):
	velocity = dir * push_force
	$SlidingAudio.play()

func player_grab_pos(pos: Vector2):
	global_position = pos

func kill():
	var fx = preload("res://FallEffect.tscn").instance()
	get_parent().add_child(fx)
	fx.global_position = global_position
	queue_free()
	
func _process(delta):
	z_index = 110 if global_position.y > Global.player.global_position.y else 10
	
	particles.emitting = velocity.length_squared() > 10

func _physics_process(delta):
	time_alive += delta
	if is_grabbed: return

	velocity /= 1.0 + delta * damping
	var old_vel = velocity
	velocity = move_and_slide(velocity)
	
	if get_slide_count() > 0:
		var first = get_slide_collision(0)
		print(first, first.normal)
		velocity += old_vel.bounce(first.normal) * 0.5
		var other = first.collider
		if other.is_in_group("package"):
			other.velocity += old_vel * 0.5
		if other.is_in_group("enemy"):
			if velocity.length_squared() > 10:
				velocity = Vector2()
				other.kill()
				Global.cam.shake_strength += 0.25
		if old_vel.length_squared() > 10:
			$HitAudio.play()
	
	if len(fall_area.get_overlapping_bodies()) == 0 and time_alive > 0.5:
		kill()

func player_start_grab():
	is_grabbed = true
	
func player_end_grab():
	is_grabbed = false
	velocity = Vector2()
