if (!surface_exists(pattern_surf)) {
	pattern_surf = surface_create(16,16);
	
	if (obj_MCP.scrap_is_occupied[| my_index])
		render_grid(obj_MCP.scrap_storage[my_index],pattern_surf);
}