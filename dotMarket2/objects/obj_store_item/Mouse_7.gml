if (!selected) {
	with (obj_store_item) selected = false;
	selected = true;

	instance_activate_object(obj_market.buy_button);
	instance_activate_object(obj_market.history_button);
}

else {
	selected = false;

	instance_deactivate_object(obj_market.buy_button);
	instance_deactivate_object(obj_market.history_button);
}