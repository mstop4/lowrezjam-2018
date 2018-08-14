for (var i=0; i<2; i++) {
	for (var j=0; j<3; j++) {
		var pe = instance_create_layer(2+j*21,1+i*23,"Menu",obj_pattern_edit);
		pe.my_index = i*3+j;
	}
}

edit_button = instance_create_layer(8,56,"Menu",obj_edit_button);
sell_button = instance_create_layer(16,56,"Menu",obj_sell_button);

sell_price = 0;

layer_set_visible("Sell",false);
layer_set_visible("Sell_Back",false);
instance_deactivate_layer("Sell");