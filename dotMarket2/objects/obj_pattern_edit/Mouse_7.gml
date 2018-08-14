if (!selected) {
	with (obj_pattern_edit) selected = false;
	selected = true;
	obj_MCP.current_pattern = my_index;
	
	obj_menu.edit_button.enabled = true;
	if (sprite_index == spr_frame_custom || sprite_index == spr_frame_done)
		obj_menu.sell_button.enabled = true;
}

else {
	with (obj_pattern_edit) selected = false;
	obj_MCP.current_pattern = -1;
	
	obj_menu.sell_button.enabled = false;
	obj_menu.edit_button.enabled = false;
}