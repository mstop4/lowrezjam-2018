var start_time = current_time;
var roll, buy_chance;

for (var j=1; j<paletteColour.maxi; j++) {
	for (var i=0; i<num_sims_per_day; i++) {
		buy_chance = power(E, -obj_MCP.dot_price[| j] / (obj_MCP.dot_fair_price[| j] * C1));
		roll = random(1);
	
		if (roll <= buy_chance) {
			obj_MCP.dot_price[| j] = min(obj_MCP.dot_price[| j]+price_delta_success,99);
		}
		else
			obj_MCP.dot_price[| j] = max(obj_MCP.dot_price[| j]+price_delta_fail,0);
	}

	ds_list_add(obj_MCP.price_history[j], obj_MCP.dot_price[| j]);
	if (ds_list_size(obj_MCP.price_history[j]) > 30)
		ds_list_delete(obj_MCP.price_history[j],0);
}

time_elapsed = current_time - start_time;