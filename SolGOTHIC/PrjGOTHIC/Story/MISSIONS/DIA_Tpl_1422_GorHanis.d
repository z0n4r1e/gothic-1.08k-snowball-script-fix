
instance Info_GorHanis_Exit(C_Info)
{
	npc = Tpl_1422_GorHanis;
	nr = 999;
	condition = Info_GorHanis_Exit_Condition;
	information = Info_GorHanis_Exit_Info;
	permanent = 1;
	description = DIALOG_ENDE;
};


func int Info_GorHanis_Exit_Condition()
{
	return 1;
};

func void Info_GorHanis_Exit_Info()
{
	AI_StopProcessInfos(self);
};


instance Info_GorHanis_What(C_Info)
{
	npc = Tpl_1422_GorHanis;
	nr = 1;
	condition = Info_GorHanis_What_Condition;
	information = Info_GorHanis_What_Info;
	permanent = 0;
	description = "��� �� �����������?";
};


func int Info_GorHanis_What_Condition()
{
	return 1;
};

func void Info_GorHanis_What_Info()
{
	AI_Output(other,self,"Info_GorHanis_What_15_00");	//��� �� �����������?
	AI_Output(self,other,"Info_GorHanis_What_08_01");	//�? �������� �� ����� �������!
};


instance Info_GorHanis_Arena(C_Info)
{
	npc = Tpl_1422_GorHanis;
	nr = 1;
	condition = Info_GorHanis_Arena_Condition;
	information = Info_GorHanis_Arena_Info;
	permanent = 1;
	description = "�� �������� �� �����?";
};


func int Info_GorHanis_Arena_Condition()
{
	if(Npc_KnowsInfo(self,Info_GorHanis_What))
	{
		return 1;
	};
};

func void Info_GorHanis_Arena_Info()
{
	AI_Output(other,self,"Info_GorHanis_Arena_15_00");	//�� �������� �� �����?
	AI_Output(self,other,"Info_GorHanis_Arena_08_01");	//�������� ������ ������� ���� ���� ��������� �� ����� �������.
	AI_Output(self,other,"Info_GorHanis_Arena_08_02");	//� ������ �� ��� ������� - � �������� �����, ����� ����� �� ������� ����!
};


instance Info_GorHanis_Sleeper(C_Info)
{
	npc = Tpl_1422_GorHanis;
	nr = 2;
	condition = Info_GorHanis_Sleeper_Condition;
	information = Info_GorHanis_Sleeper_Info;
	permanent = 0;
	description = "��� ����� ������?";
};


func int Info_GorHanis_Sleeper_Condition()
{
	if(Npc_KnowsInfo(self,Info_GorHanis_What))
	{
		return 1;
	};
};

func void Info_GorHanis_Sleeper_Info()
{
	AI_Output(other,self,"Info_GorHanis_Sleeper_15_00");	//��� ����� ������?
	AI_Output(self,other,"Info_GorHanis_Sleeper_08_01");	//����� � ����� ������ ��������� ���� � ��� ���� �����, ��� �.
	AI_Output(self,other,"Info_GorHanis_Sleeper_08_02");	//� ������ ��� ��� ���� �����: ������ - ��� ���������. �� ������ ��� ����, �� �� � ������� ��� ������.
	AI_Output(other,self,"Info_GorHanis_Sleeper_15_03");	//�� ���� �� �����, ���� ��� ��� ������� ��� �������?
	AI_Output(self,other,"Info_GorHanis_Sleeper_08_04");	//��! � ���� �������� ����� ���������. ��� ��������� ������� ���������.
};


instance Info_GorHanis_Summoning(C_Info)
{
	npc = Tpl_1422_GorHanis;
	nr = 2;
	condition = Info_GorHanis_Summoning_Condition;
	information = Info_GorHanis_Summoning_Info;
	permanent = 0;
	description = "��� �� ���������?";
};


func int Info_GorHanis_Summoning_Condition()
{
	if(Npc_KnowsInfo(self,Info_GorHanis_Sleeper))
	{
		return 1;
	};
};

func void Info_GorHanis_Summoning_Info()
{
	AI_Output(other,self,"Info_GorHanis_Summoning_15_00");	//��� �� ���������?
	AI_Output(self,other,"Info_GorHanis_Summoning_08_01");	//���� ������� �������, ��� ������� ��������� ������ ������� ������� ��� ���� � �������!
	AI_Output(self,other,"Info_GorHanis_Summoning_08_02");	//���� ������ ������ �� ���� ������, ������� � ��� ������.
};


instance Info_GorHanis_WayToST(C_Info)
{
	npc = Tpl_1422_GorHanis;
	nr = 0;
	condition = Info_GorHanis_WayToST_Condition;
	information = Info_GorHanis_WayToST_Info;
	permanent = 1;
	description = "��� ��������� �� ������ ������?";
};


func int Info_GorHanis_WayToST_Condition()
{
	if(Npc_KnowsInfo(hero,Info_GorHanis_Sleeper) || Npc_KnowsInfo(hero,Info_GorHanis_Summoning))
	{
		return 1;
	};
};

func void Info_GorHanis_WayToST_Info()
{
	AI_Output(other,self,"Info_GorHanis_WayToST_15_00");	//��� ��������� �� ������ ������?
	AI_Output(self,other,"Info_GorHanis_WayToST_08_01");	//�����, � ������ ������, ������ ����� ����� ����-������ �� �����������. ��� � �������� �������� ���� � ��� ������. ���� ������ ����� ���������� � ����.
};


instance Info_GorHanis_Charge(C_Info)
{
	npc = Tpl_1422_GorHanis;
	nr = 3;
	condition = Info_GorHanis_Charge_Condition;
	information = Info_GorHanis_Charge_Info;
	permanent = 0;
	description = "� ������� ���� �� ���!";
};


func int Info_GorHanis_Charge_Condition()
{
	if(Npc_KnowsInfo(hero,Info_GorHanis_Arena))
	{
		return 1;
	};
};

func void Info_GorHanis_Charge_Info()
{
	AI_Output(other,self,"Info_GorHanis_Charge_15_00");	//� ������� ���� �� ���!
	AI_Output(self,other,"Info_GorHanis_Charge_08_01");	//�������� ����� ��� �������, ���� � ���� ������� ������� ����������� �� ������ � �����.
	AI_Output(self,other,"Info_GorHanis_Charge_08_02");	//� ���� ������� � ����� ������ �����, ����� �� ������� ��������� �����������.
	AI_Output(self,other,"Info_GorHanis_Charge_08_03");	//�� � �����, ��� � ������ �� ������ ������� ���� ������ ���������...
};


instance Info_GorHanis_ChargeGood(C_Info)
{
	npc = Tpl_1422_GorHanis;
	nr = 3;
	condition = Info_GorHanis_ChargeGood_Condition;
	information = Info_GorHanis_ChargeGood_Info;
	permanent = 1;
	description = "�� ���, ������ �� ������ ������� �� ����?";
};


func int Info_GorHanis_ChargeGood_Condition()
{
	if(Npc_KnowsInfo(hero,Info_GorHanis_Charge))
	{
		return 1;
	};
};

func void Info_GorHanis_ChargeGood_Info()
{
	AI_Output(other,self,"Info_GorHanis_ChargeGood_15_00");	//�� ���, ������ �� ������ ������� �� ����?
	AI_Output(self,other,"Info_GorHanis_ChargeGood_08_01");	//���! �� ��� ������������ ����� ��� �����!
};

