if (!surface_exists(paint_surf)) {
	paint_surf = surface_create(16,16);
}

surface_set_target(paint_surf);
draw_clear_alpha(c_black,0);

for (var i=0; i<16; i++) {
	for (var j=0; j<16; j++) {
		
		if (paint_grid[# i, j] != 0) {
			draw_set_colour(obj_MCP.palette[paint_grid[# i, j]]);
			draw_point(i,j);
		}
	}
}

surface_reset_target();