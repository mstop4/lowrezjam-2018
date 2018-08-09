draw_set_font(global.fnt_pix);
draw_set_colour(c_white);

var _q = obj_buy_quantity.amount;
var _up = obj_MCP.dot_price[| obj_market.current_colour];
var _ds = obj_MCP.dot_stock[| obj_market.current_colour];
var _b = obj_MCP.stats[? "balance"];

draw_sprite_ext(spr_swatch,0,1,2,1,1,0,obj_MCP.palette[obj_market.current_colour],1);
draw_sprite(spr_unit_price,0,9,1);
draw_text(17,1,string(_up));

draw_sprite(spr_quantity,0,1,9);
draw_text(17,9,string(_q));

draw_sprite(spr_total_price,0,1,17);
draw_text(17,17,string(_q * _up));

//draw_text(1,19,"F: " + string(_b));
//sraw_text(1,25,"S: " + string(_ds));
