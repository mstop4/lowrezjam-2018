var start_time = current_time;
var roll;

buy_chance = power(E, -price / (fair_price * c1));

for (var i=0; i<num_sims_per_day; i++) {
	roll = random(1);
	
	if (roll <= buy_chance) {
		price = min(price+price_delta_success,999);
	}
	else
		price = max(price+price_delta_fail,0);
}

ds_list_add(data,price);

time_elapsed = current_time - start_time;
alarm[0] = day_delay;