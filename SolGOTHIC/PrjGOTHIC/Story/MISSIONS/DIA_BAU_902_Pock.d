
var int Pock_ForgetAll;

instance DIA_Pock_EXIT(C_Info)
{
	npc = BAU_902_Pock;
	nr = 999;
	condition = DIA_Pock_EXIT_Condition;
	information = DIA_Pock_EXIT_Info;
	permanent = 1;
	description = DIALOG_ENDE;
};


func int DIA_Pock_EXIT_Condition()
{
	return 1;
};

func void DIA_Pock_EXIT_Info()
{
	Pock_ForgetAll = TRUE;
	AI_StopProcessInfos(self);
};


instance Info_Pock_Wasser(C_Info)
{
	npc = BAU_902_Pock;
	nr = 800;
	condition = Info_Pock_Wasser_Condition;
	information = Info_Pock_Wasser_Info;
	permanent = 1;
	description = "���� ������ �����. � ������ ���� ����.";
};


func int Info_Pock_Wasser_Condition()
{
	if(((Lefty_Mission == LOG_RUNNING) || ((Lefty_Mission == LOG_SUCCESS) && Npc_HasItems(other,ItFo_Potion_Water_01))) && (self.aivar[AIV_DEALDAY] <= Wld_GetDay()))
	{
		return 1;
	};
};

func void Info_Pock_Wasser_Info()
{
	AI_Output(other,self,"Info_Pock_Wasser_15_00");	//���� ������ �����. � ������ ���� ����.
	if(Npc_HasItems(other,ItFo_Potion_Water_01) >= 1)
	{
		B_GiveInvItems(other,self,ItFo_Potion_Water_01,1);
		if(C_BodyStateContains(self,BS_SIT))
		{
			AI_Standup(self);
			AI_TurnToNPC(self,hero);
		};
		AI_UseItem(self,ItFo_Potion_Water_01);
		AI_Output(self,other,"Info_Pock_Wasser_04_01");	//�������, ������! ��� ��� ��� ��, ��� �����!
		An_Bauern_verteilt = An_Bauern_verteilt + 1;
		if(An_Bauern_verteilt >= DurstigeBauern)
		{
			Lefty_Mission = LOG_SUCCESS;
		};
		self.aivar[AIV_DEALDAY] = Wld_GetDay() + 1;
	}
	else
	{
		AI_Output(self,other,"Info_Pock_Wasser_NOWATER_04_00");	//�� � ���� ������ ������ �� ��������. ������ ��������� - � ������� � ���������.
	};
};


instance DIA_Pock_Hello(C_Info)
{
	npc = BAU_902_Pock;
	nr = 1;
	condition = DIA_Pock_Hello_Condition;
	information = DIA_Pock_Hello_Info;
	permanent = 0;
	description = "������! � ����� ���������.";
};


func int DIA_Pock_Hello_Condition()
{
	if(Pock_ForgetAll == FALSE)
	{
		return 1;
	};
};

func void DIA_Pock_Hello_Info()
{
	AI_Output(other,self,"DIA_Pock_Hello_15_00");	//������! � ���������!
	AI_Output(self,other,"DIA_Pock_Hello_04_01");	//������� ������ ����� ����.
	AI_Output(other,self,"DIA_Pock_Hello_15_02");	//��, ������ ����, ��� ����� ����� �����?
	AI_Output(self,other,"DIA_Pock_Hello_04_03");	//�� ��������� ����, ��������. � ��� ����� �� ������.
};


instance DIA_Pock_KnowMuch(C_Info)
{
	npc = BAU_902_Pock;
	nr = 1;
	condition = DIA_Pock_KnowMuch_Condition;
	information = DIA_Pock_KnowMuch_Info;
	permanent = 0;
	description = "������, �� ������ ����� ��� �� ���� �����?";
};


func int DIA_Pock_KnowMuch_Condition()
{
	if((Pock_ForgetAll == FALSE) && Npc_KnowsInfo(hero,DIA_Pock_Hello))
	{
		return 1;
	};
};

func void DIA_Pock_KnowMuch_Info()
{
	AI_Output(other,self,"DIA_Pock_KnowMuch_15_00");	//������, �� ������ ����� ��� �� ���� �����?
	AI_Output(self,other,"DIA_Pock_KnowMuch_04_01");	//�� ��� �������... ������� ����� ������� � ������� �����, ������� ���.
	AI_Output(self,other,"DIA_Pock_KnowMuch_04_02");	//��� ������ � �������� ��� �����. �� �������� ��� � ����� - �������, �� ����� ����������.
};


instance DIA_Pock_WhyJail(C_Info)
{
	npc = BAU_902_Pock;
	nr = 2;
	condition = DIA_Pock_WhyJail_Condition;
	information = DIA_Pock_WhyJail_Info;
	permanent = 0;
	description = "������ �� �����?";
};


func int DIA_Pock_WhyJail_Condition()
{
	if((Pock_ForgetAll == FALSE) && Npc_KnowsInfo(hero,DIA_Pock_Hello))
	{
		return 1;
	};
};

func void DIA_Pock_WhyJail_Info()
{
	AI_Output(other,self,"DIA_Pock_WhyJail_15_00");	//������ �� �����?
	AI_Output(self,other,"DIA_Pock_WhyJail_04_01");	//������, ������, ������. � �������� � ���� ���� ��� �� �����, ��� � � �������, � � ������ �� ���� ���������.
	AI_Output(self,other,"DIA_Pock_WhyJail_04_02");	//� ���� ���������� ���� ������ ������ � ��������� ���� ����. �������, ����� �� ����, ��� �� ����. �� ������� ����, � �� ������� ���� � ������.
	AI_Output(self,other,"DIA_Pock_WhyJail_04_03");	//� ������ ������� ������ ������ - ��� ���� �����. �� ����� ������������� �������� ���� ����� ��������� ����!
};


instance DIA_Pock_ForgotAll(C_Info)
{
	npc = BAU_902_Pock;
	nr = 1;
	condition = DIA_Pock_ForgotAll_Condition;
	information = DIA_Pock_ForgotAll_Info;
	permanent = 1;
	description = "��� � �������?";
};


func int DIA_Pock_ForgotAll_Condition()
{
	if(Pock_ForgetAll == TRUE)
	{
		return 1;
	};
};

func void DIA_Pock_ForgotAll_Info()
{
	AI_Output(other,self,"DIA_Pock_ForgotAll_15_00");	//� ����� ��� � �������?
	AI_Output(self,other,"DIA_Pock_ForgotAll_04_01");	//������� ������ ����� ����.
	AI_Output(other,self,"DIA_Pock_ForgotAll_15_02");	//��, �� �� ��� � ����� �������������!
	AI_Output(self,other,"DIA_Pock_ForgotAll_04_03");	//���! ����� �� ����� ����! � ���� ������� ������ �� �����.
	AI_Output(other,self,"DIA_Pock_ForgotAll_15_04");	//�������...
};

