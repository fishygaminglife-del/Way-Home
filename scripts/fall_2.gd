extends Area2D


func _on_body_entered(body: Node2D) -> void:
	body.die()
	Global.update_hearts()


func _on_body_exited(body: Node2D) -> void:
	pass # Replace with function body.
