
instance DIA_BaalTondral_MuteExit(C_Info)
{
	npc = GUR_1203_BaalTondral;
	nr = 999;
	condition = DIA_BaalTondral_MuteExit_Condition;
	information = DIA_BaalTondral_MuteExit_Info;
	permanent = 0;
	description = "������ �� ������.";
};


func int DIA_BaalTondral_MuteExit_Condition()
{
	if(!Npc_KnowsInfo(hero,DIA_BaalTondral_YouTalked))
	{
		return 1;
	};
	return FALSE;
};

func void DIA_BaalTondral_MuteExit_Info()
{
	AI_StopProcessInfos(self);
};


instance DIA_BaalTondral_Exit(C_Info)
{
	npc = GUR_1203_BaalTondral;
	nr = 999;
	condition = DIA_BaalTondral_Exit_Condition;
	information = DIA_BaalTondral_Exit_Info;
	permanent = 1;
	description = DIALOG_ENDE;
};


func int DIA_BaalTondral_Exit_Condition()
{
	if(Npc_KnowsInfo(hero,DIA_BaalTondral_MuteExit) || Npc_KnowsInfo(hero,DIA_BaalTondral_YouTalked))
	{
		return 1;
	};
	return FALSE;
};

func void DIA_BaalTondral_Exit_Info()
{
	AI_StopProcessInfos(self);
};


instance DIA_BaalTondral_FanaticTeacher(C_Info)
{
	npc = GUR_1203_BaalTondral;
	nr = 1;
	condition = DIA_BaalTondral_FanaticTeacher_Condition;
	information = DIA_BaalTondral_FanaticTeacher_Info;
	permanent = 0;
	important = 1;
};


func int DIA_BaalTondral_FanaticTeacher_Condition()
{
	return 1;
};

func void DIA_BaalTondral_FanaticTeacher_Info()
{
	AI_Output(self,other,"DIA_BaalTondral_FanaticTeacher_13_00");	//�� �� ����� �� ��� �����, ��� ���������� ���� �������.
	AI_Output(self,other,"DIA_BaalTondral_FanaticTeacher_13_01");	//�� ������ ����� �� �������� - �������� �������� ����. ����� �� �������� �� ������ �������� ����� - ��, ��� �� ���� ���� ����� �� �����?
	AI_Output(self,other,"DIA_BaalTondral_FanaticTeacher_13_02");	//����, ���� ������� �������� - ���� �� ������ � ���, ��� �������� �������� ���� ����������� �������? � �� ������, ������ ������� ��� ��������. ��� ��� ����!
	AI_Output(self,other,"DIA_BaalTondral_FanaticTeacher_13_03");	//���� ��� ���� ������ ��� ����, ��� ���� �����. �� ���� ��� ������� ������� ���� ���!
	AI_Output(self,other,"DIA_BaalTondral_FanaticTeacher_13_04");	//����� �� �������� �� ���������� � ������� - �����������, ��������? ����� �� ���������� ��, ��� ���� ��� ��� ��� ���������� ��� �������, ��� ���������� ��� ���� ���? �������� ���!
	AI_Output(self,other,"DIA_BaalTondral_FanaticTeacher_13_05");	//������, ��� �� �������, ����� ��������� �������� ���? �� ���������� ����������� ����, ���������� ����! �� �������� ������ ����������� ��� ����� ������!
	AI_Output(self,other,"DIA_BaalTondral_FanaticTeacher_13_06");	//�������� ����. �� ������ ������! ������ ����������! �� ��������� ����  � ������ ���� ���������-��������!
	AI_Output(self,other,"DIA_BaalTondral_FanaticTeacher_13_07");	//��� ����, ������ ������, �������� ��� �� ����� ����. ��� ����� ������ � ������ ������������ �� ����, �� ����� ��� ������� ������.
	AI_Output(self,other,"DIA_BaalTondral_FanaticTeacher_13_08");	//��� �������� ����. �������� ����� ������. � ������ �������.
};


instance DIA_BaalTondral_YouTalked(C_Info)
{
	npc = GUR_1203_BaalTondral;
	nr = 1;
	condition = DIA_BaalTondral_YouTalked_Condition;
	information = DIA_BaalTondral_YouTalked_Info;
	permanent = 0;
	description = "��! �� ��������� �� ����. ���� � ���������� � ����?";
};


func int DIA_BaalTondral_YouTalked_Condition()
{
	return 1;
};

