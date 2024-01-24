
instance ItWrFocusmapPsi(C_Item)
{
	name = "Карта Ю'Бериона к Юнитору";
	mainflag = ITEM_KAT_DOCS;
	flags = ITEM_MISSION;
	value = 15;
	visual = "ItWr_Map_01.3ds";
	material = MAT_LEATHER;
	scemeName = "MAP";
	on_state[0] = UseFocusmapPsi;
	description = name;
	text[1] = "На этой Карте указан Путь к Юнитору, ";
	text[2] = "который нужен Ю'Бериону для Вызова";
	text[3] = "Спящего.";
};


func void UseFocusmapPsi()
{
	var int nDocID;
	nDocID = Doc_CreateMap();
	Doc_SetLevel(nDocID,"WORLD.ZEN");
	Doc_SetPages(nDocID,1);
	Doc_SetPage(nDocID,0,"Map_World_FocusPSI.tga",1);
	Doc_Show(nDocID);
};


instance Focus_1(C_Item)
{
	name = "Юнитор со Скалы у Моря";
	mainflag = ITEM_KAT_NONE;
	flags = ITEM_MISSION;
	hp = 1;
	hp_max = 1;
	weight = 1;
	value = 1;
	visual = "ItMi_Focus_01.3ds";
	material = MAT_STONE;
	description = name;
	text[1] = "Один из пяти Юниторов, использовавшихся";
	text[2] = "для Создания магического Барьера.";
};

instance ItMi_Stuff_Gearwheel_01(C_Item)
{
	name = "Шестерня";
	mainflag = ITEM_KAT_NONE;
	flags = ITEM_MISSION;
	value = 0;
	visual = "ItMi_Stuff_Gearwheel_01.3ds";
	material = MAT_METAL;
	description = name;
	text[0] = "Это шестерня от сломанной  Рудной Дробилки,";
	text[1] = "находящейся в заброшенном Боковом Туннеле";
	text[2] = "Старой Шахты.";
};

instance ItAt_Crawlerqueen(C_Item)
{
	name = "Яйцо Ползуна";
	mainflag = ITEM_KAT_NONE;
	flags = ITEM_MISSION | ITEM_MULTI;
	value = 100;
	visual = "ItAt_Crawlerqueen.3ds";
	material = MAT_LEATHER;
	description = name;
	text[0] = "Такие Яйца откладывает";
	text[1] = "Королева Ползунов.";
	text[2] = "В них содержится более сильное Вещество,";
	text[3] = "чем в Челюстях обычных Ползунов.";
	text[5] = NAME_Value;
	count[5] = value;
};

instance ItWrFokusbuch(C_Item)
{
	name = "Альманах";
	mainflag = ITEM_KAT_DOCS;
	flags = ITEM_MISSION;
	value = 0;
	visual = "ItWr_Book_02_03.3ds";
	material = MAT_LEATHER;
	scemeName = "MAP";
	on_state[0] = UseItWrFokusbuch;
	description = name;
	text[0] = "Эта древняя Книга Заклинаний содержит Перечень";
	text[1] = "магических Формул, связанных с Использованием";
	text[2] = "так называемых Камней Юниторов.";
};


func void UseItWrFokusbuch()
{
	var int nDocID;
	if((Wissen_Almanach == FALSE) && Npc_IsPlayer(self))
	{
		B_GiveXP(50);
		Wissen_Almanach = 1;
	};
	nDocID = Doc_Create();
	Doc_SetPages(nDocID,2);
	Doc_SetPage(nDocID,0,"Book_Mage_L.tga",0);
	Doc_SetPage(nDocID,1,"Book_Mage_R.tga",0);
	Doc_SetFont(nDocID,-1,"font_15_book.tga");
	Doc_SetMargins(nDocID,0,275,20,30,20,1);
	Doc_PrintLine(nDocID,0,"Глава 23");
	Doc_PrintLine(nDocID,0,"");
	Doc_SetFont(nDocID,-1,"font_10_book.TGA");
	Doc_PrintLine(nDocID,0,"Сила Концентрации");
	Doc_PrintLine(nDocID,0,"");
	Doc_PrintLines(nDocID,0,"Покоящаяся Внутри Камня и постоянно растущая Сила, может быть освобождена Словами Мага. Постепенно или единым Всплеском, все зависит от его Желания.");
	Doc_PrintLine(nDocID,0,"");
	Doc_PrintLines(nDocID,0,"Однако в это же время Юнитор лишается Силы, теперь это пустая Оболочка.");
	Doc_SetMargins(nDocID,-1,30,20,275,20,1);
	Doc_PrintLine(nDocID,1,"");
	Doc_PrintLines(nDocID,1,"Слова Cилы, позволяющие высвободить Энергию, содержащуюся в Юниторе, доступны многим Умельцам тайной Силы. Наполнение нового Артефакта Энергией стало скорее магическим Обычаем, чем Тайной Мудрецов.");
	Doc_PrintLine(nDocID,1,"");
	Doc_PrintLines(nDocID,1,"Но только Избранные способны понять, как перезарядить уже использованный Юнитор. Эта Формула еще со древних Дней служит Знаком высшего Дара.");
	Doc_PrintLine(nDocID,1,"");
	Doc_PrintLines(nDocID,1,"Так открой же Мудрец свой Разум перед Словами Древней Силы.");
	Doc_Show(nDocID);
};

