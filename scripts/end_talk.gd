extends Area2D

var is_finished = false

func _on_body_entered(body: Node2D) -> void:
	if body.is_in_group("player") and is_finished == false :
		is_finished = true
		body.get_node("Text").text = "You made it!"
		body.get_node("Namelabel").visible = true
		body.get_node("Namelabel").text = "Coworker"
		body.get_node("Text").visible = true
		body.get_node("Npc").visible = true
		body.get_node("TextBox").visible = true
		body.get_node("Text").visible = true
		body.get_node("AnimationPlayer").play("text_play")
		await body.get_node("AnimationPlayer").animation_finished
		body.get_node("Text").text = "You have so many journeys waiting..."
		body.get_node("TextBox").visible = true
		body.get_node("AnimationPlayer").play("text_play")
		await body.get_node("AnimationPlayer").animation_finished
		body.get_node("TextBox").visible = false
		body.get_node("Npc").visible = false
		get_tree().change_scene_to_file("res://scenes/LevelScene.tscn")

func _on_body_exited(body: Node2D) -> void:
	pass 
