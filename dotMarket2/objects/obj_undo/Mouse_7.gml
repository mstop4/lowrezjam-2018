with (obj_MCP) {
	ds_list_copy(dot_stock,undo_dot_stock);
}

with (obj_grid) {
	ds_grid_copy(paint_grid,undo_grid);
	render_grid(paint_grid,paint_surf);
}