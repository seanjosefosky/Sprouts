extends Node2D

@onready var movement_controller: Node2D = $MovementController
@onready var action_controller: Node2D = $ActionController


enum STATE { 
	IDLE,
	WALKING,
	ACTION
}

func _process(delta: float) -> void:
	match STATE:
		STATE.IDLE:
			pass
		STATE.WALKING:
			pass
		STATE.ACTION:
			pass
