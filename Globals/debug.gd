extends Node

var debug_mode := false

func _process(delta: float) -> void:
	pass

func add_debug(collider: CollisionShape2D):
	var hotkey := Input.is_action_just_pressed("debug_mode")
	if hotkey:
		if !debug_mode:
			debug_mode = true
			collider.set_deferred("disabled", false)
		elif debug_mode:
			debug_mode = false
			$collider.set_deferred("disabled", true)
