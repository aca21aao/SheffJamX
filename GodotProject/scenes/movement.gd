extends CharacterBody2D


const SPEED = 300.0


func _physics_process(delta):

	var x_direction = Input.get_axis("ui_left", "ui_right")
	var y_direction = Input.get_axis("ui_up", "ui_down")
		
	if x_direction:
		velocity.x = x_direction * SPEED
		if y_direction != 0:
			velocity.x *= 1/(2**0.5)
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)
		
	if y_direction:
		velocity.y = y_direction * SPEED
		if x_direction != 0:
			velocity.y *= 1/(2**0.5)
	else:
		velocity.y = move_toward(velocity.x, 0, SPEED)

	move_and_slide()
