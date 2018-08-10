current_colour = paletteColour.blank;
page = 0;

for (var i=0; i<4; i++) {
	store_items[i*2] = instance_create_layer(1,i*11+1,"Menu",obj_store_item);
	store_items[i*2].index_offset = 1+i;
	store_items[i*2].my_index = store_items[i*2].index_offset+page*8;

	store_items[i*2+1] = instance_create_layer(33,i*11+1,"Menu",obj_store_item);
	store_items[i*2+1].index_offset = 5+i;	
	store_items[i*2+1].my_index = store_items[i*2+1].index_offset+page*8;
}

buy_button = instance_create_layer(1,50,"Menu",obj_submenu_button);
buy_button.dest_layer = "Buy";
buy_button.dest_back_layer = "Buy_Back";
buy_button.src_back_layer = "Menu_Back";
buy_button.name = "Menu to Buy";

history_button = instance_create_layer(21,50,"Menu",obj_submenu_button);
history_button.dest_layer = "History";
history_button.dest_back_layer = "History_Back";
history_button.src_back_layer = "Menu_Back";
history_button.name = "Menu to History";

instance_deactivate_object(buy_button);
instance_deactivate_object(history_button);
instance_deactivate_layer("Buy");
instance_deactivate_layer("History");