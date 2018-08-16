if (obj_MCP.scrap_is_occupied[| my_index]) {
	if (!selected) {
		with (obj_scrap_display) selected = false;
		selected = true;
		obj_scrap.current_pattern = my_index;
		obj_scrap.buy_button.enabled = true;
		audio_play_sound(snd_click1,1,false);
	}

	else {
		selected = false;
		obj_scrap.current_pattern = -1;
		obj_scrap.buy_button.enabled = false;
		audio_play_sound(snd_no,1,false);
	}
}

else
	audio_play_sound(snd_no,1,false);