
instance ItWr_Book_Circle_01(C_Item)
{
	name = "Первый Круг";
	mainflag = ITEM_KAT_DOCS;
	flags = 0;
	value = 50;
	visual = "ItWr_Book_02_03.3ds";
	material = MAT_LEATHER;
	scemeName = "MAP";
	description = "Первый Круг Магии";
	text[5] = NAME_Value;
	count[5] = value;
	on_state[0] = UseItWr_Book_Circle_01;
};


func void UseItWr_Book_Circle_01()
{
	var int nDocID;
	var string text;
	var string Text_1;
	var string Text_2;
	text = ConcatStrings(NAME_Manakosten,IntToString(SPL_SENDCAST_LIGHT));
	Text_1 = ConcatStrings(NAME_Manakosten,IntToString(SPL_SENDCAST_THUNDERBOLT));
	Text_2 = ConcatStrings(NAME_Manakosten,IntToString(SPL_SENDCAST_FIREBOLT));
	nDocID = Doc_Create();
	Doc_SetPages(nDocID,2);
	Doc_SetPage(nDocID,0,"Book_Mage_L.tga",0);
	Doc_SetPage(nDocID,1,"Book_Mage_R.tga",0);
	Doc_SetFont(nDocID,-1,"font_15_book.tga");
	Doc_SetMargins(nDocID,0,275,20,30,20,1);
	Doc_PrintLine(nDocID,0,"Первый Круг");
	Doc_PrintLine(nDocID,0,"---------------");
	Doc_SetFont(nDocID,-1,"font_10_book.TGA");
	Doc_PrintLine(nDocID,0,"");
	Doc_PrintLines(nDocID,0,"Когда Боги даровали Людям способность творить Магию, они также даровали им Знание создания магических Рун. Слуги Богов взяли на себя почетную Обязанность по созданию и использованию этих Артефактов божественной Силыи, а Круг Магии определяет, какие Заклинания он способен понимать и использовать");
	Doc_SetMargins(nDocID,-1,30,20,275,20,1);
	Doc_PrintLine(nDocID,1,"");
	Doc_PrintLine(nDocID,1,"Свет");
	Doc_PrintLine(nDocID,1,"---------------");
	Doc_PrintLines(nDocID,1,"Первый дар Инноса человечеству. Над Магом образуется ярко сияющий Шар.");
	Doc_PrintLine(nDocID,1,text);
	Doc_PrintLine(nDocID,1,"");
	Doc_PrintLine(nDocID,1,"Ледяная Стрела");
	Doc_PrintLine(nDocID,1,"---------------");
	Doc_PrintLines(nDocID,1,"Заряд из магической Энергии.");
	Doc_PrintLine(nDocID,1,Text_1);
	Doc_PrintLine(nDocID,1,"");
	Doc_PrintLine(nDocID,1,"Огненная Стрела");
	Doc_PrintLine(nDocID,1,"---------------");
	Doc_PrintLines(nDocID,1,"Заряд из магического Огня.");
	Doc_PrintLine(nDocID,1,Text_2);
	Doc_Show(nDocID);
};


instance ItWr_Book_Circle_02(C_Item)
{
	name = "Второй Круг";
	mainflag = ITEM_KAT_DOCS;
	flags = 0;
	value = 100;
	visual = "ItWr_Book_02_03.3ds";
	material = MAT_LEATHER;
	scemeName = "MAP";
	description = "Второй Круг Магии";
	text[5] = NAME_Value;
	count[5] = value;
	on_state[0] = UseItWr_Book_Circle_02;
};


func void UseItWr_Book_Circle_02()
{
	var int nDocID;
	var string Text_1;
	Text_1 = ConcatStrings(NAME_Manakosten,IntToString(SPL_HEALING_HP_PER_MP));
	nDocID = Doc_Create();
	Doc_SetPages(nDocID,2);
	Doc_SetPage(nDocID,0,"Book_Mage_L.tga",0);
	Doc_SetPage(nDocID,1,"Book_Mage_R.tga",0);
	Doc_SetFont(nDocID,-1,"font_15_book.tga");
	Doc_SetMargins(nDocID,0,275,20,30,20,1);
	Doc_PrintLine(nDocID,0,"Второй Круг");
	Doc_PrintLine(nDocID,0,"---------------");
	Doc_SetFont(nDocID,-1,"font_10_book.TGA");
	Doc_PrintLine(nDocID,0,"");
	Doc_PrintLine(nDocID,0,"");
	Doc_PrintLines(nDocID,0,"Все Заклинания активируются магической Энергией использующего. Такого Практикующего называют Магом.");
	Doc_PrintLine(nDocID,0,"");
	Doc_PrintLine(nDocID,0,"");
	Doc_PrintLines(nDocID,0,"Каждая Активация Заклинания отнимает у Мага часть его Силы. Эта Сила называется Маной");
	Doc_PrintLine(nDocID,0,"");
	Doc_PrintLine(nDocID,0,"");
	Doc_SetMargins(nDocID,-1,30,20,275,20,1);
	Doc_PrintLine(nDocID,1,"");
	Doc_PrintLine(nDocID,1,"Исцеление");
	Doc_PrintLine(nDocID,1,"---------------");
	Doc_PrintLines(nDocID,1,"Увидел Аданос, что Люди гибнут и что это так по Воле Бельджара. И сказал он тогда: я не стану противиться Воле Бельджара, но дарую людям Силу Исцеления.");
	Doc_PrintLine(nDocID,1,"");
	Doc_PrintLine(nDocID,1,"");
	Doc_PrintLines(nDocID,1,"Это Заклинание обладает Силой исцелять Мага.");
	Doc_PrintLine(nDocID,1,"Поглощающее Заклинание");
	Doc_PrintLine(nDocID,1,Text_1);
	Doc_PrintLine(nDocID,1,"");
	Doc_PrintLine(nDocID,1,"");
	Doc_Show(nDocID);
};


instance ItWr_Book_Circle_03(C_Item)
{
	name = "Третий Круг";
	mainflag = ITEM_KAT_DOCS;
	flags = 0;
	value = 150;
	visual = "ItWr_Book_02_03.3ds";
	material = MAT_LEATHER;
	scemeName = "MAP";
	description = "Третий Круг Магии";
	text[5] = NAME_Value;
	count[5] = value;
	on_state[0] = UseItWr_Book_Circle_03;
};


func void UseItWr_Book_Circle_03()
{
	var int nDocID;
	var string text;
	var string Text_1;
	var string Text_2;
	text = ConcatStrings(NAME_Manakosten,IntToString(SPL_SENDCAST_FIREBALL));
	Text_1 = ConcatStrings(NAME_Manakosten,IntToString(SPL_SENDCAST_ICECUBE));
	Text_2 = ConcatStrings(NAME_Manakosten,IntToString(SPL_SENDCAST_THUNDERBALL));
	nDocID = Doc_Create();
	Doc_SetPages(nDocID,2);
	Doc_SetPage(nDocID,0,"Book_Mage_L.tga",0);
	Doc_SetPage(nDocID,1,"Book_Mage_R.tga",0);
	Doc_SetFont(nDocID,-1,"font_15_book.tga");
	Doc_SetMargins(nDocID,0,275,20,30,20,1);
	Doc_PrintLine(nDocID,0,"Третий Круг");
	Doc_PrintLine(nDocID,0,"---------------");
	Doc_SetFont(nDocID,-1,"font_10_book.TGA");
	Doc_PrintLine(nDocID,0,"");
	Doc_PrintLine(nDocID,0,"");
	Doc_PrintLines(nDocID,0,"Некоторые Заклинания могут быть Подпитаны определенным большим количеством магической Энергии. Такие заклинания называются Перезарядными Заклинаниями.");
	Doc_PrintLine(nDocID,0,"");
	Doc_PrintLines(nDocID,0,"Другие Заклинания продолжают действовать до тех пор, пока Маг позволяет им черпать свою Ману. Такие заклинания называтся Поглощающими Заклинаниями.");
	Doc_SetMargins(nDocID,-1,30,20,275,20,1);
	Doc_PrintLine(nDocID,1,"");
	Doc_PrintLine(nDocID,1,"Огненный Шар");
	Doc_PrintLine(nDocID,1,"---------------");
	Doc_PrintLines(nDocID,1,"Второй дар Инноса Детям Огня. Огненный Шар испепеляет свою Жертву.");
	Doc_PrintLine(nDocID,1,"Перезарядное Заклинание");
	Doc_PrintLine(nDocID,1,text);
	Doc_PrintLine(nDocID,1,"");
	Doc_PrintLine(nDocID,1,"Ледяная Глыба");
	Doc_PrintLine(nDocID,1,"---------------");
	Doc_PrintLines(nDocID,1,"Жертва заключается в Глыбу Льда. Заклинание из Храма Магов Воды.");
	Doc_PrintLine(nDocID,1,"");
	Doc_PrintLine(nDocID,1,Text_1);
	Doc_PrintLine(nDocID,1,"");
	Doc_PrintLine(nDocID,1,"Шаровая Молния");
	Doc_PrintLine(nDocID,1,"---------------");
	Doc_PrintLines(nDocID,1,"Шар, созданный из магической Энергии.");
	Doc_PrintLine(nDocID,1,Text_2);
	Doc_Show(nDocID);
};


