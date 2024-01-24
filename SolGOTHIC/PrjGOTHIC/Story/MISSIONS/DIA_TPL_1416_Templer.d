
instance DIA_Tpl_1416_Torwache_Exit(C_Info)
{
	npc = TPL_1416_Templer;
	nr = 999;
	condition = DIA_Tpl_1416_Torwache_Exit_Condition;
	information = DIA_Tpl_1416_Torwache_Exit_Info;
	permanent = 1;
	description = DIALOG_ENDE;
};


func int DIA_Tpl_1416_Torwache_Exit_Condition()
{
	return TRUE;
};

func void DIA_Tpl_1416_Torwache_Exit_Info()
{
	AI_StopProcessInfos(self);
};


instance DIA_Tpl_1416_Torwache_Life(C_Info)
{
	npc = TPL_1416_Templer;
	nr = 1;
	condition = DIA_Tpl_1416_Torwache_Life_Condition;
	information = DIA_Tpl_1416_Torwache_Life_Info;
	permanent = 1;
	description = "��� ����� ������ ��������?";
};


func int DIA_Tpl_1416_Torwache_Life_Condition()
{
	return TRUE;
};

func void DIA_Tpl_1416_Torwache_Life_Info()
{
	AI_Output(other,self,"DIA_Tpl_1416_Torwache_Life_15_00");	//��� ����� ������ ��������?
	AI_Output(self,other,"DIA_Tpl_1416_Torwache_Life_08_01");	//� ���� ������ ������. ��� ������������ � ��� ������� ������������ �� ����.
	AI_Output(self,other,"DIA_Tpl_1416_Torwache_Life_08_02");	//��� ������� ����� �������� � �������. ������ � ��� �� - ����� �� ������ � �������.
};

