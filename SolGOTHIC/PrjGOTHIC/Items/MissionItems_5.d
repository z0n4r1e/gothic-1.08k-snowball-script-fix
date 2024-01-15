
instance ItWrTemplemap(C_Item)
{
	name = "Карта";
	mainflag = ITEM_KAT_DOCS;
	flags = ITEM_MISSION;
	value = 30;
	visual = "ItWr_Map_01.3DS";
	material = MAT_LEATHER;
	scemeName = "MAP";
	on_state[0] = UseTemplemap;
	description = "Набросок храма";
	text[4] = NAME_Value;
	count[4] = value;
};


func void UseTemplemap()
{
	var int nDocID;
	nDocID = Doc_CreateMap();
	Doc_SetPages(nDocID,1);
	Doc_SetPage(nDocID,0,"Map_Temple.tga",1);
	Doc_Show(nDocID);
};


instance ItMiAlarmhorn(C_Item)
{
	name = "Рог";
	mainflag = ITEM_KAT_NONE;
	flags = ITEM_MISSION;
	value = 9;
	visual = "ItMi_Alarmhorn_01.3DS";
	material = MAT_WOOD;
	scemeName = "HORN";
	description = name;
	text[5] = NAME_Value;
	count[5] = value;
};

instance ItMi_Stuff_Idol_Sleeper_01(C_Item)
{
	name = "Статуэтка";
	mainflag = ITEM_KAT_NONE;
	flags = ITEM_MISSION;
	value = 0;
	visual = "ItMi_Stuff_Idol_Sleeper_01.3DS";
	material = MAT_CLAY;
	description = name;
	text[0] = "Статуэтка представляет некое создание";
	text[1] = "в маске.";
	text[2] = "Маска окружена шестью большими жалами.";
};

instance Weltenspalter(C_Item)
{
	name = "Раскалывающий миры";
	mainflag = ITEM_KAT_NONE;
	flags = ITEM_2HD_SWD | ITEM_MISSION;
	material = MAT_METAL;
	value = 900;
	damageTotal = 90;
	damagetype = DAM_EDGE;
	range = 140;
	cond_atr[2] = ATR_STRENGTH;
	cond_value[2] = 30;
	visual = "ItMi_SleeperKey_01.3DS";
	description = name;
	text[0] = "Этот меч принадлежал бессмертному высшему";
	text[1] = "священнику Варраг-Хашору.";
	text[2] = "Очевидно, что как оружие этот меч явно";
	text[3] = "бесполезен.";
	text[4] = "Возможно, его можно использовать для";
	text[5] = "других целей.";
};

instance Lichtbringer(C_Item)
{
	name = "Клинок света";
	mainflag = ITEM_KAT_NONE;
	flags = ITEM_2HD_SWD | ITEM_MISSION;
	material = MAT_METAL;
	value = 900;
	damageTotal = 90;
	damagetype = DAM_EDGE;
	range = 140;
	cond_atr[2] = ATR_STRENGTH;
	cond_value[2] = 30;
	visual = "ItMi_SleeperKey_01.3DS";
	description = name;
	text[0] = "Этот меч принадлежал бессмертному высшему";
	text[1] = "священнику Варраг-Касоргу.";
	text[2] = "Очевидно, что как оружие этот меч явно";
	text[3] = "бесполезен.";
	text[4] = "Возможно, его можно использовать для";
	text[5] = "других целей.";
};

instance Zeitenklinge(C_Item)
{
	name = "Клинок времен";
	mainflag = ITEM_KAT_NONE;
	flags = ITEM_2HD_SWD | ITEM_MISSION;
	material = MAT_METAL;
	value = 900;
	damageTotal = 90;
	damagetype = DAM_EDGE;
	range = 140;
	cond_atr[2] = ATR_STRENGTH;
	cond_value[2] = 30;
	visual = "ItMi_SleeperKey_01.3DS";
	description = name;
	text[0] = "Этот меч принадлежал бессмертному высшему";
	text[1] = "священнику Варраг-Унхилькту.";
	text[2] = "Очевидно, что как оружие этот меч явно";
	text[3] = "бесполезен.";
	text[4] = "Возможно, его можно использовать для";
	text[5] = "других целей.";
};

