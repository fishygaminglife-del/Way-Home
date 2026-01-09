extends Area2D
var counter = 0

func _on_body_entered(body: Node2D) -> void:
	if body.is_in_group("player") and counter == 0:
		$"../Player/Text".text = "Sir, why are you still here."
		$"../Player/Name".text = "Coworker"
		$"../Player/Name".visible = true
		$"../Player/Text".visible = true
		$"../Player/TextBox".visible = true
		$"../Player/Npc".visible = true
		$"../Player/AnimationPlayer".play("text_play")
		await $"../Player/AnimationPlayer".animation_finished
		$"../Player/Text".visible = false
		$"../Player/Text".text = "Your live all the way over there!"
		$"../Player/Text".visible = true
		$"../Player/AnimationPlayer".play("text_play")
		await $"../Player/AnimationPlayer".animation_finished
	#	$"../Player/Camera2D".position = Vector2.ZERO
		$"../Player/Text".visible = false
		$"../Player/Npc".visible = false
		$"../Player/Name".visible = false
		$"../Player/TextBox".visible = false
		counter = 1
func _on_body_exited(body: Node2D) -> void:
	if body.is_in_group("player"):
		pass
