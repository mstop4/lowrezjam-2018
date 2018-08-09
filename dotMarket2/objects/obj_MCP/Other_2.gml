randomize();
#macro E 2.71828
#macro C1 1.44219
#macro MAX_BALANCE 99999999
#macro SAVE_PATH "save.dat"

global.fnt_pix = font_add_sprite_ext(spr_font,"ABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890'.- /",false,1);

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

stats = ds_map_create();
dot_stock = ds_list_create();
undo_dot_stock = ds_list_create();
dot_price = ds_list_create();
dot_fair_price = ds_list_create();

stats[? "balance"] = 3000;
stats[? "income"] = 0;
stats[? "expenses"] = 0;

for (var i=0; i<paletteColour.maxi; i++) {
	ds_list_add(dot_stock,100);
	ds_list_add(undo_dot_stock,100);
	ds_list_add(dot_price,irandom_range(40,60));
	ds_list_add(dot_fair_price,50);
}

for (var i=0; i<6; i++) {
	pattern_storage[i] = ds_grid_create(16,16);
}

current_pattern = 0;

price_delta_success = 1;
price_delta_fail = -1;
num_sims_per_day = 100;

load_game(SAVE_PATH);

surface_resize(application_surface, 64, 64);