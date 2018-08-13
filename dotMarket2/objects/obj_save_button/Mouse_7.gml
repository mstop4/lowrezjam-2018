with (obj_MCP) {
	if (player_has_goal[| current_pattern])
		player_is_occupied[| current_pattern] = true;
	else {
		if (ds_grid_get_sum(player_storage[current_pattern],0,0,15,15) > 0)
			player_is_occupied[| current_pattern] = true;
		else
			player_is_occupied[| current_pattern] = false;
	}
}

save_game(SAVE_PATH);
room_goto(next_room);