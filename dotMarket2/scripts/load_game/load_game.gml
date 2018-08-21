/// @arg file_path

var _file_path = argument[0];

print("Checking for previous save data...");
if (file_exists(_file_path)) {
	print("Save data found.");
	with (obj_MCP) {
		var file = file_text_open_read(_file_path);
		print("Loading save data...");

		// Stats
		ds_map_read(stats, file_text_read_string(file));
		file_text_readln(file);	
		ds_list_read(dot_stock, file_text_read_string(file));
		file_text_readln(file);
		ds_list_read(undo_dot_stock, file_text_read_string(file));
		file_text_readln(file);
		ds_list_read(dot_price, file_text_read_string(file));
		file_text_readln(file);
		ds_list_read(dot_fair_price, file_text_read_string(file));
		file_text_readln(file);
		ds_list_read(flux_state, file_text_read_string(file));
		file_text_readln(file);
		ds_list_read(flux_cooldown, file_text_read_string(file));
		file_text_readln(file);
		ds_list_read(player_has_goal, file_text_read_string(file));
		file_text_readln(file);
		ds_list_read(player_is_occupied, file_text_read_string(file));
		file_text_readln(file);
		ds_list_read(player_value, file_text_read_string(file));
		file_text_readln(file);
		ds_list_read(scrap_is_occupied,file_text_read_string(file));
		file_text_readln(file);
		ds_list_read(scrap_value, file_text_read_string(file));
		file_text_readln(file);
		alarm[0] = file_text_read_real(file);
		file_text_readln(file);
	
		for (var i=0; i<paletteColour.maxi; i++) {
			ds_list_read(price_history[i], file_text_read_string(file));
			file_text_readln(file);
		}
	
		// Patterns
		for (var i=0; i<6; i++) {
			ds_grid_read(player_storage[i],file_text_read_string(file),false);
			file_text_readln(file);
			ds_grid_read(player_goal[i],file_text_read_string(file),false);
			file_text_readln(file);		
			ds_grid_read(scrap_storage[i],file_text_read_string(file),false);
			file_text_readln(file);
			ds_grid_read(scrap_goal[i],file_text_read_string(file),false);
			file_text_readln(file);
		}
	
		file_text_close(file);
	}
}

else {
	print("Save data not found.");
}