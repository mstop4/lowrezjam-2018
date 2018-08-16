draw_set_font(global.fnt_pix);
draw_set_colour($404040);
draw_set_halign(fa_left);

draw_text(2,3,"FUNDS");
draw_text(2,11,"REV.");
draw_text(2,19,"EXP.");
draw_text(2,27,"NEXT ROUND");

draw_set_halign(fa_right);
draw_text(62,3,string(obj_MCP.stats[? "balance"]));
draw_text(62,11,string(obj_MCP.stats[? "income"]));
draw_text(62,19,string(obj_MCP.stats[? "expenses"]));