/// @arg file_path

var _file_path = argument[0];

var file = file_text_open_write(_file_path);

with (obj_MCP) {
	
	// Player Data
	file_text_write_string(file,ds_map_write(stats));
	file_text_writeln(file);
	file_text_write_string(file,ds_list_write(dot_stock));
	file_text_writeln(file);
	file_text_write_string(file,ds_list_write(undo_dot_stock));
	file_text_writeln(file);
	file_text_write_string(file,ds_list_write(dot_price));
	file_text_writeln(file);
	file_text_write_string(file,ds_list_write(dot_fair_price));
	file_text_writeln(file);
	file_text_write_string(file,ds_list_write(player_has_goal));
	file_text_writeln(file);
	file_text_write_string(file,ds_list_write(player_is_occupied));
	file_text_writeln(file);
	file_text_write_string(file,ds_list_write(player_value));
	file_text_writeln(file);
	file_text_write_string(file,ds_list_write(scrap_is_occupied));
	file_text_writeln(file);
	file_text_write_string(file,ds_list_write(scrap_value));
	file_text_writeln(file);
	file_text_write_real(file,alarm[0]);
	file_text_writeln(file);

	for (var i=0; i<paletteColour.maxi; i++) {
		file_text_write_string(file,ds_list_write(price_history[i]));
		file_text_writeln(file);
	}

	// Patterns
	for (var i=0; i<6; i++) {
		file_text_write_string(file,ds_grid_write(player_storage[i]));
		file_text_writeln(file);
		file_text_write_string(file,ds_grid_write(player_goal[i]));
		file_text_writeln(file);
		file_text_write_string(file,ds_grid_write(scrap_storage[i]));
		file_text_writeln(file);
		file_text_write_string(file,ds_grid_write(scrap_goal[i]));
		file_text_writeln(file);
	}
	
	file_text_close(file);
}