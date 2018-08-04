if (!surface_exists(paint_surf)) {
	paint_surf = surface_create(16,16);
	update_paint_surf();
}