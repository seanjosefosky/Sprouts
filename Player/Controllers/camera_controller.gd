extends Camera2D

var zoom_in_max := Vector2(5.0, 5.0)
var zoom_out_max := Vector2(2.0, 2.0)


func _ready() -> void:
	pass # Replace with function body.


func _process(delta: float) -> void:
	pass

func _input(event: InputEvent) -> void:
	if event.is_action("scroll_up") and zoom <= zoom_in_max:
		zoom += Vector2(0.2, 0.2)
	elif event.is_action("scroll_down") and zoom >= zoom_out_max:
		zoom -= Vector2(0.2, 0.2)
