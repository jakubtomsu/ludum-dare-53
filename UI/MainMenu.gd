extends Node2D

onready var cam = $Camera2D

func btn_entered_signal():
	$HoverAudio.play()

func _ready():
	get_tree().paused = false
	var levels = [
		["Tutorial", "Tutorial"],
		["Level1", "Level 1"],
		["Level3", "Level 2"],
		["Level5", "Level 3"],
		["Level8", "Level 4"],
		["Level7", "Level 5"],
	]
	for l in levels:
		var b = preload("res://UI/LevelButton.tscn").instance()
		b.text = " " + l[1] + " "
		b.level = l[0]
		b.connect("mouse_entered", self, "btn_entered_signal")
		$MainMenu/CenterContainer/VBoxContainer/GridContainer.add_child(b)

func _process(delta):
	cam.offset = (get_global_mouse_position() - cam.global_position) * 0.2

func _on_CheckBox_toggled(button_pressed):
	OS.window_fullscreen = button_pressed
	$PressAudio.play()

func _on_AudioVolume_focus_entered():
	$PressAudio.play()

func _on_AudioVolume_value_changed(value):
	AudioServer.set_bus_volume_db(0, lerp(-10, 10, value))

