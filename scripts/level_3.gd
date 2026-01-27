extends Node2D

var hit_BB = 0
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	$Player/TextBox.visible = false
	$Player/Text.visible = false
	$Player/Namelabel.visible = false
	$Player/Npc.visible = false
	$StaticBody2D/CollisionShape2D17.disabled = true
	$Player/James.visible = false
	boulderfall()

func boulderfall():
	await get_tree().create_timer(7).timeout
	$AnimationPlayers/AnimationPlayer3_2.play("Bolder2_2")
	$AnimationPlayers/AnimationPlayer3_1.play("Boulder2_1")
	
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



func _on_boulder_falling_body_entered(body: Node2D) -> void:
	if body.is_in_group("player"):
		Global.update_hearts()


func _on_big_boulder_fall_body_entered(body: Node2D) -> void:
	if body.is_in_group("player") and hit_BB == 0:
		hit_BB = 1
		body.get_node("Text").text = "MOVE OUT OF THE WAY, A BIG BAD MASSIVE ROCK IS THERE!!!"
		body.get_node("Namelabel").text = "???"
		body.get_node("TextBox").visible = true
		body.get_node("James").visible = true
		body.get_node("AnimationPlayer").play("text_play")
		$AnimationPlayers/AnimationPlayer3_3.play("MassiveBoulder")
		await body.get_node("AnimationPlayer").animation_finished

		meet_james()
		
func meet_james():
		$Player/Text.text = "Hey, I'm James, guessing your getting home too?"
		$Player/Namelabel.text = "James"
		$Player/AnimationPlayer.play("text_play")
		await $Player/AnimationPlayer.animation_finished
		$Player/James.visible = false
		$Player/Text.text = "Yeah..."
		$Player/Namelabel.text = "You"
		$Player/AnimationPlayer.play("text_play")
		await $Player/AnimationPlayer.animation_finished
		$Player/Text.text = "Well be carefull, this path is very dangerous!"
		$Player/Namelabel.text = "James"
		$Player/James.visible = true
		$Player/AnimationPlayer.play("text_play")
		await $Player/AnimationPlayer.animation_finished
		$Player/Text.visible = false
		$Player/Namelabel.visible = false
		$Player/TextBox.visible = false
		$Player/James.visible = false
