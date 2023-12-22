
instance Grd_260_Drake_Exit(C_Info)
{
	npc = GRD_260_Drake;
	nr = 999;
	condition = Grd_260_Drake_Exit_Condition;
	information = Grd_260_Drake_Exit_Info;
	important = 0;
	permanent = 1;
	description = DIALOG_ENDE;
};


func int Grd_260_Drake_Exit_Condition()
{
	return 1;
};

func void Grd_260_Drake_Exit_Info()
{
	AI_Output(other,self,"Info_Exit_Info_15_01");	//��������.
	AI_StopProcessInfos(self);
};


instance Grd_260_Drake_Gefahr(C_Info)
{
	npc = GRD_260_Drake;
	condition = Grd_260_Drake_Gefahr_Condition;
	information = Grd_260_Drake_Gefahr_Info;
	important = 0;
	permanent = 0;
	description = "���� ������� ������������ � ������?";
};


func int Grd_260_Drake_Gefahr_Condition()
{
	return Npc_KnowsInfo(hero,Grd_260_Drake_Mine);
};

func void Grd_260_Drake_Gefahr_Info()
{
	AI_Output(other,self,"Grd_260_Drake_Gefahr_Info_15_01");	//���� ������� ������������ � ������?
	AI_Output(self,other,"Grd_260_Drake_Gefahr_Info_11_02");	//� ��������, �������� - ��� ������� �����.
	AI_Output(self,other,"Grd_260_Drake_Gefahr_Info_11_03");	//��-�� ��� ��� ���� �������� �������� ��������� �����. � ���� ��, ��� ������� ���������� ���������.
	AI_Output(other,self,"Grd_260_Drake_Gefahr_Info_15_04");	//�������� ��� � ��������.
	AI_Output(self,other,"Grd_260_Drake_Gefahr_Info_11_05");	//��, � ���� ��� ��������� �� ���...
	AI_Output(self,other,"Grd_260_Drake_Gefahr_Info_11_06");	//���� ����, � � �������� ���� � ��������.
};


instance Grd_260_Drake_Crawler_Okay(C_Info)
{
	npc = GRD_260_Drake;
	condition = Grd_260_Drake_Crawler_Okay_Condition;
	information = Grd_260_Drake_Crawler_Okay_Info;
	important = 0;
	permanent = 0;
	description = "(������ ����)";
};


func int Grd_260_Drake_Crawler_Okay_Condition()
{
	if(Npc_KnowsInfo(hero,Grd_260_Drake_Gefahr))
	{
		return 1;
	};
	return FALSE;
};

func void Grd_260_Drake_Crawler_Okay_Info()
{
	if(Npc_HasItems(hero,ItFoBeer))
	{
		AI_Output(hero,self,"Grd_260_Drake_Crawler_Okay_15_01");	//���, ����� �� ��� ��������!
		B_GiveInvItems(hero,self,ItFoBeer,1);
		if(C_BodyStateContains(self,BS_SIT))
		{
			AI_Standup(self);
			AI_TurnToNPC(self,hero);
		};
		AI_UseItem(self,ItFoBeer);
		AI_Output(self,hero,"Grd_260_Drake_Crawler_Okay_11_02");	//�������. ��, ������� ����� �������� ������, � ��������, � ������� �������.
		AI_Output(self,hero,"Grd_260_Drake_Crawler_Okay_11_03");	//��� ��� �� ���� �� �������� �� ��� �����, � ������� �����. ���� ������� ������ �� ���, ����!
		AI_Output(self,hero,"Grd_260_Drake_Crawler_Okay_11_04");	//��� �������� � ����� - ��� � ���� ����� ���� ��������!
	}
	else
	{
		AI_Output(self,other,"Grd_260_Drake_Crawler_Okay_11_06");	//�� ���, ������? � �� ������: ���� ����, ����� ���������!
		Grd_260_Drake_Crawler_Okay.permanent = 1;
	};
};


instance Grd_260_Drake_Mine(C_Info)
{
	npc = GRD_260_Drake;
	condition = Grd_260_Drake_Mine_Condition;
	information = Grd_260_Drake_Mine_Info;
	important = 0;
	permanent = 0;
	description = "��� �� ������ ������� � �����?";
};


func int Grd_260_Drake_Mine_Condition()
{
	return 1;
};

