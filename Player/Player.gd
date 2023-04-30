extends KinematicBody2D

export var move_accel: float = 10.0
export var move_damp: float = 16.0

onready var item_area = $ItemArea2D
onready var fall_area = $FallArea
onready var slash = $Slash
onready var anim_sprite = $AnimatedSprite

var velocity = Vector2()
var grabbed = null

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
	if Input.is_action_just_pressed("quick_restart"):
		Global.quick_restart()
	
	var aim_dir = (get_global_mouse_position() - global_position).normalized()
	item_area.position = aim_dir * Global.TILE_SIZE * 0.8
	
	var move_dir = get_move_dir()
	if move_dir.x > 0.1: anim_sprite.scale.x = 1.0
	elif move_dir.x < -0.1: anim_sprite.scale.x = -1.0
	
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
	
	if Input.is_action_just_pressed("player_shoot"):
		if is_instance_valid(grabbed):
			if grabbed.has_method("player_end_grab"):
				grabbed.player_end_grab()
			grabbed = null
		for b in item_area.get_overlapping_bodies():
			if b.has_method("player_push"):
				b.player_push(aim_dir)
			else:
				velocity = -aim_dir * 300
		slash.position = aim_dir * 5
		slash.rotation = aim_dir.angle()
		slash.visible = true
		slash.frame = 0
		slash.play("default")

	if is_instance_valid(grabbed):
		if grabbed.has_method("player_grab_pos"):
			grabbed.player_grab_pos(global_position + aim_dir * Global.TILE_SIZE)
	
	if len(fall_area.get_overlapping_bodies()) == 0 and Global.level.sec_since_start() > 1:
		Global.fail_level()

func _physics_process(delta: float):
	# assert(Global.player == self)
	var move_dir = get_move_dir()
	
	velocity += move_dir * move_accel
	
	velocity = move_and_slide(velocity)
	velocity = apply_damping(velocity, move_damp, delta)


func _on_Slash_animation_finished():
	slash.visible = false
