if (animate) {
	t = min(t+t_delta,1);
	display_value[cur_index] = round(t * cur_history[| cur_index] / 2);
	
	if (t == 1) {
		cur_index++;
		if (cur_index < num_indices)
			t = 0;
		
		else
			animate = false;
	}
}