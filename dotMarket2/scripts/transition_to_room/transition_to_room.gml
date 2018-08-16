/// @arg room
/// @arg current_music
/// @arg next_music

with (obj_MCP) {
	cur_music = argument[1];
	next_music = argument[2];
	next_room = argument[0];
	timeline_position = 0;
	timeline_running = true;
}