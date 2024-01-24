
instance Info_BaalLukor_EXIT(C_Info)
{
	npc = GUR_1211_BaalLukor;
	nr = 999;
	condition = Info_BaalLukor_EXIT_Condition;
	information = Info_BaalLukor_EXIT_Info;
	permanent = 1;
	description = DIALOG_ENDE;
};


func int Info_BaalLukor_EXIT_Condition()
{
	return TRUE;
};

func void Info_BaalLukor_EXIT_Info()
{
	AI_StopProcessInfos(self);
};


instance Info_BaalLukor_MEET(C_Info)
{
	npc = GUR_1211_BaalLukor;
	condition = Info_BaalLukor_MEET_Condition;
	information = Info_BaalLukor_MEET_Info;
	permanent = 0;
	important = 1;
};


func int Info_BaalLukor_MEET_Condition()
{
	return TRUE;
};

func void Info_BaalLukor_MEET_Info()
{
	AI_Output(self,other,"Info_BaalLukor_MEET_13_01");	//��������� �� ������. �� ������ ��� ��� �������.
	B_GiveXP(XP_SaveBaalLukor);
};


instance Info_BaalLukor_DEAD(C_Info)
{
	npc = GUR_1211_BaalLukor;
	condition = Info_BaalLukor_DEAD_Condition;
	information = Info_BaalLukor_DEAD_Info;
	nr = 20;
	permanent = 0;
	important = 0;
	description = "�� ������ ���� � ����� ���������� ������� �������.";
};


func int Info_BaalLukor_DEAD_Condition()
{
	return TRUE;
};

func void Info_BaalLukor_DEAD_Info()
{
	AI_Output(other,self,"Info_BaalLukor_DEAD_15_01");	//�� ������ ���� � ����� ���������� ������� �������. ��� ���������?
	AI_Output(self,other,"Info_BaalLukor_DEAD_13_02");	//�������� ��� ����� �������� ��� ����������� ������.
	AI_Output(self,other,"Info_BaalLukor_DEAD_13_03");	//�� ������� ������� ���� ����� � ����������������� �����.
	AI_Output(self,other,"Info_BaalLukor_DEAD_13_04");	//�� �������� ���� ����������, � ���� ���� �������! � �� ����, ���� ��� ������ �����, �� �� ��������� ���� ����� ��� �����������.
	AI_Output(other,self,"Info_BaalLukor_DEAD_15_05");	//� ��� ��������� ������?
	AI_Output(self,other,"Info_BaalLukor_DEAD_13_06");	//������! � �������� ���� �������� �� ������. �������, ������ ������� ���� �� ���.
	B_LogEntry(CH3_OrcGraveyard,"� ���� ����� ���� ����� ������ �� ������� ��������, ����� ���� ��������� ���. ��� ������ ������ ���� ����� ����� ����������.");
};


instance Info_BaalLukor_SUMMONING(C_Info)
{
	npc = GUR_1211_BaalLukor;
	condition = Info_BaalLukor_SUMMONING_Condition;
	information = Info_BaalLukor_SUMMONING_Info;
	nr = 10;
	permanent = 0;
	important = 0;
	description = "���� ������� ��� �����! ";
};


func int Info_BaalLukor_SUMMONING_Condition()
{
	return TRUE;
};

func void Info_BaalLukor_SUMMONING_Info()
{
	AI_Output(other,self,"Info_BaalLukor_SUMMONING_15_01");	//���� ������� ��� �����! �� ����� ���-������?
	AI_Output(self,other,"Info_BaalLukor_SUMMONING_13_02");	//���� ��� ���. ��� � �`��������? �� ������ � ����?
	AI_Output(other,self,"Info_BaalLukor_SUMMONING_15_03");	//���, �� ��� ��� ��� ��������.
	AI_Output(self,other,"Info_BaalLukor_SUMMONING_13_04");	//�� ������ ��������� ������� ���� �����. ����� ����� ���������� ������ � �� ���� ��������� � ������� � ������� ������.
	AI_Output(self,other,"Info_BaalLukor_SUMMONING_13_05");	//�� � �� ������� ����� � ���, � ���� �� ��� ��������� ���� �����, ��� ��� ���������� ������ �� ������� ������.
	AI_Output(self,other,"Info_BaalLukor_SUMMONING_13_06");	//���� �� ������� ��������, �� ������ ������ ��� ����������� ��� ��������.
};


