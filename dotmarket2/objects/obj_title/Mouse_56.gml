if (!global.transition) {
	if (os_browser == browser_not_a_browser)
		load_patterns();
	else
		load_patterns_web();

	reset_game();
	load_game(SAVE_PATH);
	
	audio_play_sound(snd_click1,50,false);

	transition_to_room(room_menu,mus_title,mus_menu);
}