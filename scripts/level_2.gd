extends Node2D

var hearts_remain = 3

func _ready() -> void:
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






	
