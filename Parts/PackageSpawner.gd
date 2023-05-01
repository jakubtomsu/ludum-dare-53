extends Node2D

export var wait_time: float = 4.0
export var package_chance: float = 0.5
export var enemy_chance: float = 0.5

onready var area = $Area2D
onready var timer = $Timer
onready var navigation = get_parent().get_node("Navigation")

func _ready():
	timer.wait_time = wait_time

func _on_Timer_timeout():
	if len(area.get_overlapping_bodies()) == 0:
		var inst = null
		if randf() < package_chance:
			inst = preload("res://Packages/NormalPackage.tscn")
		elif randf() < enemy_chance:
			inst = preload("res://Enemy.tscn") if randf() > 0.5 else preload("res://EnemyB.tscn")
		else:
			inst = preload("res://Parts/HealthDrop.tscn")
		inst = inst.instance()
		
		if inst.is_in_group("enemy"):
			navigation.add_child(inst)
		else:
			add_child(inst)
	
		inst.global_position = global_position
		if inst.is_in_group("health_drop"):
			inst.position += Vector2(randf(), randf()).normalized() * 8
		
		var fx = preload("res://FallEffect.tscn").instance()
		get_parent().add_child(fx)
		fx.global_position = inst.global_position
		
	else:
		timer.start()
