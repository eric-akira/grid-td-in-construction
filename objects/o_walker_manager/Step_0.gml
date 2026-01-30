var dt = delta_time / 1000000;
time_until_next_spawn -= dt;

if (time_until_next_spawn <= 0) {
	instantiate_new_walker();
	time_until_next_spawn = seconds_between_spawn;
}