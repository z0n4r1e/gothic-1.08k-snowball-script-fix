
instance ItWrFocusmapPsi(C_Item)
{
	name = "����� �'������� � �������";
	mainflag = ITEM_KAT_DOCS;
	flags = ITEM_MISSION;
	value = 15;
	visual = "ItWr_Map_01.3ds";
	material = MAT_LEATHER;
	scemeName = "MAP";
	on_state[0] = UseFocusmapPsi;
	description = name;
	text[1] = "�� ���� ����� ������ ���� � �������, ";
	text[2] = "������� ����� �'������� ��� ������";
	text[3] = "�������.";
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
	name = "������ �� ����� � ����";
	mainflag = ITEM_KAT_NONE;
	flags = ITEM_MISSION;
	hp = 1;
	hp_max = 1;
	weight = 1;
	value = 1;
	visual = "ItMi_Focus_01.3ds";
	material = MAT_STONE;
	description = name;
	text[1] = "���� �� ���� ��������, ����������������";
	text[2] = "��� �������� ����������� �������.";
};

instance ItMi_Stuff_Gearwheel_01(C_Item)
{
	name = "��������";
	mainflag = ITEM_KAT_NONE;
	flags = ITEM_MISSION;
	value = 0;
	visual = "ItMi_Stuff_Gearwheel_01.3ds";
	material = MAT_METAL;
	description = name;
	text[0] = "��� �������� �� ���������  ������ ��������,";
	text[1] = "����������� � ����������� ������� �������";
	text[2] = "������ �����.";
};

instance ItAt_Crawlerqueen(C_Item)
{
	name = "���� �������";
	mainflag = ITEM_KAT_NONE;
	flags = ITEM_MISSION | ITEM_MULTI;
	value = 100;
	visual = "ItAt_Crawlerqueen.3ds";
	material = MAT_LEATHER;
	description = name;
	text[0] = "����� ���� �����������";
	text[1] = "�������� ��������.";
	text[2] = "� ��� ���������� ����� ������� ��������,";
	text[3] = "��� � �������� ������� ��������.";
	text[5] = NAME_Value;
	count[5] = value;
};

instance ItWrFokusbuch(C_Item)
{
	name = "��������";
	mainflag = ITEM_KAT_DOCS;
	flags = ITEM_MISSION;
	value = 0;
	visual = "ItWr_Book_02_03.3ds";
	material = MAT_LEATHER;
	scemeName = "MAP";
	on_state[0] = UseItWrFokusbuch;
	description = name;
	text[0] = "��� ������� ����� ���������� �������� ��������";
	text[1] = "���������� ������, ��������� � ��������������";
	text[2] = "��� ���������� ������ ��������.";
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
	Doc_PrintLine(nDocID,0,"����� 23");
	Doc_PrintLine(nDocID,0,"");
	Doc_SetFont(nDocID,-1,"font_10_book.TGA");
	Doc_PrintLine(nDocID,0,"���� ������������");
	Doc_PrintLine(nDocID,0,"");
	Doc_PrintLines(nDocID,0,"���������� ������ ����� � ��������� �������� ����, ����� ���� ����������� ������� ����. ���������� ��� ������ ���������, ��� ������� �� ��� �������.");
	Doc_PrintLine(nDocID,0,"");
	Doc_PrintLines(nDocID,0,"������ � ��� �� ����� ������ �������� ����, ������ ��� ������ ��������.");
	Doc_SetMargins(nDocID,-1,30,20,275,20,1);
	Doc_PrintLine(nDocID,1,"");
	Doc_PrintLines(nDocID,1,"����� C���, ����������� ����������� �������, ������������ � �������, �������� ������ �������� ������ ����. ���������� ������ ��������� �������� ����� ������ ���������� �������, ��� ������ ��������.");
	Doc_PrintLine(nDocID,1,"");
	Doc_PrintLines(nDocID,1,"�� ������ ��������� �������� ������, ��� ������������ ��� �������������� ������. ��� ������� ��� �� ������� ���� ������ ������ ������� ����.");
	Doc_PrintLine(nDocID,1,"");
	Doc_PrintLines(nDocID,1,"��� ������ �� ������ ���� ����� ����� ������� ������� ����.");
	Doc_Show(nDocID);
};

