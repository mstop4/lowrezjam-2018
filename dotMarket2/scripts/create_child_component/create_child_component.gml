/// @arg object_index
/// @arg parent
/// @arg x_offset
/// @arg y_offset
/// @arg alpha

var _obj_index = argument[0];
var _parent = argument[1];

var _child = instance_create_layer(_parent.x,_parent.y,"Instances", _obj_index);

with (_child) {
	parent = argument[1];
	x_offset = argument[2];
	y_offset = argument[3];
	my_base_alpha = argument[4];
}

with (_parent)
	update_child_component(_child);
	
return _child;