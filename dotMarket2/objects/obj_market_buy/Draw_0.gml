draw_set_font(global.fnt_pix);
draw_set_colour(c_black);

var _up = obj_MCP.dot_price[| obj_market.current_colour];
var _ds = obj_MCP.dot_stock[| obj_market.current_colour];
var _b = obj_MCP.stats[? "balance"];

draw_set_halign(fa_left);

draw_set_colour(c_black);
draw_text(2,1,"QTY       PRICE");
draw_text(2,9,string(quantity) + " X");
draw_text(2,20,"TOTAL");

draw_set_colour($404040);
draw_text(2,34,"FUNDS");
draw_text(2,42,"STOCK");


draw_set_halign(fa_right);
draw_set_colour(c_black);

draw_text(62,9,_up);
draw_text(62,20,string(quantity * _up));

draw_set_colour($404040);
draw_text(62,34,string(_b));
draw_text(62,42,string(_ds));

var _cursor_pos;
	
if (quantity == 0)
	_cursor_pos = 0;
		
else 
	_cursor_pos = floor(log10(quantity));
		
draw_sprite(sprite_index,-1,6+_cursor_pos*4,9);