
instance Tpl_1438_Templer_Exit(C_Info)
{
	npc = TPL_1438_Templer;
	nr = 999;
	condition = Tpl_1438_Templer_Exit_Condition;
	information = Tpl_1438_Templer_Exit_Info;
	important = 0;
	permanent = 1;
	description = DIALOG_ENDE;
};


func int Tpl_1438_Templer_Exit_Condition()
{
	return 1;
};

func void Tpl_1438_Templer_Exit_Info()
{
	AI_Output(other,self,"Tpl_1438_Templer_Exit_Info_15_01");	//��������.
	AI_Output(self,other,"Tpl_1438_Templer_Exit_Info_13_02");	//�� ���������� ������!
	AI_StopProcessInfos(self);
};


instance Tpl_1438_Templer_INFO(C_Info)
{
	npc = TPL_1438_Templer;
	condition = Tpl_1438_Templer_INFO_Condition;
	information = Tpl_1438_Templer_INFO_Info;
	important = 0;
	permanent = 0;
	description = "��� ������ ������ � �����?";
};


func int Tpl_1438_Templer_INFO_Condition()
{
	if(CorKalom_BringMCQBalls != LOG_RUNNING)
	{
		return TRUE;
	};
};

func void Tpl_1438_Templer_INFO_Info()
{
	AI_Output(other,self,"Tpl_1438_Templer_INFO_Info_15_01");	//��� ������ ������ � �����?
	AI_Output(self,other,"Tpl_1438_Templer_INFO_Info_13_02");	//�� �������� �� ��������. �� ����� ����������� � ������ - ��� ����������.
};


instance Tpl_1438_Templer_WHY(C_Info)
{
	npc = TPL_1438_Templer;
	condition = Tpl_1438_Templer_WHY_Condition;
	information = Tpl_1438_Templer_WHY_Info;
	important = 0;
	permanent = 0;
	description = "����� �� ��������� �� ��������?";
};


func int Tpl_1438_Templer_WHY_Condition()
{
	if(Npc_KnowsInfo(hero,Tpl_1438_Templer_INFO))
	{
		return 1;
	};
};

func void Tpl_1438_Templer_WHY_Info()
{
	AI_Output(other,self,"Tpl_1438_Templer_WHY_Info_15_01");	//����� �� ��������� �� ��������?
	AI_Output(self,other,"Tpl_1438_Templer_WHY_Info_13_02");	//��� ����� �� �������. � �������� ����� ������ �����.
	AI_Output(other,self,"Tpl_1438_Templer_WHY_Info_15_03");	//����� ����� �����?
	AI_Output(self,other,"Tpl_1438_Templer_WHY_Info_13_04");	//��������. � ������ ��� ����� �����, ��� �������� �� ��� ��������.
};


instance Tpl_1438_Templer_KALOM(C_Info)
{
	npc = TPL_1438_Templer;
	condition = Tpl_1438_Templer_KALOM_Condition;
	information = Tpl_1438_Templer_KALOM_Info;
	important = 0;
	permanent = 0;
	description = "��� ����� ��� �����?";
};


func int Tpl_1438_Templer_KALOM_Condition()
{
	if(Npc_KnowsInfo(hero,Tpl_1438_Templer_WHY))
	{
		return 1;
	};
};

func void Tpl_1438_Templer_KALOM_Info()
{
	AI_Output(other,self,"Tpl_1438_Templer_KALOM_Info_15_01");	//��� ����� ��� �����?
	AI_Output(self,other,"Tpl_1438_Templer_KALOM_Info_13_02");	//��� ���� �� ����� ����������� ����� �� ���� ��������. �� ����� ��������� ����. �������, �� ���� ����� ������ ����� �����.
	AI_Output(self,other,"Tpl_1438_Templer_KALOM_Info_13_03");	//�� ������ ����� �����, �� ��� � �������. �� ������� ��������, ��������� ������� ���� ����������� ����� �������� �� ������. �� �� ������ ������� � ������! ��� ������ ����� ����� ����.
	AI_Output(other,self,"Tpl_1438_Templer_KALOM_Info_15_04");	//� ������� �� ����.
};


instance Tpl_1438_Templer_EGGSEARCH(C_Info)
{
	npc = TPL_1438_Templer;
	condition = Tpl_1438_Templer_EGGSEARCH_Condition;
	information = Tpl_1438_Templer_EGGSEARCH_Info;
	important = 0;
	permanent = 0;
	description = "� ��� ������ ��������.";
};