func void DIA_BaalTondral_YouTalked_Info()
{
	AI_Output(other,self,"DIA_BaalTondral_YouTalked_15_00");	//��! �� ��������� �� ����. �� ������ �� ���, ��� ������ � � ���� ���������� � ����?
	AI_Output(self,other,"DIA_BaalTondral_YouTalked_13_01");	//�� ���������� ���� �������. ��� ���������.
	AI_Output(self,other,"DIA_BaalTondral_YouTalked_13_02");	//� ������ � ���� ������� �������� ����! ����� �� ������ ������� � ���� ���������.
	AI_Output(self,other,"DIA_BaalTondral_YouTalked_13_03");	//� ��������� � �����, ���� ���� ���� ���� �������� ����.
};


var int BaalTondral_GetNewGuy;

instance DIA_BaalTondral_Loyality(C_Info)
{
	npc = GUR_1203_BaalTondral;
	nr = 1;
	condition = DIA_BaalTondral_Loyality_Condition;
	information = DIA_BaalTondral_Loyality_Info;
	permanent = 0;
	description = "��� � ���� �������� ���� �����������?";
};


func int DIA_BaalTondral_Loyality_Condition()
{
	if(Npc_KnowsInfo(hero,DIA_BaalTondral_YouTalked))
	{
		return 1;
	};
	return FALSE;
};

func void DIA_BaalTondral_Loyality_Info()
{
	AI_Output(other,self,"DIA_BaalTondral_Loyality_15_00");	//��� � ���� �������� ���� �����������?
	AI_Output(self,other,"DIA_BaalTondral_Loyality_13_01");	//������ ����� �� ��������� � ����� �����, ��������� ������ � ���������� � ���� ��������.
	AI_Output(self,other,"DIA_BaalTondral_Loyality_13_02");	//���� �� ������� ������ �� �������� �������������� � ������ ������, ���� �� �������� ���� ���������� ������� ��������.
	Log_CreateTopic(CH1_RecruitDusty,LOG_MISSION);
	Log_SetTopicStatus(CH1_RecruitDusty,LOG_RUNNING);
	B_LogEntry(CH1_RecruitDusty,"���� ������� ������ ���� � ������ ������, ����� ������ ������ �������� ��� ��������. ��� ������� ���� ��������� ��� ������������.");
	BaalTondral_GetNewGuy = LOG_RUNNING;
};


instance DIA_BaalTondral_NewMember(C_Info)
{
	npc = GUR_1203_BaalTondral;
	nr = 1;
	condition = DIA_BaalTondral_NewMember_Condition;
	information = DIA_BaalTondral_NewMember_Info;
	permanent = 1;
	description = "��� ��� ����� ������ ��������?";
};


func int DIA_BaalTondral_NewMember_Condition()
{
	if(BaalTondral_GetNewGuy == LOG_RUNNING)
	{
		return 1;
	};
	return FALSE;
};

func void DIA_BaalTondral_NewMember_Info()
{
	AI_Output(other,self,"DIA_BaalTondral_NewMember_15_00");	//��� ��� ����� ������ ��������?
	AI_Output(self,other,"DIA_BaalTondral_NewMember_13_01");	//����� ����� ��� ����� �������� ������ ������. ���� ��� ������ �� ������ � ���. ���� �� ������ ������������ � ���������.
	AI_Output(self,other,"DIA_BaalTondral_NewMember_13_02");	//� �����, ��� � ����� ������ �� ���� �� ��������� ������. ��� ����� ��������� �������.
};


instance DIA_BaalTondral_NewMember2(C_Info)
{
	npc = GUR_1203_BaalTondral;
	nr = 1;
	condition = DIA_BaalTondral_NewMember2_Condition;
	information = DIA_BaalTondral_NewMember2_Info;
	permanent = 0;
	description = "������ ��� ��� ����� ����� ����?";
};


func int DIA_BaalTondral_NewMember2_Condition()
{
	if(BaalTondral_GetNewGuy == LOG_RUNNING)
	{
		return 1;
	};
	return FALSE;
};

