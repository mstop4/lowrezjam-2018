if (!global.transition && enabled) {
	save_game(SAVE_PATH);
	event_inherited();

	transition_to_room(next_room);
}