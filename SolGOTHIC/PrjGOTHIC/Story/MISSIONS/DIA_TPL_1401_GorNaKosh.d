
instance Tpl_1401_GorNaKosh_Exit(C_Info)
{
	npc = TPL_1401_GorNaKosh;
	nr = 999;
	condition = Tpl_1401_GorNaKosh_Exit_Condition;
	information = Tpl_1401_GorNaKosh_Exit_Info;
	important = 0;
	permanent = 1;
	description = DIALOG_ENDE;
};


func int Tpl_1401_GorNaKosh_Exit_Condition()
{
	return 1;
};

func void Tpl_1401_GorNaKosh_Exit_Info()
{
	AI_Output(self,other,"Tpl_1401_GorNaKosh_Exit_Info_13_02");	//�� ��������� ������!
	AI_StopProcessInfos(self);
};


instance Tpl_1401_GorNaKosh_SUGGEST(C_Info)
{
	npc = TPL_1401_GorNaKosh;
	condition = Tpl_1401_GorNaKosh_SUGGEST_Condition;
	information = Tpl_1401_GorNaKosh_SUGGEST_Info;
	important = 0;
	permanent = 0;
	description = "� ����, ��� ��������� ������ ��������. ";
};


func int Tpl_1401_GorNaKosh_SUGGEST_Condition()
{
	if(Npc_KnowsInfo(hero,Grd_263_Asghan_OPEN) && !Npc_KnowsInfo(hero,Grd_263_Asghan_OPEN_NOW))
	{
		return TRUE;
	};
};

func void Tpl_1401_GorNaKosh_SUGGEST_Info()
{
	AI_Output(other,self,"Tpl_1401_GorNaKosh_SUGGEST_Info_15_01");	//� ����, ��� ��������� ������ ��������. � ����������� ����, ����� ������ ������ �������� ��� ��� ������. �� ���� �� ������ ����������� ����� ������� �������.
	AI_Output(self,other,"Tpl_1401_GorNaKosh_SUGGEST_Info_13_02");	//��� ������ � ����� �������! � ��� � �����.
	AI_Output(other,self,"Tpl_1401_GorNaKosh_SUGGEST_Info_15_03");	//������. ����������� � �������� �������.
	Npc_ExchangeRoutine(self,"GATE");
	Npc_SetPermAttitude(self,ATT_FRIENDLY);
	B_GiveXP(XP_HireGorNaKosh);
	B_LogEntry(CH2_MCEggs,"� �������� ������ ��� �� ���� �������������� � ���� ����� � ����� �������. �� ����� ����� ���� ���.");
	AI_StopProcessInfos(self);
};


instance Tpl_1401_GorNaKosh_INFO(C_Info)
{
	npc = TPL_1401_GorNaKosh;
	condition = Tpl_1401_GorNaKosh_INFO_Condition;
	information = Tpl_1401_GorNaKosh_INFO_Info;
	important = 0;
	permanent = 1;
	description = "��� �� �����������?";
};


func int Tpl_1401_GorNaKosh_INFO_Condition()
{
	if(!Npc_KnowsInfo(hero,Grd_263_Asghan_NEST))
	{
		return 1;
	};
};

func void Tpl_1401_GorNaKosh_INFO_Info()
{
	AI_Output(other,self,"Tpl_1401_GorNaKosh_INFO_Info_15_01");	//��� �� �����������?
	AI_Output(self,other,"Tpl_1401_GorNaKosh_INFO_Info_13_02");	//� ������� �� ��������.
	AI_Output(other,self,"Tpl_1401_GorNaKosh_INFO_Info_15_03");	//������ ���������� ���, ��� ��������� �� ��������?
	AI_Output(self,other,"Tpl_1401_GorNaKosh_INFO_Info_13_04");	//����� ������ ���� � ����� �������, ����� ������� ����: ���� ������ �������, ���� � ���� � ������ ��� ������. ����� ����� ��� ��� ����� �������.
	AI_Output(self,other,"Tpl_1401_GorNaKosh_INFO_Info_13_05");	//�������� ��� ������ � ������ ��� ������.
	AI_StopProcessInfos(self);
};


instance Tpl_1401_GorNaKosh_CRAWLER(C_Info)
{
	npc = TPL_1401_GorNaKosh;
	condition = Tpl_1401_GorNaKosh_CRAWLER_Condition;
	information = Tpl_1401_GorNaKosh_CRAWLER_Info;
	important = 0;
	permanent = 1;
	description = "�������� ��� � ��������.";
};


func int Tpl_1401_GorNaKosh_CRAWLER_Condition()
{
	if(Npc_KnowsInfo(hero,Tpl_1401_GorNaKosh_INFO))
	{
		return 1;
	};
};

func void Tpl_1401_GorNaKosh_CRAWLER_Info()
{
	AI_Output(other,self,"Tpl_1401_GorNaKosh_CRAWLER_Info_15_01");	//�������� ��� � ��������.
	AI_Output(self,other,"Tpl_1401_GorNaKosh_CRAWLER_Info_13_02");	//��� ��������� ������������, ������ ���� �� ����� ����.
	AI_Output(self,other,"Tpl_1401_GorNaKosh_CRAWLER_Info_13_03");	//�������, ��� ���������� ���� � ���.
};


instance Tpl_1401_GorNaKosh_VICTORY(C_Info)
{
	npc = TPL_1401_GorNaKosh;
	condition = Tpl_1401_GorNaKosh_VICTORY_Condition;
	information = Tpl_1401_GorNaKosh_VICTORY_Info;
	important = 0;
	permanent = 0;
	description = "� ����� ������ ��������!";
};


func int Tpl_1401_GorNaKosh_VICTORY_Condition()
{
	if(Npc_HasItems(hero,ItAt_Crawlerqueen) > 3)
	{
		return TRUE;
	};
};

func void Tpl_1401_GorNaKosh_VICTORY_Info()
{
	AI_Output(other,self,"Tpl_1401_GorNaKosh_VICTORY_Info_15_01");	//� ����� ������ ��������!
	AI_Output(self,other,"Tpl_1401_GorNaKosh_VICTORY_Info_13_02");	//�����������! ������ ����������� � ������ - ��� ����� ���� ����.
	B_LogEntry(CH2_MCEggs,"��� ���� ������� ���� �������� ��� ������, �� �� ����� �����.");
};

