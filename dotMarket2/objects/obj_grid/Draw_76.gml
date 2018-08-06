if (!surface_exists(paint_surf)) {
	paint_surf = surface_create(16,16);
	render_grid(paint_grid,paint_surf);
}