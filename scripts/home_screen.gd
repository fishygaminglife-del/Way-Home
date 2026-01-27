extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	Global.play(load("res://audio/GoodBruno.ogg"))



func _on_button_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/level 1.tscn")



func _on_button_2_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/instruction_credit.tscn")
	
func _on_button_3_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/LevelScene.tscn")
