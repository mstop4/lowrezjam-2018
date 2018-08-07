if (!surface_exists(pattern_surf)) {
	pattern_surf = surface_create(16,16);
	render_grid(obj_MCP.pattern_storage[my_index],pattern_surf);
}