instance ItWr_Book_Circle_04(C_Item)
{
	name = "Четвертый Круг";
	mainflag = ITEM_KAT_DOCS;
	flags = 0;
	value = 200;
	visual = "ItWr_Book_02_03.3ds";
	material = MAT_LEATHER;
	scemeName = "MAP";
	description = "Четвертый Круг Магии";
	text[5] = NAME_Value;
	count[5] = value;
	on_state[0] = UseItWr_Book_Circle_04;
};


func void UseItWr_Book_Circle_04()
{
	var int nDocID;
	var string text;
	var string Text_1;
	var string Text_2;
	text = ConcatStrings(NAME_Manakosten,IntToString(SPL_SENDCAST_FIRESTORM));
	Text_1 = ConcatStrings(NAME_Manakosten,IntToString(SPL_ZAPPED_DAMAGE_PER_SEC));
	Text_2 = ConcatStrings(NAME_Manakosten,IntToString(SPL_SENDCAST_DESTROYUNDEAD));
	nDocID = Doc_Create();
	Doc_SetPages(nDocID,2);
	Doc_SetPage(nDocID,0,"Book_Mage_L.tga",0);
	Doc_SetPage(nDocID,1,"Book_Mage_R.tga",0);
	Doc_SetFont(nDocID,-1,"font_15_book.tga");
	Doc_SetMargins(nDocID,0,275,20,30,20,1);
	Doc_PrintLine(nDocID,0,"Четвертый Круг");
	Doc_PrintLine(nDocID,0,"---------------");
	Doc_SetFont(nDocID,-1,"font_10_book.TGA");
	Doc_PrintLine(nDocID,0,"");
	Doc_PrintLine(nDocID,0,"Магия");
	Doc_PrintLine(nDocID,0,"Телепортации");
	Doc_PrintLine(nDocID,0,"---------------");
	Doc_PrintLine(nDocID,0,"");
	Doc_PrintLine(nDocID,0,"");
	Doc_PrintLines(nDocID,0,"Особенностью этих магических Формул является то, что хотя они также заключены в Рунах, использовать их может кто угодно, обладающий магической Энергией. Магия, окружающая эти Формулы, может быть активирована мгновенно. Никаких ограничений для Заклинаний Телепортации нет.");
	Doc_SetMargins(nDocID,-1,30,20,275,20,1);
	Doc_PrintLine(nDocID,1,"Огненный Шторм");
	Doc_PrintLine(nDocID,1,"---------------");
	Doc_PrintLines(nDocID,1,"Это заклинание подобно Огненному Шару, но, попав в одного Противника, может перекинуться и на других Противников.");
	Doc_PrintLine(nDocID,1,"Заклинание заряда");
	Doc_PrintLine(nDocID,1,"");
	Doc_PrintLine(nDocID,1,text);
	Doc_PrintLine(nDocID,1,"Молния");
	Doc_PrintLine(nDocID,1,"---------------");
	Doc_PrintLines(nDocID,1,"Заклинание действует на несколько Жертв. СилуМолнии сложно контролировать, поэтому Жертвой может стать сам Маг.");
	Doc_PrintLine(nDocID,1,Text_1);
	Doc_PrintLine(nDocID,1,"");
	Doc_PrintLine(nDocID,1,"Уничтожение Нежити");
	Doc_PrintLine(nDocID,1,"---------------");
	Doc_PrintLines(nDocID,1,"Этим Заклинанием изгоняются Порождения Тьмы.");
	Doc_PrintLine(nDocID,1,Text_2);
	Doc_Show(nDocID);
};


instance ItWr_Book_Circle_05(C_Item)
{
	name = "Пятый Круг";
	mainflag = ITEM_KAT_DOCS;
	flags = 0;
	value = 250;
	visual = "ItWr_Book_02_03.3ds";
	material = MAT_LEATHER;
	scemeName = "MAP";
	description = "Пятый Круг Магии";
	text[5] = NAME_Value;
	count[5] = value;
	on_state[0] = UseItWr_Book_Circle_05;
};


func void UseItWr_Book_Circle_05()
{
	var int nDocID;
	var string Text_1;
	var string Text_2;
	Text_1 = ConcatStrings(NAME_Manakosten,IntToString(SPL_SENDCAST_FIRERAIN));
	Text_2 = ConcatStrings(NAME_Manakosten,IntToString(SPL_SENDCAST_ICEWAVE));
	nDocID = Doc_Create();
	Doc_SetPages(nDocID,2);
	Doc_SetPage(nDocID,0,"Book_Mage_L.tga",0);
	Doc_SetPage(nDocID,1,"Book_Mage_R.tga",0);
	Doc_SetFont(nDocID,-1,"font_15_book.tga");
	Doc_SetMargins(nDocID,0,275,20,30,20,1);
	Doc_PrintLine(nDocID,0,"Пятый Круг");
	Doc_PrintLine(nDocID,0,"---------------");
	Doc_SetFont(nDocID,-1,"font_10_book.TGA");
	Doc_PrintLine(nDocID,0,"");
	Doc_PrintLine(nDocID,0,"");
	Doc_PrintLine(nDocID,0,"Огненный Дождь");
	Doc_PrintLine(nDocID,0,"---------------");
	Doc_PrintLines(nDocID,0,"Сила божественного Огня поражает каждое Живое Существо, находящееся в Области действия Мага.");
	Doc_PrintLine(nDocID,0,Text_1);
	Doc_SetMargins(nDocID,-1,30,20,275,20,1);
	Doc_PrintLine(nDocID,1,"");
	Doc_PrintLine(nDocID,1,"Ледяная Волна");
	Doc_PrintLine(nDocID,1,"---------------");
	Doc_PrintLines(nDocID,1,"Поле из магического Льда распространяется на всех Противников и замораживает их на короткий период времени. В это время Жертвы не могут двигаться и получают Повреждения.");
	Doc_PrintLines(nDocID,1,"Заклинание из Храма Магов Воды.");
	Doc_PrintLine(nDocID,1,Text_2);
	Doc_Show(nDocID);
};


instance ItWr_Book_Circle_06(C_Item)
{
	name = "Шестой Круг";
	mainflag = ITEM_KAT_DOCS;
	flags = 0;
	value = 300;
	visual = "ItWr_Book_02_03.3ds";
	material = MAT_LEATHER;
	scemeName = "MAP";
	description = "Шестой Круг Магии";
	text[5] = NAME_Value;
	count[5] = value;
	on_state[0] = UseItWr_Book_Circle_06;
};


