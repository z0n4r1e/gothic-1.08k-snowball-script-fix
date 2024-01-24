
instance Info_GornFM_EXIT(C_Info)
{
	npc = PC_FighterFM;
	nr = 999;
	condition = Info_GornFM_EXIT_Condition;
	information = Info_GornFM_EXIT_Info;
	important = 0;
	permanent = 1;
	description = DIALOG_ENDE;
};


func int Info_GornFM_EXIT_Condition()
{
	return TRUE;
};

func void Info_GornFM_EXIT_Info()
{
	if(self.aivar[AIV_PARTYMEMBER])
	{
		AI_Output(self,other,"Info_GornFM_EXIT_09_01");	//���������!
	}
	else
	{
		AI_Output(self,other,"Info_GornFM_EXIT_09_02");	//��������.
	};
	AI_StopProcessInfos(self);
};


instance Info_GornFM_WAIT(C_Info)
{
	npc = PC_FighterFM;
	condition = Info_GornFM_WAIT_Condition;
	information = Info_GornFM_WAIT_Info;
	important = 0;
	permanent = 1;
	description = "������ �� �����, � ��������, ��� ��� ����������!";
};


func int Info_GornFM_WAIT_Condition()
{
	if(self.aivar[AIV_PARTYMEMBER] == TRUE)
	{
		return TRUE;
	};
	return FALSE;
};

func void Info_GornFM_WAIT_Info()
{
	AI_Output(hero,self,"Info_GornFM_WAIT_15_01");	//������ �� �����, � ��������, ��� ��� ����������!
	AI_Output(self,hero,"Info_GornFM_WAIT_09_02");	//������. � ���� ����� � ����� � ����� � �������� �� ���, ����� ��� ���� ����.
	self.aivar[AIV_PARTYMEMBER] = 0;
	Npc_ExchangeRoutine(self,"wait");
};


instance Info_GornFM_FOLLOW(C_Info)
{
	npc = PC_FighterFM;
	condition = Info_GornFM_FOLLOW_Condition;
	information = Info_GornFM_FOLLOW_Info;
	important = 0;
	permanent = 1;
	description = "����, ��� ����� ���� ������.";
};


func int Info_GornFM_FOLLOW_Condition()
{
	if(self.aivar[AIV_PARTYMEMBER] == FALSE)
	{
		return TRUE;
	};
	return FALSE;
};

func void Info_GornFM_FOLLOW_Info()
{
	AI_Output(hero,self,"Info_GornFM_FOLLOW_15_01");	//����, ��� ����� ���� ������.
	AI_Output(self,hero,"Info_GornFM_FOLLOW_09_02");	//�������-�� �� ���������! ��� ������, � ����� �����.
	self.aivar[AIV_PARTYMEMBER] = 1;
	Npc_ExchangeRoutine(self,"follow");
};

