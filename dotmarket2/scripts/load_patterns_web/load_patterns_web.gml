var num_patterns = array_length_1d(global.pattern_json);
var file;

for (var i=0; i<num_patterns; i++) {
	file = file_text_open_read(PATTERNS_WEB_PATH + global.pattern_json[i]);
	obj_MCP.patterns_library[i] = ds_grid_create(16,16);
	ds_grid_read(obj_MCP.patterns_library[i],file_text_read_string(file));
	file_text_close(file);
}