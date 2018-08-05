draw_set_font(fnt_test);
draw_set_colour(c_white);

for (var i=0; i<1000; i+=100) {
	draw_line(0,room_height-1-i,room_width,room_height-1-i);
}

var data_len = ds_list_size(data);
draw_set_colour(c_lime);

for (var i=0; i<data_len; i++) {
	draw_rectangle(1+(i*6), room_height-1, 5+(i*6), room_height-1-data[| i],false);
}

draw_text(0, 0, string(time_elapsed) + " ms");