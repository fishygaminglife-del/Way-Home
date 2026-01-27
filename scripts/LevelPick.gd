extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass




func _on_home_button_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/HomeScreen.tscn")
	
func _on_tut_button_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/level 1.tscn")
	
func _on_lvl_2_button_pressed() -> void:
	
	get_tree().change_scene_to_file("res://scenes/level_2.tscn")


func _on_lvl_3_buttton_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/level_3.tscn")
