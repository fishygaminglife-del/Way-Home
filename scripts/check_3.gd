extends Sprite2D

func _ready() -> void:
	$".".visible = false
	if Global.check2:
		$".".visible = true
