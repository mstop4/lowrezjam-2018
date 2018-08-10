print("Submenu Button: ", string(id));
layer_set_visible(layer,false);
layer_set_visible(src_back_id,false);
layer_set_visible(dest_layer_id,true);
layer_set_visible(dest_back_id,true);

instance_deactivate_layer(layer);
instance_activate_layer(dest_layer_id);

mouse_clear(mb_left);
event_inherited();