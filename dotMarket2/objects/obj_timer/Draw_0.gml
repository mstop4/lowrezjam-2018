draw_self();

if (obj_MCP.alarm[0] <= 600 && obj_MCP.alarm[0] mod 60 >= 30) {
	draw_set_colour(text_colour);
	draw_set_halign(fa_center);
	draw_set_valign(fa_center);
	draw_set_font(global.fnt_pix);
		
	draw_text(x+5,y+5,string(obj_MCP.alarm[0] div 60));
	draw_set_valign(fa_top);
}