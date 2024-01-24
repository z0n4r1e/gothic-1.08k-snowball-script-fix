
instance DIA_Vlk_534_Exit(C_Info)
{
	npc = VLK_534_Buddler;
	nr = 999;
	condition = DIA_Vlk_534_Exit_Condition;
	information = DIA_Vlk_534_Exit_Info;
	permanent = 1;
	description = DIALOG_ENDE;
};


func int DIA_Vlk_534_Exit_Condition()
{
	return TRUE;
};

func void DIA_Vlk_534_Exit_Info()
{
	AI_StopProcessInfos(self);
};


instance DIA_Vlk_534_LeaveMe(C_Info)
{
	npc = VLK_534_Buddler;
	nr = 1;
	condition = DIA_Vlk_534_LeaveMe_Condition;
	information = DIA_Vlk_534_LeaveMe_Info;
	permanent = 1;
	description = "������ �� �����, � �� � ������?";
};


func int DIA_Vlk_534_LeaveMe_Condition()
{
	return TRUE;
};

func void DIA_Vlk_534_LeaveMe_Info()
{
	AI_Output(other,self,"DIA_Vlk_534_LeaveMe_15_00");	//������ �� �����, � �� � ������?
	AI_Output(self,other,"DIA_Vlk_534_LeaveMe_02_01");	//� ��� ������ ����� �� �����. �� �������� ��� ����.
	AI_Output(self,other,"DIA_Vlk_534_LeaveMe_02_02");	//� ��� ���� ��� ������ ���������� � ������, ������ ��� � �� ����� ��������� ���������� �� ������, � ����� � ���� �������� ������� ������������.
	AI_StopProcessInfos(self);
};

