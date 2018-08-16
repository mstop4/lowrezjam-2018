if (!global.transition) {
	reset_game();
	load_patterns();
	load_game(SAVE_PATH);
	
	audio_play_sound(snd_click1,50,false);

	transition_to_room(room_menu,mus_title,mus_menu);
}