current_colour = paletteColour.blank;

/*for (var i=0; i<2; i++) {
	for (var j=0; j<4; j++) {
		store_items[i] = instance_create_layer(1+i*32,1+j*8,"Instances",obj_store_item);
		store_items[i].my_index = i*4+j+1;
	}
}*/

store_items[0] = instance_create_layer(13,1,"Instances",obj_store_item);
store_items[0].my_index = 1;

store_items[1] = instance_create_layer(45,1,"Instances",obj_store_item);
store_items[1].my_index = 5;

store_items[2] = instance_create_layer(13,25,"Instances",obj_store_item);
store_items[2].my_index = 2;

store_items[3] = instance_create_layer(45,25,"Instances",obj_store_item);
store_items[3].my_index = 6;