instance Info_BaalLukor_HELP(C_Info)
{
	npc = GUR_1211_BaalLukor;
	condition = Info_BaalLukor_HELP_Condition;
	information = Info_BaalLukor_HELP_Info;
	permanent = 0;
	important = 0;
	description = "� ������ ����.";
};


func int Info_BaalLukor_HELP_Condition()
{
	return Npc_KnowsInfo(hero,Info_BaalLukor_SUMMONING);
};

func void Info_BaalLukor_HELP_Info()
{
	AI_Output(other,self,"Info_BaalLukor_HELP_15_01");	//� ������ ����.
	AI_Output(self,other,"Info_BaalLukor_HELP_13_02");	//������. �������. �� ����� ���� ������� ��� �������. �� ������ ��������� �� ���.
	AI_Output(self,other,"Info_BaalLukor_HELP_13_03");	//��� ������. � ����� ������!
	B_LogEntry(CH3_OrcGraveyard,"���� ����� ������������� �� ���. ������ �� ������ �������� ������ ����� �������� �����!");
	AI_StopProcessInfos(self);
	Npc_ExchangeRoutine(self,"Follow");
};


instance Info_BaalLukor_FOUNDNONE(C_Info)
{
	npc = GUR_1211_BaalLukor;
	condition = Info_BaalLukor_FOUNDNONE_Condition;
	information = Info_BaalLukor_FOUNDNONE_Info;
	permanent = 1;
	important = 0;
	description = "� ������ �� ���� �����!";
};


func int Info_BaalLukor_FOUNDNONE_Condition()
{
	if(Npc_KnowsInfo(hero,Info_BaalLukor_HELP) && (BaalLukor_BringParchment == 0) && !Npc_HasItems(hero,OrkParchmentOne) && !Npc_HasItems(hero,OrkParchmentTwo))
	{
		return TRUE;
	};
	return FALSE;
};

func void Info_BaalLukor_FOUNDNONE_Info()
{
	AI_Output(other,self,"Info_BaalLukor_FOUNDNONE_15_01");	//� ������ �� ���� �����!
	AI_Output(self,other,"Info_BaalLukor_FOUNDNONE_13_02");	//�� ������ ��������� ��� ��� �������.
	Npc_ExchangeRoutine(self,"Follow");
};


instance Info_BaalLukor_FOUNDONE(C_Info)
{
	npc = GUR_1211_BaalLukor;
	condition = Info_BaalLukor_FOUNDONE_Condition;
	information = Info_BaalLukor_FOUNDONE_Info;
	permanent = 1;
	important = 0;
	description = "��������, ������ �������� ������ �������� �� ����������!";
};


func int Info_BaalLukor_FOUNDONE_Condition()
{
	if(Npc_KnowsInfo(hero,Info_BaalLukor_HELP) && (((BaalLukor_BringParchment == 1) && !Npc_HasItems(hero,OrkParchmentTwo)) || ((BaalLukor_BringParchment == 2) && !Npc_HasItems(hero,OrkParchmentOne))))
	{
		return TRUE;
	};
	return FALSE;
};

func void Info_BaalLukor_FOUNDONE_Info()
{
	AI_Output(other,self,"Info_BaalLukor_FOUNDONE_15_01");	//��������, ������ �������� ������ �������� �� ����������!
	AI_Output(self,other,"Info_BaalLukor_FOUNDONE_13_02");	//������ ���� ������ ��������. ����� �������� ��� ��� �������!
	Npc_ExchangeRoutine(self,"Follow");
};


