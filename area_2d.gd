extends Area2D

@export var food_item_scene: PackedScene  # Drag FoodItem scene here

func _input_event(_viewport, event, _shape_idx):
	if event is InputEventMouseButton:
		if event.button_index == MOUSE_BUTTON_LEFT and event.pressed:
			var new_food = food_item_scene.instantiate()
			get_parent().add_child(new_food)
			new_food.global_position = global_position


func _on_body_entered(body: Node2D) -> void:
	pass # Replace with function body.
