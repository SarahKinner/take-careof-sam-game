extends CharacterBody2D

@export var speed = 150
var direction = Vector2(1, 0)
var dragging = false

func _physics_process(delta):
	if dragging:
		global_position = get_global_mouse_position()
	else:
		velocity = direction * speed
		move_and_slide()
		
		if is_on_wall():
			direction = -direction

func _input(event):
	if event is InputEventMouseButton and event.button_index == MOUSE_BUTTON_LEFT:
		if event.pressed:
			var local_mouse = to_local(event.position)
			var shape = $CollisionShape2D.shape
			if shape is RectangleShape2D:
				if abs(local_mouse.x) <= shape.extents.x and abs(local_mouse.y) <= shape.extents.y:
					dragging = true
		else:
			dragging = false
