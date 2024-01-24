
instance DIA_BaalTyon_Exit(C_Info)
{
	npc = GUR_1210_BaalTyon;
	nr = 999;
	condition = DIA_BaalTyon_Exit_Condition;
	information = DIA_BaalTyon_Exit_Info;
	important = 0;
	permanent = 1;
	description = DIALOG_ENDE;
};


func int DIA_BaalTyon_Exit_Condition()
{
	return TRUE;
};

func void DIA_BaalTyon_Exit_Info()
{
	AI_StopProcessInfos(self);
};


var int BaalTyon_Ansprechbar;
var int BaalTyon_Sakrileg;

instance DIA_BaalTyon_NoTalk(C_Info)
{
	npc = GUR_1210_BaalTyon;
	nr = 1;
	condition = DIA_BaalTyon_NoTalk_Condition;
	information = DIA_BaalTyon_NoTalk_Info;
	permanent = 1;
	important = 1;
};


func int DIA_BaalTyon_NoTalk_Condition()
{
	if(Npc_IsInState(self,ZS_Talk) && (BaalTyon_Ansprechbar == FALSE) && (Npc_GetPermAttitude(self,other) != ATT_FRIENDLY))
	{
		return TRUE;
	};
	return FALSE;
};

func void DIA_BaalTyon_NoTalk_Info()
{
	Info_ClearChoices(DIA_BaalTyon_NoTalk);
	Info_AddChoice(DIA_BaalTyon_NoTalk,DIALOG_ENDE,DIA_BaalTyon_NoTalk_ENDE);
	if(Npc_HasItems(other,SpecialJoint) >= 1)
	{
		Info_AddChoice(DIA_BaalTyon_NoTalk,"...������� ��� �������� ���...",DIA_BaalTyon_SpecialJoint);
	};
	Info_AddChoice(DIA_BaalTyon_NoTalk,"��� � �������, ��������?",DIA_BaalTyon_NoTalk_Imp);
	Info_AddChoice(DIA_BaalTyon_NoTalk,"�� �������� � ����� ������!",DIA_BaalTyon_NoTalk_Sleeper);
	Info_AddChoice(DIA_BaalTyon_NoTalk,"������! � ����� ���������.",DIA_BaalTyon_NoTalk_Hi);
};

func void DIA_BaalTyon_NoTalk_Hi()
{
	AI_Output(other,self,"DIA_BaalTyon_NoTalk_Hi_15_00");	//������! � ����� ���������!
	AI_Output(self,other,"DIA_BaalTyon_NoTalk_Hi_11_01");	//�����...
	BaalTyon_Sakrileg = 1;
};

func void DIA_BaalTyon_NoTalk_Sleeper()
{
	AI_Output(other,self,"DIA_BaalTyon_NoTalk_Sleeper_15_00");	//�� �������� � ����� ������!
	AI_Output(self,other,"DIA_BaalTyon_NoTalk_Sleeper_11_01");	//�����...
	BaalTyon_Sakrileg = 1;
};

func void DIA_BaalTyon_NoTalk_Imp()
{
	AI_Output(other,self,"DIA_BaalTyon_NoTalk_Imp_15_00");	//��� � �������, ��������?
	AI_Output(self,other,"DIA_BaalTyon_NoTalk_Imp_11_01");	//�����...
	BaalTyon_Sakrileg = 1;
};

func void DIA_BaalTyon_NoTalk_ENDE()
{
	AI_StopProcessInfos(self);
};

func void DIA_BaalTyon_SpecialJoint()
{
	AI_Output(other,self,"DIA_BaalTyon_SpecialJoint_15_00");	//���, �������� ���! ������� ��� �������� ��� �� ������ ������� �������...
	AI_StopProcessInfos(self);
	B_GiveInvItems(hero,self,SpecialJoint,1);
	if(C_BodyStateContains(self,BS_SIT))
	{
		AI_Standup(self);
		AI_TurnToNPC(self,hero);
	};
	AI_UseItem(self,SpecialJoint);
	AI_Output(self,other,"DIA_BaalTyon_SpecialJoint_11_01");	//�������... ���...
	BaalTyon_Ansprechbar = 1;
	Npc_SetRefuseTalk(self,5);
	hero.aivar[AIV_INVINCIBLE] = 0;
};


instance DIA_BaalTyon_Vision(C_Info)
{
	npc = GUR_1210_BaalTyon;
	nr = 1;
	condition = DIA_BaalTyon_Vision_Condition;
	information = DIA_BaalTyon_Vision_Info;
	permanent = 0;
	important = 1;
};


func int DIA_BaalTyon_Vision_Condition()
{
	if((BaalTyon_Ansprechbar == TRUE) && (Npc_RefuseTalk(self) == FALSE))
	{
		return TRUE;
	};
	return FALSE;
};

func void DIA_BaalTyon_Vision_Info()
{
	AI_Output(self,other,"DIA_BaalTyon_Vision_11_00");	//�� ��� �������! ���� �������� �������!
	AI_Output(self,other,"DIA_BaalTyon_Vision_11_01");	//��� ���� ����������! � �����, ��� �� ��������� ������ �����, ������� ��� �� ����� �� ���� ���, ��� ���� �� ����.
	AI_Output(self,other,"DIA_BaalTyon_Vision_11_02");	//�� ���-�� ����� ��� ���... � ���� � ���� ��� ���, � �� ��������� �� ������� ��������. �� ���� ������� �����������.
	AI_Output(self,other,"DIA_BaalTyon_Vision_11_03");	//�� ��� ����� ����� �� ����. ��� ��? ��� ���� �����?
	AI_Output(other,self,"DIA_BaalTyon_Vision_15_04");	//� ����� ���� �������� ����� �������...
	AI_Output(self,other,"DIA_BaalTyon_Vision_11_05");	//��� � ��� ������. �� ����������� � ����.
	self.npcType = npctype_main;
	self.flags = 0;
	BaalTyon_Ansprechbar = 0;
	B_LogEntry(CH1_JoinPsi,"��������� ����� ������������ ������� ����� ����� �������� �������! ������ �� �����, ����� ���� ������� ��� �����.");
	B_GiveXP(XP_ImpressedBaalTyon);
	AI_StopProcessInfos(self);
};

