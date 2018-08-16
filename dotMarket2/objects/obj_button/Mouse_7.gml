if (!global.transition && enabled) {
	image_index = 0;
	audio_play_sound(snd_click1,1,false);
}

else {
	audio_play_sound(snd_no,1,false);
}