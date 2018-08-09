draw_set_font(global.fnt_pix);
draw_set_colour(c_white);

var _up = obj_MCP.dot_price[| obj_market.current_colour];
var _ds = obj_MCP.dot_stock[| obj_market.current_colour];
var _b = obj_MCP.stats[? "balance"];

draw_set_halign(fa_right);

var _str;

var _str = pad_string("PRICE " + string(_up),".", 7, max_str_width);
draw_text(62,1,_str);

var _str = pad_string("QTY " + string(quantity),".", 5, max_str_width);
draw_text(62,9,_str);

if (pulse(t,0,49) > 0) 
	draw_line(58,14,61,14);

draw_line(1,17,63,17);

var _str = pad_string("TOTAL " + string(quantity * _up),".", 7, max_str_width);
draw_text(62,20,_str);

var _str = pad_string("FUNDS " + string(_b),".", 7, max_str_width);
draw_text(62,30,_str);

var _str = pad_string("STOCK " + string(_ds),".", 7, max_str_width);
draw_text(62,38,_str);
