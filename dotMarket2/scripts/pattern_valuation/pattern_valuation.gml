///@arg grid

var _grid = argument[0];
var _cur_pix;
var _total = 0;

for (var i=0; i<16; i++) {
	for (var j=0; j<16; j++) {
		_cur_pix = _grid[# j, i];
		if (_cur_pix != paletteColour.blank) {
			_total += obj_MCP.dot_price[| _cur_pix];
		}
	}
}

return _total;