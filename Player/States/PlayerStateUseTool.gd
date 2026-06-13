class_name PlayerStateUseTool
extends BasePlayerState

func enter(player: Player) -> void:
	var faced_direction := player.faced_direction
	var anim_player := player.anim_player
	
	if faced_direction:
		anim_player.play("Player/pick_%s" % faced_direction)

func pre_update(player: Player) -> void:
	var direction := player.get_move_input()
	
	if not player.use_tool:
		player.change_state_to(PlayerStates.IDLE)
	elif direction.length() > 0:
		player.change_state_to(PlayerStates.WALK)

func update(player: Player, delta: float) -> void:
	pass

func exit(player: Player) -> void:
	pass
