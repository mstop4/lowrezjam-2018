with (obj_MCP) {
palette[paletteColour.pink] = make_colour_rgb(255,157,172);
palette[paletteColour.red] = make_colour_rgb(229,59,68);
palette[paletteColour.orange] = make_colour_rgb(251,146,43); 
palette[paletteColour.brown] = make_colour_rgb(116,63,57);
palette[paletteColour.peach] = make_colour_rgb(255,171,123);
palette[paletteColour.yellow] = make_colour_rgb(255,231,98);
palette[paletteColour.lime] = make_colour_rgb(99,198,77);
palette[paletteColour.green] = make_colour_rgb(50,115,69);
palette[paletteColour.cyan] = make_colour_rgb(44,232,244);
palette[paletteColour.blue] = make_colour_rgb(4,132,209);
palette[paletteColour.navy] = make_colour_rgb(63,72,194);
palette[paletteColour.violet] = make_colour_rgb(123,83,173);
palette[paletteColour.darkgrey] = make_colour_rgb(79,103,129);
palette[paletteColour.white] = make_colour_rgb(255,255,255);
palette[paletteColour.gray] = make_colour_rgb(175,191,210);
palette[paletteColour.black] = make_colour_rgb(34,37,51);

stats = ds_map_create();
dot_stock = ds_list_create();
undo_dot_stock = ds_list_create();
dot_price = ds_list_create();
dot_fair_price = ds_list_create();
player_has_goal = ds_list_create();
player_is_occupied = ds_list_create();
player_value = ds_list_create();
scrap_is_occupied = ds_list_create();
scrap_value = ds_list_create();

stats[? "balance"] = 20000;
stats[? "income"] = 0;
stats[? "expenses"] = 0;

for (var i=0; i<paletteColour.maxi; i++) {
	ds_list_add(dot_stock,0);
	ds_list_add(undo_dot_stock,0);
	ds_list_add(dot_price,irandom_range(40,60));
	ds_list_add(dot_fair_price,50);
	price_history[i] = ds_list_create();
	ds_list_add(price_history[i], dot_price[| i]);
}

for (var i=0; i<6; i++) {
	player_storage[i] = ds_grid_create(16,16);
	ds_list_add(player_has_goal,false);
	ds_list_add(player_is_occupied,false);
	ds_list_add(player_value,0);
	player_goal[i] = ds_grid_create(16,16);
	
	scrap_storage[i] = ds_grid_create(16,16);
	scrap_goal[i] = ds_grid_create(16,16);
	ds_list_add(scrap_is_occupied,false);
	ds_list_add(scrap_value,0);
}

current_pattern = 0;

price_delta_success = 1;
price_delta_fail = -1;
num_sims_per_day = 100;

alarm[0] = update_interval;
new_index = 0;
}