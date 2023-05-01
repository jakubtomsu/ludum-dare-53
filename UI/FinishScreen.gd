extends Control

func _on_Next_button_down():
	Global.level.next_level()


func _on_Restart_button_down():
	Global.quick_restart()


func _on_MainMenu_button_down():
	Global.change_scene("res://UI/MainMenu.tscn")
