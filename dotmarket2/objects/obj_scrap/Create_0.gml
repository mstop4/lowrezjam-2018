current_pattern = -1;
ship_pattern = -1;

for (var i=0; i<2; i++) {
	for (var j=0; j<3; j++) {
		var sd = instance_create_layer(1+j*18,1+i*18,"Menu",obj_scrap_display);
		sd.my_index = i*3+j;
	}
}

buy_button = instance_create_layer(16,50,"Menu",obj_scrap_goto_buy_button);
alarm[0] = 1;