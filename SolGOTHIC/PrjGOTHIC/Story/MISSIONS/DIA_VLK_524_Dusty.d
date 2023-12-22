
instance DIA_Dusty_Exit(C_Info)
{
	npc = VLK_524_Dusty;
	nr = 999;
	condition = DIA_Dusty_Exit_Condition;
	information = DIA_Dusty_Exit_Info;
	permanent = 1;
	description = DIALOG_ENDE;
};


func int DIA_Dusty_Exit_Condition()
{
	return 1;
};

func void DIA_Dusty_Exit_Info()
{
	AI_StopProcessInfos(self);
};


instance DIA_Dusty_Hello(C_Info)
{
	npc = VLK_524_Dusty;
	nr = 1;
	condition = DIA_Dusty_Hello_Condition;
	information = DIA_Dusty_Hello_Info;
	permanent = 0;
	description = "������! � ����� ���������. ��� ���� ����?";
};


func int DIA_Dusty_Hello_Condition()
{
	return 1;
};

func void DIA_Dusty_Hello_Info()
{
	AI_Output(other,self,"DIA_Dusty_Hello_15_00");	//������! � ����� ���������. ��� ���� ����?
	AI_Output(self,other,"DIA_Dusty_Hello_03_01");	//����������! � ��� ������ ���������� � ����� - � ���� ����?
	AI_Output(self,other,"DIA_Dusty_Hello_03_02");	//��������� ������ ������ ���� - ��� ���, ��� � �������. ������� ����� ��� �������� ��������� �� ���!
	AI_Output(self,other,"DIA_Dusty_Hello_03_03");	//���, �����, � ������������ � ������ ��������. �� ��������� ��� ����� ����������� ��� ������ ���������.
	AI_Output(self,other,"DIA_Dusty_Hello_03_04");	//��������, ����� ����������� ����, ������ ���� ����� ������ �� ������.
};


instance DIA_Dusty_WhyNotLeave(C_Info)
{
	npc = VLK_524_Dusty;
	nr = 1;
	condition = DIA_Dusty_WhyNotLeave_Condition;
	information = DIA_Dusty_WhyNotLeave_Info;
	permanent = 0;
	description = "���� ����� �� ��������? ����� ������ �� �� �������?";
};


func int DIA_Dusty_WhyNotLeave_Condition()
{
	if(Npc_KnowsInfo(hero,DIA_Dusty_Hello) && !Npc_KnowsInfo(hero,DIA_Dusty_MetMelvin))
	{
		return 1;
	};
	return FALSE;
};

func void DIA_Dusty_WhyNotLeave_Info()
{
	AI_Output(other,self,"DIA_Dusty_WhyNotLeave_15_00");	//���� ����� �� ��������? ����� ������ �� �� �������?
	AI_Output(self,other,"DIA_Dusty_WhyNotLeave_03_01");	//������ ��� � �� ����, ��� ���� ��� ����. � ���� ��� ����� �������� - ������. �� ���� � ������ ��������� ��� ������ �����.
	AI_Output(self,other,"DIA_Dusty_WhyNotLeave_03_02");	//� � ��� ��� � ��� �� ����� �� ����. ���� � �� ������ �� ���� ��������, � � ����� �� ��������!
	Log_CreateTopic(CH1_RecruitDusty,LOG_MISSION);
	Log_SetTopicStatus(CH1_RecruitDusty,LOG_RUNNING);
	B_LogEntry(CH1_RecruitDusty,"������� �� ������� ������ �� ����� ����� ������ �� ����� ���� ���. �� ���������� � ������������� � ������ ��������.");
};


instance DIA_Dusty_MetMelvin(C_Info)
{
	npc = VLK_524_Dusty;
	nr = 1;
	condition = DIA_Dusty_MetMelvin_Condition;
	information = DIA_Dusty_MetMelvin_Info;
	permanent = 0;
	description = "� ��� � ������ ��������� � ����� ��� �������.";
};


func int DIA_Dusty_MetMelvin_Condition()
{
	if(Npc_KnowsInfo(hero,DIA_Melvin_Hello))
	{
		return 1;
	};
	return FALSE;
};

func void DIA_Dusty_MetMelvin_Info()
{
	AI_Output(other,self,"DIA_Dusty_MetMelvin_15_00");	//� ��� � ������ ��������� � ����� ��� �������.
	AI_Output(self,other,"DIA_Dusty_MetMelvin_03_01");	//��? � ��� �� �������?
	AI_Output(other,self,"DIA_Dusty_MetMelvin_15_02");	//�������, �������� ��� ��� �������� ������� ������, ��� �������� ����� �� ���������� �����.
	AI_Output(self,other,"DIA_Dusty_MetMelvin_03_03");	//��, ������! �� ���, ������, �� ���� ����� �����? � ���� ���� �����. �� ��� �� �� ��������� �� ������...
	AI_Output(other,self,"DIA_Dusty_MetMelvin_15_04");	//������? ������?
	AI_Output(self,other,"DIA_Dusty_MetMelvin_03_05");	//������, � ������� ����� ������. ��������� �����, ��� � ���� ������ ������.
	AI_Output(self,other,"DIA_Dusty_MetMelvin_03_06");	//��� ���� ����� ��������� ��, ��� ����� ��� ������� 100 ������ ����.
};