instance Daemonenstreich(C_Item)
{
	name = "Удар демона";
	mainflag = ITEM_KAT_NONE;
	flags = ITEM_2HD_SWD | ITEM_MISSION;
	material = MAT_METAL;
	value = 900;
	damageTotal = 90;
	damagetype = DAM_EDGE;
	range = 140;
	cond_atr[2] = ATR_STRENGTH;
	cond_value[2] = 30;
	visual = "ItMi_SleeperKey_01.3DS";
	description = name;
	text[0] = "Этот меч принадлежал бессмертному высшему";
	text[1] = "священнику Варраг-Руушку.";
	text[2] = "Очевидно, что как оружие этот меч явно";
	text[3] = "бесполезен.";
	text[4] = "Возможно, его можно использовать для";
	text[5] = "других целей.";
};

instance Bannklinge(C_Item)
{
	name = "Клинок наказания";
	mainflag = ITEM_KAT_NONE;
	flags = ITEM_2HD_SWD | ITEM_MISSION;
	material = MAT_METAL;
	value = 900;
	damageTotal = 90;
	damagetype = DAM_EDGE;
	range = 140;
	cond_atr[2] = ATR_STRENGTH;
	cond_value[2] = 30;
	visual = "ItMi_SleeperKey_01.3DS";
	description = name;
	text[0] = "Этот меч принадлежал бессмертному высшему";
	text[1] = "священнику орков Граш-Варраг-Арушату.";
	text[2] = "Очевидно, что как оружие этот меч явно";
	text[3] = "бесполезен.";
	text[4] = "Возможно, его можно использовать для";
	text[5] = "других целей.";
};

instance Mythrilklinge(C_Item)
{
	name = "Странный меч";
	mainflag = ITEM_KAT_NONE;
	flags = ITEM_2HD_SWD | ITEM_MISSION;
	material = MAT_METAL;
	value = 900;
	damageTotal = 10;
	damagetype = DAM_EDGE;
	range = 160;
	cond_atr[2] = ATR_STRENGTH;
	cond_value[2] = 30;
	visual = "ItMw_2H_Sword_Sleeper_01.3DS";
	description = name;
	text[0] = "Меч восхитительного качества.";
	text[1] = "Клинок покрыт древними рунами.";
	text[2] = "Может быть, Ксардас и сможет их прочитать.";
	text[3] = "В любом случае до той поры мне не стоит";
	text[4] = "его использовать.";
};

instance Mythrilklinge01(C_Item)
{
	name = "УРИЗЕЛЬ";
	mainflag = ITEM_KAT_NF;
	flags = ITEM_2HD_SWD | ITEM_MISSION;
	material = MAT_METAL;
	value = 900;
	damageTotal = 90;
	damagetype = DAM_EDGE;
	range = 180;
	cond_atr[2] = ATR_STRENGTH;
	cond_value[2] = 30;
	visual = "ItMw_2H_Sword_Sleeper_01.3DS";
	description = name;
	text[0] = "Ксардас сказал, что меч носит имя УРИЗЕЛЬ и";
	text[1] = "он очень древний. Много лет назад он обладал";
	text[2] = "огромной силой, но магия ушла.";
	text[3] = NAME_Damage;
	count[3] = damageTotal;
	text[4] = NAME_Str_needed;
	count[4] = cond_value[2];
	text[5] = NAME_Value;
	count[5] = value;
};

