
instance DIA_BaalIsidro_EXIT(C_Info)
{
	npc = NOV_1333_BaalIsidro;
	nr = 999;
	condition = DIA_BaalIsidro_EXIT_Condition;
	information = DIA_BaalIsidro_EXIT_Info;
	permanent = 1;
	description = DIALOG_ENDE;
};


func int DIA_BaalIsidro_EXIT_Condition()
{
	return 1;
};

func void DIA_BaalIsidro_EXIT_Info()
{
	AI_StopProcessInfos(self);
};


instance DIA_BaalIsidro_Hello(C_Info)
{
	npc = NOV_1333_BaalIsidro;
	nr = 1;
	condition = DIA_BaalIsidro_Hello_Condition;
	information = DIA_BaalIsidro_Hello_Info;
	permanent = 0;
	description = "�� ��������� �� ������� ���������.";
};


func int DIA_BaalIsidro_Hello_Condition()
{
	return 1;
};

func void DIA_BaalIsidro_Hello_Info()
{
	AI_Output(other,self,"DIA_BaalIsidro_Hello_15_00");	//�� ��������� �� ������� ���������.
	AI_Output(self,other,"DIA_BaalIsidro_Hello_03_01");	//��� � ����!
	AI_Output(self,other,"DIA_BaalIsidro_Hello_03_02");	//��� ����� ����� � ��� ����� ���� ���������.
	AI_Output(other,self,"DIA_BaalIsidro_Hello_15_03");	//���� �������� ���� �� ������ ���������?
	AI_Output(self,other,"DIA_BaalIsidro_Hello_03_04");	//��. �� �� ��� ��� ����...
};


instance DIA_BaalIsidro_TRADE(C_Info)
{
	npc = NOV_1333_BaalIsidro;
	nr = 800;
	condition = DIA_BaalIsidro_TRADE_Condition;
	information = DIA_BaalIsidro_TRADE_Info;
	permanent = 1;
	description = "������ ���, ��� � ���� ����.";
	trade = 1;
};


func int DIA_BaalIsidro_TRADE_Condition()
{
	if(Npc_KnowsInfo(hero,DIA_BaalIsidro_Hello))
	{
		return 1;
	};
	return FALSE;
};

func void DIA_BaalIsidro_TRADE_Info()
{
	AI_Output(other,self,"DIA_BaalIsidro_TRADE_15_00");	//������ ���, ��� � ���� ����.
	AI_Output(self,other,"DIA_BaalIsidro_TRADE_03_01");	//���...
};


instance DIA_BaalIsidro_GimmeKraut(C_Info)
{
	npc = NOV_1333_BaalIsidro;
	nr = 1;
	condition = DIA_BaalIsidro_GimmeKraut_Condition;
	information = DIA_BaalIsidro_GimmeKraut_Info;
	permanent = 0;
	description = "� ���� ������ ���� ��������� �������� - �� �� �������, �������.";
};


func int DIA_BaalIsidro_GimmeKraut_Condition()
{
	if(Npc_KnowsInfo(hero,DIA_BaalIsidro_Hello))
	{
		return 1;
	};
	return FALSE;
};

func void DIA_BaalIsidro_GimmeKraut_Info()
{
	AI_Output(other,self,"DIA_BaalIsidro_GimmeKraut_15_00");	//� ���� ������ ���� ��������� �������� - �� �� �������, �������.
	AI_Output(self,other,"DIA_BaalIsidro_GimmeKraut_03_01");	//������ �� ���� - � ��� �� ��������� ����. �� ������ ������� � ��� - ��� � ���.
	Log_CreateTopic(CH1_DealerJob,LOG_MISSION);
	Log_SetTopicStatus(CH1_DealerJob,LOG_RUNNING);
	B_LogEntry(CH1_DealerJob,"���� ������ ��������� ��������� � ���� � ����� � ����������. �� ������ ���������� ���� ����� ���������, �� ��� ��� ���� �� �������. ��������, ������� ��������� ��� �������� ��� ���... ��� ������ ���?");
};


instance DIA_BaalIsidro_Problem(C_Info)
{
	npc = NOV_1333_BaalIsidro;
	nr = 1;
	condition = DIA_BaalIsidro_Problem_Condition;
	information = DIA_BaalIsidro_Problem_Info;
	permanent = 0;
	description = "���� ����� ���������� ��������� ���� ������.";
};


func int DIA_BaalIsidro_Problem_Condition()
{
	if(Npc_KnowsInfo(hero,DIA_BaalKagan_WannaHelp))
	{
		return 1;
	};
	return FALSE;
};

