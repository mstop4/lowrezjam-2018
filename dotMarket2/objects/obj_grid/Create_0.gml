paint_surf = surface_create(16,16);
paint_grid = ds_grid_create(16,16);
current_colour = paletteColour.pink;

last_x = -1;
last_y = -1;

palette[paletteColour.pink] = make_colour_rgb(255,160,208);
palette[paletteColour.red] = make_colour_rgb(255,0,0);
palette[paletteColour.orange] = make_colour_rgb(255,128,0);
palette[paletteColour.brown] = make_colour_rgb(128,64,0);
palette[paletteColour.peach] = make_colour_rgb(255,192,128);
palette[paletteColour.yellow] = make_colour_rgb(255,255,0);
palette[paletteColour.lime] = make_colour_rgb(0,255,0);
palette[paletteColour.green] = make_colour_rgb(0,192,0);
palette[paletteColour.cyan] = make_colour_rgb(0,255,255);
palette[paletteColour.blue] = make_colour_rgb(0,128,255);
palette[paletteColour.navy] = make_colour_rgb(0,0,255);
palette[paletteColour.violet] = make_colour_rgb(128,0,255);
palette[paletteColour.purple] = make_colour_rgb(224,0,255);
palette[paletteColour.white] = make_colour_rgb(255,255,255);
palette[paletteColour.gray] = make_colour_rgb(128,128,128);
palette[paletteColour.black] = make_colour_rgb(0,0,0);