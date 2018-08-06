randomize();
#macro E 2.71828

c1 = 1.44219;
buy_chance = 0;

price = 500;
fair_price = 500;
price_delta_success = 1;
price_delta_fail = -1;

num_sims_per_day = 100;

data = ds_list_create();
ds_list_add(data,price);
time_elapsed = -1;

day_delay = 15;
alarm[0] = day_delay;