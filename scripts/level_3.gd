extends Node2D

var hit_BB = 0
var end_talk3 = 0
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	$Fire/AnimatedSprite2D.visible = false
	$Fire/AnimatedSprite2D4.visible = false
	$Fire/AnimatedSprite2D3.visible = false
	$Fire/AnimatedSprite2D2.visible = false
	$Fire/AnimatedSprite2D5.visible = false
	$Fire/AnimatedSprite2D8.visible = false
	$Fire/AnimatedSprite2D7.visible = false
	$Fire/AnimatedSprite2D6.visible = false
	$Player/TextBox.visible = true
	$Player/Text.text = "Go there, and be safe <---"
	$Player/Text.visible = true
	$Player/Namelabel.visible = true
	$Player/Namelabel.text = "Coworker"
	$Player/Npc.visible = true
	$Player/AnimationPlayer.play("text_play")
	await $Player/AnimationPlayer.animation_finished
	$Player/Text.visible = false
	$Player/Namelabel.visible = false
	$Player/TextBox.visible = false
	$Player/Npc.visible = false
	$StaticBody2D/CollisionShape2D17.disabled = true
	$Player/James.visible = false
	
	boulderfall()

func boulderfall():
	await get_tree().create_timer(5).timeout
	$AnimationPlayers/AnimationPlayer3_2.play("Bolder2_2")
	$AnimationPlayers/AnimationPlayer3_1.play("Boulder2_1")
	
func _process(_delta):
	update_heart_ui3()



func update_heart_ui3():
	if Global.hearts_remain3 == 3:
		$Player/Hearts/Heart_3.visible = true
		$Player/Hearts/Heart2_3.visible = true
		$Player/Hearts/Heart3_3.visible = true
	elif Global.hearts_remain3 == 2:
		$Player/Hearts/Heart_3.visible = false
	elif Global.hearts_remain3 == 1:
		$Player/Hearts/Heart2_3.visible = false
	elif Global.hearts_remain3 == 0:
		$Player/Hearts/Heart3_3.visible = false

func _on_boulder_falling_body_entered(body: Node2D) -> void:
	if body.is_in_group("player"):
		Global.update_hearts3()


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
		$Player/Text.text = "Hey, I'm James, be carefull, this path is very dangerous"
		$Player/Namelabel.text = "James"
		$Player/AnimationPlayer.play("text_play")
		await $Player/AnimationPlayer.animation_finished
		$Player/Text.visible = false
		$Player/Namelabel.visible = false
		$Player/TextBox.visible = false
		$Player/James.visible = false


func _on_end_talk_body_entered(body: Node2D) -> void:
	if body.is_in_group("player") and end_talk3 == 0:
		end_talk3 = 1
		body.get_node("James").visible = false
		body.get_node("Text").text = "You made it, and met James!"
		body.get_node("Namelabel").text = "Coworker"
		body.get_node("TextBox").visible = true
		body.get_node("Npc").visible = true
		body.get_node("AnimationPlayer").play("text_play")
		await body.get_node("AnimationPlayer").animation_finished
		body.get_node("TextBox").visible = true
		body.get_node("Text").text = "Lets all Celebrate together"
		body.get_node("Namelabel").text = "James"
		body.get_node("Npc").visible = false
		body.get_node("James").visible = true
		body.get_node("AnimationPlayer").play("text_play")
		await body.get_node("AnimationPlayer").animation_finished
		Global.check3 = true
		get_tree().change_scene_to_file("res://scenes/LastCelebrate.tscn")
