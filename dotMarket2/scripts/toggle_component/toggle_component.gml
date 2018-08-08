/// @arg component
/// @arg is_active

var _component = argument[0];
var _is_active = argument[1];

if (_is_active) {
	instance_activate_object(_component);
	with (_component) {
		for (var i=0; i<array_length_1d(children); i++) {
			if (instance_exists(children[i])) {
				instance_activate_object(children[i]);
			}
		}
	}
}

else {
	with (_component) {
		for (var i=0; i<array_length_1d(children); i++) {
			if (instance_exists(children[i]))
				instance_deactivate_object(children[i]);
		}
	}
		
	instance_deactivate_object(_component);
}