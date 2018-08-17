/// @arg grid

var _grid = argument[0];

var json = "{\"width\":16,\"height\":16,\"body\":[";

for (var i=0; i<16; i++) {
	for (var j=0; j<16; j++) {
		json += string(_grid[# j, i]) + ",";
	}
}

json += "]}";

return json;