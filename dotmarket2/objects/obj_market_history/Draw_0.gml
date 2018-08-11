draw_set_colour(obj_MCP.palette[obj_market.current_colour]);

for (var i=0; i<30; i++) {
	draw_line(3+i*2,51-display_value[i],3+i*2,51);
}