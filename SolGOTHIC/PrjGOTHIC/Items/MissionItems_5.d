
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
	description = "Набросок Храма";
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
	text[0] = "Эта Фигурка представляет собой некое";
	text[1] = "уродливое Существо, которое носит Маску.";
	text[2] = "Эта Маска опоясана шестью большими Шипами.";
};

instance Weltenspalter(C_Item)
{
	name = "Раскалывающий Миры";
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
	text[0] = "Этот Меч принадлежал живому мертвецу";
	text[1] = "Орку Жрецу Варраг Хашору.";
	text[2] = "Это Оружие под Действием Времени";
	text[3] = "пришло в негодность!";
	text[4] = "Возможно этот Меч все еще может быть";
	text[5] = "использован другим Образом и Способом.";
};

instance Lichtbringer(C_Item)
{
	name = "Несущий Свет";
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
	text[0] = "Этот Меч принадлежал живому мертвецу";
	text[1] = "Орку Жрецу Варраг Касоргу.";
	text[2] = "Это Оружие под Действием Времени";
	text[3] = "пришло в негодность!";
	text[4] = "Возможно этот Меч все еще может быть";
	text[5] = "использован другим Образом и Способом.";
};

instance Zeitenklinge(C_Item)
{
	name = "Клинок Времени";
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
	text[0] = "Этот Меч принадлежал живому мертвецу";
	text[1] = "Орку Жрецу Варраг Унхилькту.";
	text[2] = "Это Оружие под Действием Времени";
	text[3] = "пришло в негодность!";
	text[4] = "Возможно этот Меч все еще может быть";
	text[5] = "использован другим Образом и Способом.";
};

instance Daemonenstreich(C_Item)
{
	name = "Шалость Демона";
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
	text[0] = "Этот Меч принадлежал живому мертвецу";
	text[1] = "Орку Жрецу Варраг Руушку.";
	text[2] = "Это Оружие под Действием Времени";
	text[3] = "пришло в негодность!";
	text[4] = "Возможно этот Меч все еще может быть";
	text[5] = "использован другим Образом и Способом.";
};

instance Bannklinge(C_Item)
{
	name = "Клинок Изгнания";
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
	text[0] = "Этот Меч принадлежал живому мертвецу";
	text[1] = "Орку Жрецу Граш Варраг Арушату.";
	text[2] = "Это Оружие под Действием Времени";
	text[3] = "пришло в негодность!";
	text[4] = "Возможно этот Меч все еще может быть";
	text[5] = "использован другим Образом и Способом.";
};

instance Mythrilklinge(C_Item)
{
	name = "Странный Меч";
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
	text[1] = "Древние Руны были высечены на Клинке.";
	text[2] = "Возможно Ксардас сможет разгадать эти Руны.";
	text[3] = "Пока он не определит, что это за Меч,";
	text[4] = "лучше мне его отложить.";
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
	text[0] = "Ксардас сказал, что Меч называется УРИЗЕЛЬ и";
	text[1] = "должен быть древний. В далеком прошлом он";
	text[2] = "обладал огромной Силой, но потерял свою Магию.";
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
	text[0] = "Это Меч Уризель.";
	text[1] = "Уризель магически заряжен.";
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
	text[0] = "Магический Драгоценный камень был извлечен";
	text[1] = "из Клинка. Это все еще превосходное Оружие,";
	text[2] = "но оно потеряло свою Силу.";
	text[3] = NAME_Damage;
	count[3] = damageTotal;
	text[4] = NAME_Str_needed;
	count[4] = cond_value[2];
	text[5] = NAME_Value;
	count[5] = value;
};

instance Scroll4Milten(C_Item)
{
	name = "Передача Силы";
	mainflag = ITEM_KAT_DOCS;
	flags = ITEM_MISSION;
	value = 15;
	visual = "ItWrScroll.3DS";
	material = MAT_LEATHER;
	description = name;
	text[0] = "Заклинание для передачи";
	text[1] = "магической Силы Уризелю.";
	text[2] = "Не может быть использовано мной.";
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
	text[0] = "Открывает Двери в";
	text[1] = "затопленной Башне.";
};

instance DungeonKey(C_Item)
{
	name = "Ключ от Подземелья";
	mainflag = ITEM_KAT_NONE;
	flags = ITEM_MISSION;
	value = 3;
	visual = "ItKe_Key_03.3ds";
	material = MAT_METAL;
	description = name;
	text[0] = "Открывает Темницу";
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
	text[0] = "Эта могущественная Руна Заклинания";
	text[1] = "таит в себе древнюю Силу Меча УРИЗЕЛЬ.";
	text[2] = NAME_Mag_Circle;
	count[2] = mag_circle;
	text[3] = NAME_Manakosten;
	count[3] = SPL_SENDCAST_MASSDEATH;
	text[4] = NAME_Dam_Magic;
	count[4] = SPL_DAMAGE_MASSDEATH;
	text[5] = NAME_Value;
	count[5] = value;
};

