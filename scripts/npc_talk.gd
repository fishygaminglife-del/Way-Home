extends Area2D
var is_playing = true
var counting = 0
func _on_body_entered(body: Node2D) -> void:
	if body.is_in_group("player") and is_playing == true:
		is_playing = false
		counting = 1
		$"../Player/Text".text = "Sir, why are you still here."
		$"../Player/Namelabel".text = "Coworker"
		$"../Player/Namelabel".visible = true
		$"../Player/Text".visible = true
		$"../Player/TextBox".visible = true
		$"../Player/Npc".visible = true
		$"../Player/AnimationPlayer".play("text_play")
		await $"../Player/AnimationPlayer".animation_finished
		$"../Player/Text".visible = false
		$"../Player/Text".text = "You live all the way over there!"
		$"../Player/Text".visible = true
		$"../Player/AnimationPlayer".play("text_play")
		$"../SpriteAnimations/Arrow".visible = true
		$"../StaticBody2D/blocker1".disabled = true
		await $"../Player/AnimationPlayer".animation_finished
		$"../Player/Text".visible = false
		$"../Player/Npc".visible = false
		$"../Player/Namelabel".visible = false
		$"../Player/TextBox".visible = false
		$"../StaticBody2D/blocker 3".disabled = true
		$"../SpriteAnimations/Arrow2".visible = true
		
		is_playing = false
func _on_body_exited(body: Node2D) -> void:
	if body.is_in_group("player"):
		pass
