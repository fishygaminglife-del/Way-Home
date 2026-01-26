extends Button


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	disabled = true

	# If Scene A was completed, enable it
	if Global.button_unlocked2:
		disabled = false
