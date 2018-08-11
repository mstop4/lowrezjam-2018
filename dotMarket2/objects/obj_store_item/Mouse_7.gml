if (!selected) {
	with (obj_store_item) selected = false;
	selected = true;
	obj_market.current_colour = my_index;

	//instance_activate_object(obj_market.buy_button);
	instance_activate_object(obj_market.history_button);
}

else {
	selected = false;
	obj_market.current_colour = 0;

	//instance_deactivate_object(obj_market.buy_button);
	instance_deactivate_object(obj_market.history_button);
}