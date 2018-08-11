/// @arg file_path

var _file_path = argument[0];

if (file_exists(_file_path)) {
	var file = file_text_open_read(_file_path);

	// Stats
	ds_map_read(obj_MCP.stats, file_text_read_string(file));
	file_text_readln(file);	
	ds_list_read(obj_MCP.dot_stock, file_text_read_string(file));
	file_text_readln(file);
	ds_list_read(obj_MCP.undo_dot_stock, file_text_read_string(file));
	file_text_readln(file);
	ds_list_read(obj_MCP.dot_price, file_text_read_string(file));
	file_text_readln(file);
	ds_list_read(obj_MCP.dot_fair_price, file_text_read_string(file));
	file_text_readln(file);
	ds_list_read(obj_MCP.player_has_goal, file_text_read_string(file));
	file_text_readln(file);
	ds_list_read(obj_MCP.scrap_is_occupied,file_text_read_string(file));
	file_text_readln(file);
	
	for (var i=0; i<paletteColour.maxi; i++) {
		ds_list_read(obj_MCP.price_history[i], file_text_read_string(file));
		file_text_readln(file);
	}
	
	// Patterns
	for (var i=0; i<6; i++) {
		ds_grid_read(obj_MCP.player_storage[i],file_text_read_string(file),false);
		file_text_readln(file);
		ds_grid_read(obj_MCP.player_goal[i],file_text_read_string(file),false);
		file_text_readln(file);		
		ds_grid_read(obj_MCP.scrap_storage[i],file_text_read_string(file),false);
		file_text_readln(file);
	}
	
	file_text_close(file);
}