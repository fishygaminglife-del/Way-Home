extends Node2D

func _ready() -> void:
	$NpcTalk/CollisionShape2D.disabled = true
	$StaticBody2D/blocker1.disabled = false
	$Arrow.visible = false
	$Player/TextBox.visible = false
	$Player/Text.visible = false
	$Player/Namelabel.visible = false
	$Player/Npc.visible = false
	$Player/Text.text = "Use arrow keys to move"
	$Player/Namelabel.text = "Instructions"
	$Player/Namelabel.visible = true
	$Player/Text.visible = true
	$Player/TextBox.visible = true
	$Player/AnimationPlayer.play("text_play")
	await $Player/AnimationPlayer.animation_finished
	$Player/Text.visible = false
	$NpcTalk/CollisionShape2D.disabled = false
	$Player/Text.text = "Talk to Coworker."
	$Player/Text.visible = true
	$Player/AnimationPlayer.play("text_play")
	await $Player/AnimationPlayer.animation_finished
	if $NpcTalk.counting == 0:
		$Player/TextBox.visible = false
	else:
		pass
