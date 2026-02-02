extends Node2D

@export var point_a: Vector2
@export var point_b: Vector2
@export var move_time := 2.0

func _ready() -> void:
	$AnimatedSprite2D.play("default")
	position = point_a
	move_to(point_b)

func move_to(target: Vector2):
	$AnimatedSprite2D.flip_h = target.x < position.x
	var tween = create_tween()
	tween.tween_property(self, "position", target, move_time)
	tween.finished.connect(func():
		move_to(point_b if target == point_a else point_a)
	)



func _on_area_2d_body_entered(body: Node2D) -> void:
	if body.is_in_group("player"):
		Global.update_hearts()	
		body.position = Vector2(709, 836)	
		$"../Scratch".play()
		body.get_node("Text").text = "**Rawr** **Scratch**"
		body.get_node("Namelabel").text = "Mole"
		body.get_node("TextBox").visible = true
		body.get_node("AnimationPlayer").play("text_play")
		await body.get_node("AnimationPlayer").animation_finished
		body.get_node("Text").visible = false
		body.get_node("Namelabel").visible = false
		body.get_node("TextBox").visible = false
	

func _on_area_2d_body_exited(body: Node2D) -> void:
	pass
