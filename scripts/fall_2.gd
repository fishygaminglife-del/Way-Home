extends Area2D


func _on_body_entered(body: Node2D) -> void:
	$"../../Fall".play()
	await get_tree().create_timer(0.3)
	body.die()
	Global.update_hearts()


func _on_body_exited(body: Node2D) -> void:
	pass # Replace with function body.
