layer_set_visible(layer,false);
layer_set_visible(dest_layer_id,true);
instance_deactivate_layer(layer);
instance_activate_layer(dest_layer_id);

mouse_clear(mb_left);