func void UseItWr_Book_Circle_06()
{
	var int nDocID;
	var string text;
	text = ConcatStrings(NAME_Manakosten,IntToString(SPL_SENDCAST_BREATHOFDEATH));
	nDocID = Doc_Create();
	Doc_SetPages(nDocID,2);
	Doc_SetPage(nDocID,0,"Book_Mage_L.tga",0);
	Doc_SetPage(nDocID,1,"Book_Mage_R.tga",0);
	Doc_SetFont(nDocID,-1,"font_15_book.tga");
	Doc_SetMargins(nDocID,0,275,20,30,20,1);
	Doc_PrintLine(nDocID,0,"Шестой Круг");
	Doc_SetFont(nDocID,-1,"font_10_book.TGA");
	Doc_PrintLine(nDocID,0,"");
	Doc_PrintLine(nDocID,0,"");
	Doc_PrintLine(nDocID,0,"");
	Doc_PrintLine(nDocID,0,"");
	Doc_PrintLine(nDocID,0,"Дыхание Смерти");
	Doc_PrintLine(nDocID,0,"---------------");
	Doc_PrintLines(nDocID,0,"Дыхание Бельджара. Облако пожирающее Жизнь, способное мгновенно Убить любое существо.");
	Doc_PrintLine(nDocID,0,"");
	Doc_PrintLine(nDocID,0,text);
	Doc_SetMargins(nDocID,-1,30,20,275,20,1);
	Doc_PrintLine(nDocID,1,"");
	Doc_PrintLine(nDocID,1,"");
	Doc_PrintLine(nDocID,1,"Кольцо Смерти");
	Doc_PrintLine(nDocID,1,"---------------");
	Doc_PrintLines(nDocID,1,"Мало что известно о Руне, обладающей Силой УРИЗЕЛЯ");
	Doc_PrintLines(nDocID,1,"Известно только то, что она содержит в себе Силу Бельджара.");
	Doc_PrintLine(nDocID,1,"");
	Doc_Show(nDocID);
};


instance Goettergabe(C_Item)
{
	name = "Дар Богов";
	mainflag = ITEM_KAT_DOCS;
	flags = 0;
	value = 100;
	visual = "ItWr_Book_02_01.3ds";
	material = MAT_LEATHER;
	scemeName = "MAP";
	description = "Дар Богов";
	text[5] = NAME_Value;
	count[5] = value;
	on_state[0] = UseGoettergabe;
};


func void UseGoettergabe()
{
	var int nDocID;
	nDocID = Doc_Create();
	Doc_SetPages(nDocID,2);
	Doc_SetPage(nDocID,0,"Book_Mage_L.tga",0);
	Doc_SetPage(nDocID,1,"Book_Mage_R.tga",0);
	Doc_SetFont(nDocID,-1,"font_15_book.tga");
	Doc_PrintLine(nDocID,0,"Магия");
	Doc_PrintLine(nDocID,0,"");
	Doc_SetMargins(nDocID,0,275,20,30,20,1);
	Doc_PrintLine(nDocID,0," ");
	Doc_SetFont(nDocID,-1,"font_10_book.TGA");
	Doc_PrintLine(nDocID,0,"Дар Богов");
	Doc_PrintLine(nDocID,0,"");
	Doc_PrintLines(nDocID,0,"На протяжении Веков люди пытались понять Природу и Происхождение Магии. Но где же начинать поиски? Как вообще ее описать? Это самая противоречивая Сила, которую мы знаем. Она может убивать и в то же время исцелять. Она может создавать и разрушать.");
	Doc_SetMargins(nDocID,-1,30,20,275,20,1);
	Doc_PrintLine(nDocID,1,"");
	Doc_PrintLine(nDocID,1,"");
	Doc_PrintLine(nDocID,1,"");
	Doc_PrintLine(nDocID,1,"");
	Doc_PrintLines(nDocID,1,"Как выглядит такая Сила? Где можно найти эту невидимую, но такую могущественную Силу? Магия такая, какая она есть. Самый чудесный и в то же время самый могущественный Дар Богов. Тем, кто Использует и Владеет этой Силой, ниспослано Божественное дарование. Священная Сила, которую способны Контролировать лишь Избранные.");
	Doc_PrintLine(nDocID,1,"");
	Doc_PrintLine(nDocID,1,"Бартос из Ларана");
	Doc_Show(nDocID);
};


instance Geheimnisse_der_Zauberei(C_Item)
{
	name = "Тайны Магии";
	mainflag = ITEM_KAT_DOCS;
	flags = 0;
	value = 100;
	visual = "ItWr_Book_02_02.3ds";
	material = MAT_LEATHER;
	scemeName = "MAP";
	description = "Секреты магии";
	text[5] = NAME_Value;
	count[5] = value;
	on_state[0] = UseGeheimnisse_der_Zauberei;
};


func void UseGeheimnisse_der_Zauberei()
{
	var int nDocID;
	nDocID = Doc_Create();
	Doc_SetPages(nDocID,2);
	Doc_SetPage(nDocID,0,"Book_Mage_L.tga",0);
	Doc_SetPage(nDocID,1,"Book_Mage_R.tga",0);
	Doc_SetFont(nDocID,-1,"font_10_book.tga");
	Doc_SetMargins(nDocID,0,275,20,30,20,1);
	Doc_PrintLine(nDocID,0,"");
	Doc_PrintLine(nDocID,0,"");
	Doc_PrintLine(nDocID,0,"Тайны Магии");
	Doc_PrintLine(nDocID,0,"");
	Doc_PrintLines(nDocID,0,"Сам по себе Маг вряд ли обладает Магией, скорее, он способен ее Использовать. Он Способен лишь воздействовать и направлять Магию. Посвященный в Великое Искусство Магии должен быть в состоянии использовать свой Разум как Инструмент");
	Doc_SetMargins(nDocID,-1,30,20,275,20,1);
	Doc_PrintLine(nDocID,1,"");
	Doc_PrintLine(nDocID,1,"");
	Doc_PrintLine(nDocID,1,"");
	Doc_PrintLine(nDocID,1,"");
	Doc_PrintLines(nDocID,1,"Дух его собирает всю окружающую Сайную Силу, собирает, фокусирует и отправляет в том мир, который мы знаем. В такой момент высшей концентрации Магу удается послать свой Разум в Нашу Сферу и заглянуть в Потусторонний Мир, откуда исходит сама Сила. Сам же Маг является лишь Проводником и Воплощением этой Силы.");
	Doc_PrintLine(nDocID,1,"");
	Doc_PrintLine(nDocID,1,"");
	Doc_PrintLine(nDocID,1,"Бартос из Ларана");
	Doc_Show(nDocID);
};


instance Machtvolle_Kunst(C_Item)
{
	name = "Могущественное Искусство";
	mainflag = ITEM_KAT_DOCS;
	flags = 0;
	value = 100;
	visual = "ItWr_Book_02_03.3ds";
	material = MAT_LEATHER;
	scemeName = "MAP";
	description = "Могущественное Искусство";
	text[5] = NAME_Value;
	count[5] = value;
	on_state[0] = UseMachtvolle_Kunst;
};


func void UseMachtvolle_Kunst()
{
	var int nDocID;
	nDocID = Doc_Create();
	Doc_SetPages(nDocID,2);
	Doc_SetPage(nDocID,0,"Book_Mage_L.tga",0);
	Doc_SetPage(nDocID,1,"Book_Mage_R.tga",0);
	Doc_SetFont(nDocID,-1,"font_15_book.tga");
	Doc_SetMargins(nDocID,0,275,20,30,20,1);
	Doc_PrintLine(nDocID,0,"");
	Doc_PrintLine(nDocID,0,"Могущественное Искусство");
	Doc_PrintLine(nDocID,0,"");
	Doc_SetFont(nDocID,-1,"font_10_book.tga");
	Doc_PrintLine(nDocID,0,"");
	Doc_PrintLines(nDocID,0,"Произведение для Посвященного в Тайное Искусство");
	Doc_PrintLine(nDocID,0,"");
	Doc_PrintLine(nDocID,0,"");
	Doc_PrintLines(nDocID,0,"Способность Мага управлять Божественной Силой способна развиваться. Сначала она прорастает, как небольшой Росток на Поле, и за ним нужно ухаживать, чтобы он не засох. Но как только побег окрепнет, он Раскроет все свое Великолепие.");
	Doc_SetMargins(nDocID,-1,30,20,275,20,1);
	Doc_PrintLine(nDocID,1,"");
	Doc_PrintLine(nDocID,1,"");
	Doc_PrintLine(nDocID,1,"");
	Doc_PrintLine(nDocID,1,"");
	Doc_PrintLines(nDocID,1,"Он растет и становится сильнее с каждым Днем. Вот что происходит с Практикующим Магом. Его изначально очень слабая Сила растет и развивается, и со временем достигнет Мощи, пределы которой тяжело предвидеть. Довести эту Силу до Высшего Совершенства это Священный Долг каждого Мага, ведь этот Росток, посеянный самими Богами, величайший Дар, который может получить Смертный");
	Doc_Show(nDocID);
};


