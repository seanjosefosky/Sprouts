class_name Player
extends CharacterBody2D

@export var speed := 100.0

@onready var anim_player: AnimationPlayer = $AnimationPlayer

var faced_direction := "down"
var use_tool := false

## The current state that our player is in.
var state: BasePlayerState = PlayerStates.IDLE


func _ready() -> void:
	state.enter(self)

## Changes the current state and runs the correct functions.
func change_state_to(next_state: BasePlayerState) -> void:
	state.exit(self)
	state = next_state
	state.enter(self)

func _physics_process(delta: float) -> void:
	state.pre_update(self)
	state.update(self, delta)

## Returns the player's current input vector.
func get_move_input() -> Vector2:
	var direction := Input.get_vector("left", "right", "up", "down")
	if direction == Vector2.DOWN:
		faced_direction = "down"
	elif direction == Vector2.UP:
		faced_direction = "up"
	elif direction == Vector2.LEFT:
		faced_direction = "left"
	elif direction == Vector2.RIGHT:
		faced_direction = "right"
	return direction

## Applies velocity based on directional input.
func update_velocity(direction: Vector2) -> void:
	if direction:
		velocity.x = direction.x * speed
		velocity.y = direction.y * speed

func _input(event: InputEvent) -> void:
	if event.is_action_pressed("left_click"):
		use_tool = true
	elif event.is_action_released("left_click"):
		use_tool = false
