extends Area2D

var dragging = false

func _ready():
	monitoring = true
	monitorable = true
	# Connect the body_entered signal correctly
	body_entered.connect(_on_body_entered)  # Just pass the function name

func _input_event(_viewport, event, _shape_idx):
	if event is InputEventMouseButton and event.button_index == MOUSE_BUTTON_LEFT:
		dragging = event.pressed

func _process(delta):
	if dragging:
		global_position = get_global_mouse_position()

func _on_body_entered(body):
	if body.name == "Sam":   # Make sure your character node is named "Sam"
		queue_free()         # Removes this FoodItem
