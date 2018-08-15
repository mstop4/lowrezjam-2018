new_dot_prices();
new_scrap(max_scrap_add);

with (obj_scrap_display)
	event_user(15);
	
with (obj_market_history)
	event_user(15);
	
alarm[0] = update_interval;