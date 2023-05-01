extends Node2D

onready var cam = $Camera2D

func _process(delta):
	cam.offset = (get_global_mouse_position() - cam.global_position) * 0.2

func _on_CheckBox_toggled(button_pressed):
	OS.window_fullscreen = button_pressed