instance Elementare_Arcanei(C_Item)
{
	name = "Элементарные Тайны";
	mainflag = ITEM_KAT_DOCS;
	flags = 0;
	value = 100;
	visual = "ItWr_Book_02_04.3ds";
	material = MAT_LEATHER;
	scemeName = "MAP";
	description = "Элементарные Тайны";
	text[5] = NAME_Value;
	count[5] = value;
	on_state[0] = UseElementare_Arcanei;
};


func void UseElementare_Arcanei()
{
	var int nDocID;
	nDocID = Doc_Create();
	Doc_SetPages(nDocID,2);
	Doc_SetPage(nDocID,0,"Book_Mage_L.tga",0);
	Doc_SetPage(nDocID,1,"Book_Mage_R.tga",0);
	Doc_SetFont(nDocID,-1,"font_15_book.tga");
	Doc_SetMargins(nDocID,0,275,20,30,20,1);
	Doc_PrintLine(nDocID,0,"");
	Doc_PrintLine(nDocID,0,"");
	Doc_PrintLine(nDocID,0,"Элементарные Тайны");
	Doc_PrintLine(nDocID,0,"");
	Doc_SetFont(nDocID,-1,"font_10_book.tga");
	Doc_PrintLine(nDocID,0,"");
	Doc_PrintLines(nDocID,0,"Классификация Магии в Структуре Земного Порядка");
	Doc_PrintLine(nDocID,0,"");
	Doc_PrintLine(nDocID,0,"");
	Doc_PrintLines(nDocID,0,"Относительно положения Магии и ее Связи с основными Стихиями, было проведено много исследований. Можно с уверенностью сказать, что Магию можно рассматривать как абсолютный Элемент. Она обладает Способностью изменять и придавать форму всем Стихиям, то есть повелевать ими.");
	Doc_SetMargins(nDocID,-1,30,20,275,20,1);
	Doc_PrintLine(nDocID,1,"");
	Doc_PrintLine(nDocID,1,"");
	Doc_PrintLine(nDocID,1,"");
	Doc_PrintLine(nDocID,1,"");
	Doc_PrintLine(nDocID,1,"");
	Doc_PrintLines(nDocID,1,"Каждая Стихия, если рассматривать ее в первичной Форме, имеет связь с Магией, поэтому Места с Естественными Образованиями таких Соединений встречаются крайне Редко и они очень Ценятся. Способность Мага создавать Стихии, казалось бы, из Ничего, еще раз доказывает, что Магия является самым чистым и высшим Благом, которое существует.");
	Doc_Show(nDocID);
};


instance Wahre_Macht(C_Item)
{
	name = "Истинное Могущество";
	mainflag = ITEM_KAT_DOCS;
	flags = 0;
	value = 100;
	visual = "ItWr_Book_02_05.3ds";
	material = MAT_LEATHER;
	scemeName = "MAP";
	description = "Истинное Могущество";
	text[5] = NAME_Value;
	count[5] = value;
	on_state[0] = UseWahre_Macht;
};


func void UseWahre_Macht()
{
	var int nDocID;
	nDocID = Doc_Create();
	Doc_SetPages(nDocID,2);
	Doc_SetPage(nDocID,0,"Book_Mage_L.tga",0);
	Doc_SetPage(nDocID,1,"Book_Mage_R.tga",0);
	Doc_SetFont(nDocID,-1,"font_15_book.tga");
	Doc_SetMargins(nDocID,0,275,20,30,20,1);
	Doc_PrintLine(nDocID,0,"");
	Doc_PrintLine(nDocID,0,"Истинное Могущество");
	Doc_PrintLine(nDocID,0,"");
	Doc_SetFont(nDocID,-1,"font_10_book.tga");
	Doc_PrintLine(nDocID,0,"");
	Doc_PrintLine(nDocID,0,"");
	Doc_PrintLines(nDocID,0,"Священный Долг Сведущего");
	Doc_PrintLine(nDocID,0,"");
	Doc_PrintLine(nDocID,0,"");
	Doc_PrintLines(nDocID,0,"Именно его Сила отличает Мага от обычных Людей. Он наделен Способностью влиять на божественную Силу, а посему является Существом выходящим за пределы обычных Смертных.");
	Doc_SetMargins(nDocID,-1,30,20,275,20,1);
	Doc_PrintLine(nDocID,1,"");
	Doc_PrintLine(nDocID,1,"");
	Doc_PrintLine(nDocID,1,"");
	Doc_PrintLine(nDocID,1,"");
	Doc_PrintLine(nDocID,1,"");
	Doc_PrintLine(nDocID,1,"");
	Doc_PrintLines(nDocID,1,"Как только Маг достигает уровня, позволяющего ему выйти за Пределы своего существования, он может Возвыситься над обычным Смертным. Он способен пройти Сквозь границы Пространства и Времени, и даже Смерть, основа всего Сущего, не сумеет Остановить его.");
	Doc_Show(nDocID);
};


instance Das_magische_Erz(C_Item)
{
	name = "Магическая Руда";
	mainflag = ITEM_KAT_DOCS;
	flags = 0;
	value = 100;
	visual = "ItWr_Book_02_02.3ds";
	material = MAT_LEATHER;
	scemeName = "MAP";
	description = "Магическая Руда";
	text[5] = NAME_Value;
	count[5] = value;
	on_state[0] = UseDas_magische_Erz;
};


func void UseDas_magische_Erz()
{
	var int nDocID;
	nDocID = Doc_Create();
	Doc_SetPages(nDocID,2);
	Doc_SetPage(nDocID,0,"Book_Brown_L.tga",0);
	Doc_SetPage(nDocID,1,"Book_Brown_R.tga",0);
	Doc_SetFont(nDocID,-1,"font_15_book.tga");
	Doc_SetMargins(nDocID,0,275,20,30,20,1);
	Doc_PrintLine(nDocID,0,"Магическая Руда");
	Doc_PrintLine(nDocID,0,"");
	Doc_SetFont(nDocID,-1,"font_10_book.tga");
	Doc_PrintLine(nDocID,0,"");
	Doc_PrintLines(nDocID,0,"Лучшая Руда для Ковки оружия, несомненно, добывается в Рудниках близ Хориниса. Она поразительно Чиста и пропитана Магией. Это невероятно прочный Металл, но при этом настолько мягкий, что не ломается. Ни один Клинок не сравнится с Оружием, выкованным из этой стали, которая с таким трудом добывается в глубинах Шахт, пусть даже он будет сделан из самой лучшей Стали.");
	Doc_SetMargins(nDocID,-1,30,20,275,20,1);
	Doc_PrintLine(nDocID,1,"");
	Doc_PrintLine(nDocID,1,"");
	Doc_PrintLines(nDocID,1,"Нет Щита, который оно не могло бы сломать, нет Доспехов, которые оно не могло бы пробить. Короли и Герои давно минувших Дней носили Оружие из лучшей стали Хориниса, и даже сейчас такое Оружие продается по лучшим Ценам во всей Миртане. Но это справедливая цена. Но за эту Руду также требуют и высокую Цену. Приходится прилагать большие Усилия, чтобы вырвать ее из Земли, потому что Руда как будто не хочет покидать земные Недра.");
	Doc_Show(nDocID);
};


