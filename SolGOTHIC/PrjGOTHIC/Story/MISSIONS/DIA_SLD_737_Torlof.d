
instance DIA_Torlof_EXIT(C_Info)
{
	npc = SLD_737_Torlof;
	nr = 999;
	condition = DIA_Torlof_EXIT_Condition;
	information = DIA_Torlof_EXIT_Info;
	permanent = 1;
	description = DIALOG_ENDE;
};


func int DIA_Torlof_EXIT_Condition()
{
	return 1;
};

func void DIA_Torlof_EXIT_Info()
{
	AI_StopProcessInfos(self);
};


instance DIA_Torlof_Hallo(C_Info)
{
	npc = SLD_737_Torlof;
	nr = 1;
	condition = DIA_Torlof_Hallo_Condition;
	information = DIA_Torlof_Hallo_Info;
	permanent = 0;
	description = "��� ���� �����?";
};


func int DIA_Torlof_Hallo_Condition()
{
	return 1;
};

func void DIA_Torlof_Hallo_Info()
{
	AI_Output(other,self,"DIA_Torlof_Hallo_15_00");	//��� ���� �����?
	AI_Output(self,other,"DIA_Torlof_Hallo_04_01");	//���� ����� ������.
	AI_Output(self,other,"DIA_Torlof_Hallo_04_02");	//� ������ ������� ���������� �� ������� ������� � ������ ������� � ������.
	AI_Output(self,other,"DIA_Torlof_Hallo_04_03");	//������ �� ���� ����� �� �����. ������� ����� ������� ��������� �� ������� ��������.
	AI_Output(self,other,"DIA_Torlof_Hallo_04_04");	//��� � ����� ����.
};


instance DIA_Torlof_Mitmachen(C_Info)
{
	npc = SLD_737_Torlof;
	nr = 2;
	condition = DIA_Torlof_Mitmachen_Condition;
	information = DIA_Torlof_Mitmachen_Info;
	permanent = 1;
	description = "� ���� �������������� � ���!";
};


func int DIA_Torlof_Mitmachen_Condition()
{
	if((Npc_GetTrueGuild(hero) == GIL_None) || (Npc_GetTrueGuild(hero) == GIL_ORG))
	{
		return 1;
	};
};

func void DIA_Torlof_Mitmachen_Info()
{
	AI_Output(other,self,"DIA_Torlof_Mitmachen_15_00");	//� ���� �������������� � ���!
	AI_Output(self,other,"DIA_Torlof_Mitmachen_04_01");	//�� �� ������ ���� � �����, ���� �� ������, ���� �� ������.
	AI_Output(self,other,"DIA_Torlof_Mitmachen_04_02");	//� �� ��� ��� ���� ����� ������������ ������� ��������� � ������ � ��� ������.
	AI_Output(self,other,"DIA_Torlof_Mitmachen_04_03");	//���� ����� �����, � ����� ���� ��� ���: ������ ���-������ ������ �� ������� ������ ��� ������ �����.
	AI_Output(self,other,"DIA_Torlof_Mitmachen_04_04");	//��� ������ ��� ����� ������, ��� �� ���� ������ ������, ������� � ���� ������ ����������� ������.
	AI_Output(other,self,"DIA_Torlof_Mitmachen_15_05");	//� ��� ��� ����������?
	AI_Output(self,other,"DIA_Torlof_Mitmachen_04_06");	//������� ���� �������� ��������� �� ������� - � ������ ����� ��������.
};

