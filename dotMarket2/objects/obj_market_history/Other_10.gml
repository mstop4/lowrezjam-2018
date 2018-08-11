for (var i=0; i<30; i++) {
	display_value[i] = 0;
}

t = 0;
cur_history = obj_MCP.price_history[obj_market.current_colour];
cur_index = 0;
num_indices = ds_list_size(cur_history);
animate = false;

alarm[0] = animate_delay;