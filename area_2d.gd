extends Area2D

var dragging = false

func _input_event(_viewport, event, _shape_idx):
	if event is InputEventMouseButton:
		if event.button_index == MOUSE_BUTTON_LEFT:
			dragging = event.pressed

func _process(_delta):
	if dragging:
		global_position = get_global_mouse_position()

func _on_body_entered(body):
	if body.name == "Character":
		queue_free()
