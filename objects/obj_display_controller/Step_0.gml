if (refresh) { // external controllers will need to call this after setting other parameters (i.e changing display zoom)
	alarm[1] = 1;
	refresh = false;
}