paint_surf = surface_create(16,16);
paint_grid = obj_MCP.pattern_storage[obj_MCP.current_pattern];
undo_grid = ds_grid_create(16,16);

ds_grid_copy(undo_grid,paint_grid);
render_grid(paint_grid,paint_surf);

current_colour = paletteColour.pink;

last_x = -1;
last_y = -1;
first_change = true;

for (var i=0; i<2; i++) {
	for (var j=0; j<8; j++) {
		var s = instance_create_layer(x+51+(i*6), y+1+(j*6), "Instances", obj_swatch);
		s.my_colour = (i*8+j)+1;
	}
}