instance Info_BaalLukor_FIRSTWAIT(C_Info)
{
	npc = GUR_1211_BaalLukor;
	condition = Info_BaalLukor_FIRSTWAIT_Condition;
	information = Info_BaalLukor_FIRSTWAIT_Info;
	permanent = 0;
	important = 1;
};


func int Info_BaalLukor_FIRSTWAIT_Condition()
{
	if(Npc_KnowsInfo(hero,Info_BaalLukor_HELP) && (Npc_GetDistToWP(self,"GRYD_040") < 500))
	{
		return TRUE;
	};
	return FALSE;
};

func void Info_BaalLukor_FIRSTWAIT_Info()
{
	B_FullStop(hero);
	AI_GotoNpc(self,hero);
	AI_Output(self,other,"Info_BaalLukor_FIRSTWAIT_13_01");	//�� � ������! ��������, �������� ������� � ���� �����.
	AI_StopProcessInfos(self);
	Npc_ExchangeRoutine(self,"WaitInSideTunnelOne");
};


instance Info_BaalLukor_FIRSTSCROLL(C_Info)
{
	npc = GUR_1211_BaalLukor;
	condition = Info_BaalLukor_FIRSTSCROLL_Condition;
	information = Info_BaalLukor_FIRSTSCROLL_Info;
	permanent = 0;
	important = 0;
	description = "� ����� ������!";
};


func int Info_BaalLukor_FIRSTSCROLL_Condition()
{
	if(Npc_KnowsInfo(hero,Info_BaalLukor_HELP) && Npc_HasItems(hero,OrkParchmentOne))
	{
		return TRUE;
	};
	return FALSE;
};

func void Info_BaalLukor_FIRSTSCROLL_Info()
{
	AI_Output(other,self,"Info_BaalLukor_FIRSTSCROLL_15_01");	//� ����� ������!
	B_GiveInvItems(hero,self,OrkParchmentOne,1);
	if(BaalLukor_BringParchment == 2)
	{
		AI_Output(self,other,"Info_BaalLukor_FIRSTSCROLL_13_02");	//����� ������! ��� ������ �������� ����������� ���������� �����.
		BaalLukor_BringParchment = 3;
	}
	else
	{
		AI_Output(self,other,"Info_BaalLukor_FIRSTSCROLL_13_03");	//��� ������ �� ������ � ����������� �����, ��������� �� ��� �����.
		AI_Output(self,other,"Info_BaalLukor_FIRSTSCROLL_13_04");	//���-�� ������ ���� ������ �����.
		AI_StopProcessInfos(self);
		BaalLukor_BringParchment = 1;
	};
	Npc_ExchangeRoutine(self,"Follow");
};


instance Info_BaalLukor_SECONDWAIT(C_Info)
{
	npc = GUR_1211_BaalLukor;
	condition = Info_BaalLukor_SECONDWAIT_Condition;
	information = Info_BaalLukor_SECONDWAIT_Info;
	permanent = 0;
	important = 1;
};


func int Info_BaalLukor_SECONDWAIT_Condition()
{
	if(Npc_KnowsInfo(hero,Info_BaalLukor_HELP) && (Npc_GetDistToWP(self,"GRYD_047") < 500))
	{
		return TRUE;
	};
	return FALSE;
};

func void Info_BaalLukor_SECONDWAIT_Info()
{
	B_FullStop(hero);
	AI_GotoNpc(self,hero);
	AI_Output(self,other,"Info_BaalLukor_SECONDWAIT_13_01");	//�-���... ���� ������� ������������� �������. ��������, ����� �� ������� ���-��, ��� ���������� ��� � ����������.
	if(!Npc_HasItems(hero,OrkParchmentTwo))
	{
		AI_StopProcessInfos(self);
		Npc_ExchangeRoutine(self,"WaitInSideTunnelTwo");
	};
};