instance Schlacht_um_Varant1(C_Item)
{
	name = "Битва за Варант";
	mainflag = ITEM_KAT_DOCS;
	flags = 0;
	value = 100;
	visual = "ItWr_Book_02_04.3ds";
	material = MAT_LEATHER;
	scemeName = "MAP";
	description = "Битва за Варант";
	text[0] = "Том Первый";
	text[5] = NAME_Value;
	count[5] = value;
	on_state[0] = UseSchlacht_um_Varant1;
};


func void UseSchlacht_um_Varant1()
{
	var int nDocID;
	nDocID = Doc_Create();
	Doc_SetPages(nDocID,2);
	Doc_SetPage(nDocID,0,"Book_Red_L.tga",0);
	Doc_SetPage(nDocID,1,"Book_Red_R.tga",0);
	Doc_SetMargins(nDocID,0,275,20,30,20,1);
	Doc_SetFont(nDocID,-1,"font_10_book.tga");
	Doc_PrintLine(nDocID,0,"");
	Doc_PrintLines(nDocID,0,"… однако Полководец Робар выбрал атаку. Он собрал свое Войско и двинулся вперед всеми Силами против плохо защищенного правого Фланга Врага. Не ввязываясь в мелкие Стычки, он пронзил край вражескоого Войска, как Меч, разрезав ее словно Бумагу. Все дальше и дальше Он вел своих Людей к Границе Варанта. Он знал, что если хочет выиграть эту Битву, ему нужно суметь разделить Войско врага и не допустить объединения Геллона и Луккора");
	Doc_SetMargins(nDocID,-1,30,20,275,20,1);
	Doc_PrintLine(nDocID,1,"");
	Doc_PrintLines(nDocID,1,"объединиться и нанести ему Сокрушительный удар. Ему нужно было добиться того, чтобы сорвать их Поставки, тогда Победу у него уже невозможно было бы отнять…");
	Doc_PrintLine(nDocID,1,"");
	Doc_PrintLines(nDocID,1,"… Геллон был мертв, его Армия разбита, а Люди потерявшие лидера Бежали. Однако Робар был решительным и не собирался позволить Противнику вновь объединится, и немедленно приказал отправиться в Путь, чтобы уничтожить Врага. Однако в это время Луккор решил воспользоваться Моментом и нанести Сокрушительный Удар по измотанным Войскам Короля Робара.");
	Doc_Show(nDocID);
};


instance Schlacht_um_Varant2(C_Item)
{
	name = "Битва за Варант";
	mainflag = ITEM_KAT_DOCS;
	flags = 0;
	value = 100;
	visual = "ItWr_Book_02_05.3ds";
	material = MAT_LEATHER;
	scemeName = "MAP";
	description = "Битва за Варант";
	text[0] = "Том Второй";
	text[5] = NAME_Value;
	count[5] = value;
	on_state[0] = UseSchlacht_um_Varant2;
};


func void UseSchlacht_um_Varant2()
{
	var int nDocID;
	nDocID = Doc_Create();
	Doc_SetPages(nDocID,2);
	Doc_SetPage(nDocID,0,"Book_Red_L.tga",0);
	Doc_SetPage(nDocID,1,"Book_Red_R.tga",0);
	Doc_SetMargins(nDocID,0,275,20,30,20,1);
	Doc_SetFont(nDocID,-1,"font_10_book.tga");
	Doc_PrintLine(nDocID,0,"");
	Doc_PrintLines(nDocID,0,"Исход Войны был предрешен. Варант лишился свои морские Портов, столь важных для Снабжения Войск. Король Робар уже давно не присутствовал на полях Сражений в Варанте, он лишь предоставил своим Генералам возможность уничтожить последние Войска противника. У Варанта было еще одно большое Войско, возглавляемое Луккором, самым способным Военачальником Войск Варанта, который и прежде не раз превращал казалось бы неизбежное Поражение в неожиданную Победу.");
	Doc_SetMargins(nDocID,-1,30,20,275,20,1);
	Doc_PrintLine(nDocID,1,"");
	Doc_PrintLines(nDocID,1,"Но на этот раз его Войско оказалось в Ловушке. Несмотря на численносе превосходство, Войско Противника находилось в безвыходном Положении. Ли, Герой Войны в Миртане, заманил его в эту Ловушку. Тяжелая Кавалерия не могла сражаться на глубоком, болотистом Дне узкой Долины, а холмистые Склоны вокруг нее были заняты Солдатами Ли, которые постоянно наносили удары, уничтожая людей Владыки человека за человеком. Отчаянные Атаки его Людей были кроваво отражены. Он потерпел поражение.");
	Doc_Show(nDocID);
};


instance Myrtanas_Lyrik(C_Item)
{
	name = "Поэзия Миртаны";
	mainflag = ITEM_KAT_DOCS;
	flags = 0;
	value = 100;
	visual = "ItWr_Book_02_02.3ds";
	material = MAT_LEATHER;
	scemeName = "MAP";
	description = "Поэзия Миртаны";
	text[5] = NAME_Value;
	count[5] = value;
	on_state[0] = UseMyrtanas_Lyrik;
};


func void UseMyrtanas_Lyrik()
{
	var int nDocID;
	nDocID = Doc_Create();
	Doc_SetPages(nDocID,2);
	Doc_SetPage(nDocID,0,"Book_Red_L.tga",0);
	Doc_SetPage(nDocID,1,"Book_Red_R.tga",0);
	Doc_SetMargins(nDocID,0,275,20,30,20,1);
	Doc_SetFont(nDocID,-1,"font_10_book.tga");
	Doc_PrintLine(nDocID,0,"");
	Doc_PrintLine(nDocID,0,"");
	Doc_PrintLine(nDocID,0,"");
	Doc_PrintLine(nDocID,0,"");
	Doc_PrintLine(nDocID,0,"    Песнь");
	Doc_PrintLine(nDocID,0,"");
	Doc_PrintLine(nDocID,0,"          Покаяния");
	Doc_PrintLine(nDocID,0,"");
	Doc_PrintLine(nDocID,0,"");
	Doc_PrintLine(nDocID,0,"");
	Doc_PrintLine(nDocID,0,"");
	Doc_PrintLine(nDocID,0,"");
	Doc_PrintLine(nDocID,0,"");
	Doc_PrintLine(nDocID,0,"");
	Doc_PrintLine(nDocID,0,"");
	Doc_PrintLine(nDocID,0,"");
	Doc_PrintLine(nDocID,0,"");
	Doc_PrintLine(nDocID,0,"");
	Doc_SetMargins(nDocID,-1,30,20,275,20,1);
	Doc_PrintLine(nDocID,1,"");
	Doc_PrintLines(nDocID,1,"В Начале была Сила, чистая и непорочная");
	Doc_PrintLine(nDocID,1,"");
	Doc_PrintLines(nDocID,1,"сегодня остаётся лишь Эхо от древней Клятвы.");
	Doc_PrintLine(nDocID,1,"");
	Doc_PrintLines(nDocID,1,"Времена Единства уже давно прошли,");
	Doc_PrintLine(nDocID,1,"");
	Doc_PrintLines(nDocID,1,"а мы стремимся к Накоплению и Власти.");
	Doc_PrintLine(nDocID,1,"");
	Doc_PrintLines(nDocID,1,"Теперь разделено то, что было единым.");
	Doc_PrintLine(nDocID,1,"");
	Doc_PrintLines(nDocID,1,"И проклят тот Дух, который унёс нас.");
	Doc_PrintLine(nDocID,1,"");
	Doc_PrintLines(nDocID,1,"Наши песни полны Тоски.");
	Doc_PrintLine(nDocID,1,"");
	Doc_PrintLines(nDocID,1,"Единства больше никогда не будет.");
	Doc_PrintLines(nDocID,1,"");
	Doc_Show(nDocID);
};


