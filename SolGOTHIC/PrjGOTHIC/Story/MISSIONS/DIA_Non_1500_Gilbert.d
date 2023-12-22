
instance DIA_Gilbert_EXIT(C_Info)
{
	npc = Non_1500_Gilbert;
	nr = 999;
	condition = DIA_Gilbert_EXIT_Condition;
	information = DIA_Gilbert_EXIT_Info;
	permanent = 1;
	description = DIALOG_ENDE;
};


func int DIA_Gilbert_EXIT_Condition()
{
	return 1;
};

func void DIA_Gilbert_EXIT_Info()
{
	AI_StopProcessInfos(self);
};


instance DIA_Gilbert_First(C_Info)
{
	npc = Non_1500_Gilbert;
	nr = 1;
	condition = DIA_Gilbert_First_Condition;
	information = DIA_Gilbert_First_Info;
	permanent = 0;
	important = 1;
};


func int DIA_Gilbert_First_Condition()
{
	if(Npc_GetDistToNpc(self,other) <= ZivilAnquatschDist)
	{
		return 1;
	};
	return FALSE;
};

func void DIA_Gilbert_First_Info()
{
	AI_Output(self,other,"DIA_Gilbert_First_04_00");	//��� �� ����� �������? ����� �� ����� ��������� ����, ��-��!
	AI_Output(self,other,"DIA_Gilbert_First_04_01");	//�� �����, ��� �� ����� �������� ��� �������.
	B_GiveXP(XP_GilbertFound);
};


instance DIA_Gilbert_Hallo(C_Info)
{
	npc = Non_1500_Gilbert;
	nr = 1;
	condition = DIA_Gilbert_Hallo_Condition;
	information = DIA_Gilbert_Hallo_Info;
	permanent = 1;
	description = "��� �� �����������?";
};


func int DIA_Gilbert_Hallo_Condition()
{
	return 1;
};

func void DIA_Gilbert_Hallo_Info()
{
	AI_Output(other,self,"DIA_Gilbert_Hallo_15_00");	//��� �� ����� �������? 
	AI_Output(self,other,"DIA_Gilbert_Hallo_04_01");	//� ��� ��� �� ����� ������ �������. � ���� ��, � ���� �������� �������� � �������� ������. ��� ���� ��� �����. 
	AI_Output(self,other,"DIA_Gilbert_Hallo_04_02");	//������ ���, ��������, ����� �� ���� � �� ������. �� � ��-�������� �����. ���� �������� ����, �� ��-�����, � ������ ������ ������� ����� ����� ��������.
};

