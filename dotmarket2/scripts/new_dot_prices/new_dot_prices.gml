var roll, buy_chance;

with (obj_MCP) {
	for (var j=1; j<paletteColour.maxi; j++) {
		for (var i=0; i<num_sims_per_day; i++) {
			buy_chance = power(E, -dot_price[| j] / (dot_fair_price[| j] * C1));
			roll = random(1);
	
			if (roll <= buy_chance) {
				dot_price[| j] = min(dot_price[| j]+price_delta_success,99);
			}
			else
				dot_price[| j] = max(dot_price[| j]+price_delta_fail,0);
		}

		ds_list_add(price_history[j], dot_price[| j]);
		if (ds_list_size(price_history[j]) > 30)
			ds_list_delete(price_history[j],0);
	}
}