instance Lehren_der_Goetter1(C_Item)
{
	name = "Учение Богов Том Первый";
	mainflag = ITEM_KAT_DOCS;
	flags = 0;
	value = 100;
	visual = "ItWr_Book_02_01.3ds";
	material = MAT_LEATHER;
	scemeName = "MAP";
	description = "Учение Богов";
	text[0] = "Том Первый";
	text[5] = NAME_Value;
	count[5] = value;
	on_state[0] = UseLehren_der_Goetter1;
};


func void UseLehren_der_Goetter1()
{
	var int nDocID;
	nDocID = Doc_Create();
	Doc_SetPages(nDocID,2);
	Doc_SetPage(nDocID,0,"Book_Red_L.tga",0);
	Doc_SetPage(nDocID,1,"Book_Red_R.tga",0);
	Doc_SetMargins(nDocID,0,275,20,30,20,1);
	Doc_SetFont(nDocID,-1,"font_10_book.tga");
	Doc_PrintLine(nDocID,0,"");
	Doc_PrintLines(nDocID,0,"Слушайте Слова Богов, ибо их Воля, чтобы они были услышаны. Следуйте Учениям Богов, ибо это их Воля, чтобы им следовали. Почитайте Жрецов Богов, ибо они избраны.");
	Doc_PrintLine(nDocID,0,"");
	Doc_PrintLines(nDocID,0,"Слова Инноса: А если вы не понимаете, то не сомневайся в Словах Жрецов, ибо Деяния их справедливы и мудры. Ибо я есть восходящее Солнце, Свет и Жизнь. И все, что против Солнца, против меня, должно быть изгнано во Тьму на веки вечные.");
	Doc_SetMargins(nDocID,-1,30,20,275,20,1);
	Doc_PrintLine(nDocID,1,"");
	Doc_PrintLines(nDocID,1,"Слова Аданоса: Работайте и живите, ибо создан День, чтобы Человек мог Работать. Ищите Знание и Мудрость, чтобы передать Их, ибо для этого Вы были созданы. А тот, Кто праздности и лени предается, тот будет изгнан в Тень на веки вечные.");
	Doc_PrintLine(nDocID,1,"");
	Doc_PrintLines(nDocID,1,"Слова Бельджара: А тот, кто совершит неправедные поступки и пойдет против Воли Богов, тот будет мной наказан. Я наполню Тело его Болью, Страданием и Смертью, а Дух его заберу с собой в Тень на веки вечные.");
	Doc_Show(nDocID);
};


instance Lehren_der_Goetter2(C_Item)
{
	name = "Учение Богов Том второй";
	mainflag = ITEM_KAT_DOCS;
	flags = 0;
	value = 100;
	visual = "ItWr_Book_02_02.3ds";
	material = MAT_LEATHER;
	scemeName = "MAP";
	description = "Учение Богов";
	text[0] = "Том Второй";
	text[5] = NAME_Value;
	count[5] = value;
	on_state[0] = UseLehren_der_Goetter2;
};


func void UseLehren_der_Goetter2()
{
	var int nDocID;
	nDocID = Doc_Create();
	Doc_SetPages(nDocID,2);
	Doc_SetPage(nDocID,0,"Book_Red_L.tga",0);
	Doc_SetPage(nDocID,1,"Book_Red_R.tga",0);
	Doc_SetMargins(nDocID,0,275,20,30,20,1);
	Doc_SetFont(nDocID,-1,"font_10_book.tga");
	Doc_PrintLine(nDocID,0,"");
	Doc_PrintLines(nDocID,0,"В Начале Времен: Еще не было ни Дня, ни Ночи, и ни одно Существо не бродило по Миру. Затем Миру явился Иннос и его Свет осветил все. И Иннос даровал Миру Жизнь. Однако ни одно Существо не могло существовать в Свете Инноса, поэтому он создал Солнце. Но Свет все еще был слишком ярким. И тогда Иннос разделил себя и породил Бельджара. Бельджар породил Ночь. Теперь Человек мог жить. Затем Иннос разделил себя вновь и породил Аданоса. Аданос наделил Человека Многогранностью, Жаждой Знания, Любопытством и Смелостью. Иннос был очень доволен собой и своим Творением.");
	Doc_SetMargins(nDocID,-1,30,20,275,20,1);
	Doc_PrintLine(nDocID,1,"");
	Doc_PrintLines(nDocID,1,"И он решил полностью предоставить Людей Аданосу, чтобы они покоились. Однако Бельджара снедала Зависть, потому что Люди не молились ему и отдыхали Ночью. В гневе и ярости Бельджар создал себе Человека. Человека, который должен был поклоняться только ему. Но Человек оказался точно таким же, как и все остальные Люди. Белиар был настолько охвачен Гневом, что убил этого Человека и сказал: если они не поклоняются мне, так пусть хотя бы боятся меня. И породил он Смерть, и отнял у Людей Жизнь.");
	Doc_Show(nDocID);
};


instance Lehren_der_Goetter3(C_Item)
{
	name = "Учение Богов Том Третий";
	mainflag = ITEM_KAT_DOCS;
	flags = 0;
	value = 100;
	visual = "ItWr_Book_02_03.3ds";
	material = MAT_LEATHER;
	scemeName = "MAP";
	description = "Учение Богов";
	text[0] = "Том Третий";
	text[5] = NAME_Value;
	count[5] = value;
	on_state[0] = UseLehren_der_Goetter3;
};


func void UseLehren_der_Goetter3()
{
	var int nDocID;
	nDocID = Doc_Create();
	Doc_SetPages(nDocID,2);
	Doc_SetPage(nDocID,0,"Book_Red_L.tga",0);
	Doc_SetPage(nDocID,1,"Book_Red_R.tga",0);
	Doc_SetMargins(nDocID,0,275,20,30,20,1);
	Doc_SetFont(nDocID,-1,"font_10_book.tga");
	Doc_PrintLine(nDocID,0,"");
	Doc_PrintLines(nDocID,0,"Иннос дал Людям Силу слышать его и говорить с ним. Он дал им Силу творить великие Чудеса. И он назвал это Магией. Благодаря этой Силе Люди могли свободно изменять Мир по своей Воле. И не было Границ, которые Иннос ставил бы перед ними. Так люди получили часть Божественной Силы Творения. Но все Люди были равными, и это им не нравилось. Так он отнял Силы у недовольных. А тех немногих, кто был благодарен, Иннос поставил выше всех остальных");
	Doc_SetMargins(nDocID,-1,30,20,275,20,1);
	Doc_PrintLine(nDocID,1,"");
	Doc_PrintLines(nDocID,1,"Этих Людей почитали и боялись одновременно, и называли Жрецами. Но было среди них немало тех, которые вскоре стали недовольными. И так случилось, что стали они молиться Аданосу и забыли свое Происхождение. Так разделились Жрецы. Начались Войны, и вера в Божественное Всемогущество вскоре стала не более чем Мифом. Так разделились Жрецы. Те кто последовал за Аданосом называли себя Магами Воды, а Посвященные Инносу называли себя Магами Огня.");
	Doc_Show(nDocID);
};


instance Jagd_und_Beute(C_Item)
{
	name = "Охота и Добыча";
	mainflag = ITEM_KAT_DOCS;
	flags = 0;
	value = 100;
	visual = "ItWr_Book_02_02.3ds";
	material = MAT_LEATHER;
	scemeName = "MAP";
	description = "Охота и Добыча";
	text[5] = NAME_Value;
	count[5] = value;
	on_state[0] = UseJagd_und_Beute;
};


