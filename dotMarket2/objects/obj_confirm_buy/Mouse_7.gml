if (enabled) {
	obj_MCP.stats[? "balance"] -= obj_market_buy.quantity * obj_MCP.dot_price[| obj_market.current_colour];
	obj_MCP.dot_stock[| obj_market.current_colour] += obj_market_buy.quantity;
	ds_list_copy(obj_MCP.undo_dot_stock, obj_MCP.dot_stock);
	obj_market_buy.quantity = 0;

	event_inherited();
}