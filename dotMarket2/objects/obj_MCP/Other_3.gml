font_delete(global.fnt_pix);

if (room != room_title) {
	save_game(SAVE_PATH);

	ds_map_destroy(stats);
	ds_list_destroy(dot_stock);
	ds_list_destroy(undo_dot_stock);
	ds_list_destroy(dot_price);
	ds_list_destroy(dot_fair_price);
	ds_list_destroy(player_has_goal);
	ds_list_destroy(player_value);
	ds_list_destroy(flux_state);
	ds_list_destroy(flux_cooldown);
	ds_list_destroy(scrap_is_occupied);
	ds_list_destroy(scrap_value);

	for (var i=0; i<paletteColour.maxi; i++) {
		ds_list_destroy(price_history[i]);
	}

	for (var i=0; i<6; i++) {
		ds_grid_destroy(player_storage[i]);
		ds_grid_destroy(player_goal[i]);
		ds_grid_destroy(scrap_storage[i]);
		ds_grid_destroy(scrap_goal[i]);
	}

	var _lib_size = array_length_1d(patterns_library);

	for (var i=0; i<_lib_size; i++)	{
		ds_grid_destroy(patterns_library[i]);
	}
}