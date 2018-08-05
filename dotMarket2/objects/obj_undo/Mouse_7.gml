with (obj_MCP) {
	array_copy(stock,0,undo_array,0,array_length_1d(stock));
}

with (obj_grid) {
	ds_grid_copy(paint_grid,undo_grid);
	update_paint_surf();
}