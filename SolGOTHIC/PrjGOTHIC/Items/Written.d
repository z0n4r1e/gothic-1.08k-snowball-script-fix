
instance ItWr_Book_Circle_01(C_Item)
{
	name = "������ ����";
	mainflag = ITEM_KAT_DOCS;
	flags = 0;
	value = 50;
	visual = "ItWr_Book_02_03.3ds";
	material = MAT_LEATHER;
	scemeName = "MAP";
	description = "������ ���� �����";
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
	Doc_PrintLine(nDocID,0,"������ ����");
	Doc_PrintLine(nDocID,0,"---------------");
	Doc_SetFont(nDocID,-1,"font_10_book.TGA");
	Doc_PrintLine(nDocID,0,"");
	Doc_PrintLines(nDocID,0,"����� ���� ������ �������� ������������ �����, ��� ������ ������� �� � ���������� ������������ ���. ����� ����� ����� �� ���� ����������� �� �������� ���� �������������� ���������� � �� �������������. ������ �� ������ ����� ���������� ��� ����, ����� ����� �� ����� ������� � ����� ����� ������������.");
	Doc_SetMargins(nDocID,-1,30,20,275,20,1);
	Doc_PrintLine(nDocID,1,"");
	Doc_PrintLine(nDocID,1,"����");
	Doc_PrintLine(nDocID,1,"---------------");
	Doc_PrintLines(nDocID,1,"������ ��� ������ ���� �������������. ������� ��� ����� ���������� ��� ������� ����.");
	Doc_PrintLine(nDocID,1,text);
	Doc_PrintLine(nDocID,1,"");
	Doc_PrintLine(nDocID,1,"������� ������");
	Doc_PrintLine(nDocID,1,"---------------");
	Doc_PrintLines(nDocID,1,"������ ���������� �������.");
	Doc_PrintLine(nDocID,1,Text_1);
	Doc_PrintLine(nDocID,1,"");
	Doc_PrintLine(nDocID,1,"�������� ������");
	Doc_PrintLine(nDocID,1,"---------------");
	Doc_PrintLines(nDocID,1,"������ ����������� ����.");
	Doc_PrintLine(nDocID,1,Text_2);
	Doc_Show(nDocID);
};


instance ItWr_Book_Circle_02(C_Item)
{
	name = "������ ����";
	mainflag = ITEM_KAT_DOCS;
	flags = 0;
	value = 100;
	visual = "ItWr_Book_02_03.3ds";
	material = MAT_LEATHER;
	scemeName = "MAP";
	description = "������ ���� �����";
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
	Doc_PrintLine(nDocID,0,"������ ����");
	Doc_PrintLine(nDocID,0,"---------------");
	Doc_SetFont(nDocID,-1,"font_10_book.TGA");
	Doc_PrintLine(nDocID,0,"");
	Doc_PrintLine(nDocID,0,"");
	Doc_PrintLines(nDocID,0,"������ ����� ����� ����� ������� ����, ����������� � ��������. �������, ������� ����� ����, ���������� �����.");
	Doc_PrintLine(nDocID,0,"");
	Doc_PrintLine(nDocID,0,"");
	Doc_PrintLines(nDocID,0,"������ ���������� �������� � ���� ����� ��� ���. ��� ���� ��������� �����.");
	Doc_PrintLine(nDocID,0,"");
	Doc_PrintLine(nDocID,0,"");
	Doc_SetMargins(nDocID,-1,30,20,275,20,1);
	Doc_PrintLine(nDocID,1,"");
	Doc_PrintLine(nDocID,1,"���������");
	Doc_PrintLine(nDocID,1,"---------------");
	Doc_PrintLines(nDocID,1,"������ ������, ��� ���� ������ � ��� ��� ��� �� ���� ���������. � ������ �� �����: � �� ����� ����������� ���������, �� ��� �������� ���� �������� ����.");
	Doc_PrintLine(nDocID,1,"");
	Doc_PrintLine(nDocID,1,"");
	Doc_PrintLines(nDocID,1,"���������� �������� ����.");
	Doc_PrintLine(nDocID,1,"���������� �������");
	Doc_PrintLine(nDocID,1,Text_1);
	Doc_PrintLine(nDocID,1,"");
	Doc_PrintLine(nDocID,1,"");
	Doc_Show(nDocID);
};


instance ItWr_Book_Circle_03(C_Item)
{
	name = "������ ����";
	mainflag = ITEM_KAT_DOCS;
	flags = 0;
	value = 150;
	visual = "ItWr_Book_02_03.3ds";
	material = MAT_LEATHER;
	scemeName = "MAP";
	description = "������ ���� �����";
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
	Doc_PrintLine(nDocID,0,"������ ����");
	Doc_PrintLine(nDocID,0,"---------------");
	Doc_SetFont(nDocID,-1,"font_10_book.TGA");
	Doc_PrintLine(nDocID,0,"");
	Doc_PrintLine(nDocID,0,"");
	Doc_PrintLines(nDocID,0,"��������� ���������� ��������� ������������ ����� ���������� ����. ����� ���������� �������� ������������ ������.");
	Doc_PrintLine(nDocID,0,"");
	Doc_PrintLines(nDocID,0,"������ ���������� ���������� ����������� �� ��� ���, ���� ��� ��������� �� ������� ���� �������. ����� ���������� ������� �������� ������������ �������.");
	Doc_SetMargins(nDocID,-1,30,20,275,20,1);
	Doc_PrintLine(nDocID,1,"");
	Doc_PrintLine(nDocID,1,"�������� ���");
	Doc_PrintLine(nDocID,1,"---------------");
	Doc_PrintLines(nDocID,1,"������ ��� ������ ����� ����. �������� ��� ���������� ������.");
	Doc_PrintLine(nDocID,1,"���������� ������");
	Doc_PrintLine(nDocID,1,text);
	Doc_PrintLine(nDocID,1,"");
	Doc_PrintLine(nDocID,1,"������� �����");
	Doc_PrintLine(nDocID,1,"---------------");
	Doc_PrintLines(nDocID,1,"������ ����������� � ����� ����. ���������� ��������� � ����� ����� ����.");
	Doc_PrintLine(nDocID,1,"");
	Doc_PrintLine(nDocID,1,Text_1);
	Doc_PrintLine(nDocID,1,"");
	Doc_PrintLine(nDocID,1,"������� ������");
	Doc_PrintLine(nDocID,1,"---------------");
	Doc_PrintLines(nDocID,1,"��� ���������� �������.");
	Doc_PrintLine(nDocID,1,Text_2);
	Doc_Show(nDocID);
};


