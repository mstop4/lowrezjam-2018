if (!global.transition && enabled) {
	save_game(SAVE_PATH);
	audio_play_sound(snd_page,50,false);
}

event_inherited();