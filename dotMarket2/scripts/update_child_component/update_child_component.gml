/// @arg child

var _child = argument[0];

with (_child) {
	if (instance_exists(parent)) { 
		x = parent.x + x_offset;
		y = parent.y + y_offset;
		image_alpha = parent.image_alpha * my_base_alpha;
	}
}