extends Control

func on_finish(message = ""):
	visible = true
	$CenterContainer/VBoxContainer/Label.text = message
	$CenterContainer/VBoxContainer/Score.text = "Score: " + str(Global.level.score)
	get_tree().paused = true
	$CompletedAudio.play()

func _on_Restart_button_down():
	Global.quick_restart()

func _on_MainMenu_button_down():
	Global.change_scene("res://UI/MainMenu.tscn")
