if (!global.transition && enabled) {
	image_index = 0;
	audio_stop_all();
	audio_play_sound(snd_reset,100,false);
	global.transition = true;
	obj_reset.alarm[0] = 60;
}

else {
	audio_play_sound(snd_no,1,false);
}