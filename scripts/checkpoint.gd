extends Node2D

func _ready() -> void:
	$AnimatedSprite2D.play("checkpoint")
	


func _on_area_2d_body_entered(body: Node2D) -> void:
	if body.is_in_group("player"):
		GameState.current_checkpoint_position = global_position
		GameState.has_checkpoint = true
		$AnimatedSprite2D.play("checkpointcelebrate")
		
