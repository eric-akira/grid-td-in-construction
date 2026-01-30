function ActionWeightedChoose(items, weights){
	var total = 0;
	for (var i = 0; i < array_length(weights); i++) {
		total += weights[i];
	}
	
	var roll = random(total);
	var cumulative = 0;
	
	for (var i = 0; i < array_length(items); i++) {
		cumulative += weights[i];
		if (roll < cumulative) {
			return items[i];
		}
	}
	
	//returm items[array_length(items) - 1]; //fallback to last item
	
	return items[0]; //fallback to first item
}