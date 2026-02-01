extends Node2D

var hearts_remain = 3

func _ready() -> void:
	Global.coins = 0
	$Player/Node2D/Button2.disabled = true
	$Player/PlayBut.visible = false
	$Player/PlayBut.disabled = true
	$Player/Node2D/HomePage.visible = false
	$Player/Node2D/Button.visible = false
	$Player/Node2D/Button2.visible = false
	$Player/Node2D/Label.visible = false
	$Player/Node2D/Button.disabled = true
	$Player/Node2D/Button2.disabled = true
	Global.hearts_remain = 3
	$Player/TextBox.visible = true
	$Player/Text.visible = true
	$Player/Namelabel.visible = true
	$Player/Npc.visible = true
	$Player/Text.text = "Get home safe, there was a earthquake recently"
	$Player/Namelabel.text = "Coworker"
	$Player/AnimationPlayer.play("text_play")
	await $Player/AnimationPlayer.animation_finished
	$Player/TextBox.visible = false
	$Player/Text.visible = false
	$Player/Namelabel.visible = false
	$Player/Npc.visible = false
func _process(_delta):
	update_heart_ui()
	if Global.hearts_remain < 1:
		$Player/Node2D/HomePage.visible = true
		$Player/Node2D/Button.visible = true
		$Player/Node2D/Button2.visible = true
		$Player/Node2D/Label.visible = true
		$Player/Node2D/Button.disabled = false
		$Player/Node2D/Button2.disabled = false
		get_tree().paused = true


func update_heart_ui():
	if Global.hearts_remain == 3:
		$Player/Hearts/Heart.visible = true
		$Player/Hearts/Heart2.visible = true
		$Player/Hearts/Heart3.visible = true

	elif Global.hearts_remain == 2:
		$Player/Hearts/Heart.visible = false

	elif Global.hearts_remain == 1:
		$Player/Hearts/Heart2.visible = false

	elif Global.hearts_remain == 0:
		$Player/Hearts/Heart3.visible = false


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
