extends Area2D

@export var food_item_scene: PackedScene

func _input_event(_viewport, event, _shape_idx):
	if event is InputEventMouseButton and event.button_index == MOUSE_BUTTON_LEFT and event.pressed:
		if food_item_scene:
			var new_food = food_item_scene.instantiate()
			get_parent().add_child(new_food)
			new_food.global_position = global_position