instance ItWr_Book_Circle_04(C_Item)
{
	name = "��������� ����";
	mainflag = ITEM_KAT_DOCS;
	flags = 0;
	value = 200;
	visual = "ItWr_Book_02_03.3ds";
	material = MAT_LEATHER;
	scemeName = "MAP";
	description = "��������� ���� �����";
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
	Doc_PrintLine(nDocID,0,"��������� ����");
	Doc_PrintLine(nDocID,0,"---------------");
	Doc_SetFont(nDocID,-1,"font_10_book.TGA");
	Doc_PrintLine(nDocID,0,"");
	Doc_PrintLine(nDocID,0,"�����");
	Doc_PrintLine(nDocID,0,"������������");
	Doc_PrintLine(nDocID,0,"---------------");
	Doc_PrintLine(nDocID,0,"");
	Doc_PrintLine(nDocID,0,"");
	Doc_PrintLines(nDocID,0,"������������ ������ ���������� ������ �������� ��, ��� ���� ��� ����� ��������� � �����, ������������ �� ����� ����� �������, ���������� ����������� ������. ������� ����� ���� ������������ ���������. ������� ����������� ��� ����� ������������ ���.");
	Doc_SetMargins(nDocID,-1,30,20,275,20,1);
	Doc_PrintLine(nDocID,1,"�������� �����");
	Doc_PrintLine(nDocID,1,"---------------");
	Doc_PrintLines(nDocID,1,"��� ���������� ������ � �������� �����, ��, ����� � ���� ������, ����� ����� ������������ � �� ������.");
	Doc_PrintLine(nDocID,1,"���������� ������");
	Doc_PrintLine(nDocID,1,"");
	Doc_PrintLine(nDocID,1,text);
	Doc_PrintLine(nDocID,1,"������");
	Doc_PrintLine(nDocID,1,"---------------");
	Doc_PrintLines(nDocID,1,"��� ������ ���������� ��������, ��� ������ ����� ����� �������� ������. ���� � ����������� ������ �������������� ������.");
	Doc_PrintLine(nDocID,1,Text_1);
	Doc_PrintLine(nDocID,1,"");
	Doc_PrintLine(nDocID,1,"������ ������");
	Doc_PrintLine(nDocID,1,"---------------");
	Doc_PrintLines(nDocID,1,"��� ���������� ������ ���������� ���������� ���������, ���������� ����.");
	Doc_PrintLine(nDocID,1,Text_2);
	Doc_Show(nDocID);
};


instance ItWr_Book_Circle_05(C_Item)
{
	name = "����� ����";
	mainflag = ITEM_KAT_DOCS;
	flags = 0;
	value = 250;
	visual = "ItWr_Book_02_03.3ds";
	material = MAT_LEATHER;
	scemeName = "MAP";
	description = "����� ���� �����";
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
	Doc_PrintLine(nDocID,0,"����� ����");
	Doc_PrintLine(nDocID,0,"---------------");
	Doc_SetFont(nDocID,-1,"font_10_book.TGA");
	Doc_PrintLine(nDocID,0,"");
	Doc_PrintLine(nDocID,0,"");
	Doc_PrintLine(nDocID,0,"�������� �����");
	Doc_PrintLine(nDocID,0,"---------------");
	Doc_PrintLines(nDocID,0,"���� ������������� ���� �������� ��� �������� ������ ����.");
	Doc_PrintLine(nDocID,0,Text_1);
	Doc_SetMargins(nDocID,-1,30,20,275,20,1);
	Doc_PrintLine(nDocID,1,"");
	Doc_PrintLine(nDocID,1,"������� �����");
	Doc_PrintLine(nDocID,1,"---------------");
	Doc_PrintLines(nDocID,1,"������� ����� �������� ���������� �����������, ���������� � ������� �������� ����� �� ��������.");
	Doc_PrintLines(nDocID,1,"���������� ��������� � ����� ����� ����.");
	Doc_PrintLine(nDocID,1,Text_2);
	Doc_Show(nDocID);
};