func void DIA_BaalTondral_NewMember2_Info()
{
	AI_Output(other,self,"DIA_BaalTondral_NewMember2_15_00");	//������ ��� ��� ����� ����� ����?
	AI_Output(self,other,"DIA_BaalTondral_NewMember2_13_01");	//������ ������� ���� ������� - � ��� ������� ������. � ����������� ���� ��� ��� ������ ���������.
	AI_Output(self,other,"DIA_BaalTondral_NewMember2_13_02");	//�� �� ��� �� ����� � ������ ����. ��� ������ ��� ����� ���� ������, ��� ���� ����� �������� � ����.
	AI_Output(self,other,"DIA_BaalTondral_NewMember2_13_03");	//��� �� ��������� � ������� ���������, � ��� ������ ����� ������ � ��� �������, ��� ������ ���� ����� �� �����.
	AI_Output(self,other,"DIA_BaalTondral_NewMember2_13_04");	//���� �� ������ ������ ������, ��� �� ������� ����� ������. �� �� �������� ������� �� ��� �����������!
};


instance DIA_BaalTondral_DustySuccess(C_Info)
{
	npc = GUR_1203_BaalTondral;
	nr = 1;
	condition = DIA_BaalTondral_DustySuccess_Condition;
	information = DIA_BaalTondral_DustySuccess_Info;
	permanent = 0;
	description = "���� ������� ���� ������ ������������, �������� ���!";
};


func int DIA_BaalTondral_DustySuccess_Condition()
{
	var C_Npc Dusty;
	Dusty = Hlp_GetNpc(VLK_524_Dusty);
	if((BaalTondral_GetNewGuy == LOG_RUNNING) && (Npc_GetDistToNpc(self,Dusty) < 1000))
	{
		return 1;
	};
	return FALSE;
};

func void DIA_BaalTondral_DustySuccess_Info()
{
	var C_Npc Dusty;
	Dusty = Hlp_GetNpc(VLK_524_Dusty);
	AI_Output(other,self,"DIA_BaalTondral_DustySuccess_15_00");	//���� ������� ���� ������ ������������, �������� ���!
	AI_Output(self,other,"DIA_BaalTondral_DustySuccess_13_01");	//���� �� ������ �� ���? ������� �� ��?
	AI_Output(other,self,"DIA_BaalTondral_DustySuccess_15_02");	//��� ��������, �� ��������� � �������� ����������, ��������.
	AI_Output(self,other,"DIA_BaalTondral_DustySuccess_13_03");	//����� ������. � ����� ������� �� ����� ����� �� ���� ��������.
	AI_TurnToNPC(self,Dusty);
	AI_TurnToNPC(Dusty,other);
	AI_Output(self,NULL,"DIA_BaalTondral_DustySuccess_13_04");	//�� ������ ��������� �� ��� ������ ���� � ������� ��, ��� � ����� ����. ���� ���� ��� ����� ���� �������. 
	Dusty.aivar[AIV_PARTYMEMBER] = FALSE;
	Dusty.flags = 0;
	Dusty.guild = GIL_NOV;
	Npc_SetTrueGuild(Dusty,GIL_NOV);
	B_ExchangeRoutine(VLK_524_Dusty,"PREPARERITUAL");
	BaalTondral_GetNewGuy = LOG_SUCCESS;
	B_LogEntry(CH1_RecruitDusty,"����� ������ �������� �������� ����� ��������. � �������� �������.");
	Log_SetTopicStatus(CH1_RecruitDusty,LOG_SUCCESS);
	B_GiveXP(XP_DeliveredDusty);
};


instance DIA_BaalTondral_SendToKalom(C_Info)
{
	npc = GUR_1203_BaalTondral;
	nr = 1;
	condition = DIA_BaalTondral_SendToKalom_Condition;
	information = DIA_BaalTondral_SendToKalom_Info;
	permanent = 0;
	description = "��������! � ���� ����� ����� �� ������ ��������.";
};


func int DIA_BaalTondral_SendToKalom_Condition()
{
	if(BaalTondral_GetNewGuy == LOG_SUCCESS)
	{
		return 1;
	};
	return FALSE;
};

func void DIA_BaalTondral_SendToKalom_Info()
{
	AI_Output(other,self,"DIA_BaalTondral_SendToKalom_15_00");	//��������! � ���� ����� ����� �� ������ �������� � ���� ���� � ���������. 
	AI_TurnToNPC(self,other);
	AI_Output(self,other,"DIA_BaalTondral_SendToKalom_13_01");	//�� �������� ��. ��� � ��� ������ � ����� � ���� ���� ����������.
	B_LogEntry(CH1_JoinPsi,"���� ������� �������, ��� � ������� ������ ���� ����������!");
};

