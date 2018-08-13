for (var i=0; i<2; i++) {
	for (var j=0; j<3; j++) {
		var sd = instance_create_layer(1+j*18,1+i*18,"Store",obj_scrap_store_display);
		sd.my_index = i*3+j;
	}
}

ship_button = instance_create_layer(1,48,"Store",obj_scrap_ship_button);