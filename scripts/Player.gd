extends CharacterBody2D


const SPEED = 150.0
const JUMP_VELOCITY = -250



func _physics_process(delta: float) -> void:
	# Add the gravity.
	if not is_on_floor():
		velocity += get_gravity() * delta

	# Handle jump.
	if Input.is_action_just_pressed("move_up") and is_on_floor():
		velocity.y = JUMP_VELOCITY

	var direction := Input.get_axis("move_left", "move_right")
	if direction:
		velocity.x = direction * SPEED
		$AnimatedSprite2D.play("walk")
		$AnimatedSprite2D.flip_h = direction < 0

	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)
		$AnimatedSprite2D.play("idle")
	move_and_slide()
func die():
	if GameState.has_checkpoint:
		global_position = GameState.current_checkpoint_position
		velocity = Vector2.ZERO
		print("Respawning at: ", GameState.current_checkpoint_position)

	else:
		global_position = Vector2(36, 518)