instance Info_BaalLukor_SECONDSCROLL(C_Info)
{
	npc = GUR_1211_BaalLukor;
	condition = Info_BaalLukor_SECONDSCROLL_Condition;
	information = Info_BaalLukor_SECONDSCROLL_Info;
	permanent = 0;
	description = "����� ����� ������� ������!";
};


func int Info_BaalLukor_SECONDSCROLL_Condition()
{
	if(Npc_KnowsInfo(hero,Info_BaalLukor_HELP) && Npc_HasItems(hero,OrkParchmentTwo))
	{
		return TRUE;
	};
	return FALSE;
};

func void Info_BaalLukor_SECONDSCROLL_Info()
{
	B_FullStop(hero);
	AI_GotoNpc(self,hero);
	AI_Output(other,self,"Info_BaalLukor_SECONDSCROLL_15_01");	//����� ����� ������� ������!
	B_GiveInvItems(hero,self,OrkParchmentTwo,1);
	if(BaalLukor_BringParchment == 1)
	{
		AI_Output(self,other,"Info_BaalLukor_SECONDSCROLL_13_02");	//����� ������! ��� ������ �������� ����������� ���������� �����.
		BaalLukor_BringParchment = 3;
	}
	else
	{
		AI_Output(self,other,"Info_BaalLukor_SECONDSCROLL_13_03");	//��� ������ �� ������ � ����������� �����, ��������� �� ��� �����.
		AI_Output(self,other,"Info_BaalLukor_SECONDSCROLL_13_04");	//���-�� ������ ���� ������ �����.
		AI_StopProcessInfos(self);
		BaalLukor_BringParchment = 2;
	};
	Npc_ExchangeRoutine(self,"Follow");
};


instance Info_BaalLukor_BOTHSCROLLS(C_Info)
{
	npc = GUR_1211_BaalLukor;
	condition = Info_BaalLukor_BOTHSCROLLS_Condition;
	information = Info_BaalLukor_BOTHSCROLLS_Info;
	permanent = 0;
	important = 0;
	description = "��� �� ����� ������ � ����� ����� �������?";
};


func int Info_BaalLukor_BOTHSCROLLS_Condition()
{
	if(Npc_KnowsInfo(hero,Info_BaalLukor_HELP) && (BaalLukor_BringParchment == 3))
	{
		return TRUE;
	};
	return FALSE;
};

func void Info_BaalLukor_BOTHSCROLLS_Info()
{
	AI_Output(other,self,"Info_BaalLukor_BOTHSCROLLS_15_01");	//��� �� ����� ������ � ����� ����� �������?
	AI_Output(self,other,"Info_BaalLukor_BOTHSCROLLS_13_02");	//������� ������ ��������� ���� � ������. �� � �� ���� ������������ ��� ������� �������.
	B_LogEntry(CH3_OrcGraveyard,"�� ����� ��� ��������� �������� ������ � �����������, �� ����� �� ����� �������� ���. ��������� ���� ������.");
	Npc_ExchangeRoutine(self,"Follow");
};


instance Info_BaalLukor_RUNES(C_Info)
{
	npc = GUR_1211_BaalLukor;
	condition = Info_BaalLukor_RUNES_Condition;
	information = Info_BaalLukor_RUNES_Info;
	permanent = 0;
	important = 1;
};


func int Info_BaalLukor_RUNES_Condition()
{
	if(Npc_KnowsInfo(hero,Info_BaalLukor_BOTHSCROLLS) && ((Npc_GetDistToWP(hero,"GRYD_025") < 600) || (Npc_GetDistToWP(hero,"GRYD_048") < 600)))
	{
		return TRUE;
	};
	return FALSE;
};

