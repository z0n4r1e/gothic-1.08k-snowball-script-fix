
const int Value_Zдhne = 10;
const int Value_Krallen = 15;
const int Value_Wolfsfell = 10;
const int Value_Orkhundfell = 15;
const int Value_Panzerplatte = 50;
const int Value_Crawlerzangen = 10;
const int Value_Shadowbeastfell = 100;
const int Value_Lurkerklaue = 15;
const int Value_Lurkerhaut = 25;
const int Value_Sumpfhaihaut = 200;
const int Value_Trollfell = 300;
const int Value_Flьgel = 15;
const int Value_Stachel = 25;
const int Value_Feuerzunge = 500;
const int Value_Sumpfhaizдhne = 500;
const int Value_Shadowbeasthorn = 500;
const int Value_Trollhauer = 500;
const int Value_Steinherz = 1000;
const int Value_Feuerherz = 1000;
const int Value_Eisherz = 1000;
const int Value_Eistueck = 100;

instance ItAt_Teeth_01(C_Item)
{
	name = "Клыки";
	mainflag = ITEM_KAT_NONE;
	flags = ITEM_MULTI;
	value = Value_Zдhne;
	visual = "ItAt_Teeth_01.3DS";
	material = MAT_LEATHER;
	description = name;
	text[4] = NAME_Value;
	count[4] = Value_Zдhne;
};

instance ItAt_Wolf_01(C_Item)
{
	name = "Волчья Шкура";
	mainflag = ITEM_KAT_NONE;
	flags = ITEM_MULTI;
	value = Value_Wolfsfell;
	visual = "ItAt_Wolf_01.3DS";
	material = MAT_LEATHER;
	description = name;
	text[4] = NAME_Value;
	count[4] = Value_Wolfsfell;
};

instance ItAt_Wolf_02(C_Item)
{
	name = "Шкура Орочьей Гончей";
	mainflag = ITEM_KAT_NONE;
	flags = ITEM_MULTI;
	value = Value_Orkhundfell;
	visual = "ItAt_Wolf_02.3DS";
	material = MAT_LEATHER;
	description = name;
	text[4] = NAME_Value;
	count[4] = Value_Orkhundfell;
};

instance ItAt_Waran_01(C_Item)
{
	name = "Пламенный Язык";
	mainflag = ITEM_KAT_NONE;
	flags = ITEM_MULTI;
	value = Value_Feuerzunge;
	visual = "ItAt_Waran_01.3DS";
	material = MAT_LEATHER;
	description = name;
	text[4] = NAME_Value;
	count[4] = Value_Feuerzunge;
};

instance ItAt_Claws_01(C_Item)
{
	name = "Когти";
	mainflag = ITEM_KAT_NONE;
	flags = ITEM_MULTI;
	value = Value_Krallen;
	visual = "ItAt_Claws_01.3DS";
	material = MAT_LEATHER;
	description = name;
	text[4] = NAME_Value;
	count[4] = Value_Krallen;
};

instance ItAt_Crawler_02(C_Item)
{
	name = "Пластина Панциря";
	mainflag = ITEM_KAT_NONE;
	flags = ITEM_MULTI | ITEM_MISSION;
	value = Value_Panzerplatte;
	visual = "ItAt_Crawler_02.3DS";
	material = MAT_WOOD;
	description = "Пластина Панциря Рудникового Ползуна Воина";
	text[4] = NAME_Value;
	count[4] = Value_Panzerplatte;
};

instance ItAt_Crawler_01(C_Item)
{
	name = "Челюсти Ползуна";
	mainflag = ITEM_KAT_NONE;
	flags = ITEM_MULTI;
	value = Value_Crawlerzangen;
	visual = "ItAt_Crawler_01.3DS";
	material = MAT_LEATHER;
	description = name;
	text[4] = NAME_Value;
	count[4] = Value_Crawlerzangen;
};

instance ItAt_Shadow_01(C_Item)
{
	name = "Шкура";
	mainflag = ITEM_KAT_NONE;
	flags = ITEM_MULTI;
	value = Value_Shadowbeastfell;
	visual = "ItAt_Shadowbeast_01.3DS";
	material = MAT_LEATHER;
	description = "Шкура Мракориса";
	text[4] = NAME_Value;
	count[4] = Value_Shadowbeastfell;
};

instance ItAt_Shadow_02(C_Item)
{
	name = "Рог";
	mainflag = ITEM_KAT_NONE;
	flags = ITEM_MULTI;
	value = Value_Shadowbeasthorn;
	visual = "ItAt_Shadowbeast_02.3DS";
	material = MAT_LEATHER;
	description = "Рог Мракориса";
	text[4] = NAME_Value;
	count[4] = Value_Shadowbeasthorn;
};

instance ItAt_Lurker_01(C_Item)
{
	name = "Коготь шныги";
	mainflag = ITEM_KAT_NONE;
	flags = ITEM_MULTI;
	value = Value_Lurkerklaue;
	visual = "ItAt_Lurker_01.3DS";
	material = MAT_LEATHER;
	description = name;
	text[4] = NAME_Value;
	count[4] = Value_Lurkerklaue;
};

