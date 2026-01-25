extends Area2D


func _on_body_entered(body: Node2D) -> void:
	if body.is_in_group("player"):
		body.get_node("Text").text = "Find, and aquire checkpoint"
		body.get_node("Namelabel").text = "Instructions"
		body.get_node("TextBox").visible = true
		body.get_node("AnimationPlayer").play("text_play")
		$"../SpriteAnimations/Arrow3".visible = true
		await body.get_node("AnimationPlayer").animation_finished
		body.get_node("Text").visible = false
		body.get_node("Namelabel").visible = false
		body.get_node("TextBox").visible = false

func _on_body_exited(body: Node2D) -> void:
	pass 
