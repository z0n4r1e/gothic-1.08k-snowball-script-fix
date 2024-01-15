
instance VLK_584_Snipes_Exit(C_Info)
{
	npc = VLK_584_Snipes;
	nr = 999;
	condition = VLK_584_Snipes_Exit_Condition;
	information = VLK_584_Snipes_Exit_Info;
	important = 0;
	permanent = 1;
	description = DIALOG_ENDE;
};


func int VLK_584_Snipes_Exit_Condition()
{
	return 1;
};

func void VLK_584_Snipes_Exit_Info()
{
	AI_Output(other,self,"Info_Exit_Info_15_001");	//��������!
	AI_Output(self,other,"Info_Exit_Info_07_02");	//��, �������.
	AI_StopProcessInfos(self);
};


instance VLK_584_Snipes_DEAL(C_Info)
{
	npc = VLK_584_Snipes;
	condition = VLK_584_Snipes_DEAL_Condition;
	information = VLK_584_Snipes_DEAL_Info;
	important = 0;
	permanent = 0;
	description = "��� �����?";
};


func int VLK_584_Snipes_DEAL_Condition()
{
	return 1;
};

func void VLK_584_Snipes_DEAL_Info()
{
	AI_Output(other,self,"VLK_584_Snipes_DEAL_Info_15_01");	//��� ����?
	AI_Output(self,other,"VLK_584_Snipes_DEAL_Info_07_02");	//� ���� ���� ��� ���� ���������.
	AI_Output(self,other,"VLK_584_Snipes_DEAL_Info_07_03");	//���� �� ��������� ����� �� �������, � ��� ���� 10 ������ ����.
	Snipes_deal = LOG_RUNNING;
	Log_CreateTopic(CH2_SnipesDeal,LOG_MISSION);
	Log_SetTopicStatus(CH2_SnipesDeal,LOG_RUNNING);
	B_LogEntry(CH2_SnipesDeal,"������� ������ ��������� ��� 10 ������ ����, ����� � ������� ������ ����� �� ��� �������.");
};


instance VLK_584_Snipes_DEAL_RUN(C_Info)
{
	npc = VLK_584_Snipes;
	condition = VLK_584_Snipes_DEAL_RUN_Condition;
	information = VLK_584_Snipes_DEAL_RUN_Info;
	important = 0;
	permanent = 0;
	description = "�� ������ ��� 10 ������!";
};


func int VLK_584_Snipes_DEAL_RUN_Condition()
{
	if(Snipes_deal == LOG_SUCCESS)
	{
		return TRUE;
	};
};

func void VLK_584_Snipes_DEAL_RUN_Info()
{
	AI_Output(other,self,"VLK_584_Snipes_DEAL_RUN_Info_15_01");	//�� ������ ��� 10 ������!
	AI_Output(self,other,"VLK_584_Snipes_DEAL_RUN_Info_07_02");	//���, �� �������� ��.
	AI_Output(self,other,"VLK_584_Snipes_DEAL_RUN_Info_07_03");	//��, � ��� ��� ���. � ���� ���� ���� �� ��� �������. ��� ����... ����� �� 30 ������!
	CreateInvItems(self,ItMiNugget,10);
	B_GiveInvItems(self,other,ItMiNugget,10);
	CreateInvItem(self,ItKe_OM_02);
	B_GiveXP(XP_LureAaronAway);
	B_LogEntry(CH2_SnipesDeal,"��� �� 30 ������ ������ ��������� ��� ���� � ������� �����.");
};


instance VLK_584_Snipes_DEAL_2(C_Info)
{
	npc = VLK_584_Snipes;
	condition = VLK_584_Snipes_DEAL_2_Condition;
	information = VLK_584_Snipes_DEAL_2_Info;
	important = 0;
	permanent = 1;
	description = "(������ ����)";
};


func int VLK_584_Snipes_DEAL_2_Condition()
{
	if(Npc_KnowsInfo(hero,VLK_584_Snipes_DEAL_RUN) && Npc_HasItems(self,ItKe_OM_02))
	{
		return 1;
	};
};

func void VLK_584_Snipes_DEAL_2_Info()
{
	if(Npc_HasItems(hero,ItMiNugget) >= 30)
	{
		AI_Output(other,self,"VLK_584_Snipes_DEAL_2_Info_15_01");	//� ������� ����.
		AI_Output(self,other,"VLK_584_Snipes_DEAL_2_Info_07_02");	//������� ������.
		AI_Output(other,self,"VLK_584_Snipes_DEAL_2_Info_15_03");	//���� ������ ���� �������: ��� � ����� ��������� ��?
		AI_Output(self,other,"VLK_584_Snipes_DEAL_2_Info_07_04");	//������ ������� ������ ����������. � ���� ��� ������ � ���� ���� �������, � ��������.
		B_GiveInvItems(hero,self,ItMiNugget,30);
		B_GiveInvItems(self,hero,ItKe_OM_02,1);
		VLK_584_Snipes_DEAL_2.permanent = 0;
		B_LogEntry(CH2_SnipesDeal,"� ����� � ������� ���� � �������! ���������, ��� ����� ������ ����, ����� � �������� ��� �� ����?");
	}
	else
	{
		AI_Output(self,other,"VLK_584_Snipes_DEAL_2_Info_07_05");	//� ������: 30 ������! ���� ������ ����!
	};
};

