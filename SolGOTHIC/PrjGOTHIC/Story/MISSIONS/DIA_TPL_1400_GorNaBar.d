
instance Tpl_1400_GorNaBar_Exit(C_Info)
{
	npc = TPL_1400_GorNaBar;
	nr = 999;
	condition = Tpl_1400_GorNaBar_Exit_Condition;
	information = Tpl_1400_GorNaBar_Exit_Info;
	important = 0;
	permanent = 1;
	description = DIALOG_ENDE;
};


func int Tpl_1400_GorNaBar_Exit_Condition()
{
	return 1;
};

func void Tpl_1400_GorNaBar_Exit_Info()
{
	AI_Output(self,other,"Tpl_1400_GorNaBar_Exit_Info_09_02");	//�� ������ ���� ������!
	AI_StopProcessInfos(self);
};


instance Tpl_1400_GorNaBar_SUGGEST(C_Info)
{
	npc = TPL_1400_GorNaBar;
	condition = Tpl_1400_GorNaBar_SUGGEST_Condition;
	information = Tpl_1400_GorNaBar_SUGGEST_Info;
	important = 0;
	permanent = 0;
	description = "��� ����� ���� ������.";
};


func int Tpl_1400_GorNaBar_SUGGEST_Condition()
{
	if(Npc_KnowsInfo(hero,Grd_263_Asghan_OPEN) && !Npc_KnowsInfo(hero,Grd_263_Asghan_OPEN_NOW))
	{
		return TRUE;
	};
	return FALSE;
};

func void Tpl_1400_GorNaBar_SUGGEST_Info()
{
	AI_Output(other,self,"Tpl_1400_GorNaBar_SUGGEST_Info_15_01");	//��� ����� ���� ������.
	AI_Output(other,self,"Tpl_1400_GorNaBar_SUGGEST_Info_15_02");	//� ��� ������ �������� ��� ��� ������. �����, ��� ������� ����� ������ ��������.
	AI_Output(other,self,"Tpl_1400_GorNaBar_SUGGEST_Info_15_03");	//�� ��������, ����� �� ������� ������?
	AI_Output(self,other,"Tpl_1400_GorNaBar_SUGGEST_Info_09_04");	//������ ��������! �������-��! ��� ��� � ����� �������!
	AI_StopProcessInfos(self);
	Npc_ExchangeRoutine(self,"GATE");
	Npc_SetPermAttitude(self,ATT_FRIENDLY);
	B_GiveXP(XP_HireGorNaBar);
	B_LogEntry(CH2_MCEggs,"����� � ��������� � ������ ��������, ����� ��� �� ��� ������������� � ���� ����� � ����� �������. ��� � ��� � ���� ����� ������.");
};


instance Tpl_1400_GorNaBar_INFO(C_Info)
{
	npc = TPL_1400_GorNaBar;
	condition = Tpl_1400_GorNaBar_INFO_Condition;
	information = Tpl_1400_GorNaBar_INFO_Info;
	important = 0;
	permanent = 1;
	description = "��� ���� �������� � ��������? ";
};


func int Tpl_1400_GorNaBar_INFO_Condition()
{
	if(!Npc_KnowsInfo(hero,Grd_263_Asghan_NEST))
	{
		return 1;
	};
	return FALSE;
};

func void Tpl_1400_GorNaBar_INFO_Info()
{
	AI_Output(other,self,"Tpl_1400_GorNaBar_INFO_Info_15_01");	//��� ���� �������� � ��������? 
	AI_Output(self,other,"Tpl_1400_GorNaBar_INFO_Info_09_02");	//���-�� ������ ���� �� ������. ���� �� ��� ������� ����� ���, �� ������ �� ���������� ���� ������� ���� ������!
};


instance Tpl_1400_GorNaBar_VICTORY(C_Info)
{
	npc = TPL_1400_GorNaBar;
	condition = Tpl_1400_GorNaBar_VICTORY_Condition;
	information = Tpl_1400_GorNaBar_VICTORY_Info;
	important = 0;
	permanent = 0;
	description = "� ����� ������ �������� ��������!";
};


func int Tpl_1400_GorNaBar_VICTORY_Condition()
{
	if(Npc_HasItems(hero,ItAt_Crawlerqueen) >= 1)
	{
		return TRUE;
	};
	return FALSE;
};

func void Tpl_1400_GorNaBar_VICTORY_Info()
{
	AI_Output(other,self,"Tpl_1400_GorNaBar_VICTORY_Info_15_01");	//� ����� ������ �������� ��������!
	AI_Output(self,other,"Tpl_1400_GorNaBar_VICTORY_Info_09_02");	//�� ������� ���� �������� � ���� ����. ��� ����� ����� ����, ��� ��!
	Log_CreateTopic(GE_BecomeTemplar,LOG_NOTE);
	B_LogEntry(GE_BecomeTemplar,"����� ���� ��� � ������� ���� ��������, ���� ���������� � ��� �������. ��������, �� �������� ��� �������������� � �������.");
};