func void UseJagd_und_Beute()
{
	var int nDocID;
	nDocID = Doc_Create();
	Doc_SetPages(nDocID,2);
	Doc_SetPage(nDocID,0,"Book_Brown_L.tga",0);
	Doc_SetPage(nDocID,1,"Book_Brown_R.tga",0);
	Doc_SetMargins(nDocID,0,275,20,30,20,1);
	Doc_SetFont(nDocID,-1,"font_10_book.tga");
	Doc_PrintLine(nDocID,0,"");
	Doc_PrintLines(nDocID,0,"Его Письменные Наставления выдержали испытание временем, а его Советы считаются Учебником по Искусству Охоты. После великих Сражений на Севере сегодня каждый Обитатель тех краев теперь знает, как обращаться с Луком. Однако в Охоте есть несколько правил, которые выходят за Рамки простого обращения с Оружием! Дикие создания пугливы и непредсказуемы.");
	Doc_SetMargins(nDocID,-1,30,20,275,20,1);
	Doc_PrintLine(nDocID,1,"");
	Doc_PrintLines(nDocID,1,"Искусство охоты с Луком обладет не только самой древней Историей, но и является наиболее распространенным из всех возможных видов Охоты. Искусство этого вида традиционной Охоты за Тысячелетия практически не изменилась, и вероятно не изменится и в Будущем. Какие же Обстоятельства определяют Исход Охоты с Луком? Понимание этих Правил и есть настоящее искусство Охоты с Луком");
	Doc_Show(nDocID);
};


instance Kampfkunst(C_Item)
{
	name = "Искусство Боя";
	mainflag = ITEM_KAT_DOCS;
	flags = 0;
	value = 100;
	visual = "ItWr_Book_02_03.3ds";
	material = MAT_LEATHER;
	scemeName = "MAP";
	description = "Искусство Боя";
	text[5] = NAME_Value;
	count[5] = value;
	on_state[0] = UseKampfkunst;
};


func void UseKampfkunst()
{
	var int nDocID;
	nDocID = Doc_Create();
	Doc_SetPages(nDocID,2);
	Doc_SetPage(nDocID,0,"Book_Brown_L.tga",0);
	Doc_SetPage(nDocID,1,"Book_Brown_R.tga",0);
	Doc_SetMargins(nDocID,0,275,20,30,20,1);
	Doc_SetFont(nDocID,-1,"font_10_book.tga");
	Doc_PrintLine(nDocID,0,"");
	Doc_PrintLine(nDocID,0,"");
	Doc_PrintLine(nDocID,0,"");
	Doc_PrintLines(nDocID,0,"На протяжении двух тысяч лет Учение этого Мастера служило Основой развития Искусства Боя.");
	Doc_PrintLine(nDocID,0,"");
	Doc_PrintLine(nDocID,0,"");
	Doc_PrintLines(nDocID,0,"Обучение включает в себя Развитие Гибкости тела, Спокойствия и Скорости, Наблюдательности и Реакции. Движения должны быть хорошо согласованными, а Положение тела правильным, чтобы Достичь наилучшего раскрытия своей Силы");
	Doc_SetMargins(nDocID,-1,30,20,275,20,1);
	Doc_PrintLine(nDocID,1,"");
	Doc_PrintLine(nDocID,1,"");
	Doc_PrintLine(nDocID,1,"");
	Doc_PrintLines(nDocID,1,"Суть духовного и физического Учения Мастера сохранилась на протяжении многих Лет.");
	Doc_PrintLine(nDocID,1,"");
	Doc_PrintLine(nDocID,1,"");
	Doc_PrintLines(nDocID,1,"Его уникальный Успех повлиял на несколько Поколений. Тысячелетия прошли, и хотя Внешний Мир часто менялся, однако одно останется Вечным: Гармония внутренних Сил с внешним целенаправленным Движением Тела.");
	Doc_Show(nDocID);
};


instance Die_Gruft(C_Item)
{
	name = "Склеп";
	mainflag = ITEM_KAT_DOCS;
	flags = 0;
	value = 100;
	visual = "ItWr_Book_02_03.3ds";
	material = MAT_LEATHER;
	scemeName = "MAP";
	description = "Склеп";
	text[5] = NAME_Value;
	count[5] = value;
};

instance Astronomie(C_Item)
{
	name = "Астрономия";
	mainflag = ITEM_KAT_DOCS;
	flags = 0;
	value = 100;
	visual = "ItWr_Book_02_05.3ds";
	material = MAT_LEATHER;
	scemeName = "MAP";
	description = "Астрономия";
	text[5] = NAME_Value;
	count[5] = value;
	on_state[0] = UseAstronomie;
};


func void UseAstronomie()
{
	var int nDocID;
	nDocID = Doc_Create();
	Doc_SetPages(nDocID,2);
	Doc_SetPage(nDocID,0,"Book_Brown_L.tga",0);
	Doc_SetPage(nDocID,1,"Book_Brown_R.tga",0);
	Doc_SetMargins(nDocID,0,275,20,30,20,1);
	Doc_SetFont(nDocID,-1,"font_10_book.tga");
	Doc_PrintLine(nDocID,0,"");
	Doc_PrintLines(nDocID,0,"В Центре расположен Морград, со своими четырьмя Стихиями: Землей, Водой, Огнем и Воздухом, Пространство Стремительно внутри которого невыразимая Тьма Бельджара. Над всем этим возвышается Небесная Сфера. ");
	Doc_PrintLine(nDocID,0,"");
	Doc_PrintLines(nDocID,0,"В Иерархии Космоса Человек занимает Положение Приемника. Через свой Дух он способен стать частью высшего Существа, божественного Духа, в то время как его тленное Тело состоит из Веществ Морграда. Как маленький Образ всего Мира.");
	Doc_SetMargins(nDocID,-1,30,20,275,20,1);
	Doc_PrintLine(nDocID,1,"");
	Doc_PrintLines(nDocID,1,"Синодический Период обращения Планет, то есть Период времени между двумя однотипными Положениями в Отношении к Морграду нашего Мира, отклоняется на несколько Градусов каждое Столетие, так что мы можем предположить, что находимся в постоянном Движении вместе с остальным Космосом.");
	Doc_PrintLine(nDocID,1,"");
	Doc_PrintLines(nDocID,1,"При Составлении Календаря мы Изначально ссылались на Движение Луны, чтобы Получить соответствие настоящей Длине Солнечного Года.");
	Doc_Show(nDocID);
};


instance Rezepturen(C_Item)
{
	name = "Рецепты";
	mainflag = ITEM_KAT_DOCS;
	flags = 0;
	value = 100;
	visual = "ItWr_Book_02_04.3ds";
	material = MAT_LEATHER;
	scemeName = "MAP";
	description = "Рецепты";
	text[0] = "Том Первый";
	text[5] = NAME_Value;
	count[5] = value;
	on_state[0] = UseRezepturen;
};


func void UseRezepturen()
{
	var int nDocID;
	nDocID = Doc_Create();
	Doc_SetPages(nDocID,2);
	Doc_SetPage(nDocID,0,"Book_Brown_L.tga",0);
	Doc_SetPage(nDocID,1,"Book_Brown_R.tga",0);
	Doc_SetMargins(nDocID,0,275,20,30,20,1);
	Doc_SetFont(nDocID,-1,"font_10_book.tga");
	Doc_PrintLine(nDocID,0,"");
	Doc_PrintLines(nDocID,0,"Бальзам Прозрения");
	Doc_PrintLine(nDocID,0,"----------------");
	Doc_PrintLine(nDocID,0,"");
	Doc_PrintLines(nDocID,0,"Для этого ему в Глаза закапывают Желчь. Желчь имеет Горький вкус. Если Глаз впитает эту Горечь, то есть если посмотреть на Горькое, то из него произрастает Мудрость. Мы становимся зрячими! Горечь и Мудрость исключают друг друга. Они противоположны!");
	Doc_SetMargins(nDocID,-1,30,20,275,20,1);
	Doc_PrintLine(nDocID,1,"");
	Doc_PrintLines(nDocID,1,"");
	Doc_PrintLine(nDocID,1,"");
	Doc_PrintLines(nDocID,1,"Слезы, Страдание и Разочарование горьки, но Мудрость есть Утешение всякой душевной Боли. Горечь и Мудрость представляют собой Альтернативу. Где есть Горечь, там отсутствует Мудрости, а где есть Мудрость, там нет никакой Горечи.");
	Doc_Show(nDocID);
};


