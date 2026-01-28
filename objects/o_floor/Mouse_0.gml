if (floor_type == FloorType.BLANK && !has_tower && global.gold >= 100) {
	global.gold -= 100;
	has_tower = true;
	ActionCreateTower(x, y);
}