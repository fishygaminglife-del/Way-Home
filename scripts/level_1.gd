extends Node2D


func _ready() -> void:
	$NpcTalk/CollisionShape2D.disabled = true
	$Player/TextBox.visible = false
	$Player/Text.visible = false
	$Player/Name.visible = false
	$Player/Npc.visible = false
	$Player/Text.text = "Use arrow keys to move"
	$Player/Name.text = "Instructions"
	$Player/Name.visible = true
	$Player/Text.visible = true
	$Player/TextBox.visible = true
	$Player/AnimationPlayer.play("text_play")
	await $Player/AnimationPlayer.animation_finished
	$Player/Text.visible = false
	$NpcTalk/CollisionShape2D.disabled = false
	$Player/Text.text = "Talk to Coworker."
	$Player/Text.visible = true
	$Player/AnimationPlayer.play("text_play")
