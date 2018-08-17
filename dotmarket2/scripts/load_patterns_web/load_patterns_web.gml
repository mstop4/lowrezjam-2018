/* var num_patterns = array_length_1d(global.pattern_files);
var file;

for (var i=0; i<num_patterns; i++) {
	print(file_exists(PATTERNS_PATH + global.pattern_files[i]));
	file = file_text_open_read(PATTERNS_PATH + global.pattern_files[i]);
	var code = file_text_read_string(file);
	print(code);
	obj_MCP.patterns_library[i] = ds_grid_create(16,16);
	ds_grid_read(obj_MCP.patterns_library[i],code);
	file_text_close(file);
} */

var file = file_text_open_read("Patterns/apple.pat");
var code = file_text_read_string(file);
obj_MCP.patterns_library[0] = ds_grid_create(16,16);
ds_grid_read(obj_MCP.patterns_library[0],code);
file_text_close(file);