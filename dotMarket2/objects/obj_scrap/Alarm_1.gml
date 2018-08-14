/// @description force rerender: obj_Scrap_display

with (obj_scrap_display) {
	event_perform(ev_alarm,0);
	selected = false;
}

current_pattern = -1;
ship_pattern = -1;

buy_button.enabled = false;