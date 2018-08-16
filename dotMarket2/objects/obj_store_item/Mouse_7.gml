if (!global.transition && enabled) {
	if (!selected) {
		with (obj_store_item) selected = false;
		selected = true;
		obj_market.current_colour = my_index;

		obj_market.buy_button.enabled = true;
		obj_market.history_button.enabled = true;
	}

	else {
		selected = false;
		obj_market.current_colour = 0;

		obj_market.buy_button.enabled = false;
		obj_market.history_button.enabled = false;
	}
	
	audio_play_sound(snd_click1,1,false);
}