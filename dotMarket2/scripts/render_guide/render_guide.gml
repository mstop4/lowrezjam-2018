// @arg grid
// @arg surface

var _grid = argument[0];
var _surf = argument[1];

surface_set_target(_surf);
draw_clear_alpha(c_black,0);

for (var i=0; i<16; i++) {
	for (var j=0; j<16; j++) {
		
		if (_grid[# i, j] != paletteColour.blank) {
			draw_set_colour(obj_MCP.palette[_grid[# i, j]]);
			draw_point(i*3+1,j*3+1);
		}
	}
}

surface_reset_target();