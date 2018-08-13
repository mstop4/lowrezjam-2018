if (obj_MCP.scrap_is_occupied[| my_index]) {
	if (!selected) {
		with (obj_scrap_display) selected = false;
		selected = true;
		obj_scrap.current_pattern = my_index;
		obj_scrap.buy_button.enabled = true;
	}

	else {
		selected = false;
		obj_scrap.current_pattern = -1;
		obj_scrap.buy_button.enabled = false;
	}
}