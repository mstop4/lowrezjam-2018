var fn = get_save_filename(".pat","pattern.pat");

if (fn != "") {
	var file = file_text_open_write(fn);
	file_text_write_string(file,ds_grid_write(paint_grid));
	file_text_close(file);
}