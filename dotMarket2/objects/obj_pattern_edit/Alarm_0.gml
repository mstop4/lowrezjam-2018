if (!surface_exists(pattern_surf)) {
	pattern_surf = surface_create(16,16);
}

render_grid(obj_MCP.player_storage[my_index],pattern_surf);

if (obj_MCP.player_is_occupied[| my_index]) {
	if (obj_MCP.player_has_goal[| my_index]) {
		if (grids_are_equal(obj_MCP.player_storage[my_index],obj_MCP.player_goal[my_index]))
			sprite_index = spr_frame_done;
		else
			sprite_index = spr_frame_repair;
	}
	
	else
		sprite_index = spr_frame_custom;
}

else 
	sprite_index = spr_frame_none;