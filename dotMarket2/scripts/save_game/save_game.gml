/// @arg file_path

var _file_path = argument[0];

var file = file_text_open_write(_file_path);
var cur_data;
	
// Stats
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
	
// Patterns
for (var i=0; i<6; i++) {
	cur_data = ds_grid_write(obj_MCP.pattern_storage[i]);
	file_text_write_string(file,cur_data);
	file_text_writeln(file);
}
	
file_text_close(file);