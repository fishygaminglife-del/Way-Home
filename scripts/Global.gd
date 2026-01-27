extends Node


var button_unlocked := false
var hearts_remain = 3
var button_unlocked2 := false
var check2 := false
func _ready() -> void:
	pass # Replace with function body.

func update_hearts():
	hearts_remain -= 1
	if hearts_remain < 1:
		hearts_remain = 3
		await get_tree().create_timer(0.2).timeout
		get_tree().reload_current_scene()

	