instance ItWr_Book_Circle_06(C_Item)
{
	name = "������ ����";
	mainflag = ITEM_KAT_DOCS;
	flags = 0;
	value = 300;
	visual = "ItWr_Book_02_03.3ds";
	material = MAT_LEATHER;
	scemeName = "MAP";
	description = "������ ���� �����";
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
	Doc_PrintLine(nDocID,0,"������ ����");
	Doc_SetFont(nDocID,-1,"font_10_book.TGA");
	Doc_PrintLine(nDocID,0,"");
	Doc_PrintLine(nDocID,0,"");
	Doc_PrintLine(nDocID,0,"");
	Doc_PrintLine(nDocID,0,"");
	Doc_PrintLine(nDocID,0,"������� ������");
	Doc_PrintLine(nDocID,0,"---------------");
	Doc_PrintLines(nDocID,0,"������� ���������. ������ ������������ �������, ��������� ��������� ����� ����� ��������.");
	Doc_PrintLine(nDocID,0,"");
	Doc_PrintLine(nDocID,0,text);
	Doc_SetMargins(nDocID,-1,30,20,275,20,1);
	Doc_PrintLine(nDocID,1,"");
	Doc_PrintLine(nDocID,1,"");
	Doc_PrintLine(nDocID,1,"������ ������");
	Doc_PrintLine(nDocID,1,"---------------");
	Doc_PrintLines(nDocID,1,"���� �� ����������� ���� �����-�� ������ � ����, ������� ���� �������");
	Doc_PrintLines(nDocID,1,"�������� ������, ��� ���� ��� ���� ����������.");
	Doc_PrintLine(nDocID,1,"");
	Doc_Show(nDocID);
};


instance Goettergabe(C_Item)
{
	name = "��� �����";
	mainflag = ITEM_KAT_DOCS;
	flags = 0;
	value = 100;
	visual = "ItWr_Book_02_01.3ds";
	material = MAT_LEATHER;
	scemeName = "MAP";
	description = "��� �����";
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
	Doc_PrintLine(nDocID,0,"�����");
	Doc_PrintLine(nDocID,0,"");
	Doc_SetMargins(nDocID,0,275,20,30,20,1);
	Doc_PrintLine(nDocID,0," ");
	Doc_SetFont(nDocID,-1,"font_10_book.TGA");
	Doc_PrintLine(nDocID,0,"��� �����");
	Doc_PrintLine(nDocID,0,"");
	Doc_PrintLines(nDocID,0,"������� �� ���������� ������ ����� �������� ������ ������� � ������ �����. �� ��� �� �������� ������? ��� ������ �������, ��� ����� �����? ��� ����� �������������� �������� �� ���������. ��� ����� ������� � ��������, ��������� � ����������.");
	Doc_SetMargins(nDocID,-1,30,20,275,20,1);
	Doc_PrintLine(nDocID,1,"");
	Doc_PrintLine(nDocID,1,"");
	Doc_PrintLine(nDocID,1,"");
	Doc_PrintLine(nDocID,1,"");
	Doc_PrintLines(nDocID,1,"��� ��� ��������? ��� ������� ����� �������� ��, ���������, �� ����������� ��������������? ����� - ��� �����. ��� ����� ������������ ��� ����� ���, ��� ����� ��� ������������. ����������� ����, ������� ����� �������������� ���� �������.");
	Doc_PrintLine(nDocID,1,"");
	Doc_PrintLine(nDocID,1,"������ ���������");
	Doc_Show(nDocID);
};


instance Geheimnisse_der_Zauberei(C_Item)
{
	name = "������� �����";
	mainflag = ITEM_KAT_DOCS;
	flags = 0;
	value = 100;
	visual = "ItWr_Book_02_02.3ds";
	material = MAT_LEATHER;
	scemeName = "MAP";
	description = "������� �����";
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
	Doc_PrintLine(nDocID,0,"������� �����");
	Doc_PrintLine(nDocID,0,"");
	Doc_PrintLines(nDocID,0,"����� �� ������� � ����� ����, �� ������ �������� ������� �������� � ���. �� ����� ������ �� ����� � ���������� ��. ������������ ��� ��������� ������ ���� �������� ������������ ���� ���, ��� ����������.");
	Doc_SetMargins(nDocID,-1,30,20,275,20,1);
	Doc_PrintLine(nDocID,1,"");
	Doc_PrintLine(nDocID,1,"");
	Doc_PrintLine(nDocID,1,"");
	Doc_PrintLine(nDocID,1,"");
	Doc_PrintLines(nDocID,1,"��� ��� ������ ����������� ��� ��������� �� ���� ������������ ���������� ���. �� �������� ��, ���������� � ���������� � ��� ���, ������� �� �����. � ����� ������� ��� ���� ��������� � ����� ���, ������ ���, ��������� ����. �������, ��� ������ �������� �� � ������� �� �����.");
	Doc_PrintLine(nDocID,1,"");
	Doc_PrintLine(nDocID,1,"");
	Doc_PrintLine(nDocID,1,"������ ���������");
	Doc_Show(nDocID);
};


instance Machtvolle_Kunst(C_Item)
{
	name = "�������������� ���������";
	mainflag = ITEM_KAT_DOCS;
	flags = 0;
	value = 100;
	visual = "ItWr_Book_02_03.3ds";
	material = MAT_LEATHER;
	scemeName = "MAP";
	description = "�������������� ���������";
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
	Doc_PrintLine(nDocID,0,"�������������� ���������");
	Doc_PrintLine(nDocID,0,"");
	Doc_SetFont(nDocID,-1,"font_10_book.tga");
	Doc_PrintLine(nDocID,0,"");
	Doc_PrintLines(nDocID,0,"������ ����");
	Doc_PrintLine(nDocID,0,"");
	Doc_PrintLine(nDocID,0,"");
	Doc_PrintLines(nDocID,0,"����������� ���� �������������� ������������ ������� �������� �����������. ������� ��� ����������, ��� ������ �� �����. ���������� ������� ���, ����� �� ��������. �� ��� ������ ����� ��������, �������� � ������ �����.");
	Doc_SetMargins(nDocID,-1,30,20,275,20,1);
	Doc_PrintLine(nDocID,1,"");
	Doc_PrintLine(nDocID,1,"");
	Doc_PrintLine(nDocID,1,"");
	Doc_PrintLine(nDocID,1,"");
	Doc_PrintLines(nDocID,1,"� ������ ���� ��� ����������� ����� ����� ��� ������� � �������. ������� ���� ����� ���� �����, �� ����� �� �����, � ��� �������� �� ��������, ������� ������ �����������. ���������� � ���������� ��� ����������� � ��� ���� �� ���� �������, ��� ��� ��������� ������������ - ��� ������ ����������� ����. ������ ��� ��������� ������ ���� ��������� ������� � ��������� ������.");
	Doc_Show(nDocID);
};


