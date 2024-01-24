
instance ItWr_GolemBook1(C_Item)
{
	name = "Арканум Голум Том Первый";
	mainflag = ITEM_KAT_DOCS;
	flags = ITEM_MISSION;
	value = 100;
	visual = "ItWr_Book_02_05.3ds";
	material = MAT_LEATHER;
	scemeName = "MAP";
	on_state[0] = UseGolemBook1;
};


func void UseGolemBook1()
{
	var int nDocID;
	nDocID = Doc_Create();
	Doc_SetPages(nDocID,2);
	Doc_SetPage(nDocID,0,"Book_Mage_L.tga",0);
	Doc_SetPage(nDocID,1,"Book_Mage_R.tga",0);
	Doc_SetFont(nDocID,-1,"font_10_book.tga");
	Doc_SetMargins(nDocID,0,275,20,30,20,1);
	Doc_PrintLine(nDocID,0,"АРКАНУМ ГОЛУМ Том Первый");
	Doc_PrintLine(nDocID,0,"=====================");
	Doc_PrintLines(nDocID,0,"(Магия Големов)");
	Doc_PrintLine(nDocID,0,"");
	Doc_PrintLines(nDocID,0,"Только тот, кто однажды сталкивался с одним из этих Созданий сотворенных из Стихий, действительно понимает, какое Уважение могут вызвать эти магические Существа у бесстрашного Путешественника.");
	Doc_PrintLine(nDocID,0,"");
	Doc_SetMargins(nDocID,-1,30,20,275,20,1);
	Doc_PrintLine(nDocID,1,"Каменный Голем");
	Doc_PrintLine(nDocID,1,"------------");
	Doc_PrintLines(nDocID,1,"Эти каменные Колоссы практически неуязвимы в Бою. Такое впечатление, что Мечи, Топоры и Луки, не способны причинить вред этим Монстрам.");
	Doc_PrintLine(nDocID,1,"");
	Doc_PrintLines(nDocID,1,"Единственное достоверное Сообщение о Поражении единственного такого Левиафана поступило от одного Наемника. Он написал о том, как тупые Удары его Боевого Молота стали причиной Трещин в Големе, пока тот окончательно не был разбит.");
	Doc_Show(nDocID);
};


instance ItWr_GolemBook2(C_Item)
{
	name = "Арканум Голум Том Второй";
	mainflag = ITEM_KAT_DOCS;
	flags = ITEM_MISSION;
	value = 100;
	visual = "ItWr_Book_02_05.3ds";
	material = MAT_LEATHER;
	scemeName = "MAP";
	on_state[0] = UseGolemBook2;
};


func void UseGolemBook2()
{
	var int nDocID;
	nDocID = Doc_Create();
	Doc_SetPages(nDocID,2);
	Doc_SetPage(nDocID,0,"Book_Mage_L.tga",0);
	Doc_SetPage(nDocID,1,"Book_Mage_R.tga",0);
	Doc_SetFont(nDocID,-1,"font_10_book.tga");
	Doc_SetMargins(nDocID,0,275,20,30,20,1);
	Doc_PrintLine(nDocID,0,"АРКАНУМ ГОЛУМ Том Второй");
	Doc_PrintLine(nDocID,0,"======================");
	Doc_PrintLine(nDocID,0,"");
	Doc_PrintLine(nDocID,0,"Ледяной Голем");
	Doc_PrintLine(nDocID,0,"---------");
	Doc_PrintLines(nDocID,0,"Ледяные Големы подобные Каменным, но все же их физическая Субстанция снаружи полностью состоит из замерзшей Воды. Все известное нам Оружие скользит по гладкой Поверхности этих ледяных Существ.");
	Doc_PrintLines(nDocID,0,"Также будучи отважным Путешественником нужно быть осторожным с Ледяным Дыханием этих Существ, поскольку оно мгновенно заключит в Ледяной Столб каждого Беспечного.");
	Doc_SetMargins(nDocID,-1,30,20,275,20,1);
	Doc_PrintLines(nDocID,1,"Однажды некий Маг Огня сообщил о встрече с одним таким Существом, но, похоже, он считал, что оно не представляло никакой серьезной Опасности.");
	Doc_PrintLine(nDocID,1,"");
	Doc_PrintLine(nDocID,1,"Огненный Голем");
	Doc_PrintLine(nDocID,1,"------------");
	Doc_PrintLines(nDocID,1,"Согласно Сообщениям, эти огненные Создания способны одним своим Прикосновением превратить своих Жертв в сплошное Пылающее Море.");
	Doc_PrintLines(nDocID,1,"Лишь в прошлом Году одна группа Охотников столкнулась в Высокогорье с таким блуждающим однородным Раскаленным Образованием. Исход этого неясен, однако Молния и Лед смогли остановить то Адское Существо.");
	Doc_Show(nDocID);
};


