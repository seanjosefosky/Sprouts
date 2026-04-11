extends Node2D

@export var player: CharacterBody2D
@export var speed := 100.0

var faced_direction: String = "down"
var is_moving: bool = false


func _ready() -> void:
	pass


func _process(delta: float) -> void:	
	pass
	
	
func movement_handler():
	var input_direction := Input.get_vector("left", "right", "up", "down")
	player.velocity = input_direction * speed
	
	if player.velocity != Vector2.ZERO:
		is_moving = true
	else: 
		is_moving = false
	
	match input_direction:
		Vector2.UP:
			faced_direction = "up"
		Vector2.DOWN:
			faced_direction = "down"
		Vector2.LEFT:
			faced_direction = "left"
		Vector2.RIGHT:
			faced_direction = "right"
		
		
func _physics_process(delta):
	movement_handler()
	player.move_and_slide()
	