instance Elementare_Arcanei(C_Item)
{
	name = "������ �����";
	mainflag = ITEM_KAT_DOCS;
	flags = 0;
	value = 100;
	visual = "ItWr_Book_02_04.3ds";
	material = MAT_LEATHER;
	scemeName = "MAP";
	description = "������ �����";
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
	Doc_PrintLine(nDocID,0,"������ �����");
	Doc_PrintLine(nDocID,0,"");
	Doc_SetFont(nDocID,-1,"font_10_book.tga");
	Doc_PrintLine(nDocID,0,"");
	Doc_PrintLines(nDocID,0,"����� ����� � �����������");
	Doc_PrintLine(nDocID,0,"");
	Doc_PrintLine(nDocID,0,"");
	Doc_PrintLines(nDocID,0,"����� �������� ����� ����� � �� ����� � ��������� ����������, ���� ��������� ����� ������������. ��� ��� �������� � �����: ����� ����� ���� ���� ���������. ��� ����� ���������������� ��, �������� �����, �� ���� ���������� ���.");
	Doc_SetMargins(nDocID,-1,30,20,275,20,1);
	Doc_PrintLine(nDocID,1,"");
	Doc_PrintLine(nDocID,1,"");
	Doc_PrintLine(nDocID,1,"");
	Doc_PrintLine(nDocID,1,"");
	Doc_PrintLine(nDocID,1,"");
	Doc_PrintLines(nDocID,1,"������ �������, ���� ������������� ��� � ����������� �����, ����� ����� � ������. �������� ����� ����� ���������� ���� � ��������� ������, � ��� ����� ����������� ������. ����������� ���� ��������� ��� ��������� ��������, �������� ��, �� �������, ��� ��� ����������, ��� ����� �������� ����� �������������� ����� �� ���������.");
	Doc_Show(nDocID);
};


instance Wahre_Macht(C_Item)
{
	name = "��������� ����";
	mainflag = ITEM_KAT_DOCS;
	flags = 0;
	value = 100;
	visual = "ItWr_Book_02_05.3ds";
	material = MAT_LEATHER;
	scemeName = "MAP";
	description = "��������� ����";
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
	Doc_PrintLine(nDocID,0,"��������� ����");
	Doc_PrintLine(nDocID,0,"");
	Doc_SetFont(nDocID,-1,"font_10_book.tga");
	Doc_PrintLine(nDocID,0,"");
	Doc_PrintLine(nDocID,0,"");
	Doc_PrintLines(nDocID,0,"������ �����������");
	Doc_PrintLine(nDocID,0,"");
	Doc_PrintLine(nDocID,0,"");
	Doc_PrintLines(nDocID,0,"��� �� ����� �� ������� �����. �� �������� ������������ ������ �� ������������ ����, � ������ � ������������ ������� �������, ������� ����������� ������ ��������.");
	Doc_SetMargins(nDocID,-1,30,20,275,20,1);
	Doc_PrintLine(nDocID,1,"");
	Doc_PrintLine(nDocID,1,"");
	Doc_PrintLine(nDocID,1,"");
	Doc_PrintLine(nDocID,1,"");
	Doc_PrintLine(nDocID,1,"");
	Doc_PrintLine(nDocID,1,"");
	Doc_PrintLines(nDocID,1,"����� ��� ��������� ���� ������, ������������ ��� ��������� ��� ������� �������� �������������, �� ����� ����� � ������ ���,  ��������� ������� ��������. ��� ����� ���������� ����� ������� ������� � ������������, � ���� ������, ������ ����� ������, �� ������ ���������� ���.");
	Doc_Show(nDocID);
};


instance Das_magische_Erz(C_Item)
{
	name = "���������� ����";
	mainflag = ITEM_KAT_DOCS;
	flags = 0;
	value = 100;
	visual = "ItWr_Book_02_02.3ds";
	material = MAT_LEATHER;
	scemeName = "MAP";
	description = "���������� ����";
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
	Doc_PrintLine(nDocID,0,"���������� ����");
	Doc_PrintLine(nDocID,0,"");
	Doc_SetFont(nDocID,-1,"font_10_book.tga");
	Doc_PrintLine(nDocID,0,"");
	Doc_PrintLines(nDocID,0,"������ ������ ������ �� ���� ��������. ��� ������������ ����� � ��������� ������. ��������� �� �����������, ����� ����������� � �������� ��� ���������. ��� ������ ����, ����� ���������� � �� ����� ������� �����, ������� �� ����� ��������, ���������� �� ���������� ����, ���������� ������� ����������. ���������� ��������� � � ������� ��������� ���� ����, ���������� � �������� ������ �� ������� �������.");
	Doc_SetMargins(nDocID,-1,30,20,275,20,1);
	Doc_PrintLine(nDocID,1,"");
	Doc_PrintLine(nDocID,1,"");
	Doc_PrintLines(nDocID,1,"����� ������ ��������� ����� ��� � ����� �������. ������ � ����� ���������� ����� ������ � ������ �� ���� ������� ����� �� ���� �������. �� ��� ������������ ����. ����� ������ ���� �� �����, ��������� ��������� ����� ������. ������ �������, ��� ���� ���� ��������� � ���������, �� ����� �������� ������ �����.");
	Doc_Show(nDocID);
};


