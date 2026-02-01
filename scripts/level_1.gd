extends Node2D

func _ready() -> void:
	finish_scene()
	$Player/PlayBut.visible = false
	$Player/PlayBut.disabled = true
	$SpriteAnimations/Arrow3.visible = false
	$NpcTalk/CollisionShape2D.disabled = true
	$SpriteAnimations/Arrow2.visible = false 
	$StaticBody2D/blocker1.disabled = false
	$Player/Node2D/HomePage.visible = false
	$Player/Node2D/Button.visible = false
	$Player/Node2D/Button2.visible = false
	$Player/Node2D/Label.visible = false
	$Player/Node2D/Button.disabled = true
	$Player/Node2D/Button2.disabled = true
	$SpriteAnimations/Arrow.visible = false
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
	$Player/TextBox.visible = false
	$Player/Text.visible = false
	$Player/Namelabel.visible = false
	$Player/Npc.visible = false
	$Player/Text.text = "Wait for text to end, follow arrows"
	$Player/Namelabel.text = "Instructions"
	$Player/Namelabel.visible = true
	$Player/Text.visible = true
	$Player/TextBox.visible = true
	$Player/AnimationPlayer.play("text_play")
	await $Player/AnimationPlayer.animation_finished
	$NpcTalk/CollisionShape2D.disabled = false
	$Player/Text.text = "Talk to Coworker."
	$Player/Text.visible = true
	$Player/AnimationPlayer.play("text_play")
	await $Player/AnimationPlayer.animation_finished
	if $NpcTalk.counting == 0:
		$Player/TextBox.visible = false
	else:
		pass

func finish_scene():
	Global.button_unlocked2 = true

func _on_pause_but_pressed() -> void:
	$Player/Node2D/HomePage.visible = true
	$Player/Node2D/Button.visible = true
	$Player/Node2D/Button2.visible = true
	$Player/Node2D/Label.visible = true
	$Player/Node2D/Button.disabled = false
	$Player/Node2D/Button2.disabled = false
	$Player/PlayBut.visible = true
	$Player/PlayBut.disabled = false
	get_tree().paused = true


func _on_play_but_pressed() -> void:
	$Player/Node2D/HomePage.visible = false
	$Player/Node2D/Button.visible = false
	$Player/Node2D/Button2.visible = false
	$Player/Node2D/Label.visible = false
	$Player/Node2D/Button.disabled = true
	$Player/Node2D/Button2.disabled = true
	$Player/PlayBut.visible = false
	$Player/PlayBut.disabled = true
	get_tree().paused = false
