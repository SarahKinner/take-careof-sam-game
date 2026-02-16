extends CharacterBody2D

@export var speed = 150
var direction = Vector2(1, 0)

func _physics_process(_delta):
	# Set velocity for move_and_slide
	velocity = direction * speed
	move_and_slide()

	# Bounce when colliding with walls
	if is_on_wall():
		direction = -direction