instance Schlacht_um_Varant1(C_Item)
{
	name = "����� � ��������";
	mainflag = ITEM_KAT_DOCS;
	flags = 0;
	value = 100;
	visual = "ItWr_Book_02_04.3ds";
	material = MAT_LEATHER;
	scemeName = "MAP";
	description = "����� � ��������";
	text[0] = "��� ������";
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
	Doc_PrintLines(nDocID,0,"� �� �����, �������, ������ �����. �� ������ ���������� ������ � ����� �� ������, ����� ������ ����� �����. �� ���������� � ������ ������, �� ������ ����� ���������� ���������� ������ ��� ������ �����. ����� � ����� ��� ����� ������ �� ������� �������. �� ����, ��� ������ � ���� �������� �� �������� ������� � �������");
	Doc_SetMargins(nDocID,-1,30,20,275,20,1);
	Doc_PrintLine(nDocID,1,"");
	Doc_PrintLines(nDocID,1,"������������ � ������� �������� ����. ��� ���������� ���������� ����� ���������, ����� �������� ������");
	Doc_PrintLine(nDocID,1,"");
	Doc_PrintLines(nDocID,1,"� ������ ��� �����, ��� ����� �������, � ���������� ������ ������� ������. �� ����� �� ��� ���������� ����� ����� ������� ���� ����. �� �������� ������������ � �������� ������������ ������. ������ � ���� ������ ������ ������� � ����������� � ����� �������������� ���� �� ���������� ������� ����� ������ ������ ������.");
	Doc_Show(nDocID);
};


instance Schlacht_um_Varant2(C_Item)
{
	name = "����� � ��������";
	mainflag = ITEM_KAT_DOCS;
	flags = 0;
	value = 100;
	visual = "ItWr_Book_02_05.3ds";
	material = MAT_LEATHER;
	scemeName = "MAP";
	description = "����� � ��������";
	text[0] = "��� ������";
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
	Doc_PrintLines(nDocID,0,"����� ����� ��� ���������. ������ ������� ���� ������� �����, ��������� �������� ���������� ��������� ��� �����. ������ ����� �� ���� ������������ �� ����� ��������, �� �������� ����� ��������� ������������ ������ ����������. ������������ ��������� � ������������� ����� ���������� ����� �������, ������ ���������� �� ��������� �������, ������� � ������ �� ��� ��������� �������� �� ���������� ��������� � ����������� ������.");
	Doc_SetMargins(nDocID,-1,30,20,275,20,1);
	Doc_PrintLine(nDocID,1,"");
	Doc_PrintLines(nDocID,1,"�� �� ���� ��� ��� ����� ���� � �������. �������� �� ��, ��� ������������ ��� ���� ������������ ����������, �������� ��������� �����������. ��, ����� �� �������, ������� ��� � ��� �������. ������� ��������� ��������� ����������� �� ������ ���������� ����� ������. ������� �� ������������� �� ������ ������ � ���������� ������, ���� ������ � ������. ������� � ����������������� ������ ������� ������������ � ������� �����. ��� ��� �������.");
	Doc_Show(nDocID);
};


instance Myrtanas_Lyrik(C_Item)
{
	name = "������ �������";
	mainflag = ITEM_KAT_DOCS;
	flags = 0;
	value = 100;
	visual = "ItWr_Book_02_02.3ds";
	material = MAT_LEATHER;
	scemeName = "MAP";
	description = "������ �������";
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
	Doc_PrintLine(nDocID,0,"    �����");
	Doc_PrintLine(nDocID,0,"");
	Doc_PrintLine(nDocID,0,"          ��������");
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
	Doc_PrintLines(nDocID,1,"��������, ���� ���� ����� ������,");
	Doc_PrintLine(nDocID,1,"");
	Doc_PrintLines(nDocID,1,"�� ���� ������� ������ ���� ����� � ���.");
	Doc_PrintLine(nDocID,1,"");
	Doc_PrintLines(nDocID,1,"����� � ���� ����� ��������,");
	Doc_PrintLine(nDocID,1,"");
	Doc_PrintLines(nDocID,1,"��� ���� � ������ � �������� �����.");
	Doc_PrintLine(nDocID,1,"");
	Doc_PrintLines(nDocID,1,"�������� ��������� ���� �����");
	Doc_PrintLine(nDocID,1,"");
	Doc_PrintLines(nDocID,1,"� ������� ������ ��� ��������.");
	Doc_PrintLine(nDocID,1,"");
	Doc_PrintLines(nDocID,1,"������ ���� ����� � �����������,");
	Doc_PrintLine(nDocID,1,"");
	Doc_PrintLines(nDocID,1,"� ���, ��� ���� � ���� �� �������.");
	Doc_PrintLines(nDocID,1,"");
	Doc_Show(nDocID);
};