func void Info_BaalLukor_RUNES_Info()
{
	B_FullStop(hero);
	AI_GotoNpc(self,hero);
	AI_Output(self,other,"Info_BaalLukor_RUNES_13_01");	//�������! ��� ��� ���������...
	AI_Output(other,self,"Info_BaalLukor_RUNES_15_02");	//��, � �� ���� ����� ������ �����������.
	AI_Output(self,other,"Info_BaalLukor_RUNES_13_03");	//������� ������� � ����������� � ����� � ���� ������.
	AI_Output(self,other,"Info_BaalLukor_RUNES_13_04");	//��, ����� ������ ���� ���������� ��� ����, ����� ��������� ��� �������� ������.
	B_UseFakeScroll();
	AI_Output(self,other,"Info_BaalLukor_RUNES_13_06");	//����������! ��� ���������� �������. ������, ��� ����������� ������ � ������������ ������.
	AI_Output(self,other,"Info_BaalLukor_RUNES_13_07");	//�������!
	Npc_RemoveInvItems(self,OrkParchmentOne,1);
	Npc_RemoveInvItems(self,OrkParchmentTwo,1);
	B_LogEntry(CH3_OrcGraveyard,"���� ����� ���� ��������� ������ ��� ������ �������� �� ������ � ����� �� �����. ������, ��� ���������� ������������ �� ����� �������� ���������.");
	Npc_ExchangeRoutine(self,"Follow");
};


instance Info_BaalLukor_WHATNOW(C_Info)
{
	npc = GUR_1211_BaalLukor;
	condition = Info_BaalLukor_WHATNOW_Condition;
	information = Info_BaalLukor_WHATNOW_Info;
	permanent = 1;
	important = 0;
	description = "� ����� ��� '������������' ������?";
};


func int Info_BaalLukor_WHATNOW_Condition()
{
	if(Npc_KnowsInfo(hero,Info_BaalLukor_RUNES) && Npc_KnowsInfo(hero,Info_BaalLukor_HALLWITHOUT) && !Npc_KnowsInfo(hero,Info_BaalLukor_HALLWITH))
	{
		return TRUE;
	};
	return FALSE;
};

func void Info_BaalLukor_WHATNOW_Info()
{
	AI_Output(other,self,"Info_BaalLukor_WHATNOW_15_01");	//� ����� ��� '������������' ������?
	AI_Output(self,other,"Info_BaalLukor_WHATNOW_13_02");	//������� ���, ����� ������� �� ���������, ��������� ��� �����... ��������... ������. �������� ����!
	Npc_ExchangeRoutine(self,"Follow");
};


instance Info_BaalLukor_HALLWITHOUT(C_Info)
{
	npc = GUR_1211_BaalLukor;
	condition = Info_BaalLukor_HALLWITHOUT_Condition;
	information = Info_BaalLukor_HALLWITHOUT_Info;
	permanent = 0;
	important = 1;
};


func int Info_BaalLukor_HALLWITHOUT_Condition()
{
	if(!Npc_KnowsInfo(hero,Info_BaalLukor_RUNES) && (Npc_GetDistToWP(hero,"GRYD_055") < 500))
	{
		return TRUE;
	};
	return FALSE;
};

func void Info_BaalLukor_HALLWITHOUT_Info()
{
	B_FullStop(hero);
	AI_SetWalkMode(self,NPC_WALK);
	AI_GotoNpc(self,hero);
	AI_Output(self,other,"Info_BaalLukor_HALLWITHOUT_13_01");	//��� �����... � �� ���� ����� ���������, �� ��� �����...
	AI_Output(self,other,"Info_BaalLukor_HALLWITHOUT_13_02");	//�, �� ������� ��������. ������ ����, � ���� ����������� �����������.
	B_LogEntry(CH3_OrcGraveyard,"��� ������ �� ����� � ������� ������������� ���, ���� ������������ ���-��. �� ������ �� ���� ������� �� �����.");
	Npc_ExchangeRoutine(self,"Follow");
};


