if (!surface_exists(paint_surf)) {
	paint_surf = surface_create(16,16);
	render_grid(paint_grid,paint_surf);
}

if (!surface_exists(guide_surf)) {
	guide_surf = surface_create(48,48);
	render_grid(guide_grid,guide_surf);
}