instance Lehren_der_Goetter1(C_Item)
{
	name = "����� ����� ��� ������";
	mainflag = ITEM_KAT_DOCS;
	flags = 0;
	value = 100;
	visual = "ItWr_Book_02_01.3ds";
	material = MAT_LEATHER;
	scemeName = "MAP";
	description = "����� �����";
	text[0] = "��� ������";
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
	Doc_PrintLines(nDocID,0,"������ �� ����� �����, ��� � ���� ���� �� ����. ����� ������ �����, ��� � ���� ���� �� ����. ������� ���������� ������, ��� ������� ��� ���.");
	Doc_PrintLine(nDocID,0,"");
	Doc_PrintLines(nDocID,0,"����� ������: � ���� �������� ���, ��� �� ������� �� ����� ����������, �� ������������, ������ ��� ��� ��������� � �����. � ���� ������, ���� � �����. � ���, ��� ������ ������ - ���� ������ ����, � ������ ��� ���� ���������� � ������� ����� �� ���� ������.");
	Doc_SetMargins(nDocID,-1,30,20,275,20,1);
	Doc_PrintLine(nDocID,1,"");
	Doc_PrintLines(nDocID,1,"������ ������: ��������� � ������, ��� ������ ����, ����� ������� ��� ��������. ����� ������, ����� ���������� ��� �����, ��� ��� ����� ���� ������� ��. � ��, ��� ���������� � ���� ���������, ������ ���� ���������� � ������� ����� �� ���� ������.");
	Doc_PrintLine(nDocID,1,"");
	Doc_PrintLines(nDocID,1,"�������� ������: ��� ����� ������ �� ��� � ������� ���� ���� ������ ���� �����, ��� ����� ���� �������. � ������� ���� ��� ��������, ���������� � �������, � ��� ��� ������������� �� ��� � ������� ����� �� ���� ������.");
	Doc_Show(nDocID);
};


instance Lehren_der_Goetter2(C_Item)
{
	name = "����� ����� ��� ������";
	mainflag = ITEM_KAT_DOCS;
	flags = 0;
	value = 100;
	visual = "ItWr_Book_02_02.3ds";
	material = MAT_LEATHER;
	scemeName = "MAP";
	description = "����� �����";
	text[0] = "��� ������";
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
	Doc_PrintLines(nDocID,0,"� ������ ������: �� ���� �� ���, �� ����, � �� ���� �� ����� ����� �����. ����� ������ �����, ��� ����� ����� ���� � ������ � ����� ����. �� ������� ���� ��� ���� ������, � ������ ������� �� ������. ������ � ��� ���� ������������ ��� ����� ������, � ����� ����� �������� ���� � ������� ���������. �������� ������� ����. ������ ������� ��� ����. ����� ����� �������� ���� ����� � ������� �������. ������ ������� �������� ������������, ������ ������, ������������ � ���������. � ��������� ����� �� ���� ��� ����� � �����, ��� ��� ������.");
	Doc_SetMargins(nDocID,-1,30,20,275,20,1);
	Doc_PrintLine(nDocID,1,"");
	Doc_PrintLines(nDocID,1,"����� ����� �������, � ������ ������ �� ������. ���� �� ����������� ���������, ������ ��� ����� ��� �����. � ����� � ������ �������� ������� ������ ��������, ����� ���� �� �� ���������� ���. �� ��� ��� ��� ����� �������, � ������ ����� �� ���� ����. �������� ���� ��� � ������: ���� ��� �� ����������� ���, ��� ����� ���� �� ������. � ������� �� ������, � ����� ���� �������.");
	Doc_Show(nDocID);
};


instance Lehren_der_Goetter3(C_Item)
{
	name = "����� ����� ��� ������";
	mainflag = ITEM_KAT_DOCS;
	flags = 0;
	value = 100;
	visual = "ItWr_Book_02_03.3ds";
	material = MAT_LEATHER;
	scemeName = "MAP";
	description = "����� �����";
	text[0] = "��� ������";
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
	Doc_PrintLines(nDocID,0,"������� �����, ����� ���� ����� ������� ��� � �������� � ���. � ����� ��� ������� � ��������. ����� ������� �� �� ����������� ������� ������ � ������ ��� ������. � �� ������� ������ ���� ���� ��������� ����, � ����� �� ���� ������ ��. ��� ���� �������� � ���� ���� ����� ������������ ����. ������ ���� ��������� �������, � ������ ��������� �� ����� ������� ������� ������ � ������ �������. ����� ������ ���� � ����������� � �������� ���, ��� ���������� ��� � ���� ���.");
	Doc_SetMargins(nDocID,-1,30,20,275,20,1);
	Doc_PrintLine(nDocID,1,"");
	Doc_PrintLines(nDocID,1,"������ ���� ����� ������� � ����� ���� ��������, ������� ������� ������������. �� � ����� ����������� ��������� �����������. ����� ��� �������� � �������� � ������ ������. ��� ����������� ����������. �������� �����, � ���� � ������� ���� ���� �������. �������� �� �������� ������� ���� ������ ����� ����, � ���������� ������ ������� ���� ������ ����� ����.");
	Doc_Show(nDocID);
};


instance Jagd_und_Beute(C_Item)
{
	name = "������� � ������";
	mainflag = ITEM_KAT_DOCS;
	flags = 0;
	value = 100;
	visual = "ItWr_Book_02_02.3ds";
	material = MAT_LEATHER;
	scemeName = "MAP";
	description = "������� � ������";
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
	Doc_PrintLines(nDocID,0,"��� ������ �������� ������ ����, � ��� ������ ����� ��������� ������ ������ �� ��������� �����. ����� �������� �� ������ ������ ��������� ��� ����� � ��� �����, ��� �������� ������ �� ������. �� ���� ���-�� ��������� ������ ������, �� ����� ������� ��������� ������ ��������� � ����, �������� ��, �������� �������.");
	Doc_SetMargins(nDocID,-1,30,20,275,20,1);
	Doc_PrintLine(nDocID,1,"");
	Doc_PrintLines(nDocID,1,"��������� ����� ��� ������ ���� �������� ����� �� ����� ������� ����� ������ ����� �����. ��������� ����, � ������� �������� ���� ��������. � ���� �� ������ ��������� � �������. ����� �� �������� �������� �������� ����� �� ����������? ����� � ����� ��������� ��� �������� - ��� � ��� ����������� �������� ��������� �������!");
	Doc_Show(nDocID);
};