instance Rezepturen2(C_Item)
{
	name = "Рецепты";
	mainflag = ITEM_KAT_DOCS;
	flags = 0;
	value = 100;
	visual = "ItWr_Book_02_04.3ds";
	material = MAT_LEATHER;
	scemeName = "MAP";
	description = "Рецепты";
	text[0] = "Том Второй";
	text[5] = NAME_Value;
	count[5] = value;
	on_state[0] = UseRezepturen2;
};


func void UseRezepturen2()
{
	var int nDocID;
	nDocID = Doc_Create();
	Doc_SetPages(nDocID,2);
	Doc_SetPage(nDocID,0,"Book_Brown_L.tga",0);
	Doc_SetPage(nDocID,1,"Book_Brown_R.tga",0);
	Doc_SetMargins(nDocID,0,275,20,30,20,1);
	Doc_SetFont(nDocID,-1,"font_10_book.tga");
	Doc_PrintLine(nDocID,0,"");
	Doc_PrintLines(nDocID,0,"Вино Забвения");
	Doc_PrintLine(nDocID,0,"--------------------");
	Doc_PrintLine(nDocID,0,"");
	Doc_PrintLines(nDocID,0,"Высоко на Склонах Архолоса растет лучший Виноград, который только можно найти для этого Вина. Искусство довести это Вино до полного Совершенства заключается в том, чтобы не подвергать его никакому Движению. Перед тем, как отправить Виноград в Виннный Погреб, он смешивается с обычной травой Сйос.");
	Doc_SetMargins(nDocID,-1,30,20,275,20,1);
	Doc_PrintLine(nDocID,1,"");
	Doc_PrintLines(nDocID,1,"");
	Doc_PrintLine(nDocID,1,"");
	Doc_PrintLine(nDocID,1,"");
	Doc_PrintLines(nDocID,1,"Смотрите и удивляйтесь, как Мастер превращает чистейшую Колодезную Воду в превосходное Вино. Пусть все воздадут ему должное и насладятся его Даром. Мастер заключает своих Ленивых Учеников в Бутылки в качестве Наказания, чудесным образом загорается Огонь, и черные змеи Поднимаются ввысь.");
	Doc_Show(nDocID);
};


instance TagebuchOT(C_Item)
{
	name = "Дневник";
	mainflag = ITEM_KAT_DOCS;
	flags = 0;
	value = 100;
	visual = "ItWr_Book_02_01.3ds";
	material = MAT_LEATHER;
	scemeName = "MAP";
	description = "Дневник";
	text[0] = "Старая Ветхая Книга";
	text[1] = "Не хватает Страниц.";
	on_state[0] = UseTagebuchOT;
};


func void UseTagebuchOT()
{
	var int nDocID;
	nDocID = Doc_Create();
	Doc_SetPages(nDocID,2);
	Doc_SetPage(nDocID,0,"Book_Brown_L.tga",0);
	Doc_SetPage(nDocID,1,"Book_Brown_R.tga",0);
	Doc_SetFont(nDocID,-1,"font_15_book.tga");
	Doc_SetMargins(nDocID,0,275,20,30,20,1);
	Doc_PrintLine(nDocID,0,"День 23");
	Doc_SetFont(nDocID,-1,"font_10_book.tga");
	Doc_PrintLines(nDocID,0,"Я потерял Счет времени.");
	Doc_PrintLines(nDocID,0,"По моим расчетам, прошло двадцать три Дня с тех пор, как нас захватили Орки и заставили Работать.");
	Doc_PrintLines(nDocID,0,"Работа тяжелая, а эти Ублюдки не знают Жалости. Кто слаб, тот мертв!");
	Doc_PrintLines(nDocID,0,"Я хочу сбежать отсюда, несмотря ни на что!!!");
	Doc_PrintLine(nDocID,0,"");
	Doc_SetFont(nDocID,-1,"font_15_book.tga");
	Doc_SetMargins(nDocID,0,275,20,30,20,1);
	Doc_PrintLine(nDocID,0,"День 28");
	Doc_SetFont(nDocID,-1,"font_10_book.tga");
	Doc_PrintLines(nDocID,0,"Нам пришлось пробивать Туннель еще глубже в Гору.");
	Doc_PrintLines(nDocID,0,"Передняя Часть уже огромная, если бы я только знал, для чего нам пришлось это делать.");
	Doc_SetFont(nDocID,-1,"font_15_book.tga");
	Doc_SetMargins(nDocID,-1,30,20,275,20,1);
	Doc_PrintLine(nDocID,1,"День 67");
	Doc_SetFont(nDocID,-1,"font_10_book.tga");
	Doc_PrintLines(nDocID,1,"Мне рассказали, что у этих Орков Жрецов нет Сердца, тогда как они продолжают жить?");
	Doc_PrintLines(nDocID,1,"Более того, я видел Меч, которого так боятся эти Жрецы, если бы он у меня был, я бы вонзил его в их Тела");
	Doc_PrintLine(nDocID,1,"");
	Doc_SetFont(nDocID,-1,"font_15_book.tga");
	Doc_SetMargins(nDocID,-1,30,20,275,20,1);
	Doc_PrintLine(nDocID,1,"День 78");
	Doc_SetFont(nDocID,-1,"font_10_book.tga");
	Doc_PrintLines(nDocID,1,"Меч находится в Комнате в передней Части Храма, но его охраняет один из Жрецов.");
	Doc_PrintLines(nDocID,1,"Я собираюсь сбежать. Мой дневник оставлю здесь, может, однажды он пригодится другому.");
	Doc_Show(nDocID);
};


instance ItWr_Bloodfly_01(C_Item)
{
	name = "Шершни";
	mainflag = ITEM_KAT_DOCS;
	flags = 0;
	value = 150;
	visual = "ItWr_Book_02_01.3ds";
	material = MAT_LEATHER;
	scemeName = "MAP";
	description = "Шершни";
	text[5] = NAME_Value;
	count[5] = value;
	on_state[0] = UseItWr_Bloodfly_01;
};


func void UseItWr_Bloodfly_01()
{
	var int nDocID;
	nDocID = Doc_Create();
	Doc_SetPages(nDocID,2);
	Doc_SetPage(nDocID,0,"Book_Brown_L.tga",0);
	Doc_SetPage(nDocID,1,"Book_Brown_R.tga",0);
	Doc_SetFont(nDocID,-1,"font_15_book.tga");
	Doc_SetMargins(nDocID,0,275,20,30,20,1);
	Doc_PrintLine(nDocID,0,"Шершни");
	Doc_PrintLine(nDocID,0,"");
	Doc_PrintLine(nDocID,0," ");
	Doc_SetFont(nDocID,-1,"font_10_book.TGA");
	Doc_PrintLine(nDocID,0,"Немного о Шершнях");
	Doc_PrintLine(nDocID,0,"");
	Doc_PrintLines(nDocID,0,"Там, где Почва влажная, а Воздух душный, Шершней, привлекает Пот, стекающий со всех Существ. Своим Жалом они убивают своих Жертв и питаются их Кровью.");
	Doc_PrintLine(nDocID,0,"");
	Doc_SetMargins(nDocID,-1,30,20,275,20,1);
	Doc_PrintLine(nDocID,1,"");
	Doc_PrintLine(nDocID,1,"");
	Doc_PrintLine(nDocID,1,"");
	Doc_PrintLine(nDocID,1,"");
	Doc_PrintLines(nDocID,1,"Извлечение Жала это Искусство, которым овладели многие Болотные охотники. Рассеките глубоко в Брюшке, вокруг Жала неровными надрезами, и осторожно извлеките Жало вместе с окружающей его Тканью. Дайте сбежать Крови, и удалите несъедобную Плоть.");
	Doc_PrintLine(nDocID,1,"");
	Doc_PrintLine(nDocID,1,"");
	Doc_Show(nDocID);
	if(Knows_GetBFSting == FALSE)
	{
		Knows_GetBFSting = 1;
		Log_CreateTopic(GE_AnimalTrophies,LOG_NOTE);
		B_LogEntry(GE_AnimalTrophies,"Знание об Удалении Жала - Шершни");
		PrintScreen("Изучено: Удаление Жала",-1,-1,"FONT_OLD_20_WHITE.TGA",2);
	};
};

