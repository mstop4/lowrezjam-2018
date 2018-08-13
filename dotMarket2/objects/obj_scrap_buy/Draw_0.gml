draw_set_colour(c_white);
draw_set_halign(fa_left);
draw_set_font(global.fnt_pix);

draw_text(1,1,"PRICE: " + string(obj_MCP.scrap_value[| obj_scrap.current_pattern]));