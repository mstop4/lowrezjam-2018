var fn = file_find_first(PATTERNS_PATH + PATTERNS_MASK, 0);
var file;
var i = 0;

while (fn != "") {
	file = file_text_open_read(PATTERNS_PATH + fn);
	obj_MCP.patterns_library[i] = ds_grid_create(16,16);
	ds_grid_read(obj_MCP.patterns_library[i],file_text_read_string(file));
	file_text_close(file);
	i++;
	
	fn = file_find_next();
}

file_find_close();