class_name PlayerStateWalk
extends BasePlayerState



func enter(player: Player) -> void:
	var faced_direction := player.faced_direction
	var anim_player := player.anim_player

	if faced_direction:
		anim_player.play("Player/walk_%s" % faced_direction)

func pre_update(player: Player) -> void:
	if player.get_move_input() == Vector2.ZERO:
		player.change_state_to(PlayerStates.IDLE)
	elif player.use_tool:
		player.change_state_to(PlayerStates.USE_TOOL)
		
func update(player: Player, delta: float) -> void:
	var direction := player.get_move_input()
	var faced_direction := player.faced_direction
	var anim_player := player.anim_player
	
	if faced_direction:
		anim_player.play("Player/walk_%s" % faced_direction)
	
	player.update_velocity(direction)
	player.move_and_slide()
	
func exit(player: Player) -> void:
	player.velocity = Vector2.ZERO
