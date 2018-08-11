/// @arg file_path

var _file_path = argument[0];

var file = file_text_open_write(_file_path);
	
// Player Data
file_text_write_string(file,ds_map_write(obj_MCP.stats));
file_text_writeln(file);
file_text_write_string(file,ds_list_write(obj_MCP.dot_stock));
file_text_writeln(file);
file_text_write_string(file,ds_list_write(obj_MCP.undo_dot_stock));
file_text_writeln(file);
file_text_write_string(file,ds_list_write(obj_MCP.dot_price));
file_text_writeln(file);
file_text_write_string(file,ds_list_write(obj_MCP.dot_fair_price));
file_text_writeln(file);
file_text_write_string(file,ds_grid_write(obj_MCP.player_has_goal));
file_text_writeln(file);
file_text_write_string(file,ds_grid_write(obj_MCP.scrap_is_occupied));
file_text_writeln(file);

for (var i=0; i<paletteColour.maxi; i++) {
	file_text_write_string(file,ds_list_write(obj_MCP.price_history[i]));
	file_text_writeln(file);
}

// Patterns
for (var i=0; i<6; i++) {
	file_text_write_string(file,ds_grid_write(obj_MCP.player_storage[i]));
	file_text_writeln(file);
	file_text_write_string(file,ds_grid_write(obj_MCP.player_goal[i]));
	file_text_writeln(file);
	file_text_write_string(file,ds_grid_write(obj_MCP.scrap_storage[i]));
	file_text_writeln(file);
}
	
file_text_close(file);