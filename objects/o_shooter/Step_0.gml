var list = ds_list_create();

if (attack_cooldown <= 0) {
	var walker_count = collision_circle_list(x, y, attack_range, o_walker, false, true, list, false);

	if (walker_count > 0) {
		for (var i = 0; i < walker_count; i++) {
			var walker_instance = list[|i];
			var bullet = instance_create_layer(x,y,"Walkers",o_bullet);
			bullet.direction = point_direction(x,y,walker_instance.x, walker_instance.y);
			attack_cooldown = seconds_to_attack;
			break;
		}
	}
} else {
	var dt = delta_time / 1000000;
	attack_cooldown -= dt;
}