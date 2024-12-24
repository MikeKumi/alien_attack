extends CharacterBody2D


const SPEED = 400

func _physics_process(_delta):
	velocity = Vector2.ZERO
	
	if Input.is_action_pressed("move_down"):
		velocity.y += SPEED
	if Input.is_action_pressed("move_up"):
		velocity.y -= SPEED
	if Input.is_action_pressed("move_right"):
		velocity.x += SPEED
	if Input.is_action_pressed("move_left"):
		velocity.x -= SPEED
	
	move_and_slide()
