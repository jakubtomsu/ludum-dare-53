extends KinematicBody2D

export var move_accel: float = 20.0
export var move_damp: float = 20.0
export var move_dash: float = 300.0

onready var conveyor_belt = preload("res://Parts/ConveyorBelt.tscn")
onready var tile_highlight = get_parent().get_node("TileHighlight")
onready var tile_hightlight_area = tile_highlight.get_node("Area2D")

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

func _process(delta):
	if Input.is_action_just_pressed("player_place_rotate"):
		place_rotation += deg2rad(90)
	
	var mouse_tile = round_to_tile(get_global_mouse_position())
	tile_highlight.position = mouse_tile
	tile_highlight.rotation = place_rotation
	
	var place_tile_already_has_something: bool = len(tile_hightlight_area.get_overlapping_areas()) > 0	
	
	var can_place = mouse_tile.distance_to(position) < Global.TILE_SIZE * 4 && !place_tile_already_has_something
	tile_highlight.visible = can_place

	if Input.is_action_just_pressed("player_shoot") && can_place:
		var belt = conveyor_belt.instance()
		belt.position = mouse_tile
		belt.rotation = place_rotation
		get_tree().get_root().add_child(belt)

func _physics_process(delta: float):
	assert(Global.player == self)

	var move_dir = Vector2()
	if Input.is_action_pressed("player_move_left"):
		move_dir.x -= 1.0
	if Input.is_action_pressed("player_move_right"):
		move_dir.x += 1.0
	if Input.is_action_pressed("player_move_up"):
		move_dir.y -= 1.0
	if Input.is_action_pressed("player_move_down"):
		move_dir.y += 1.0
	
	if Input.is_action_just_pressed("player_dash"):
		velocity += move_dir * move_dash
		
	velocity += move_dir * move_accel
	
	velocity = move_and_slide(velocity)
	velocity = apply_damping(velocity, move_damp, delta)