instance ItWrWorldmap_Orc(C_Item)
{
	name = "Карта";
	mainflag = ITEM_KAT_DOCS;
	flags = ITEM_MISSION;
	value = 250;
	visual = "ItWr_Map_01.3DS";
	material = MAT_LEATHER;
	scemeName = "MAP";
	on_state[0] = UseWorldmap_Orc;
	description = "Карта Колонии (дополненная)";
	text[0] = "Ур Шак, Орк Шаман, дорисовал";
	text[1] = "область, которой владеют Орки!";
	text[5] = NAME_Value;
	count[5] = value;
};


func void UseWorldmap_Orc()
{
	var int nDocID;
	nDocID = Doc_CreateMap();
	Doc_SetLevel(nDocID,"WORLD.ZEN");
	Doc_SetPages(nDocID,1);
	Doc_SetPage(nDocID,0,"Map_World_Orc.tga",1);
	Doc_Show(nDocID);
};


instance ItKe_Freemine(C_Item)
{
	name = "Ключ от Свободной Шахты";
	mainflag = ITEM_KAT_NONE;
	flags = ITEM_MISSION;
	value = 3;
	visual = "ItKe_Key_01.3ds";
	material = MAT_METAL;
	description = "Ключ от Свободной Шахте";
	text[5] = NAME_Value;
	count[5] = value;
};

instance OrcMedicine(C_Item)
{
	name = "Орочье Снадобье";
	mainflag = ITEM_KAT_POTIONS;
	flags = ITEM_MISSION;
	value = 0;
	visual = "ITFO_POTION_STRENGTH_01.3DS";
	material = MAT_GLAS;
	on_state[0] = UseOrcMedicine;
	scemeName = "POTION";
	description = name;
	text[0] = "Действие: неизвестно";
};


func void UseOrcMedicine()
{
	if(C_NpcIsOrc(self))
	{
		self.attribute[ATR_HITPOINTS] = self.attribute[ATR_HITPOINTS_MAX];
	}
	else
	{
		Npc_ChangeAttribute(self,ATR_HITPOINTS,-self.attribute[ATR_HITPOINTS_MAX]);
	};
};


instance UluMulu(C_Item)
{
	name = "Улу Мулу";
	mainflag = ITEM_KAT_NF;
	flags = ITEM_2HD_AXE | ITEM_MISSION;
	value = 1000;
	damageTotal = 35;
	damagetype = DAM_EDGE;
	range = 140;
	cond_atr[2] = ATR_STRENGTH;
	cond_value[2] = 30;
	visual = "ItMi_Amulet_Ulumulu_02.3ds";
	visual_skin = 0;
	material = MAT_METAL;
	description = name;
	text[0] = "Улу Мулу это Знак великой Силы и";
	text[1] = "Мужества. Носителю этого Знака";
	text[2] = "нечего бояться Орков!";
	text[3] = NAME_Damage;
	count[3] = damageTotal;
	text[4] = NAME_Str_needed;
	count[4] = cond_value[2];
	text[5] = NAME_Value;
	count[5] = value;
};