func void DIA_BaalIsidro_Problem_Info()
{
	AI_Output(other,self,"DIA_BaalIsidro_Problem_15_00");	//��� ��� � ���� �����, �������: � ���� ������� ������������. ���� ����� ���������� ��������� ���� ������.
	AI_Output(self,other,"DIA_BaalIsidro_Problem_03_01");	//���? ����������� ������, ������� ���� ����! ��� ����� ���������� �� ���� �����...
	if(BaalIsidro_GotDrink == FALSE)
	{
		B_LogEntry(CH1_DealerJob,"���� ������ ������ �����������, ����� � ������� ���� �� ��� ������. �� ����� ��� ����� ��������� ������������ ��� ����, ����� ��������� ��� ������� ��� ������.");
	}
	else
	{
		B_LogEntry(CH1_DealerJob,"���� ����� ������ �� ������ ���������� ����� ������ ������ ������� ���. �����, ������ �� ������ ��� �����������.");
	};
};


var int BaalIsidro_GotDrink;

instance DIA_BaalIsidro_Drink(C_Info)
{
	npc = NOV_1333_BaalIsidro;
	nr = 1;
	condition = DIA_BaalIsidro_Drink_Condition;
	information = DIA_BaalIsidro_Drink_Info;
	permanent = 1;
	description = "� ��� � � ������. ����� ��� - �� ��� ����.";
};


func int DIA_BaalIsidro_Drink_Condition()
{
	if(Npc_KnowsInfo(hero,DIA_BaalIsidro_GimmeKraut) && (BaalIsidro_GotDrink == FALSE))
	{
		return 1;
	};
	return FALSE;
};

func void DIA_BaalIsidro_Drink_Info()
{
	AI_Output(other,self,"DIA_BaalIsidro_Drink_15_00");	//� ��� � � ������. ����� ��� - �� ��� ����.
	if((Npc_HasItems(other,ItFoBooze) > 0) || (Npc_HasItems(other,ItFoBeer) > 0) || (Npc_HasItems(other,ItFoWine) > 0))
	{
		AI_Output(self,other,"DIA_BaalIsidro_Drink_03_01");	//�������, �������! ��� �� ���� ��������!
		if(Npc_HasItems(other,ItFoBooze))
		{
			B_GiveInvItems(other,self,ItFoBooze,1);
			if(C_BodyStateContains(self,BS_SIT))
			{
				AI_Standup(self);
				AI_TurnToNPC(self,hero);
			};
			AI_UseItem(self,ItFoBooze);
		}
		else if(Npc_HasItems(other,ItFoBeer))
		{
			B_GiveInvItems(other,self,ItFoBeer,1);
			if(C_BodyStateContains(self,BS_SIT))
			{
				AI_Standup(self);
				AI_TurnToNPC(self,hero);
			};
			AI_UseItem(self,ItFoBeer);
		}
		else if(Npc_HasItems(other,ItFoWine))
		{
			B_GiveInvItems(other,self,ItFoWine,1);
			if(C_BodyStateContains(self,BS_SIT))
			{
				AI_Standup(self);
				AI_TurnToNPC(self,hero);
			};
			AI_UseItem(self,ItFoWine);
		};
		BaalIsidro_GotDrink = TRUE;
		if(Npc_KnowsInfo(hero,DIA_BaalIsidro_Problem))
		{
			B_LogEntry(CH1_DealerJob,"��� ������ ����������� ����� ��������� �������� ����� ������. ������, ������ �� ��� ������.");
		}
		else
		{
			B_LogEntry(CH1_DealerJob,"���� ������ � ����������� ������ �������, �� �������� ��� �������� ��� ������� ���������.");
		};
	}
	else
	{
		AI_Output(self,other,"DIA_BaalIsidro_NO_Drink_03_00");	//���? ���?
	};
};


var int BaalIsidro_DealerJob;

instance DIA_BaalIsidro_ThinkAgain(C_Info)
{
	npc = NOV_1333_BaalIsidro;
	nr = 1;
	condition = DIA_BaalIsidro_ThinkAgain_Condition;
	information = DIA_BaalIsidro_ThinkAgain_Info;
	permanent = 1;
	description = "������� �� ����: �� ������ ��� ��������, � �� ������� �������. ";
};


func int DIA_BaalIsidro_ThinkAgain_Condition()
{
	if(Npc_KnowsInfo(hero,DIA_BaalIsidro_GimmeKraut) && ((BaalIsidro_DealerJob != LOG_RUNNING) && (BaalIsidro_DealerJob != LOG_SUCCESS)))
	{
		return 1;
	};
	return FALSE;
};

