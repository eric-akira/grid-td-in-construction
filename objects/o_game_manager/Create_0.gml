function decrease_player_life(_amount) {
	global.lifes -= _amount;
	if (global.lifes <= 0) {
		room_goto_next();
	}
}