var start_time = current_time;
var buy_chance, demand_modifier, final_chance;
var roll;

buy_chance = power(E, -price / (fair_price * buy_chance_c))
demand_modifier = power(demand / demand_max, 2);
final_chance = buy_chance * demand_modifier;

for (var i=0; i<num_sims_per_day; i++) {
	roll = random(1);
	
	if (roll <= final_chance) {
		price = min(price+price_delta_success,999);
		demand += demand_delta_per_sale;
	}
	else
		price = max(price+price_delta_fail,0);
}

ds_list_add(data,price);
demand = clamp(demand+demand_refill_per_day,0,100);

time_elapsed = current_time - start_time;