instance ItAt_Lurker_02(C_Item)
{
	name = "Кожа Шныги";
	mainflag = ITEM_KAT_NONE;
	flags = ITEM_MULTI;
	value = Value_Lurkerhaut;
	visual = "ItAt_Lurker_02.3DS";
	material = MAT_LEATHER;
	description = name;
	text[4] = NAME_Value;
	count[4] = Value_Lurkerhaut;
};

instance ItAt_Troll_02(C_Item)
{
	name = "Клык Тролля";
	mainflag = ITEM_KAT_NONE;
	flags = ITEM_MULTI;
	value = Value_Trollhauer;
	visual = "ItAt_Troll_02.3DS";
	material = MAT_LEATHER;
	description = name;
	text[4] = NAME_Value;
	count[4] = Value_Trollhauer;
};

instance ItAt_Troll_01(C_Item)
{
	name = "Шкура Тролля";
	mainflag = ITEM_KAT_NONE;
	flags = ITEM_MULTI;
	value = Value_Trollfell;
	visual = "ItAt_Troll_01.3DS";
	material = MAT_LEATHER;
	description = name;
	text[4] = NAME_Value;
	count[4] = Value_Trollfell;
};

instance ItAt_Swampshark_01(C_Item)
{
	name = "Кожа Болотожора";
	mainflag = ITEM_KAT_NONE;
	flags = ITEM_MULTI;
	value = Value_Sumpfhaihaut;
	visual = "ItAt_Swampshark_01.3DS";
	material = MAT_LEATHER;
	description = name;
	text[4] = NAME_Value;
	count[4] = Value_Sumpfhaihaut;
};

instance ItAt_Swampshark_02(C_Item)
{
	name = "Зубы Болотожора";
	mainflag = ITEM_KAT_NONE;
	flags = ITEM_MULTI;
	value = Value_Sumpfhaizдhne;
	visual = "ItAt_Swampshark_02.3DS";
	material = MAT_LEATHER;
	description = name;
	text[4] = NAME_Value;
	count[4] = Value_Sumpfhaizдhne;
};

instance ItAt_Bloodfly_01(C_Item)
{
	name = "Крылья";
	mainflag = ITEM_KAT_NONE;
	flags = ITEM_MULTI;
	value = Value_Flьgel;
	visual = "ItAt_Bloodfly_01.3DS";
	material = MAT_LEATHER;
	description = name;
	text[4] = NAME_Value;
	count[4] = Value_Flьgel;
};

instance ItAt_Bloodfly_02(C_Item)
{
	name = "Жало Шершня";
	mainflag = ITEM_KAT_NONE;
	flags = ITEM_MULTI;
	value = Value_Stachel;
	visual = "ItAt_Bloodfly_02.3DS";
	material = MAT_LEATHER;
	description = name;
	text[4] = NAME_Value;
	count[4] = Value_Stachel;
};

instance ItAt_StoneGolem_01(C_Item)
{
	name = "Сердце Каменного Голема";
	mainflag = ITEM_KAT_RUNE;
	flags = ITEM_MISSION;
	spell = SPL_WINDFIST;
	value = Value_Steinherz;
	visual = "ItAt_StoneGolem_01.3DS";
	material = MAT_STONE;
	description = name;
	text[0] = "Это Сердце взято из останков";
	text[1] = "побеждённого Каменного Голема.";
	text[2] = "Оно обладает Способностью";
	text[3] = "подбросить Противника в Воздух.";
	text[5] = NAME_Value;
	count[5] = Value_Steinherz;
};

instance ItAt_FireGolem_01(C_Item)
{
	name = "Сердце Огненного Голема";
	mainflag = ITEM_KAT_RUNE;
	flags = ITEM_MISSION;
	spell = SPL_FIREBALL;
	value = Value_Feuerherz;
	visual = "ItAt_FireGolem_01.3DS";
	material = MAT_STONE;
	description = name;
	text[0] = "Это Сердце взято из останков";
	text[1] = "побеждённого Огненного Голема.";
	text[2] = "Оно обладает Способностью";
	text[3] = "поджечь Противника Пламенем.";
	text[5] = NAME_Value;
	count[5] = Value_Feuerherz;
};

instance ItAt_IceGolem_01(C_Item)
{
	name = "Сердце Ледяного Голема";
	mainflag = ITEM_KAT_RUNE;
	flags = ITEM_MISSION;
	spell = SPL_ICECUBE;
	value = Value_Eisherz;
	visual = "ItAt_IceGolem_01.3DS";
	material = MAT_STONE;
	description = name;
	text[0] = "Это Сердце взято из останков";
	text[1] = "побеждённого Ледяного Голема.";
	text[2] = "Оно обладает Способностью";
	text[3] = "заморозить Противника во Льду.";
	text[5] = NAME_Value;
	count[5] = Value_Eisherz;
};

instance ItAt_IceGolem_02(C_Item)
{
	name = "Частица Ледяного Голема";
	mainflag = ITEM_KAT_RUNE;
	flags = 0;
	spell = SPL_THUNDERBOLT;
	value = Value_Eistueck;
	cond_atr[2] = ATR_MANA_MAX;
	cond_value[2] = 500;
	visual = "ItAt_IceGolem_01.3DS";
	material = MAT_STONE;
	description = name;
	text[0] = "Эта Частица взята из останков";
	text[1] = "побеждённого Ледяного Голема.";
	text[4] = NAME_Value;
	count[4] = Value_Eistueck;
};

