randomize();
#macro E 2.71828

buy_chance_c = 1.44219;

price = 500;
fair_price = 500;
price_delta_success = 1;
price_delta_fail = -1;

demand = 100;
demand_max = 100;
demand_delta_per_sale = -0.2;
demand_refill_per_day = 45;

num_sims_per_day = 500;
num_days = 100;

data = ds_list_create();
ds_list_add(data,price);
time_elapsed = -1;