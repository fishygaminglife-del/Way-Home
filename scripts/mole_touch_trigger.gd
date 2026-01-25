extends Area2D


var has_touched = 0

func _on_body_entered(body: Node2D) -> void:
	if body.is_in_group("player") and has_touched == 0:
		$CollisionShape2D.disabled = true
		has_touched = 1
		body.get_node("TextBox").visible = true
		body.get_node("Text").text = "Make contact with the mole."
		body.get_node("Namelabel").visible = true
		body.get_node("TextBox").visible = true
		body.get_node("Text").visible = true
		body.get_node("Namelabel").text = "Instructions"
		body.get_node("Npc").visible = false  	
		body.get_node("AnimationPlayer").play("text_play")
		await body.get_node("AnimationPlayer").animation_finished
		body.get_node("TextBox").visible = false
		body.get_node("Text").visible = false
		body.get_node("Namelabel").visible = false
		 
	

func _on_body_exited(body: Node2D) -> void:
	if body.is_in_group("player"):
		pass
	
