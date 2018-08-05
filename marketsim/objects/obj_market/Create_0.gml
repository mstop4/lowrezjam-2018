randomize();
#macro E 2.71828

buy_chance_c = 1.44219;

price = 500;
fair_price = 500;
price_delta_success = 1;
price_delta_fail = -1;

demand = 1;
demand_delta_per_sale = -0.00001;
demand_refill_per_day = 0.0025;

num_sims_per_day = 500;
num_days = 100;

data = ds_list_create();
time_elapsed = -1;