instance Info_BaalLukor_HALLWITH(C_Info)
{
	npc = GUR_1211_BaalLukor;
	condition = Info_BaalLukor_HALLWITH_Condition;
	information = Info_BaalLukor_HALLWITH_Info;
	permanent = 0;
	important = 1;
};


func int Info_BaalLukor_HALLWITH_Condition()
{
	if(Npc_KnowsInfo(hero,Info_BaalLukor_RUNES) && (Npc_GetDistToWP(hero,"GRYD_055") < 500))
	{
		return TRUE;
	};
	return FALSE;
};

func void Info_BaalLukor_HALLWITH_Info()
{
	B_FullStop(hero);
	AI_SetWalkMode(self,NPC_WALK);
	AI_GotoNpc(self,hero);
	AI_Output(self,other,"Info_BaalLukor_HALLWITH_13_01");	//� ����� ����� ������ ����... ���� ����-�� �������.
	AI_Output(other,self,"Info_BaalLukor_HALLWITH_15_02");	//���� ��� �������� ��� ����� �� ����� �������.
	AI_Output(self,other,"Info_BaalLukor_HALLWITH_13_03");	//�������... �� ����� ������ � ����...
	B_LogEntry(CH3_OrcGraveyard,"���� �����, ������� ��������� �����, ������� � ����� �� ���� �������� ����.");
	AI_StopProcessInfos(self);
	Npc_ExchangeRoutine(self,"DOOR");
};


instance Info_BaalLukor_DOOR(C_Info)
{
	npc = GUR_1211_BaalLukor;
	condition = Info_BaalLukor_DOOR_Condition;
	information = Info_BaalLukor_DOOR_Info;
	permanent = 0;
	important = 1;
};


func int Info_BaalLukor_DOOR_Condition()
{
	if(Npc_KnowsInfo(hero,Info_BaalLukor_HALLWITH) && (Npc_GetDistToWP(hero,"GRYD_060") < 500))
	{
		return TRUE;
	};
	return FALSE;
};

func void Info_BaalLukor_DOOR_Info()
{
	B_FullStop(hero);
	AI_SetWalkMode(self,NPC_WALK);
	AI_GotoNpc(self,hero);
	AI_Output(self,other,"Info_BaalLukor_DOOR_13_01");	//�� ���� ������... �������, �����!
	AI_Output(self,other,"Info_BaalLukor_DOOR_13_02");	//� ���� �� ������ ����������� ���������� ����.
	AI_Output(self,other,"Info_BaalLukor_DOOR_13_03");	//��������� ���������� ������� �����, ����� ���� ������.
	CreateInvItem(self,ItArScrollTeleport4);
	B_GiveInvItems(self,hero,ItArScrollTeleport4,1);
	AI_StopProcessInfos(self);
};


instance Info_BaalLukor_TELEPORT(C_Info)
{
	npc = GUR_1211_BaalLukor;
	condition = Info_BaalLukor_TELEPORT_Condition;
	information = Info_BaalLukor_TELEPORT_Info;
	permanent = 0;
	important = 1;
};


func int Info_BaalLukor_TELEPORT_Condition()
{
	if(Npc_KnowsInfo(hero,Info_BaalLukor_DOOR) && Npc_CanSeeNpcFreeLOS(self,hero) && (Npc_GetDistToWP(hero,"GRYD_072") < 550))
	{
		return TRUE;
	};
	return FALSE;
};

func void Info_BaalLukor_TELEPORT_Info()
{
	B_FullStop(hero);
	AI_SetWalkMode(self,NPC_WALK);
	AI_GotoNpc(self,hero);
	AI_Output(self,other,"Info_BaalLukor_TELEPORT_13_01");	//��� �������� ���� � �����-�� ������ �����. ��� �������� ��� ������� �� ��������� ����.
	AI_Output(other,self,"Info_BaalLukor_TELEPORT_15_02");	//������� �� ������������� ������ ����� ����� �� ������, ��� �������� �������???
	AI_Output(other,self,"Info_BaalLukor_TELEPORT_15_03");	//��� ����� ������ ������ �� ���������� ���.
	AI_Output(self,other,"Info_BaalLukor_TELEPORT_13_04");	//���� ������.
	AI_Output(self,other,"Info_BaalLukor_HELP_13_03");	//��� ������. � ����� ������!
	B_LogEntry(CH3_OrcGraveyard,"��� ������ ���������� ������������ � ��������� �������, ������� ����� �� �������� ����.");
	AI_StopProcessInfos(self);
	Npc_ExchangeRoutine(self,"TELEPORT");
};


