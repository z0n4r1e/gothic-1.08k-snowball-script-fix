
instance Vlk_587_Garp_Exit(C_Info)
{
	npc = VLK_587_Garp;
	nr = 999;
	condition = Vlk_587_Garp_Exit_Condition;
	information = Vlk_587_Garp_Exit_Info;
	important = 0;
	permanent = 1;
	description = DIALOG_ENDE;
};


func int Vlk_587_Garp_Exit_Condition()
{
	return TRUE;
};

func void Vlk_587_Garp_Exit_Info()
{
	AI_StopProcessInfos(self);
};


instance Vlk_587_Garp_ORK(C_Info)
{
	npc = VLK_587_Garp;
	condition = Vlk_587_Garp_ORK_Condition;
	information = Vlk_587_Garp_ORK_Info;
	important = 0;
	permanent = 0;
	description = "��� ����� ������ ���?";
};


func int Vlk_587_Garp_ORK_Condition()
{
	return TRUE;
};

func void Vlk_587_Garp_ORK_Info()
{
	AI_Output(other,self,"Vlk_587_Garp_ORK_Info_15_01");	//��� ����� ������ ���?
	AI_Output(self,other,"Vlk_587_Garp_ORK_Info_01_02");	//�� �������� �����, � ��� ��� ��� ��� ������� ���������.
	AI_Output(other,self,"Vlk_587_Garp_ORK_Info_15_03");	//��� ���� �� �������� � ����. ������ �� ������ �� ������?
	AI_Output(self,other,"Vlk_587_Garp_ORK_Info_01_04");	//���� ��� �� ��� �������. ��������� ��� �������� ���, ��� �� �� ��� ������ ��������� ������. � ��� ��� �� ��� �� ��������� � ������.
};

