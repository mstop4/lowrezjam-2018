var _num_patterns = array_length_1d(obj_MCP.patterns_library);
var _num_scrap_spaces = array_length_1d(obj_MCP.scrap_storage);

for (var i=0; i<1; i++) {
	
	// Choose a pattern
	obj_MCP.scrap_is_occupied[| new_index] = true;
	var _roll = irandom_range(0,_num_patterns-1);
	ds_grid_copy(obj_MCP.scrap_storage[new_index], obj_MCP.patterns_library[_roll]);
	ds_grid_copy(obj_MCP.scrap_goal[new_index], obj_MCP.patterns_library[_roll]);
	
	// find all non-blank pixels
	var _pixel_list = ds_list_create();
	var _cur_pattern = obj_MCP.scrap_goal[new_index];
	
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
	_cur_pattern = obj_MCP.scrap_storage[new_index];
	
	for (var j=0; j<_max_removal; j++)	{
		_cur_removal = _pixel_list[| j];
		_cur_pattern[# _cur_removal[0], _cur_removal[1]] = paletteColour.blank;
	}

	ds_list_destroy(_pixel_list);
	
	// evaluate price of pattern
	obj_MCP.scrap_value[| new_index] = pattern_valuation(_cur_pattern) * random_range(min_mark, max_mark);
	
	new_index = (new_index+1) mod _num_scrap_spaces;
}