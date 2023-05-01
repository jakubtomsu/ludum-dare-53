extends Node2D

export var rate: float = 5.0

onready var possible_spawns = [
	preload("res://Packages/NormalPackage.tscn"),
	preload("res://Packages/NormalPackage.tscn"),
	preload("res://Enemy.tscn"),
	preload("res://EnemyB.tscn"),
	preload("res://Parts/HealthDrop.tscn"),
]
onready var area = $Area2D
onready var timer = $Timer
onready var navigation = get_parent().get_node("Navigation")

func _ready():
	timer.wait_time = rate

func _on_Timer_timeout():
	if len(area.get_overlapping_bodies()) == 0:
		var rand_index:int = randi() % possible_spawns.size()
		var inst = possible_spawns[rand_index].instance()
		if inst.is_in_group("enemy"):
			navigation.add_child(inst)
		else:
			get_tree().get_root().add_child(inst)
		inst.global_position = global_position
	else:
		timer.start()
