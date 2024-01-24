
func void B_Story_LoadSword()
{
	var C_Npc milten;
	B_LogEntry(CH5_Uriziel,"Ксардас завершил Магическую Формулу. Теперь мне нужен очень большой Источник магической энергии и Маг, который будет мне помогать. К счастью, в Колонии есть сообщество, которое владеет таким источником Энергии, и они в большом Долгу передо мной…");
	B_GiveXP(XP_ReturnedFromSunkenTower);
	CreateInvItem(hero,Scroll4Milten);
	milten = Hlp_GetNpc(PC_Mage);
	Npc_ExchangeRoutine(milten,"LSWait");
	LoadSword = 1;
};