func void Grd_260_Drake_Mine_Info()
{
	AI_Output(other,self,"Grd_260_Drake_Mine_Info_15_01");	//��� �� ������ ������� � �����?
	AI_Output(self,other,"Grd_260_Drake_Mine_Info_11_02");	//��, ������ �� � ����� ��������� � ������� �����. ���� ������ ����� ������� ��������.
	AI_Output(self,other,"Grd_260_Drake_Mine_Info_11_03");	//���� �������� �������, �� ������� ������������ �������� - �� ����� ���� �������.
	AI_Output(self,other,"Grd_260_Drake_Mine_Info_11_04");	//����� � ��� ��������� ���������. ����� ���� �� ������������ ����� �� ��� ����������� ����.
};


instance Grd_260_Drake_Mine_Mehr(C_Info)
{
	npc = GRD_260_Drake;
	condition = Grd_260_Drake_Mine_Mehr_Condition;
	information = Grd_260_Drake_Mine_Mehr_Info;
	important = 0;
	permanent = 0;
	description = "�������� ��� ��� ���-������ � �����.";
};


func int Grd_260_Drake_Mine_Mehr_Condition()
{
	if(Npc_KnowsInfo(hero,Grd_260_Drake_Mine))
	{
		return 1;
	};
	return FALSE;
};

func void Grd_260_Drake_Mine_Mehr_Info()
{
	AI_Output(other,self,"Grd_260_Drake_Mine_Mehr_Info_15_01");	//�������� ��� �� ���� �����������!
	AI_Output(self,other,"Grd_260_Drake_Mine_Mehr_Info_11_02");	//���� ������ ������ ������, ����������� � �������. �� ����������.
	AI_Output(self,other,"Grd_260_Drake_Mine_Mehr_Info_11_03");	//��� �������� � ����. �� ����� �������. �� ���������� ���� � �����.
};


instance Grd_260_Drake_Ian(C_Info)
{
	npc = GRD_260_Drake;
	condition = Grd_260_Drake_Ian_Condition;
	information = Grd_260_Drake_Ian_Info;
	important = 0;
	permanent = 0;
	description = "��� � ���� ����� ���?";
};


func int Grd_260_Drake_Ian_Condition()
{
	if(!Npc_KnowsInfo(hero,stt_301_ian_hi) && Npc_KnowsInfo(hero,Grd_260_Drake_Mine_Mehr))
	{
		return TRUE;
	};
	return FALSE;
};

func void Grd_260_Drake_Ian_Info()
{
	AI_Output(other,self,"Grd_260_Drake_Ian_Info_15_01");	//��� � ���� ����� ���?
	AI_Output(self,other,"Grd_260_Drake_Ian_Info_11_02");	//�� ������� ��� � ������ ������� �����, ����� �� �������.
	AI_Output(self,other,"Grd_260_Drake_Ian_Info_11_03");	//��, � ��� ��� ���. �� ���� ������ � �������, ���? ������ � ���!
	AI_Output(self,other,"Grd_260_Drake_Ian_Info_11_04");	//����� ��������� ������ ���� �������, � ��� - ��. �� � ��� �������.
	AI_Output(self,other,"Grd_260_Drake_Ian_Info_11_05");	//���� ����������� � ���, ����������� �� ����� ����, ����?
};


instance Grd_260_Drake_GARDEAUFNAHME(C_Info)
{
	npc = GRD_260_Drake;
	condition = Grd_260_Drake_GARDEAUFNAHME_Condition;
	information = Grd_260_Drake_GARDEAUFNAHME_Info;
	important = 1;
	permanent = 0;
};


func int Grd_260_Drake_GARDEAUFNAHME_Condition()
{
	if((Npc_HasItems(hero,ItAt_Crawlerqueen) >= 1) && (Npc_GetTrueGuild(hero) == GIL_STT) && !Npc_KnowsInfo(hero,Grd_264_Gardist_GARDEAUFNAHME))
	{
		return TRUE;
	};
	return FALSE;
};

func void Grd_260_Drake_GARDEAUFNAHME_Info()
{
	AI_Output(self,other,"Grd_260_Drake_GARDEAUFNAHME_Info_11_01");	//��, ����� �� �� ����������� � ���������! �� ������������ ����, ����� ����� ����������!
	AI_Output(self,other,"Grd_260_Drake_GARDEAUFNAHME_Info_11_02");	//����������� � ������ ������ � �������� �� ���� � �������!
	Log_CreateTopic(GE_BecomeGuard,LOG_NOTE);
	B_LogEntry(GE_BecomeGuard,"��� ������ � ������� ����, ���� �� ���������� � �������. ��������, �� �������� ��� �������������� � �������.");
};

