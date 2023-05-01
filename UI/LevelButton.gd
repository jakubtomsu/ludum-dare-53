extends Button

var level = ""

func _on_Button_pressed():
	Global.change_scene("res://Levels/" + level + ".tscn")
