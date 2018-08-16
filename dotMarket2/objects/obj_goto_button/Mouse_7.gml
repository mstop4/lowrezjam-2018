if (!global.transition && enabled) {
	save_game(SAVE_PATH);

	transition_to_room(next_room,cur_music,next_music);
}

event_inherited();