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

// remove old tile if applicable and place new one
if ( paint_grid[# _x, _y] != paletteColour.blank)
	obj_MCP.stock[paint_grid[# _x, _y]]++;

paint_grid[# _x, _y] = current_colour;
obj_MCP.stock[current_colour]--;

update_paint_surf();
print(_x, ", ", _y);