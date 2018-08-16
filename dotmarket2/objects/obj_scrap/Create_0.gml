current_pattern = -1;
ship_pattern = -1;

for (var i=0; i<2; i++) {
	for (var j=0; j<3; j++) {
		var sd = instance_create_layer(2+j*21,1+i*23,"Menu",obj_scrap_display);
		sd.my_index = i*3+j;
	}
}

for (var i=0; i<2; i++) {
	for (var j=0; j<3; j++) {
		var sd = instance_create_layer(2+j*21,1+i*23,"Store",obj_scrap_store_display);
		sd.my_index = i*3+j;
	}
}


buy_button = instance_create_layer(27,52,"Menu",obj_scrap_goto_buy_button);
alarm[0] = 1;