if (!selected) {
	with (obj_pattern_edit) selected = false;
	selected = true;
	obj_MCP.current_pattern = my_index;
}

else {
	with (obj_pattern_edit) selected = false;
	obj_MCP.current_pattern = -1;
}