func int Tpl_1438_Templer_EGGSEARCH_Condition()
{
	if(CorKalom_BringMCQBalls == LOG_RUNNING)
	{
		return TRUE;
	};
};

func void Tpl_1438_Templer_EGGSEARCH_Info()
{
	AI_Output(other,self,"Tpl_1438_Templer_EGGSEARCH_Info_15_01");	//� ��� ������ ��������.
	AI_Output(self,other,"Tpl_1438_Templer_EGGSEARCH_Info_13_02");	//�������� � ��� �� �����, ��� �� ����� � ��� �� �����. ��� ����� � �������� ���� ������, ��� �.
	B_LogEntry(CH2_MCEggs,"� ������� � ������ � ����� � ������ ����� � ������ ��������. �� ������� ���� � ������ �������: ��� �� ����, ��� �� ���� � ��� �� ����. ���������, ��� �� �� �������� ���������� ������������� ����� ������������ ����?");
};


instance Tpl_1438_Templer_ZANGEN(C_Info)
{
	npc = TPL_1438_Templer;
	condition = Tpl_1438_Templer_ZANGEN_Condition;
	information = Tpl_1438_Templer_ZANGEN_Info;
	important = 0;
	permanent = 0;
	description = "��� ���������� ������� ��������?";
};


func int Tpl_1438_Templer_ZANGEN_Condition()
{
	if((Npc_KnowsInfo(hero,Tpl_1438_Templer_WHY) || (CorKalom_BringMCQBalls == LOG_RUNNING)) && (Knows_GetMCMandibles == FALSE))
	{
		return TRUE;
	};
};

func void Tpl_1438_Templer_ZANGEN_Info()
{
	AI_Output(other,self,"Tpl_1438_Templer_ZANGEN_Info_15_01");	//��� ���������� ������� ��������?
	AI_Output(self,other,"Tpl_1438_Templer_ZANGEN_Info_13_02");	//��� �� ���-�� ������. �� � ���� ���� �������.
};


instance Tpl_1438_Templer_TEACHZANGEN(C_Info)
{
	npc = TPL_1438_Templer;
	condition = Tpl_1438_Templer_TEACHZANGEN_Condition;
	information = Tpl_1438_Templer_TEACHZANGEN_Info;
	important = 0;
	permanent = 1;
	description = "��������� �������� ������� (1 ��. ��������)";
};


func int Tpl_1438_Templer_TEACHZANGEN_Condition()
{
	if(Npc_KnowsInfo(hero,Tpl_1438_Templer_ZANGEN) && (Knows_GetMCMandibles == FALSE))
	{
		return TRUE;
	};
};

func void Tpl_1438_Templer_TEACHZANGEN_Info()
{
	AI_Output(other,self,"Tpl_1438_Templer_TEACHZANGEN_Info_15_01");	//�� ������ ������� ���� �������� ������� ��������?
	if(hero.lp >= 1)
	{
		hero.lp = hero.lp - 1;
		AI_Output(self,other,"Tpl_1438_Templer_TEACHZANGEN_Info_13_01");	//������ ����� ����� ������� �������� ������. �� ���� ���������, ����� �� ��������� ������, - ����� ����� ������� ���� �� ����.
		AI_Output(other,self,"Tpl_1438_Templer_TEACHZANGEN_Info_15_02");	//��� ������ ���� ���������.
		AI_Output(self,other,"Tpl_1438_Templer_TEACHZANGEN_Info_13_03");	//��� � ����. �� �������� �����-������ ������� ����������, ����������� �������� �� ��������? �� ��, ��� �� ���� ��� �� ����, ��� �� �������� �����. �����, ���� ������...
		AI_Output(self,other,"Tpl_1438_Templer_TEACHZANGEN_Info_13_04");	//������� ������ ������ ������� �����, �������� �������� ������� ����������, � ����� ��������� �� ������ � ���������. ���� �������� ���, ��� � ������, ������� ���� �� ������.
		Knows_GetMCMandibles = TRUE;
		Log_CreateTopic(GE_AnimalTrophies,LOG_NOTE);
		B_LogEntry(GE_AnimalTrophies,"��� ������� ������� ��������");
		Tpl_1438_Templer_TEACHZANGEN.permanent = 0;
		PrintScreen("�������: �������� �������� ��������",-1,-1,"FONT_OLD_20_WHITE.TGA",2);
	}
	else
	{
		PrintScreen("������������ ����� ��������!",-1,-1,"FONT_OLD_20_WHITE.TGA",2);
		B_Say(self,other,"$NOLEARNNOPOINTS");
	};
};

