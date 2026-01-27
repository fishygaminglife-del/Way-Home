extends Area2D


func _on_body_entered(body: Node2D) -> void:
	if body.is_in_group("player"):
		body.get_node("Text").text = "I wish this was the end, but it isn't"
		body.get_node("Npc").visible = true
		body.get_node("TextBox").visible = true
		body.get_node("Text").visible = true
		body.get_node("Namelabel").visible = true
		body.get_node("AnimationPlayer").play("text_play")
		await body.get_node("AnimationPlayer").animation_finished
		body.get_node("TextBox").visible = false
		body.get_node("Text").visible = false
		body.get_node("Namelabel").visible = false
		body.get_node("Npc").visible = false
		finish_scene2()
		
func finish_scene2():
	Global.button_unlocked = true
	Global.check2 = true
	get_tree().change_scene_to_file("res://scenes/LevelScene.tscn")

func _on_body_exited(body: Node2D) -> void:
	pass # Replace with function body.
