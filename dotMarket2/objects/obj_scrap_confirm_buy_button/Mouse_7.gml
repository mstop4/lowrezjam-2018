if (enabled) {
	if (obj_MCP.stats[? "balance"] >= obj_MCP.scrap_value[| obj_scrap.current_pattern]) {
		layer_set_visible(src_layer_id,false);
		layer_set_visible(dest_layer_id,true);
		layer_set_visible(src_back_id,false);
		layer_set_visible(dest_back_id,true);

		instance_deactivate_layer(src_layer_id);
		instance_activate_layer(dest_layer_id);

		io_clear();
		audio_play_sound(snd_click1,1,false);
		image_index = 0;
	}
}