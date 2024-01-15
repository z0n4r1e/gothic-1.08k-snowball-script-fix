
instance DIA_SCAR_EXIT(C_Info)
{
	npc = EBR_101_Scar;
	nr = 999;
	condition = DIA_SCAR_EXIT_Condition;
	information = DIA_SCAR_EXIT_Info;
	permanent = 1;
	description = DIALOG_ENDE;
};


func int DIA_SCAR_EXIT_Condition()
{
	return 1;
};

func void DIA_SCAR_EXIT_Info()
{
	AI_StopProcessInfos(self);
};


instance DIA_SCAR_Hello(C_Info)
{
	npc = EBR_101_Scar;
	nr = 3;
	condition = DIA_SCAR_Hello_Condition;
	information = DIA_SCAR_Hello_Info;
	permanent = 0;
	description = "��� ���� �����?";
};


func int DIA_SCAR_Hello_Condition()
{
	return 1;
};

func void DIA_SCAR_Hello_Info()
{
	AI_Output(other,self,"DIA_SCAR_Hello_15_00");	//��� ��?
	AI_Output(self,other,"DIA_SCAR_Hello_08_01");	//���� �������� ����.
};


instance DIA_SCAR_What(C_Info)
{
	npc = EBR_101_Scar;
	nr = 3;
	condition = DIA_SCAR_What_Condition;
	information = DIA_SCAR_What_Info;
	permanent = 0;
	description = "��� �� �����������?";
};


func int DIA_SCAR_What_Condition()
{
	if(Npc_KnowsInfo(hero,DIA_SCAR_Hello))
	{
		return 1;
	};
};

func void DIA_SCAR_What_Info()
{
	AI_Output(other,self,"DIA_SCAR_What_15_00");	//��� �� �����������?
	AI_Output(self,other,"DIA_SCAR_What_08_01");	//�� � ���� ������ �� ���, ����� ����� �� ������� � ������ ��� �����������.
	AI_Output(self,other,"DIA_SCAR_What_08_02");	//� ��� � ����� �� ���, ����� ����� �� ��������� ������.
};


instance DIA_SCAR_Frau(C_Info)
{
	npc = EBR_101_Scar;
	nr = 3;
	condition = DIA_SCAR_Frau_Condition;
	information = DIA_SCAR_Frau_Info;
	permanent = 0;
	description = "����� ���� ���������� ����, � ����� �������...";
};


func int DIA_SCAR_Frau_Condition()
{
	if(Npc_KnowsInfo(hero,DIA_SCAR_What))
	{
		return 1;
	};
};

func void DIA_SCAR_Frau_Info()
{
	AI_Output(other,self,"DIA_SCAR_Frau_15_00");	//����� ���� ���������� ����, � ����� �������, ������� ���������� �� ��������� � ��������.
	AI_Output(self,other,"DIA_SCAR_Frau_08_01");	//� ���?
	AI_Output(other,self,"DIA_SCAR_Frau_15_02");	//��� �����?
	AI_Output(self,other,"DIA_SCAR_Frau_08_03");	//��������, �� ��� ������, ���� ��� �������������� ����, ������� ���� ��������� �����: ������ � ���.
	AI_Output(self,other,"DIA_SCAR_Frau_08_04");	//��� ������ ��� ������� ��������� �����, ����� ����� �� � ����� �������.
	AI_Output(self,other,"DIA_SCAR_Frau_08_05");	//����� ��� ��� �������, ����� ����� ������ ��������� �� ����. �� ���� ��� ����������� ���, ��� ��� �� ������� ���� ������ ������ �������, �����?
};


instance DIA_SCAR_PERM(C_Info)
{
	npc = EBR_101_Scar;
	nr = 3;
	condition = DIA_SCAR_PERM_Condition;
	information = DIA_SCAR_PERM_Info;
	permanent = 1;
	description = "��� �� ������ ������� � ������?";
};


func int DIA_SCAR_PERM_Condition()
{
	if(Npc_KnowsInfo(hero,DIA_SCAR_Frau))
	{
		return 1;
	};
};

func void DIA_SCAR_PERM_Info()
{
	AI_Output(other,self,"DIA_SCAR_PERM_15_00");	//��� �� ������ ������� � ������?
	AI_Output(self,other,"DIA_SCAR_PERM_08_01");	//�������, ��� ���� ����� �����: �� ����� ����������� ������� � �������.
	AI_Output(self,other,"DIA_SCAR_PERM_08_02");	//�� �������� ���, ���� �����, � ������ ����� �� ����� ������.
};

