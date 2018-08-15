// @arg max_scrap

var _max_scrap = argument[0];

with (obj_MCP) {	
	var _num_patterns = array_length_1d(patterns_library);
	var _num_scrap_spaces = array_length_1d(scrap_storage);

	// check if no scrap is being sold
	var _is_empty = true;
	for (var i=0; i<_num_scrap_spaces; i++) {
		if (scrap_is_occupied[| i]) {
			_is_empty = false;
			break;
		}
	}
	
	// guarantee at least scrap sold if there is none
	var _num_add = 0;
	
	if (_is_empty)
		_num_add = 1;
		
	for (var i=0; i<_max_scrap-1; i++) {
		_num_add += choose(0,1);
	}

	for (var i=0; i<_num_add; i++) {
		// Find empty space
		var _new_index = 0;
		
		for (_new_index = 0; _new_index < _num_scrap_spaces; _new_index++) {
			if (!scrap_is_occupied[| _new_index])
				break;
		}
		
		if (_new_index == _num_scrap_spaces)
			exit;
	
		// Choose a pattern
		scrap_is_occupied[| _new_index] = true;
		var _roll = irandom_range(0,_num_patterns-1);
		ds_grid_copy(scrap_storage[_new_index], patterns_library[_roll]);
		ds_grid_copy(scrap_goal[_new_index], patterns_library[_roll]);
	
		// find all non-blank pixels
		var _pixel_list = ds_list_create();
		var _cur_pattern = scrap_goal[_new_index];
	
		for (var j=0; j<16; j++) {
			for (var k=0; k<16; k++) {
				if (_cur_pattern[# k, j] != paletteColour.blank) {
					ds_list_add(_pixel_list,[k,j]);
				}
			}
		}
	
		// randomly remove pixels from pattern
		ds_list_shuffle(_pixel_list);
		var _max_removal = min(50,ds_list_size(_pixel_list) * 0.5);
		var _cur_removal;
		_cur_pattern = scrap_storage[_new_index];
	
		for (var j=0; j<_max_removal; j++)	{
			_cur_removal = _pixel_list[| j];
			_cur_pattern[# _cur_removal[0], _cur_removal[1]] = paletteColour.blank;
		}

		ds_list_destroy(_pixel_list);
	
		// evaluate price of pattern
		scrap_value[| _new_index] = round(pattern_valuation(_cur_pattern) * random_range(min_mark, max_mark));
	}
}