/// @description force rerender: obj_Scrap_display

with (obj_scrap_display) {
	render_grid(obj_MCP.scrap_storage[my_index],pattern_surf);
	selected = false;
}