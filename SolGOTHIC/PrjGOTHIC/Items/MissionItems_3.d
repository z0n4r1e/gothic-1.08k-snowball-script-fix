
instance OrkParchmentOne(C_Item)
{
	name = "Половина Пергамента";
	mainflag = ITEM_KAT_DOCS;
	flags = ITEM_MISSION;
	hp = 5;
	hp_max = 5;
	weight = 1;
	value = 3;
	visual = "ItWr_Scroll_02.3ds";
	material = MAT_LEATHER;
	scemeName = "MAP";
	description = name;
	text[0] = "Часть древнего Пергамента, нижний";
	text[1] = "край которой, кажется был оторван.";
	text[2] = "Эти Письмена очень напоминают Руны";
	text[3] = "на Стенах этой Пещеры.";
};

instance OrkParchmentTwo(C_Item)
{
	name = "Половина Пергамента";
	mainflag = ITEM_KAT_DOCS;
	flags = ITEM_MISSION;
	hp = 5;
	hp_max = 5;
	weight = 1;
	value = 3;
	visual = "ItWr_Scroll_02.3ds";
	material = MAT_LEATHER;
	scemeName = "MAP";
	description = name;
	text[0] = "Часть древнего Пергамента, верхний";
	text[1] = "край которой, кажется был оторван.";
	text[2] = "Эти Письмена очень напоминают Руны";
	text[3] = "на Стенах этой Пещеры.";
};

instance ITKE_PSI_KALOM_01(C_Item)
{
	name = "Ключ";
	mainflag = ITEM_KAT_NONE;
	flags = 0;
	value = 0;
	visual = "ItKe_Key_04.3ds";
	material = MAT_METAL;
	description = "Ключ от Лаборатории";
	text[0] = "Открывает Сундук в Алхимической Лаборатории";
	text[1] = "в Болотном Лагере.";
	text[5] = NAME_Value;
	count[5] = value;
};

instance ItWrFocimap(C_Item)
{
	name = "Карта Юниторов Сатураса";
	mainflag = ITEM_KAT_DOCS;
	flags = ITEM_MISSION;
	value = 15;
	visual = "ItWr_Map_01.3DS";
	material = MAT_LEATHER;
	scemeName = "MAP";
	on_state[0] = UseFocimap;
	description = name;
	text[0] = "Вершины Пентаграммы указывают Места";
	text[1] = "расположения всех пяти Камней Юниторов,";
	text[2] = "которые использовались при Создании";
	text[3] = "магического Барьера. Карта древняя,";
	text[4] = "и Камни теперь могут находится";
	text[5] = "совсем в иных Местах.";
};


func void UseFocimap()
{
	var int nDocID;
	nDocID = Doc_CreateMap();
	Doc_SetLevel(nDocID,"WORLD.ZEN");
	Doc_SetPages(nDocID,1);
	Doc_SetPage(nDocID,0,"Map_World_Foki.tga",1);
	Doc_Show(nDocID);
};


instance ItWr_Troll_01(C_Item)
{
	name = "Страница Дневника";
	mainflag = ITEM_KAT_DOCS;
	flags = ITEM_MISSION;
	value = 0;
	visual = "ItWr_Scroll_01.3DS";
	material = MAT_LEATHER;
	scemeName = "MAP";
	on_state[0] = UseTroll;
	description = name;
	text[1] = "Страница очень Ветхая, Символы на ней";
	text[2] = "едва ли можно разобрать. Судя по";
	text[3] = "всему, предыдущий ее Владелец";
	text[4] = "был Охотником на Троллей.";
};


func void UseTroll()
{
	var int nDocID;
	nDocID = Doc_Create();
	Doc_SetPages(nDocID,1);
	Doc_SetPage(nDocID,0,"letters.TGA",0);
	Doc_SetMargins(nDocID,-1,50,50,50,50,1);
	Doc_SetFont(nDocID,-1,"font_15_book.tga");
	Doc_PrintLine(nDocID,0,"День 169");
	Doc_SetFont(nDocID,-1,"font_10_book.tga");
	Doc_PrintLine(nDocID,0,"");
	Doc_PrintLine(nDocID,0,"");
	Doc_PrintLines(nDocID,0,"Сегодня я сделаю это. Я это знаю. Я перепробовал все средства. Боги со мной. Я испробовал все, чтобы убить Тролля. Даже самая прочная Сталь не оказала Воздействия, а Стрелы отскакивали от него, словно его Кожа была сделана из Камня. ");
	Doc_PrintLine(nDocID,0,"");
	Doc_PrintLines(nDocID,0,"Теперь я воспользуюсь этим магическим Свитком Заклинания, который мне продал Торговец из Хориниса. Он обошелся мне в 50 Золотых монет, но Прибыль, которую я получу за Трофеи, сделает меня богатым");
	Doc_PrintLine(nDocID,0,"");
	Doc_PrintLines(nDocID,0,"Сегодня я убью Тролля.");
	Doc_Show(nDocID);
};


