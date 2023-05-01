extends KinematicBody2D

export var speed = 100
export var update_rate: float = 1

onready var fall_area = $FallArea
onready var navigation = get_parent() # hack

var velocity = Vector2()
# like a stun factor just reversed
var movement_factor: float = 0.0
var path = null
var update_timer = update_rate
var destination = Vector2()
var stun = 0.0
var time_alive = 0.0
var is_dead = false

func player_push(dir: Vector2):
	velocity = dir * 600
	$SlideAudio.play()

func kill():
	is_dead = true
	var fx = preload("res://FallEffect.tscn").instance()
	get_parent().add_child(fx)
	fx.global_position = global_position
	Global.cam.shake_strength += 0.2
	Global.level.score += 1
	$KillAudio.play()
	visible = false
	yield($KillAudio, "finished")
	queue_free()

func _process(delta):
	if is_dead: return
	
	time_alive += delta
	update_timer += delta
	if update_timer > update_rate:
		update_timer = 0
		path = navigation.get_simple_path(global_position, Global.player.global_position)
		if path.size() > 0:
			destination = path[0]
			path.remove(0)
	
	if len(fall_area.get_overlapping_bodies()) == 0 and time_alive > 0.5:
		kill()

	if path != null:
		if destination.distance_squared_to(position) < 5:
			if path.size() > 0:
				destination = path[0]
				path.remove(0)

func conveyor_belt_apply_force(force: Vector2):
	velocity += force

func _physics_process(delta):
	stun = clamp(stun - delta * 2.0, 0.0, 1.0)
	velocity += (destination - position).normalized() * speed * delta * (1.0 - stun)
	velocity /= 1.0 + delta * 3.0
	velocity = move_and_slide(velocity)
	
	for i in range(0, get_slide_count()):
		var col = get_slide_collision(i)
		if col != null:
			var other = col.collider
			if other.is_in_group("player"):
				other.damage(1)
				other.velocity = -col.normal * 100
				velocity = col.normal * 100
				stun = 1.0
