buy_button = instance_create_layer(x,y,"Instances",obj_buy_button);
init_child_component(buy_button,id,3,16,1);
update_child_component(buy_button);

history_button = instance_create_layer(x,y,"Instances",obj_history_button);
init_child_component(history_button,id,-3,16,1);
update_child_component(history_button);

transitioning = false;
start_alpha = 1;
end_alpha = 1;
start_x = x;
end_x = x;
start_y = y;
end_y = y;

alarm[0] = 1;