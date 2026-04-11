extends AnimatedSprite2D

@onready var animation_tree: AnimationTree = $AnimationTree

enum state { IDLE, WALK, ACTION }

func _ready() -> void:
	pass 


func _process(delta: float) -> void:
	pass