instance Info_BaalLukor_ALTAR(C_Info)
{
	npc = GUR_1211_BaalLukor;
	condition = Info_BaalLukor_ALTAR_Condition;
	information = Info_BaalLukor_ALTAR_Info;
	permanent = 0;
	important = 1;
};


func int Info_BaalLukor_ALTAR_Condition()
{
	if(Npc_KnowsInfo(hero,Info_BaalLukor_TELEPORT) && (Npc_GetDistToWP(hero,"GRYD_082") < 400) && Npc_CanSeeNpcFreeLOS(self,hero))
	{
		return TRUE;
	};
	return FALSE;
};

func void Info_BaalLukor_ALTAR_Info()
{
	B_FullStop(hero);
	AI_GotoWP(hero,"GRYD_081");
	AI_AlignToWP(hero);
	AI_GotoNpc(self,hero);
	AI_Output(self,hero,"Info_BaalLukor_ALTAR_13_01");	//���! ����� �� ����� ����! ����� ������ ���... ������, ����� ������... � ����.
	AI_SetWalkMode(self,NPC_RUN);
	AI_GotoWP(self,"GRYD_082");
	AI_PlayAniBS(self,"T_STAND_2_PRAY",BS_SIT);
	AI_Output(self,hero,"Info_BaalLukor_ALTAR_13_02");	//���!
	AI_Output(self,hero,"Info_BaalLukor_ALTAR_13_03");	//��������, ������ ���!!!
	AI_Output(self,hero,"Info_BaalLukor_ALTAR_13_04");	//��� ����, ������!!!
	AI_Output(self,hero,"Info_BaalLukor_ALTAR_13_05");	//��������!!!
	AI_Output(hero,self,"Info_BaalLukor_ALTAR_15_06");	//�� ���. �� ������������ ����� � ���!
	AI_Standup(self);
	B_WhirlAround(self,hero);
	AI_Output(self,hero,"Info_BaalLukor_ALTAR_13_07");	//��� ��� ���� ����. ���� ���������� ����������� ��������� ����������� �������!
	AI_Output(self,hero,"Info_BaalLukor_ALTAR_13_08");	//� ������ � ������ �������������� �� ���� ������������!
	AI_Output(self,hero,"Info_BaalLukor_ALTAR_13_09");	//� ������ �������� ������ ������ ���������. ������������ ������!!!
	AI_Output(self,hero,"Info_BaalLukor_ALTAR_13_10");	//� ����� �� ����� ��������� ���� � ������� ���� ����� ������.
	AI_Output(self,hero,"Info_BaalLukor_ALTAR_13_11");	//����, ��������!!!
	AI_Output(self,hero,"Info_BaalLukor_ALTAR_13_12");	//��������������!!!!!!
	self.flags = 0;
	self.npcType = npctype_main;
	BaalLukor_BringParchment = 4;
	Npc_SetTempAttitude(self,ATT_HOSTILE);
	Npc_SetPermAttitude(self,ATT_HOSTILE);
	B_LogEntry(CH3_OrcGraveyard,"���� ����� ������ ����� � ���, ����� �����, ��� ��� ����� ��� ��������� ������. � �������� ������ �� ���� ����� �� ����. ��� ����� ����� ����� ���������, ������� ��� �������.");
	AI_StopProcessInfos(self);
	AI_StartState(self,ZS_Attack,1,"");
};

