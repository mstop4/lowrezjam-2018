randomize();
#macro E 2.71828
#macro C1 1.44219
#macro MAX_BALANCE 99999999
#macro SAVE_PATH "save.dat"
#macro PATTERNS_PATH "Patterns/"
#macro PATTERNS_MASK "*.pat"

global.fnt_pix = font_add_sprite_ext(spr_font,"ABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890'.- /",false,1);
global.transition = false;


global.pattern_files = [ 
	"pizza.pat",
	"dulcie.pat",
	"apple.pat",
	"orange.pat",
	"banana.pat",
	"blueberries.pat",
	"lemon.pat",
	"lime.pat"
];

trans_t = 0;
trans_t_delta = 0;
cur_music = noone;
next_room = noone;
next_music = noone;

timeline_index = tmln_transition_room;
timeline_position = 0;

//window_set_cursor(cr_none);