instance Kampfkunst(C_Item)
{
	name = "��������� ���";
	mainflag = ITEM_KAT_DOCS;
	flags = 0;
	value = 100;
	visual = "ItWr_Book_02_03.3ds";
	material = MAT_LEATHER;
	scemeName = "MAP";
	description = "��������� ���";
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
	Doc_PrintLines(nDocID,0,"�� ���������� ���� ����� ��� ������ ����� ������� ���������� ����������� �������� ��������� ���.");
	Doc_PrintLine(nDocID,0,"");
	Doc_PrintLine(nDocID,0,"");
	Doc_PrintLines(nDocID,0,"��������, ������������, ��������, ���������������� � �������� ������� �������� ���� ����������, ������� ���� �����������. ���� ���� ������ ������� ������ ����������, �������� ��� ������ ����� ������ ������������������ � ����� �����������.");
	Doc_SetMargins(nDocID,-1,30,20,275,20,1);
	Doc_PrintLine(nDocID,1,"");
	Doc_PrintLine(nDocID,1,"");
	Doc_PrintLine(nDocID,1,"");
	Doc_PrintLines(nDocID,1,"���� ������ ������� � �������� ���� � ���� ������ ����� ����.");
	Doc_PrintLine(nDocID,1,"");
	Doc_PrintLine(nDocID,1,"");
	Doc_PrintLines(nDocID,1,"����������� �� ������������ �������� ������������ ����. ��������� ����� � ������� ���, �� ������ � �������� ���������� ��� � �������� ���� ��-�������� ����.");
	Doc_Show(nDocID);
};


instance Die_Gruft(C_Item)
{
	name = "�����";
	mainflag = ITEM_KAT_DOCS;
	flags = 0;
	value = 100;
	visual = "ItWr_Book_02_03.3ds";
	material = MAT_LEATHER;
	scemeName = "MAP";
	description = "�����";
	text[5] = NAME_Value;
	count[5] = value;
};

instance Astronomie(C_Item)
{
	name = "����������";
	mainflag = ITEM_KAT_DOCS;
	flags = 0;
	value = 100;
	visual = "ItWr_Book_02_05.3ds";
	material = MAT_LEATHER;
	scemeName = "MAP";
	description = "����������";
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
	Doc_PrintLines(nDocID,0,"� ������ ���������� �������, ���������� ������ ��������: �����, ����, ����� � ������. ��� �����, ��� ����� ����� ������������ � ����� ������ �������������� ����, ���� �������� ��������.  ���� ���� ���� ����������� �������� �����. ");
	Doc_PrintLine(nDocID,0,"");
	Doc_PrintLines(nDocID,0,"������������ ��������� ������� �������� �����������. ��� ���� �������� ����� ������ ������� ����� �����, ������������� ����. �� ���� �������� ���� ���� ��������. ��� ������� �� ��� �� ���������� � �������� ��� ����������.");
	Doc_SetMargins(nDocID,-1,30,20,275,20,1);
	Doc_PrintLine(nDocID,1,"");
	Doc_PrintLines(nDocID,1,"������������ ������ ������, �� ���� ��� ����, ������� ��� ����������� ����� ����� ��������������� ������� ������������ �������� � ������ ����, �������� ����� �� ��������� �������� � ������� ����. ������ �� ��������, ��� ��� �� ��������� �������� ������ �� ���� ��������� ���������.");
	Doc_PrintLine(nDocID,1,"");
	Doc_PrintLines(nDocID,1,"����� ���������� ������ ���������, ��, ����� ���������� ����������������� ���������� ����, �� ��������� �� ������ ����.");
	Doc_Show(nDocID);
};


instance Rezepturen(C_Item)
{
	name = "�������";
	mainflag = ITEM_KAT_DOCS;
	flags = 0;
	value = 100;
	visual = "ItWr_Book_02_04.3ds";
	material = MAT_LEATHER;
	scemeName = "MAP";
	description = "�������";
	text[0] = "��� ������";
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
	Doc_PrintLines(nDocID,0,"������� ���������");
	Doc_PrintLine(nDocID,0,"----------------");
	Doc_PrintLine(nDocID,0,"");
	Doc_PrintLines(nDocID,0,"������ �� ����� �������� �����. ��� �������� �������� ������. ��������� ������ �� ����� ���������� �������� �������� �� ��� ��������, ����������, ��� ������ ��� ������. �� ������ ������! ������ � ������ ��������� ������������. ��� �������� ������� �������������������!");
	Doc_SetMargins(nDocID,-1,30,20,275,20,1);
	Doc_PrintLine(nDocID,1,"");
	Doc_PrintLines(nDocID,1,"");
	Doc_PrintLine(nDocID,1,"");
	Doc_PrintLines(nDocID,1,"�����, ��������� � ������������� ������, �� ������ � �������� ������ �������� ������� ����� ����. ������ � ������ �������������. ��� ���� ������, ��� ��� ������, � ��� ���� ������, ��� �� ����� ���� ������.");
	Doc_Show(nDocID);
};


instance Rezepturen2(C_Item)
{
	name = "�������";
	mainflag = ITEM_KAT_DOCS;
	flags = 0;
	value = 100;
	visual = "ItWr_Book_02_04.3ds";
	material = MAT_LEATHER;
	scemeName = "MAP";
	description = "�������";
	text[0] = "��� ������";
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
	Doc_PrintLines(nDocID,0,"���� ��������");
	Doc_PrintLine(nDocID,0,"--------------------");
	Doc_PrintLine(nDocID,0,"");
	Doc_PrintLines(nDocID,0,"������ �������� ��� ������ ���� ������������ �� ������� ��������. ���������� ����������� ��� ������� � ���, ����� ���� ��� �������, �� ��������� ������� ���������. �������� ����������� � �������� �������, ��������� � ��������.");
	Doc_SetMargins(nDocID,-1,30,20,275,20,1);
	Doc_PrintLine(nDocID,1,"");
	Doc_PrintLines(nDocID,1,"");
	Doc_PrintLine(nDocID,1,"");
	Doc_PrintLine(nDocID,1,"");
	Doc_PrintLines(nDocID,1,"�������� � ������ ����, ��� ������ ���������� ���� ���������� � ����. ���� ������������ �� � ������� ��� �������. ������ ���������� ����� ������� �������� � �������� � �������. ����� �����������, � ��������� ������ ���� ������.");
	Doc_Show(nDocID);
};


