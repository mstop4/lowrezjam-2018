with (obj_MCP) {
	array_copy(stock,0,undo_dot_stock,0,array_length_1d(dot_stock));
}

with (obj_grid) {
	ds_grid_copy(paint_grid,undo_grid);
	render_grid(paint_grid,paint_surf);
}