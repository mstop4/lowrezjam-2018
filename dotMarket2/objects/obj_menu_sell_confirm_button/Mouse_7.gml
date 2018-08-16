if (enabled) {
	with (obj_MCP) {
		stats[? "balance"] += obj_menu.sell_price;
		stats[? "income"] += obj_menu.sell_price;
		ds_grid_clear(player_storage[current_pattern],0);
		ds_grid_clear(player_goal[current_pattern],0);
		player_has_goal[| current_pattern] = false;
		player_is_occupied[| current_pattern] = false;
		player_value[| current_pattern] = 0;
	}
	
	obj_menu.alarm[0] = 1;
	audio_play_sound(snd_sale,50,false);
}
event_inherited();