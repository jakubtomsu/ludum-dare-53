extends KinematicBody2D

export var move_accel: float = 10.0
export var move_damp: float = 16.0
export var move_dash: float = 180.0
export var dash_dur: float = 0.5

onready var item_area = $ItemArea2D
onready var fall_area = $FallArea

var is_dashing = false
var dash_time = 0.0
var velocity = Vector2()

func _init():
	Global.player = self

func apply_damping(x, damp: float, delta: float):
	return x * (1.0 / (1.0 + damp * delta))

func conveyor_belt_apply_force(force: Vector2):
	velocity += force

func round_to_tile(x: Vector2) -> Vector2:
	x /= Global.TILE_SIZE
	return Vector2(floor(x.x) + 0.5, floor(x.y) + 0.5) * Global.TILE_SIZE

func get_move_dir() -> Vector2:
	var move_dir = Vector2()
	if Input.is_action_pressed("player_move_left"): move_dir.x -= 1.0
	if Input.is_action_pressed("player_move_right"): move_dir.x += 1.0
	if Input.is_action_pressed("player_move_up"): move_dir.y -= 1.0
	if Input.is_action_pressed("player_move_down"): move_dir.y += 1.0
	return move_dir

func _process(delta):
	if dash_time > dash_dur:
			is_dashing = false
			
	if is_dashing:
		dash_time += delta
	
	var aim_dir = (get_global_mouse_position() - global_position).normalized()
	item_area.position = aim_dir * Global.TILE_SIZE * 0.8
	
	if Input.is_action_just_pressed("player_shoot"):
		for b in item_area.get_overlapping_bodies():
			b.velocity = (aim_dir + (b.global_position - global_position).normalized() * 0.1) * 100
			if b.is_in_group("enemy"):
				b.movement_factor = 0
				
	print("fall:", fall_area.get_overlapping_bodies())
	if len(fall_area.get_overlapping_bodies()) == 0 and Global.level.sec_since_start() > 1:
		Global.fail_level()

func _physics_process(delta: float):
	# assert(Global.player == self)
	if !is_dashing:
		var move_dir = get_move_dir()
	
		if Input.is_action_just_pressed("player_dash"):
			is_dashing = true
			velocity = move_dir * move_dash
		
		velocity += move_dir * move_accel
	
		velocity = move_and_slide(velocity)
		velocity = apply_damping(velocity, move_damp, delta)
	else:
		velocity = move_and_slide(velocity)


func _on_FallArea_body_exited(body):
	if len(fall_area.get_overlapping_bodies()) == 0:
		return
		Global.fail_level()
