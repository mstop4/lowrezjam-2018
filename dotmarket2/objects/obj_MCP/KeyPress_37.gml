var _num_patterns = array_length_1d(obj_MCP.patterns_library);
var _num_scrap_spaces = array_length_1d(obj_MCP.scrap_storage);
var _index = 0;

while (true) {
	if (!obj_MCP.scrap_is_occupied[| _index]) {
		obj_MCP.scrap_is_occupied[| _index] = true;
		var _roll = irandom_range(0,_num_patterns-1);
		ds_grid_copy(obj_MCP.scrap_storage[_index], obj_MCP.patterns_library[_roll]);
		break;
	}
	
	_index++;
	
	if (_index >= _num_scrap_spaces)
		break;
}