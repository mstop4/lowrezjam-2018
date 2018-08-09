/// @arg file_path

var _file_path = argument[0];

if (file_exists(_file_path)) {
	var file = file_text_open_read(_file_path);
	var cur_data;
	
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
	
	// Patterns
	for (var i=0; i<6; i++) {
		cur_data = file_text_read_string(file);
		ds_grid_read(obj_MCP.pattern_storage[i],cur_data,false);
		file_text_readln(file);
	}
	
	file_text_close(file);
}