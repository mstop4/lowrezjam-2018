current_colour = paletteColour.blank;

for (var i=0; i<4; i++) {
	store_items[i*2] = instance_create_layer(13,i*24-23,"Instances",obj_store_item);
	store_items[i*2].my_index = i+1;

	store_items[i*2+1] = instance_create_layer(45,i*24-23,"Instances",obj_store_item);
	store_items[i*2+1].my_index = i+5;
}

toggle_component(store_items[0],false);
toggle_component(store_items[1],false);
toggle_component(store_items[6],false);
toggle_component(store_items[7],false);
