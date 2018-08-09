var fn = get_open_filename(".dat","save.dat");

print(fn);

if (fn != "")
	load_game(fn);