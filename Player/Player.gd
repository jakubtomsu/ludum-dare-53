extends KinematicBody2D

export var move_accel: float = 10.0
export var move_damp: float = 14.0
export var max_charge_time: float = 0.4
export var max_health: float = 4

onready var item_area = $ItemArea2D
onready var fall_area = $FallArea
onready var slash = item_area.get_node("Slash")
onready var anim_sprite = $AnimatedSprite
onready var charge_sprite = $Charge
onready var charge_bg_sprite = $ChargeBg

var health = max_health
var velocity = Vector2()
var grabbed = null
var charge_time: float = 0.0
var last_ok_pos = Vector2()
var time_since_damage = 0.0
var on_conveyor_belt = false

func _ready():
	Global.player = self
	slash.visible = false

func apply_damping(x, damp: float, delta: float):
	return x * (1.0 / (1.0 + damp * delta))

func conveyor_belt_apply_force(force: Vector2):
	velocity += force
	on_conveyor_belt = true

func add_health(x):
	health = clamp(health + x, 0, max_health)

func round_to_tile(x: Vector2) -> Vector2:
	x /= Global.TILE_SIZE
	return Vector2(floor(x.x) + 0.5, floor(x.y) + 0.5) * Global.TILE_SIZE

func damage(damage: float):
	if time_since_damage > 0.1:
		health -= damage
		time_since_damage = 0
		Global.cam.shake_strength += damage * 0.6
		$DamageAudio.play()

func get_move_dir() -> Vector2:
	var move_dir = Vector2()
	if Input.is_action_pressed("player_move_left"): move_dir.x -= 1.0
	if Input.is_action_pressed("player_move_right"): move_dir.x += 1.0
	if Input.is_action_pressed("player_move_up"): move_dir.y -= 1.0
	if Input.is_action_pressed("player_move_down"): move_dir.y += 1.0
	return move_dir

func _process(delta):
	if Input.is_action_just_pressed("quick_restart"):
		Global.quick_restart()
	time_since_damage += delta

	if health <= 0:
		Global.fail_level()

	var aim_dir = (get_global_mouse_position() - global_position).normalized()
	item_area.position = aim_dir * Global.TILE_SIZE
	item_area.rotation = aim_dir.angle()
	
	var move_dir = get_move_dir()
	if move_dir.x > 0.1: anim_sprite.scale.x = 1.0
	elif move_dir.x < -0.1: anim_sprite.scale.x = -1.0
	
	var is_moving = move_dir.length_squared() > 0.1
	
	if is_moving:
		if not $StepsAudio.playing:
			$StepsAudio.play()
	else:
		$StepsAudio.stop()

	if Input.is_action_just_pressed("player_grab"):
		if !is_instance_valid(grabbed):
			if len(item_area.get_overlapping_bodies()) > 0:
				var item = item_area.get_overlapping_bodies()[0]
				if item.is_in_group("package"):
					grabbed = item
					if grabbed.has_method("player_start_grab"):
						grabbed.player_start_grab()
		else:
			if grabbed.has_method("player_end_grab"):
					grabbed.player_end_grab()
			grabbed = null
	
	var charge = clamp(charge_time, 0, max_charge_time)
	
	if Input.is_action_just_released("player_shoot"):
		Global.cam.shake_strength += charge * 0.4 / max_charge_time
		if is_instance_valid(grabbed):
			if grabbed.has_method("player_end_grab"):
				grabbed.player_end_grab()
			grabbed = null
		for b in item_area.get_overlapping_bodies():
			if b.has_method("player_push"):
				b.player_push(aim_dir * charge)
				Global.cam.shake_strength += 0.1
			else:
				velocity = -aim_dir * 200 * (charge + 1.0)
		#slash.position = aim_dir * 5
		#slash.rotation = aim_dir.angle()
		slash.visible = true
		slash.frame = 0
		slash.play("default")
		$SlashAudio.play()

	if Input.is_action_pressed("player_shoot"):
		charge_time += delta
	else:
		charge_time = 0.0

	if is_instance_valid(grabbed):
		if grabbed.has_method("player_grab_pos"):
			grabbed.player_grab_pos(global_position + aim_dir * Global.TILE_SIZE)
	
	if len(fall_area.get_overlapping_bodies()) == 0 and Global.level.sec_since_start() > 1:
		# Global.fail_level()
		damage(1)
		global_position = last_ok_pos
		Global.cam.shake_strength += 0.5
	else:
		if not on_conveyor_belt:
			last_ok_pos = global_position - move_dir.normalized() * 20
	
	charge_sprite.visible = charge_time > 0.001
	charge_bg_sprite.visible = charge_sprite.visible
	charge_sprite.scale.x = lerp(0, charge_bg_sprite.scale.x, charge / max_charge_time)

func _physics_process(delta: float):
	# assert(Global.player == self)
	var move_dir = get_move_dir()
	
	if time_since_damage > 0.25:
		velocity += move_dir * move_accel
	
	velocity = move_and_slide(velocity)
	velocity = apply_damping(velocity, move_damp, delta)
	on_conveyor_belt = false


func _on_Slash_animation_finished():
	slash.visible = false
