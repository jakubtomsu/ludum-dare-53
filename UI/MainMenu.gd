extends Node2D

onready var cam = $Camera2D

func _process(delta):
	cam.offset = (get_global_mouse_position() - cam.global_position) * 0.2

func _on_CheckBox_toggled(button_pressed):
	OS.window_fullscreen = button_pressed
	$PressAudio.play()


func _on_AudioVolume_focus_entered():
	$PressAudio.play()


func _on_Level1_mouse_entered():
	$HoverAudio.play()


func _on_Level1_button_down():
	Global.change_scene("res://Levels/Level1.tscn")


func _on_AudioVolume_value_changed(value):
	AudioServer.set_bus_volume_db(0, lerp(-10, 10, value))