func void DIA_BaalIsidro_ThinkAgain_Info()
{
	AI_Output(other,self,"DIA_BaalIsidro_ThinkAgain_15_00");	//������� �� ����: �� ������ ��� ��������, � �� ������� �������. 
	if((BaalIsidro_GotDrink == TRUE) && Npc_KnowsInfo(hero,DIA_BaalIsidro_Problem))
	{
		AI_Output(self,other,"DIA_BaalIsidro_ThinkAgain_03_01");	//��, ������, ��� �� ��� ����� ����� � ��� ��� �����. �� �� �� ������ ��������� ���� �������, ������?
		AI_Output(other,self,"DIA_BaalIsidro_ThinkAgain_15_02");	//��� ���� �����.
		AI_Output(self,other,"DIA_BaalIsidro_ThinkAgain_03_03");	//������, ������� ��������... �� ������ �������� �� ���� �� ������� ���� 400 ������ ����. ���������� �� 200 �� �����. � ���� ����� ���� �����. �����������, ��� ������ �������� ����.
		AI_Output(other,self,"DIA_BaalIsidro_ThinkAgain_15_04");	//�� �� ������, ��� ����� �������� ������ ����� ���������?
		AI_Output(self,other,"DIA_BaalIsidro_ThinkAgain_03_05");	//���� �� � ����, �� ���������� �� � ���� ���.
		AI_Output(self,other,"DIA_BaalIsidro_ThinkAgain_03_06");	//������, ���� ��� ����� � ���, � �������� ���� ������� �����.
		BaalIsidro_DealerJob = LOG_RUNNING;
		B_LogEntry(CH1_DealerJob,"���� ������ ����� ��� ��������. ���� � ������ ���, �� ������ �������� �������, ��� �������� 200 ������ ����.");
		CreateInvItems(self,ItMiJoint_1,40);
		B_GiveInvItems(self,other,ItMiJoint_1,50);
		Npc_RemoveInvItems(self,ItMiJoint_2,20);
		Npc_RemoveInvItems(self,ItMiJoint_3,20);
		Npc_RemoveInvItems(other,ItMiJoint_1,40);
		CreateInvItems(other,ItMiJoint_2,20);
		CreateInvItems(other,ItMiJoint_3,20);
		AI_StopProcessInfos(self);
	}
	else
	{
		AI_Output(self,other,"DIA_BaalIsidro_REFUSE_ThinkAgain_03_00");	//���, ������. � ���������...
	};
};


instance DIA_BaalIsidro_RUNNING(C_Info)
{
	npc = NOV_1333_BaalIsidro;
	nr = 1;
	condition = DIA_BaalIsidro_RUNNING_Condition;
	information = DIA_BaalIsidro_RUNNING_Info;
	permanent = 0;
	description = "� ������ ���� ��������. ��� 200 ������ ����.";
};


func int DIA_BaalIsidro_RUNNING_Condition()
{
	if(BaalIsidro_DealerJob == LOG_RUNNING)
	{
		return 1;
	};
	return FALSE;
};

func void DIA_BaalIsidro_RUNNING_Info()
{
	AI_Output(other,self,"DIA_BaalIsidro_RUNNING_15_00");	//� ������ ���� ��������.
	AI_Output(self,other,"DIA_BaalIsidro_RUNNING_03_01");	//� ��� ��� 200 ������?
	if(Npc_HasItems(other,ItMiNugget) >= 200)
	{
		AI_Output(other,self,"DIA_BaalIsidro_RUNNING_15_02");	//��� ���.
		AI_Output(self,other,"DIA_BaalIsidro_RUNNING_03_03");	//������... � � ����� ����� ������! (��������)
		AI_Output(self,other,"DIA_BaalIsidro_RUNNING_03_04");	//��� ��� ����� � ����� ����.
		B_GiveInvItems(hero,self,ItMiNugget,200);
		BaalIsidro_DealerJob = LOG_SUCCESS;
		Log_SetTopicStatus(CH1_DealerJob,LOG_SUCCESS);
		B_LogEntry(CH1_DealerJob,"���� ������ ��� ��� �������� ���� 200 ������ ����.");
		B_GiveXP(XP_BaalIsidroPayShare);
	}
	else
	{
		AI_Output(other,self,"DIA_BaalIsidro_RUNNING_NoOre_15_05");	//����� ����� � �����.
		AI_Output(self,other,"DIA_BaalIsidro_RUNNING_NoOre_03_06");	//��� ������� ��!
		AI_StopProcessInfos(self);
	};
};

