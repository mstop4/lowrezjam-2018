if (enabled) {
	if (!selected) {
		if (point_in_rectangle(mouse_x,mouse_y,x,y,x+sprite_width,y+sprite_height)) {
			if (mouse_check_button(mb_left))
				image_index = buttonState.clicked;
			else
				image_index = buttonState.hover;
		}
	
		else
			image_index = buttonState.none;
	}

	else
		image_index = buttonState.selected;
}

else
	image_index = buttonState.none;