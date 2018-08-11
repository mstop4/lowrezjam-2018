randomize();
#macro E 2.71828
#macro C1 1.44219
#macro MAX_BALANCE 99999999
#macro SAVE_PATH "save.dat"

global.fnt_pix = font_add_sprite_ext(spr_font,"ABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890'.- /",false,1);

surface_resize(application_surface,64,64);
display_set_gui_maximize(0.25,0.25,0,0);

reset_game();
load_game(SAVE_PATH);