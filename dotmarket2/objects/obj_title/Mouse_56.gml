if (!global.transition) {
	reset_game();
	load_patterns();
	load_game(SAVE_PATH);

	transition_to_room(room_menu);
}