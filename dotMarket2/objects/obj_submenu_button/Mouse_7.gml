if (!global.transition && enabled) {
	layer_set_visible(src_layer_id,false);
	layer_set_visible(dest_layer_id,true);
	layer_set_visible(src_back_id,false);
	layer_set_visible(dest_back_id,true);

	instance_deactivate_layer(src_layer_id);
	instance_activate_layer(dest_layer_id);

	io_clear();
	event_inherited();
}