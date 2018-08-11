randomize();
#macro E 2.71828
#macro C1 1.44219
#macro MAX_BALANCE 99999999
#macro SAVE_PATH "save.dat"

global.fnt_pix = font_add_sprite_ext(spr_font,"ABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890'.- /",false,1);

price_delta_success = 1;
price_delta_fail = -1;
num_sims_per_day = 100;

reset_game();
load_game(SAVE_PATH);