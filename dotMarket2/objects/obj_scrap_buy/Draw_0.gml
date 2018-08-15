draw_set_colour(c_black);
draw_set_halign(fa_left);
draw_set_font(global.fnt_pix);

draw_text(2,1,"BOOK VALUE: ");
draw_set_colour($404040);
draw_text(2,36,"FUNDS");

draw_set_halign(fa_right);
draw_set_colour(c_black);
draw_text(61,7,string(obj_MCP.scrap_value[| obj_scrap.current_pattern]));
draw_set_colour($404040);
draw_text(61,36,string(obj_MCP.stats[? "balance"]));