function GoldGivingComponent(_amount_of_gold_to_give) constructor {
	amount_of_gold_to_give = _amount_of_gold_to_give;
	
	static give_gold = function () {
		global.gold += amount_of_gold_to_give;
	}
}