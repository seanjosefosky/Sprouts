extends State

# The states that can be transitioned to from idle
@export var action_state: State
@export var move_state: State
@onready var input: InputHandler


func enter() -> void:
	super() #Runs enter() in declared class file 'state_controller'
	parent.velocity = Vector2.ZERO

func process_input(event: InputEvent) -> State:
	if input.moving():
		return move_state
	if input.action():
		return action_state
	return null

func process_physics(delta: float) -> State:
	parent.move_and_slide()
	
	return null
