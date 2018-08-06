for (var i=0; i<6; i++) {
	if (!surface_exists(pattern_surf[i])) {
		pattern_surf[i] = surface_create(16,16);
		render_grid(obj_MCP.pattern_storage[i],pattern_surf[i]);
	}	
}
