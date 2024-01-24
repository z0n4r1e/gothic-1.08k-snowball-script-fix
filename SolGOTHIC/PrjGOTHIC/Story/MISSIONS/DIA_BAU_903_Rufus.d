
instance DIA_Rufus_EXIT(C_Info)
{
	npc = BAU_903_Rufus;
	nr = 999;
	condition = DIA_Rufus_EXIT_Condition;
	information = DIA_Rufus_EXIT_Info;
	permanent = 1;
	description = DIALOG_ENDE;
};


func int DIA_Rufus_EXIT_Condition()
{
	return TRUE;
};

func void DIA_Rufus_EXIT_Info()
{
	AI_StopProcessInfos(self);
};


instance Info_Rufus_Wasser(C_Info)
{
	npc = BAU_903_Rufus;
	nr = 800;
	condition = Info_Rufus_Wasser_Condition;
	information = Info_Rufus_Wasser_Info;
	permanent = 1;
	description = "���� ������ �����. � ������ ���� ����.";
};


func int Info_Rufus_Wasser_Condition()
{
	if(((Lefty_Mission == LOG_RUNNING) || ((Lefty_Mission == LOG_SUCCESS) && Npc_HasItems(other,ItFo_Potion_Water_01))) && (self.aivar[AIV_DEALDAY] <= Wld_GetDay()))
	{
		return TRUE;
	};
	return FALSE;
};

func void Info_Rufus_Wasser_Info()
{
	AI_Output(other,self,"Info_Rufus_Wasser_15_00");	//���� ������ �����. � ������ ���� ����.
	if(Npc_HasItems(other,ItFo_Potion_Water_01) >= 1)
	{
		AI_Output(self,other,"Info_Rufus_Wasser_02_01");	//�������, ��������! � ������ � ���� ����, ��� � �������!
		B_GiveInvItems(other,self,ItFo_Potion_Water_01,1);
		if(C_BodyStateContains(self,BS_SIT))
		{
			AI_Standup(self);
			AI_TurnToNPC(self,hero);
		};
		AI_UseItem(self,ItFo_Potion_Water_01);
		An_Bauern_verteilt = An_Bauern_verteilt + 1;
		if(An_Bauern_verteilt >= DurstigeBauern)
		{
			Lefty_Mission = LOG_SUCCESS;
		};
		self.aivar[AIV_DEALDAY] = Wld_GetDay() + 1;
	}
	else
	{
		AI_Output(self,other,"Info_Rufus_Wasser_NOWATER_02_00");	//����! ��, ������! �� � ���� �� ������ ������ �� ��������! ������ �� ������ ���, ��� �� ������ ����, ����� ����!
	};
};


instance DIA_Rufus_Hello(C_Info)
{
	npc = BAU_903_Rufus;
	nr = 1;
	condition = DIA_Rufus_Hello_Condition;
	information = DIA_Rufus_Hello_Info;
	permanent = 0;
	description = "������! � ����� ���������.";
};


func int DIA_Rufus_Hello_Condition()
{
	return TRUE;
};

func void DIA_Rufus_Hello_Info()
{
	AI_Output(other,self,"DIA_Rufus_Hello_15_00");	//������! � ����� ���������. ������ ����� ������, ��� ���������� ������.
	AI_Output(self,other,"DIA_Rufus_Hello_02_01");	//������ ����-������ ���, �? � ������ ������� � ���� � ������ �� ����.
	AI_Output(self,other,"DIA_Rufus_Hello_02_02");	//��, ������, � �� � ������������� ��������� ������ ����� ������ ���������� ���� �������� �������!
};


instance DIA_Rufus_Why(C_Info)
{
	npc = BAU_903_Rufus;
	nr = 1;
	condition = DIA_Rufus_Why_Condition;
	information = DIA_Rufus_Why_Info;
	permanent = 0;
	description = "���� ���� �� �������� ��� ������, ������ �� �����?";
};


func int DIA_Rufus_Why_Condition()
{
	if(Npc_KnowsInfo(hero,DIA_Rufus_Hello))
	{
		return TRUE;
	};
	return FALSE;
};

func void DIA_Rufus_Why_Info()
{
	var C_Npc Ricelord;
	AI_Output(other,self,"DIA_Rufus_Why_15_00");	//���� ���� �� �������� ��� ������, ������ �� �����?
	AI_Output(self,other,"DIA_Rufus_Why_02_01");	//��� ��������� � ������ �� ����, ����� ���� ��� � ����� ����. �����, ���� �� ����������� �����, ������ �� ��� � ��������� ���������� �� �����.
	AI_Output(self,other,"DIA_Rufus_Why_02_02");	//�������, ������ �. � ��� �������� � ����� ����� ���� � ���-�� ��������.
	AI_Output(self,other,"DIA_Rufus_Why_02_03");	//�� ��������� ����, ����� � ����������� ������� �����������, ���� ��� �������� �����.
	AI_Output(self,other,"DIA_Rufus_Why_02_04");	//�� �� �� ������, ����� ���� �������� ������ ��� ������ �� ����, ���?' - ������� ��.
	AI_Output(self,other,"DIA_Rufus_Why_02_05");	//� ������ ���, ��� ������������ ��������� � ������ �� ����, ��� ��� ����� ����� � ��� �����... �� �� ���� �� ������.
	AI_Output(self,other,"DIA_Rufus_Why_02_06");	//������ ������� ���� �� �������� � ������� ������� �� ����.
	AI_Output(self,other,"DIA_Rufus_Why_02_07");	//� ���� ������ �� ������ ���� �������� ���� ����� ����� - �� ��� ���, ���� � ��� �� ���� ������ �� ������. �� ���� ��������� � ����� ������.
	AI_Output(self,other,"DIA_Rufus_Why_02_08");	//��� ��������� ����������, � ����� ��������� �� ��� ��������.
	Ricelord = Hlp_GetNpc(Bau_900_Ricelord);
	Ricelord.aivar[AIV_FINDABLE] = 1;
};


instance DIA_Rufus_Ricelord(C_Info)
{
	npc = BAU_903_Rufus;
	nr = 2;
	condition = DIA_Rufus_Ricelord_Condition;
	information = DIA_Rufus_Ricelord_Info;
	permanent = 1;
	description = "��� ����� ����?";
};


func int DIA_Rufus_Ricelord_Condition()
{
	if(Npc_KnowsInfo(hero,DIA_Rufus_Hello))
	{
		return TRUE;
	};
	return FALSE;
};

func void DIA_Rufus_Ricelord_Info()
{
	var C_Npc Ricelord;
	AI_Output(other,self,"DIA_Rufus_Ricelord_15_00");	//��� ����� ����?
	AI_Output(self,other,"DIA_Rufus_Ricelord_02_01");	//�� �������� ����� ����� �� ������, ����� �������� ������ � �������� ������� ����.
	AI_Output(self,other,"DIA_Rufus_Ricelord_02_02");	//������ �� ������ ����� � ���� � ������ � ���������� �����, ������ ������!
	Ricelord = Hlp_GetNpc(Bau_900_Ricelord);
	Ricelord.aivar[AIV_FINDABLE] = 1;
};

