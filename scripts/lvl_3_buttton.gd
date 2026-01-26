extends Button


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	$".".disabled = true
	if Global.button_unlocked:
		disabled = false
