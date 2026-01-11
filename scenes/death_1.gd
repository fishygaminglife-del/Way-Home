extends Area2D


func _on_body_entered(body: Node2D) -> void:
	if body.is_in_group("player"):
		$"../Player".position = Vector2(69, 518)
		$"../Player/Text".text = "You have died!"
		$"../Player/Name".visible = true
		$"../Player/Name".text = "Instructions"
		$"../Player/Name".visible = true
		$"../Player/TextBox".visible = true
		$"../Player/Text".visible = true
		$"../Player/AnimationPlayer".play("text_play")
		await $"../Player/AnimationPlayer".animation_finished
		$"../Player/Text".text = "Death = lvl restart"
		$"../Player/AnimationPlayer".play("text_play")
		await $"../Player/AnimationPlayer".animation_finished
func _on_body_exited(body: Node2D) -> void:
	pass 
