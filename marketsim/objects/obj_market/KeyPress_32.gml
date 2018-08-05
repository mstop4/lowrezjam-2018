var start_time = current_time;

ds_list_clear(data);
ds_list_add(data,price);
var buy_chance;
var roll;

for (var d=0; d<num_days; d++) {
	buy_chance = power(E, -price / (fair_price * buy_chance_c)) * demand;

	for (var i=0; i<num_sims_per_day; i++) {
		roll = random(1);
	
		if (roll <= buy_chance) {
			price += price_delta_success;
			demand += demand_delta_per_sale;
		}
		else
			price += price_delta_fail;
	}

	ds_list_add(data,price);
	demand = min(demand+demand_refill_per_day,1);
}

time_elapsed = current_time - start_time;