instance Mythrilklinge02(C_Item)
{
	name = "УРИЗЕЛЬ";
	mainflag = ITEM_KAT_NF;
	flags = ITEM_2HD_SWD | ITEM_MISSION;
	material = MAT_METAL;
	value = 10000;
	damagetype = DAM_FIRE | DAM_MAGIC;
	damage[DAM_INDEX_FIRE] = 30;
	damage[DAM_INDEX_MAGIC] = 120;
	range = 180;
	cond_atr[2] = ATR_STRENGTH;
	cond_value[2] = 30;
	visual = "ItMw_2H_Sword_Sleeper_02.3DS";
	description = name;
	text[0] = "Это меч Уризель.";
	text[1] = "В нем заключена магическая сила.";
	text[2] = NAME_Dam_Magic;
	count[2] = damage[DAM_INDEX_MAGIC];
	text[3] = NAME_Dam_Fire;
	count[3] = damage[DAM_INDEX_FIRE];
	text[4] = NAME_Str_needed;
	count[4] = cond_value[2];
	text[5] = NAME_Value;
	count[5] = value;
};

instance Mythrilklinge03(C_Item)
{
	name = "УРИЗЕЛЬ";
	mainflag = ITEM_KAT_NF;
	flags = ITEM_2HD_SWD | ITEM_MISSION;
	material = MAT_METAL;
	value = 900;
	damageTotal = 90;
	damagetype = DAM_EDGE;
	range = 180;
	cond_atr[2] = ATR_STRENGTH;
	cond_value[2] = 30;
	visual = "ItMw_2H_Sword_Sleeper_01.3DS";
	description = name;
	text[0] = "Магический камень был удален из него. Это не";
	text[1] = "мешает Уризелю оставаться отличным оружием,";
	text[2] = "но магия его ушла.";
	text[3] = NAME_Damage;
	count[3] = damageTotal;
	text[4] = NAME_Str_needed;
	count[4] = cond_value[2];
	text[5] = NAME_Value;
	count[5] = value;
};

instance Scroll4Milten(C_Item)
{
	name = "Передача силы";
	mainflag = ITEM_KAT_DOCS;
	flags = ITEM_MISSION;
	value = 15;
	visual = "ItWrScroll.3DS";
	material = MAT_LEATHER;
	description = name;
	text[0] = "Заклинание для передачи";
	text[1] = "силы в Уризель.";
	text[2] = "Я не могу использовать его.";
};

instance ItKe_SunkenTower(C_Item)
{
	name = "Ключ";
	mainflag = ITEM_KAT_NONE;
	flags = ITEM_MISSION;
	value = 3;
	visual = "ItKe_Key_03.3ds";
	material = MAT_METAL;
	description = name;
	text[0] = "Открывает двери в затопленной";
	text[1] = "башне.";
};

instance DungeonKey(C_Item)
{
	name = "Ключ к подземелью";
	mainflag = ITEM_KAT_NONE;
	flags = ITEM_MISSION;
	value = 3;
	visual = "ItKe_Key_03.3ds";
	material = MAT_METAL;
	description = name;
	text[0] = "Открывает подземелья";
	text[0] = "в Старом Лагере.";
};

instance UrizielRune(C_Item)
{
	name = "Волна Смерти УРИЗЕЛЯ";
	mainflag = ITEM_KAT_RUNE;
	flags = ITEM_MISSION;
	value = 10000;
	visual = "ItAr_Rune_14.3ds";
	material = MAT_STONE;
	spell = SPL_MASSDEATH;
	mag_circle = 6;
	description = name;
	text[0] = "This powerful magic rune contains";
	text[1] = "the ancient powers of the sword URIZIEL.";
	text[2] = NAME_Mag_Circle;
	count[2] = mag_circle;
	text[3] = NAME_Manakosten;
	count[3] = SPL_SENDCAST_MASSDEATH;
	text[4] = NAME_Dam_Magic;
	count[4] = SPL_DAMAGE_MASSDEATH;
	text[5] = NAME_Value;
	count[5] = value;
};

