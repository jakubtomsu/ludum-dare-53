extends Control

func _process(delta):
	if Input.is_action_just_pressed("pause_menu"):
		get_tree().paused = !get_tree().paused
		visible = get_tree().paused


func _on_Button_button_down():
	get_tree().change_scene("res://UI/MainMenu.tscn")


func _on_Restart_button_down():
	get_tree().paused = false
	Global.quick_restart()