instance TagebuchOT(C_Item)
{
	name = "�������";
	mainflag = ITEM_KAT_DOCS;
	flags = 0;
	value = 100;
	visual = "ItWr_Book_02_01.3ds";
	material = MAT_LEATHER;
	scemeName = "MAP";
	description = "�������";
	text[0] = "������ �������� �����";
	text[1] = "������ �������� �������.";
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
	Doc_PrintLine(nDocID,0,"���� 23");
	Doc_SetFont(nDocID,-1,"font_10_book.tga");
	Doc_PrintLines(nDocID,0,"� ������� ���� �������.");
	Doc_PrintLines(nDocID,0,"�� ���� ��������, ������ ����� �������� ���� ����, � ��� ��� ��� ���� ������� ��� � ��������� ��������.");
	Doc_PrintLines(nDocID,0,"�������� �� �������� ����, � ��� ������� �� ����� �������. �������� �������� - ������.");
	Doc_PrintLines(nDocID,0,"� ������ ��������� ������!!!");
	Doc_PrintLine(nDocID,0,"");
	Doc_SetFont(nDocID,-1,"font_15_book.tga");
	Doc_SetMargins(nDocID,0,275,20,30,20,1);
	Doc_PrintLine(nDocID,0,"���� 28");
	Doc_SetFont(nDocID,-1,"font_10_book.tga");
	Doc_PrintLines(nDocID,0,"��� ���������� ���� ������� ������, ��� ������ � ����.");
	Doc_PrintLines(nDocID,0,"������� � ��� ��� �������. ����� ��, ��� ���� ��� ���.");
	Doc_SetFont(nDocID,-1,"font_15_book.tga");
	Doc_SetMargins(nDocID,-1,30,20,275,20,1);
	Doc_PrintLine(nDocID,1,"���� 67");
	Doc_SetFont(nDocID,-1,"font_10_book.tga");
	Doc_PrintLines(nDocID,1,"� ������, ��� � ������� ������� ��� ������. �� ���� ��� ���, ��� �� ��� ����� ����?");
	Doc_PrintLines(nDocID,1,"����� � � ���, �������� ��� ��������� ������. �������� �� ��� � ����, � �� �������� �� �� �����.");
	Doc_PrintLine(nDocID,1,"");
	Doc_SetFont(nDocID,-1,"font_15_book.tga");
	Doc_SetMargins(nDocID,-1,30,20,275,20,1);
	Doc_PrintLine(nDocID,1,"���� 78");
	Doc_SetFont(nDocID,-1,"font_10_book.tga");
	Doc_PrintLines(nDocID,1,"��� ����� � ������� � �������� ����� �����, �� ��� �������� �����.");
	Doc_PrintLines(nDocID,1,"� ��������� �������, �� ������� ���� ������� �����. ��� �����, �����, ������� �� ���������� ����-������.");
	Doc_Show(nDocID);
};


instance ItWr_Bloodfly_01(C_Item)
{
	name = "������";
	mainflag = ITEM_KAT_DOCS;
	flags = 0;
	value = 150;
	visual = "ItWr_Book_02_01.3ds";
	material = MAT_LEATHER;
	scemeName = "MAP";
	description = "������";
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
	Doc_PrintLine(nDocID,0,"������");
	Doc_PrintLine(nDocID,0,"");
	Doc_PrintLine(nDocID,0," ");
	Doc_SetFont(nDocID,-1,"font_10_book.TGA");
	Doc_PrintLine(nDocID,0,"������� � �������");
	Doc_PrintLine(nDocID,0,"");
	Doc_PrintLines(nDocID,0,"�� � ���� �����, ��� ����� ��������� ������ � ������ ������, ���������� ������, ������������ ������� ���� ������ ��������. ��� ����� ����� ����� � ���������� �� ��� �����.");
	Doc_PrintLine(nDocID,0,"");
	Doc_SetMargins(nDocID,-1,30,20,275,20,1);
	Doc_PrintLine(nDocID,1,"");
	Doc_PrintLine(nDocID,1,"");
	Doc_PrintLine(nDocID,1,"");
	Doc_PrintLine(nDocID,1,"");
	Doc_PrintLines(nDocID,1,"������ ��������, ������������ �� �������, ����� ���, ��� �������� ���� �������. ��� ����� ���� ������� ������ � ������, ����� ���������� ������� ������ ������ ���� � ��������� ������� ��� � ������������ �������. ����� ����� ����� � ���������� ���� - ��� ����������.");
	Doc_PrintLine(nDocID,1,"");
	Doc_PrintLine(nDocID,1,"");
	Doc_Show(nDocID);
	if(Knows_GetBFSting == FALSE)
	{
		Knows_GetBFSting = TRUE;
		Log_CreateTopic(GE_AnimalTrophies,LOG_NOTE);
		B_LogEntry(GE_AnimalTrophies,"��� ������� ���� - ������");
		PrintScreen("������ �������� ����",-1,-1,"FONT_OLD_20_WHITE.TGA",2);
	};
};

