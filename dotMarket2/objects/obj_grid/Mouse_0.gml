var _local_x = mouse_x - x - 1;
var _local_y = mouse_y - y - 1;

if ((_local_x < 0 || _local_x > 47) ||
	(_local_y < 0 || _local_y > 47)) {
	last_x = -1;
	last_y = -1;
	return;
}
	
var _x = _local_x div 3;
var _y = _local_y div 3;
	
if (_x == last_x && _y == last_y)
	return;

last_x = _x;
last_y = _y;

paint_grid[# _x, _y] = current_colour;

update_paint_surf();
print(_x, ", ", _y);