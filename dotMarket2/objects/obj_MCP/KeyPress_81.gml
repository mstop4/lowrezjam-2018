var c = get_integer("Which Colour?", 1);
var a = get_integer("How much?", 10);

ds_list_copy(undo_dot_stock,dot_stock);
dot_stock[| c] += a;