extends KinematicBody2D

const GRAVITY = 15
const JUMP_SPEED = -600
var velocity = Vector2.ZERO

func _process(delta):
	velocity.y += GRAVITY 
	
	if Input.is_action_just_pressed("ui_up"):
		velocity.y = JUMP_SPEED
	
	move_and_slide(velocity)
	
