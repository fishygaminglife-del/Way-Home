extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	$AnimatedSprite2D.play("default")
	$AnimatedSprite2D12.play("default")
	$AnimatedSprite2D13.play("default")
	$AnimatedSprite2D2.play("default")
	$AnimatedSprite2D3.play("default")
	$AnimatedSprite2D4.play("default")
	$AnimatedSprite2D9.play("default")
	$AnimatedSprite2D10.play("default")
	$AnimatedSprite2D11.play("default")
	$AnimatedSprite2D5.play("default")
	$AnimatedSprite2D6.play("default")
	$AnimatedSprite2D7.play("default")
	$AnimatedSprite2D8.play("default")


func _on_fire_starter_body_entered(body: Node2D) -> void:
	if body.is_in_group("player"):
		$FireStarter/FireStarterCollision.disabled = true
		$Grasas.visible = false
		$Grasas2.visible = false
		$Grasas3.visible = false
		$Grasas4.visible = false
		$Grasas5.visible = false
		$Grasas6.visible = false
		await get_tree().create_timer(1).timeout
		$AnimationPlayer5.play("firerun")
		await get_tree().create_timer(0.3).timeout
		$AnimatedSprite2D.visible = true
		await get_tree().create_timer(0.3).timeout
		$AnimatedSprite2D4.visible = true
		await get_tree().create_timer(0.3).timeout
		$AnimatedSprite2D3.visible = true
		await get_tree().create_timer(0.3).timeout
		$AnimatedSprite2D2.visible = true
		await get_tree().create_timer(0.3).timeout
		$AnimatedSprite2D5.visible = true
		await get_tree().create_timer(0.3).timeout
		$AnimatedSprite2D8.visible = true
		await get_tree().create_timer(0.3).timeout
		$AnimatedSprite2D7.visible = true
		await get_tree().create_timer(0.3).timeout
		$AnimatedSprite2D6.visible = true
	


func _on_fire_putter_body_entered(body: Node2D) -> void:
	Global.update_hearts3()
