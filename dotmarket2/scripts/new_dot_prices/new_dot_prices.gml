var roll, buy_chance;

with (obj_MCP) {
	
	// Chance cards
	var raffle = ds_list_create();
	
	for (var i=1; i<paletteColour.maxi; i++) {
		flux_cooldown[| i] = max(0,flux_cooldown[| i]-1);
		
		if (flux_cooldown[| i] == 0)
			ds_list_add(raffle,i);
	}
	
	ds_list_shuffle(raffle);
	
	for (var i=0; i<3; i++) {
		var cur_colour = raffle[| i];
		flux_cooldown[| cur_colour] = 3;
		
		if (flux_state[| cur_colour] == fluxState.normal) {
			flux_state[| cur_colour] = fluxState.abnormal;
			dot_fair_price[| cur_colour] = irandom_range(10,90);
		}
		
		else {
			flux_state[| cur_colour] = fluxState.normal;
			dot_fair_price[| cur_colour] = 50;
		}
	}
	
	ds_list_destroy(raffle);
	
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