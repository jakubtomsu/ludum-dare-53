extends KinematicBody2D

export var move_accel: float = 20.0
export var move_damp: float = 20.0
export var move_dash: float = 300.0

onready var item_area = $ItemArea2D

var velocity = Vector2()
var place_rotation: float = 0.0

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
	if Input.is_action_just_pressed("player_place_rotate"):
		place_rotation += deg2rad(90)
	
	var aim_dir = (get_global_mouse_position() - global_position).normalized()
	item_area.position = aim_dir * Global.TILE_SIZE * 0.7
	
	if Input.is_action_just_pressed("player_shoot"):
		for b in item_area.get_overlapping_bodies():
			b.velocity = (aim_dir + (b.global_position - global_position).normalized() * 0.5) * 100
			if b.is_in_group("enemy"):
				b.movement_factor = 0

func _physics_process(delta: float):
	assert(Global.player == self)

	var move_dir = get_move_dir()
	
	if Input.is_action_just_pressed("player_dash"):
		velocity += move_dir * move_dash
		
	velocity += move_dir * move_accel
	
	velocity = move_and_slide(velocity)
	velocity = apply_damping(velocity, move_damp, delta)
