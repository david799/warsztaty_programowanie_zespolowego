extends KinematicBody2D

const GRAVITY = 25
const JUMP_SPEED = -600
var velocity = Vector2.ZERO

func _process(delta):
	velocity.y += GRAVITY 
	
	if Input.is_action_just_pressed("jump") and is_on_wall():
		velocity.y = JUMP_SPEED
	
	move_and_slide(velocity)
	
