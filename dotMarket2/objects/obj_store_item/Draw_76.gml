if (!selected) {
	if (point_in_rectangle(mouse_x,mouse_y,x,y,x+sprite_width,y+sprite_height))
		image_index = 1;
	else
		image_index = 0;
}

else
	image_index = 2;