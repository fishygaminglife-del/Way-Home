extends Area2D


func _on_body_entered(body: Node2D) -> void:
	if body.is_in_group("player"):
		body.die()
		body.get_node("Text").text = "You have died!"
		body.get_node("Namelabel").visible = true
		body.get_node("Namelabel").text = "Instructions"
		body.get_node("Text").visible = true
		body.get_node("TextBox").visible = true
		body.get_node("Text").visible = true
		body.get_node("AnimationPlayer").play("text_play")
		await body.get_node("AnimationPlayer").animation_finished
		body.get_node("Text").text = "Death = lvl restart, without checkpoint"
		body.get_node("AnimationPlayer").play("text_play")
		await body.get_node("AnimationPlayer").animation_finished
		body.get_node("TextBox").visible = false
func _on_body_exited(body: Node2D) -> void:
	pass 
