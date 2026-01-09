extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	$Player/TextBox.visible = false
	$Player/Text.visible = false
	$Player/Name.visible = false
	$Player/Npc.visible = false
