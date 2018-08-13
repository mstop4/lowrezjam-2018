if (!selected) {
	with (obj_scrap_store_display) selected = false;
	selected = true;
	obj_scrap.ship_pattern = my_index;
	
	if (obj_MCP.player_is_occupied[| my_index])
		obj_scrap_store.ship_button.enabled = false;
	else
		obj_scrap_store.ship_button.enabled = true;
}

else {
	selected = false;
	obj_scrap.ship_pattern = -1;
	obj_scrap_store.ship_button.enabled = false;
}