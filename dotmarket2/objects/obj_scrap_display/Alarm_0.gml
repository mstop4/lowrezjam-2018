if (!surface_exists(pattern_surf)) {
	pattern_surf = surface_create(16,16);
}

if (obj_MCP.scrap_is_occupied[| my_index]) {
	render_grid(obj_MCP.scrap_storage[my_index],pattern_surf);
}

else {
	surface_set_target(pattern_surf);
		draw_clear_alpha(c_black,0);
	surface_reset_target();
}

if (obj_MCP.scrap_is_occupied[| my_index]) 
	sprite_index = spr_frame_scrap_repair;

else 
	sprite_index = spr_frame_scrap_none;