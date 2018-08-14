draw_set_colour(c_white);
draw_set_halign(fa_left);
draw_set_font(global.fnt_pix);
draw_text(1,48,string(obj_MCP.alarm[0] div 60));