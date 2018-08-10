with (obj_market) {
	page = clamp(page+other.toggle_dir,0,1);
	
	for (var i=0; i<8; i++) {
		store_items[i].my_index = store_items[i].index_offset+page*8;
		store_items[i].image_blend = obj_MCP.palette[store_items[i].my_index];
	}
}

with (obj_store_item)
	selected = false;
	
instance_deactivate_object(obj_market.buy_button);
instance_deactivate_object(obj_market.history_button);