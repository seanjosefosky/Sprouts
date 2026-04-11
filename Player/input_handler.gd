class_name InputHandler
extends Node

var parent: Player

func moving():
	var input_direction := Input.get_vector("left", "right", "up", "down")
	var is_moving: bool = false
	var direction: String
	
	match input_direction:
		Vector2.UP:
			direction = "up"
		Vector2.DOWN:
			direction = "down"
		Vector2.LEFT:
			direction = "left"
		Vector2.RIGHT:
			direction = "right"
			
	return is_moving

func action():
#	Left click stuff
	pass
