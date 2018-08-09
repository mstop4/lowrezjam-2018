draw_set_font(global.fnt_pix);
draw_set_colour(c_white);

var _q = obj_buy_quantity.amount;
var _up = obj_MCP.dot_price[| obj_market.current_colour];
var _ds = obj_MCP.dot_stock[| obj_market.current_colour];
var _b = obj_MCP.stats[? "balance"];

draw_text(1,1,"UP: " + string(_up));
draw_text(1,13,"TP: " + string(_q * _up));
draw_text(1,19,"F: " + string(_b));
draw_text(1,25,"S: " + string(_ds));
