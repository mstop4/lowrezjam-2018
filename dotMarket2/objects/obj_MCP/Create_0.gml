randomize();
#macro E 2.71828
#macro C1 1.44219
#macro MAX_BALANCE 99999999
#macro SAVE_PATH "save.dat"
#macro PATTERNS_PATH "Patterns/"
#macro PATTERNS_MASK "*.pat"

global.fnt_pix = font_add_sprite_ext(spr_font,"ABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890'.- /",false,1);
global.transition = false;

trans_t = 0;
trans_t_delta = 0;
next_room = noone;

timeline_index = tmln_transition_room;
timeline_position = 0;