instance Focus_2(C_Item)
{
	name = "Юнитор из Лощины Тролля";
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

instance ItKe_BERG_01(C_Item)
{
	name = "Ключ от Сундука";
	mainflag = ITEM_KAT_NONE;
	flags = 0;
	value = 0;
	visual = "ItKe_Key_01.3ds";
	material = MAT_METAL;
	description = name;
	text[0] = "Старая Горная Крепость.";
	text[1] = "Старый и ржавый Ключ";
	text[2] = "от Сундука.";
	text[5] = NAME_Value;
	count[5] = value;
};

instance ItWr_Urkunde_01(C_Item)
{
	name = "Свидетельство";
	mainflag = ITEM_KAT_DOCS;
	flags = 0;
	value = 15;
	visual = "ItWr_Scroll_01.3DS";
	material = MAT_LEATHER;
	scemeName = "MAP";
	on_state[0] = UseUrkunde;
	description = "Свидетельство об Имуществе";
	text[0] = "Основание, которое подтверждает";
	text[1] = "право на Владение Территорией";
	text[2] = "Горной Крепости.";
	text[5] = "Стоимость                               400 Фунтов Золота";
};


func void UseUrkunde()
{
	var int nDocID;
	nDocID = Doc_Create();
	Doc_SetPages(nDocID,1);
	Doc_SetPage(nDocID,0,"letters.TGA",0);
	Doc_SetMargins(nDocID,-1,50,50,50,50,1);
	Doc_SetFont(nDocID,-1,"font_15_book.tga");
	Doc_PrintLine(nDocID,0,"Свидетельство");
	Doc_SetFont(nDocID,-1,"font_10_book.tga");
	Doc_PrintLine(nDocID,0,"");
	Doc_PrintLine(nDocID,0,"");
	Doc_PrintLines(nDocID,0,"Я, Бергмар, Граф Замка Западных Полей и мой Господин Землевладелец Тимориза относительно Поместья что располагается на территории за Землями Хориниса, … довожу до вашего сведения … что я … Владелец сего Свидетельства … и этого дома Инноса на этой Земле в этой Гоной Крепости (включая дополнительную Десятину и все расположенные там Шахты) продал и покинул владения за 400 Фунтов Золота.");
	Doc_Show(nDocID);
};


instance Fakescroll(C_Item)
{
	name = "Письмо";
	mainflag = ITEM_KAT_DOCS;
	flags = ITEM_MISSION;
	hp = 5;
	hp_max = 5;
	weight = 1;
	value = 0;
	visual = "ItWr_Scroll_01.3ds";
	material = MAT_LEATHER;
	scemeName = "MAPSEALED";
	description = name;
	text[5] = NAME_Value;
	count[5] = value;
};

instance Focus_3(C_Item)
{
	name = "Юнитор из Горной Крепости";
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

instance ItKe_Focus4(C_Item)
{
	name = "Ключ";
	mainflag = ITEM_KAT_NONE;
	flags = ITEM_MISSION;
	value = 3;
	visual = "ItKe_Key_01.3ds";
	material = MAT_METAL;
	description = name;
	text[1] = "Это Ключ из Пещеры, расположенной";
	text[2] = "перед Руинами Монастыря.";
};

instance Focus_4(C_Item)
{
	name = "Юнитор из Руин Монастыря";
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

instance ItMi_OrcTalisman(C_Item)
{
	name = "Орочий Талисман";
	mainflag = ITEM_KAT_MAGIC;
	flags = ITEM_AMULET | ITEM_MISSION;
	value = 1000;
	visual = "ItMi_Amulet_UluMulu_01.3ds";
	visual_skin = 0;
	material = MAT_METAL;
	on_equip = Equip_OrcTalisman;
	on_unequip = UnEquip_OrcTalisman;
	description = name;
	text[2] = NAME_Prot_Fire;
	count[2] = 20;
	text[5] = NAME_Value;
	count[5] = value;
};


func void Equip_OrcTalisman()
{
	self.protection[PROT_FIRE] += 20;
};

func void UnEquip_OrcTalisman()
{
	self.protection[PROT_FIRE] -= 20;
};


instance ItKe_Focus5(C_Item)
{
	name = "Ключ";
	mainflag = ITEM_KAT_NONE;
	flags = ITEM_MISSION;
	value = 3;
	visual = "ItKe_Key_02.3ds";
	material = MAT_METAL;
	description = name;
	text[1] = "Это Ключ из Склепа";
	text[2] = "под Кольцом Камней.";
};

instance Focus_5(C_Item)
{
	name = "Юнитор у Кольца Камней";
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

