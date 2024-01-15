
instance OrkParchmentOne(C_Item)
{
	name = "�������� ����������";
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
	text[0] = "����� �������� ����������.";
	text[1] = "������, ��� ������ ����� ���� ��������.";
	text[2] = "�������� ���������� ���� �� ������";
	text[3] = "������.";
};

instance OrkParchmentTwo(C_Item)
{
	name = "�������� ����������";
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
	text[0] = "����� �������� ����������.";
	text[1] = "������, ��� ������� ����� ���� ��������.";
	text[2] = "�������� ���������� ���� �� ������";
	text[3] = "������.";
};

instance ITKE_PSI_KALOM_01(C_Item)
{
	name = "����";
	mainflag = ITEM_KAT_NONE;
	flags = 0;
	value = 0;
	visual = "ItKe_Key_04.3ds";
	material = MAT_METAL;
	description = "���� � �����������";
	text[0] = "��������� ������ � ������������ �����������";
	text[1] = "� �������� ������.";
	text[5] = NAME_Value;
	count[5] = value;
};

instance ItWrFocimap(C_Item)
{
	name = "����� �������� � �������";
	mainflag = ITEM_KAT_DOCS;
	flags = ITEM_MISSION;
	value = 15;
	visual = "ItWr_Map_01.3DS";
	material = MAT_LEATHER;
	scemeName = "MAP";
	on_state[0] = UseFocimap;
	description = name;
	text[0] = "������� ����������� ��������� ������������";
	text[1] = "���� ���� ������-��������, �������";
	text[2] = "�������������� ��� �������� �������. �����";
	text[3] = "������, � �� ���������, ��� ����� �����";
	text[4] = "���� ���������� � ��� ���";
	text[5] = "�� ������ �����.";
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
	name = "�������� ��������";
	mainflag = ITEM_KAT_DOCS;
	flags = ITEM_MISSION;
	value = 0;
	visual = "ItWr_Scroll_01.3DS";
	material = MAT_LEATHER;
	scemeName = "MAP";
	on_state[0] = UseTroll;
	description = name;
	text[1] = "�������� ��������� �������, ��� �����";
	text[2] = "���� ���������.";
	text[3] = "���� �� �����, ����� ��� ";
	text[4] = "��������� �� �������.";
};


func void UseTroll()
{
	var int nDocID;
	nDocID = Doc_Create();
	Doc_SetPages(nDocID,1);
	Doc_SetPage(nDocID,0,"letters.TGA",0);
	Doc_SetMargins(nDocID,-1,50,50,50,50,1);
	Doc_SetFont(nDocID,-1,"font_15_book.tga");
	Doc_PrintLine(nDocID,0,"���� 169");
	Doc_SetFont(nDocID,-1,"font_10_book.tga");
	Doc_PrintLine(nDocID,0,"");
	Doc_PrintLine(nDocID,0,"");
	Doc_PrintLines(nDocID,0,"� ������������ ��� ��������. ����� ������ ����� �� ��������� �� ������ �� ��������, � ������ �������� �����������, ����� ����� � ���� �� �����. �� ������� � ������ ���. � ������. ���� ���������� �� ���. ");
	Doc_PrintLine(nDocID,0,"");
	Doc_PrintLines(nDocID,0,"� ��������� ���������� ������, ������� ����� � ��������. �� �������� ��� � 50 �����, �� ��� ������ � �������� ��� ������, ������� � ������ ��������.");
	Doc_PrintLine(nDocID,0,"");
	Doc_PrintLines(nDocID,0,"������� � ���� ������.");
	Doc_Show(nDocID);
};


instance Focus_2(C_Item)
{
	name = "������ �� ������� ������";
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

instance ItKe_BERG_01(C_Item)
{
	name = "���� � �������";
	mainflag = ITEM_KAT_NONE;
	flags = 0;
	value = 0;
	visual = "ItKe_Key_01.3ds";
	material = MAT_METAL;
	description = name;
	text[0] = "������ ����.";
	text[1] = "������ � ������ ���� � �������.";
	text[2] = "der zu einer Truhe geh�rt";
	text[5] = NAME_Value;
	count[5] = value;
};

instance ItWr_Urkunde_01(C_Item)
{
	name = "����������";
	mainflag = ITEM_KAT_DOCS;
	flags = 0;
	value = 15;
	visual = "ItWr_Scroll_01.3DS";
	material = MAT_LEATHER;
	scemeName = "MAP";
	on_state[0] = UseUrkunde;
	description = "����� �������������";
	text[0] = "������������ ����� ���������";
	text[1] = "����� ������� � ����� ������";
	text[2] = "�� ���� � ����������� �������.";
	text[5] = "���������                               400 ������ �������";
};


func void UseUrkunde()
{
	var int nDocID;
	nDocID = Doc_Create();
	Doc_SetPages(nDocID,1);
	Doc_SetPage(nDocID,0,"letters.TGA",0);
	Doc_SetMargins(nDocID,-1,50,50,50,50,1);
	Doc_SetFont(nDocID,-1,"font_15_book.tga");
	Doc_PrintLine(nDocID,0,"����������");
	Doc_SetFont(nDocID,-1,"font_10_book.tga");
	Doc_PrintLine(nDocID,0,"");
	Doc_PrintLine(nDocID,0,"");
	Doc_PrintLines(nDocID,0,"�, �������, ���� �������� �����, �������, ��������� ��� ������ ����������, ��� ������ ��������, ������� � ��� � � ������ � ������� � ������������ ���� ��������� � � ���� ������ ������ ���� (����� � ���������� ��� ��������� � �������� �� �������� ����) �� 400 ������ ������.");
	Doc_Show(nDocID);
};


instance Fakescroll(C_Item)
{
	name = "������";
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
	name = "������ �� ������� �����";
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

instance ItKe_Focus4(C_Item)
{
	name = "����";
	mainflag = ITEM_KAT_NONE;
	flags = ITEM_MISSION;
	value = 3;
	visual = "ItKe_Key_01.3ds";
	material = MAT_METAL;
	description = name;
	text[1] = "��� ���� �� ������, �������������";
	text[2] = "���������� �� ���� ���������.";
};

instance Focus_4(C_Item)
{
	name = "������ �� ������������ ���������";
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

instance ItMi_OrcTalisman(C_Item)
{
	name = "������ ��������";
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
	name = "����";
	mainflag = ITEM_KAT_NONE;
	flags = ITEM_MISSION;
	value = 3;
	visual = "ItKe_Key_02.3ds";
	material = MAT_METAL;
	description = name;
	text[1] = "��� ���� �� ������";
	text[2] = "��� ������� ������.";
};

instance Focus_5(C_Item)
{
	name = "������ ��-��� ������ ������";
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

