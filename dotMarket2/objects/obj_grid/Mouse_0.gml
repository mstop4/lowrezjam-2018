// cursor must be inside draw area
var _local_x = mouse_x - x - 1;
var _local_y = mouse_y - y - 1;

if ((_local_x < 0 || _local_x > 47) ||
	(_local_y < 0 || _local_y > 47)) {
	last_x = -1;
	last_y = -1;
	return;
}

// cursor must be on a different tile than the last one painted
var _x = _local_x div 3;
var _y = _local_y div 3;
	
if (_x == last_x && _y == last_y)
	return;

last_x = _x;
last_y = _y;

if (current_colour == paletteColour.blank ||
	obj_MCP.dot_stock[| current_colour] > 0) {
		
	if (first_change) {
		//backup undo
		ds_grid_copy(undo_grid,paint_grid);
		ds_list_copy(obj_MCP.undo_dot_stock,obj_MCP.dot_stock);
		
		first_change = false;
	}

	// remove old tile if applicable and place new one
	if ( paint_grid[# _x, _y] != paletteColour.blank)
		obj_MCP.dot_stock[| paint_grid[# _x, _y]]++;

	paint_grid[# _x, _y] = current_colour;
	if (current_colour != paletteColour.blank)
		obj_MCP.dot_stock[| current_colour]--;

	render_grid(paint_grid,paint_surf);
}