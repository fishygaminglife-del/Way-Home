extends Area2D


func _on_body_entered(body: Node2D) -> void:
	if body.is_in_group("player"):
		Global.update_hearts()	
		body.get_node("Text").text = "**Prick** **Prick**"
		body.get_node("Namelabel").text = "Thorn Bush"
		body.get_node("TextBox").visible = true
		body.get_node("AnimationPlayer").play("text_play")
		await body.get_node("AnimationPlayer").animation_finished
		body.get_node("Text").visible = false
		body.get_node("Namelabel").visible = false
		body.get_node("TextBox").visible = false
