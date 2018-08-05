paint_surf = surface_create(16,16);
paint_grid = ds_grid_create(16,16);

current_colour = paletteColour.pink;

last_x = -1;
last_y = -1;

for (var i=0; i<2; i++) {
	for (var j=0; j<8; j++) {
		var s = instance_create_layer(x+(j*6), y+50+(i*6), "Instances", obj_swatch);
		s.my_colour = (i*8+j)+1;
	}
}