
instance ItWr_GolemBook1(C_Item)
{
	name = "������� ����� ��� ������";
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
	Doc_PrintLine(nDocID,0,"������� ����� ��� ������");
	Doc_PrintLine(nDocID,0,"=====================");
	Doc_PrintLines(nDocID,0,"(����� �������)");
	Doc_PrintLine(nDocID,0,"");
	Doc_PrintLines(nDocID,0,"������ ���, ��� ������� ����������� � ����� �� ���� �������� ����������� �� ������, ������������� ��������, ����� �������� ����� ������� ��� ���������� �������� � ������������ ���������������.");
	Doc_PrintLine(nDocID,0,"");
	Doc_SetMargins(nDocID,-1,30,20,275,20,1);
	Doc_PrintLine(nDocID,1,"�������� �����");
	Doc_PrintLine(nDocID,1,"------------");
	Doc_PrintLines(nDocID,1,"��� �������� ������� ����������� ��������� � ���. ����� �����������, ��� ����, ������ � ����, �� �������� ��������� ���� ���� ��������.");
	Doc_PrintLine(nDocID,1,"");
	Doc_PrintLines(nDocID,1,"������������ ����������� ��������� � ��������� ������������� ������ ��������� ��������� �� ������ ��������. �� ������� � ���, ��� ����� ����� ��� ������� ������ ����� �������� ������ � ������, ���� ��� ������������ �� ��� ������.");
	Doc_Show(nDocID);
};


instance ItWr_GolemBook2(C_Item)
{
	name = "������� ����� ��� ������";
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
	Doc_PrintLine(nDocID,0,"������� ����� ��� ������");
	Doc_PrintLine(nDocID,0,"======================");
	Doc_PrintLine(nDocID,0,"");
	Doc_PrintLine(nDocID,0,"������� �����");
	Doc_PrintLine(nDocID,0,"---------");
	Doc_PrintLines(nDocID,0,"������� ������ �������� ��������, �� ��� �� �� ���������� ���������� ������� ��������� ������� �� ��������� ����. ��� ��������� ��� ������ �������� �� ������� ����������� ���� ������� �������.");
	Doc_PrintLines(nDocID,0,"����� ������ �������� ���������������� ����� ���� ���������� � ������� �������� ���� �������, ��������� ��� ��������� �������� � ������� ����� ������� ����������.");
	Doc_SetMargins(nDocID,-1,30,20,275,20,1);
	Doc_PrintLines(nDocID,1,"������� ����� ��� ���� ������� � ������� � ����� ����� ���������, ��, ������, �� ������, ��� ��� �� ������������ ������� ��������� ���������.");
	Doc_PrintLine(nDocID,1,"");
	Doc_PrintLine(nDocID,1,"�������� �����");
	Doc_PrintLine(nDocID,1,"------------");
	Doc_PrintLines(nDocID,1,"�������� ����������, ��� �������� �������� �������� ����� ����� �������������� ���������� ����� ����� � �������� �������� ����.");
	Doc_PrintLines(nDocID,1,"���� � ������� ���� ���� ������ ��������� ����������� � ����������� � ����� ���������� ���������� ����������� ������������. ����� ����� ������, ������ ������ � ��� ������ ���������� �� ������ ��������.");
	Doc_Show(nDocID);
};


instance ItWrWorldmap_Orc(C_Item)
{
	name = "�����";
	mainflag = ITEM_KAT_DOCS;
	flags = ITEM_MISSION;
	value = 250;
	visual = "ItWr_Map_01.3DS";
	material = MAT_LEATHER;
	scemeName = "MAP";
	on_state[0] = UseWorldmap_Orc;
	description = "����� ������� (�����������)";
	text[0] = "�� ���, ��� �����, ���������";
	text[1] = "�������, ������� ������� ����!";
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
	name = "���� �� ��������� �����";
	mainflag = ITEM_KAT_NONE;
	flags = ITEM_MISSION;
	value = 3;
	visual = "ItKe_Key_01.3ds";
	material = MAT_METAL;
	description = "���� �� ��������� �����";
	text[5] = NAME_Value;
	count[5] = value;
};

instance OrcMedicine(C_Item)
{
	name = "������ ��������";
	mainflag = ITEM_KAT_POTIONS;
	flags = ITEM_MISSION;
	value = 0;
	visual = "ITFO_POTION_STRENGTH_01.3DS";
	material = MAT_GLAS;
	on_state[0] = UseOrcMedicine;
	scemeName = "POTION";
	description = name;
	text[0] = "��������: ����������";
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
	name = "��� ����";
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
	text[0] = "��� ���� ��� ���� ������� ���� �";
	text[1] = "��������. �������� ����� �����";
	text[2] = "������ ������� �����!";
	text[3] = NAME_Damage;
	count[3] = damageTotal;
	text[4] = NAME_Str_needed;
	count[4] = cond_value[2];
	text[5] = NAME_Value;
	count[5] = value;
};