instance DIA_Dusty_Offer100Ore(C_Info)
{
	npc = VLK_524_Dusty;
	nr = 1;
	condition = DIA_Dusty_Offer100Ore_Condition;
	information = DIA_Dusty_Offer100Ore_Info;
	permanent = 0;
	description = "� ��� ���� � ��� ���� ��� 100 ������?";
};


func int DIA_Dusty_Offer100Ore_Condition()
{
	if(Npc_KnowsInfo(hero,DIA_Dusty_MetMelvin) && (BaalTondral_GetNewGuy == LOG_RUNNING))
	{
		return 1;
	};
	return FALSE;
};

func void DIA_Dusty_Offer100Ore_Info()
{
	AI_Output(other,self,"DIA_Dusty_Offer100Ore_15_00");	//� ��� ���� � ��� ���� ��� 100 ������?
	AI_Output(self,other,"DIA_Dusty_Offer100Ore_03_01");	//������? �� ������?
	AI_Output(other,self,"DIA_Dusty_Offer100Ore_15_02");	//��, ������, �� �� ������������ �� ���, ��� ����� ��������� �� ������ ���������.
	AI_Output(self,other,"DIA_Dusty_Offer100Ore_03_03");	//�� ���� �� ������ ����� �� ����, ��?
};


instance DIA_Dusty_IWouldGo(C_Info)
{
	npc = VLK_524_Dusty;
	nr = 1;
	condition = DIA_Dusty_IWouldGo_Condition;
	information = DIA_Dusty_IWouldGo_Info;
	permanent = 0;
	description = "� ����� � ����� � ������ ���������.";
};


func int DIA_Dusty_IWouldGo_Condition()
{
	if(Npc_KnowsInfo(hero,DIA_Dusty_Offer100Ore))
	{
		return 1;
	};
	return FALSE;
};

func void DIA_Dusty_IWouldGo_Info()
{
	AI_Output(other,self,"DIA_Dusty_IWouldGo_15_00");	//� ����� � ����� � ������ ���������.
	AI_Output(self,other,"DIA_Dusty_IWouldGo_03_01");	//�� ��� �� �������, �������! � �����. �� ����� �����������, ����� ��������.
	AI_Output(self,other,"DIA_Dusty_IWouldGo_03_02");	//�� �� ������ - ��� ����� 100 ������ ���� ��� ����������.
	B_LogEntry(CH1_RecruitDusty,"� ����� ��������� �������� ����� �������������� � ��������. �� ��� �������� ������ ��������� ���������� ���� ����������. ������ �� ����� ����� �������� ������� � ����� ��������.");
	B_GiveXP(XP_DustyJoined);
};


var int Dusty_LetsGo;

instance DIA_Dusty_LetsGo(C_Info)
{
	npc = VLK_524_Dusty;
	nr = 1;
	condition = DIA_Dusty_LetsGo_Condition;
	information = DIA_Dusty_LetsGo_Info;
	permanent = 1;
	description = "� �����. �����!";
};


func int DIA_Dusty_LetsGo_Condition()
{
	if(Npc_KnowsInfo(hero,DIA_Dusty_IWouldGo) && (Npc_GetDistToWP(hero,"OCR_MAINGATE_INSIDE") > 1500) && (Npc_GetDistToWP(hero,"OCR_NORTHGATE_RAMP_ATOP") > 1500) && (BaalTondral_GetNewGuy == LOG_RUNNING))
	{
		return 1;
	};
	return FALSE;
};

func void DIA_Dusty_LetsGo_Info()
{
	AI_Output(other,self,"DIA_Dusty_LetsGo_15_00");	//� �����. �����!
	AI_Output(self,other,"DIA_Dusty_LetsGo_03_01");	//�����, ������ � ����� �������. ��������� ����� �������� ������ �� ����� ������.
	AI_Output(self,other,"DIA_Dusty_LetsGo_03_02");	//� �����, ��������, ���� ����� ���������� ���� - � � ����� ����� �� ������.
	AI_Output(other,self,"DIA_Dusty_LetsGo_15_03");	//�����, ����.
	if(!Dusty_LetsGo)
	{
		B_LogEntry(CH1_RecruitDusty,"����� ����������� ���� �� ������� ����� �������� ������. ������, ��� ��������� ���������� ����� � ����� �����.");
		Dusty_LetsGo = TRUE;
	};
	self.flags = NPC_FLAG_IMMORTAL;
	self.aivar[AIV_PARTYMEMBER] = TRUE;
	Npc_ExchangeRoutine(self,"FOLLOW");
	AI_StopProcessInfos(self);
};

