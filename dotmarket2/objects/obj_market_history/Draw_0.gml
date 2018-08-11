draw_set_colour(obj_MCP.palette[obj_market.current_colour]);

if (os_browser != browser_not_a_browser) {
	for (var i=0; i<30; i++) {
		draw_line(3+i*2,baseline-display_value[i],3+i*2,baseline);
	}
}

else {
	for (var i=0; i<30; i++) {
		if (display_value[i] > 0)
			draw_rectangle(3+i*2,baseline-display_value[i]+1,3+i*2,baseline,false);
	}
}