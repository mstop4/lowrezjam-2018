if (enabled) {
	with (obj_MCP) {
		var _dest = obj_scrap.ship_pattern;
		var _src = obj_scrap.current_pattern;
		
		ds_grid_copy(player_storage[_dest],scrap_storage[_src]);
		ds_grid_copy(player_goal[_dest],scrap_goal[_src]);
		player_is_occupied[| _dest] = true;
		player_has_goal[| _dest] = true;
		player_value[| _dest] = scrap_value[| _src];
		
		ds_grid_clear(scrap_storage[_src],0);
		ds_grid_clear(scrap_goal[_src],0);
		scrap_is_occupied[| _src] = false;
		stats[? "balance"] -= scrap_value[| _src];
		scrap_value[| _src] = 0;
	}
	save_game(SAVE_PATH);
	
	with (obj_scrap_store_display) {
		render_grid(obj_MCP.player_storage[my_index],pattern_surf);
		selected = false;
	}
		
	obj_scrap.ship_pattern = -1;
	
	layer_set_visible(src_layer_id,false);
	layer_set_visible(dest_layer_id,true);
	layer_set_visible(src_back_id,false);
	layer_set_visible(dest_back_id,true);

	instance_deactivate_layer(src_layer_id);
	instance_activate_layer(dest_layer_id);

	obj_scrap.alarm[1] = 1;	
	obj_scrap.current_pattern = false;
	
	io_clear();
		
	image_index = 0;
}



