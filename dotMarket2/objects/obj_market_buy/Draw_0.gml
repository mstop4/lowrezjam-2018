draw_set_font(global.fnt_pix);
draw_set_colour(c_white);

var _up = obj_MCP.dot_price[| obj_market.current_colour];
var _ds = obj_MCP.dot_stock[| obj_market.current_colour];

draw_text(1,1,"UNIT PRICE: " + string(_up));
draw_text(1,7,"QUANTITY: " + string(buy_amount));
draw_text(1,13,"TOTAL PRICE: " + string(buy_amount * _up));
draw_text(1,19,"YOUR STOCK: " + string(_ds + buy_amount));