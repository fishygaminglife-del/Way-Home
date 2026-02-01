extends Node2D




func _on_button_pressed() -> void:
	get_tree().paused = false
	get_tree().change_scene_to_file("res://scenes/HomeScreen.tscn")
	



func _on_button_2_pressed() -> void:
	get_tree().paused = false
	get_tree().reload_current_scene()
