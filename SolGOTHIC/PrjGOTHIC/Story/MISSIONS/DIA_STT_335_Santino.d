
instance STT_335_Santino_Exit(C_Info)
{
	npc = STT_335_Santino;
	nr = 999;
	condition = STT_335_Santino_Exit_Condition;
	information = STT_335_Santino_Exit_Info;
	important = 0;
	permanent = 1;
	description = DIALOG_ENDE;
};


func int STT_335_Santino_Exit_Condition()
{
	return TRUE;
};

func void STT_335_Santino_Exit_Info()
{
	AI_StopProcessInfos(self);
};


instance STT_335_Santino_BUY(C_Info)
{
	npc = STT_335_Santino;
	condition = STT_335_Santino_BUY_Condition;
	information = STT_335_Santino_BUY_Info;
	important = 0;
	permanent = 1;
	description = "� ���� ���� ���-������ �� �������?";
	trade = 1;
};


func int STT_335_Santino_BUY_Condition()
{
	return TRUE;
};

func void STT_335_Santino_BUY_Info()
{
	AI_Output(other,self,"STT_335_Santino_BUY_Info_15_01");	//� ���� ���� ���-������ �� �������?
	AI_Output(self,other,"STT_335_Santino_BUY_Info_07_02");	//� ���� ���� ���, ��� ���� �����. ��, ���� � ���� ���, ���� ��� ����� �� ����������.
};

