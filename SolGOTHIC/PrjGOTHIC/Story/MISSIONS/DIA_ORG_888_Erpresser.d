
instance Info_Erpresser(C_Info)
{
	npc = ORG_888_Erpresser;
	nr = 1;
	condition = Info_Erpresser_Condition;
	information = Info_Erpresser_Info;
	permanent = 1;
	important = 1;
};


func int Info_Erpresser_Condition()
{
	if((Npc_GetAttitude(self,other) != ATT_FRIENDLY) && (self.aivar[AIV_HAS_ERPRESSED] == FALSE) && (self.aivar[AIV_WASDEFEATEDBYSC] == FALSE))
	{
		return TRUE;
	};
	return FALSE;
};

func void Info_Erpresser_Info()
{
	AI_Output(self,other,"Info_Erpresser_Info_13_01");	//��� ���, ������, ���� ������ ������, ���� �������� ��������� 10 ������ ����. ��� �������� �������� ������������, ����?
	Info_ClearChoices(Info_Erpresser);
	Info_AddChoice(Info_Erpresser,"��, ������ �� ���� �� ������� ���� � �� ������� ���� ����?",Info_Erpresser_Choice_AufsMaul);
	Info_AddChoice(Info_Erpresser,"...�������, � ���� ������ ��� 10 ������...",Info_Erpresser_Choice_Zahlen);
};

func void Info_Erpresser_Choice_AufsMaul()
{
	AI_Output(other,self,"Info_Erpresser_Choice_AufsMaul_15_01");	//��, ������ �� ���� �� ������� ���� � �� ������� ���� ����?
	AI_Output(self,other,"Info_Erpresser_Choice_AufsMaul_13_02");	//�������, ������. �������.
	self.aivar[AIV_HAS_ERPRESSED] = 2;
	AI_StopProcessInfos(self);
	Npc_SetTarget(self,other);
	AI_StartState(self,ZS_Attack,1,"");
};

func void Info_Erpresser_Choice_Zahlen()
{
	if(Npc_HasItems(other,ItMiNugget) >= 3)
	{
		AI_Output(other,self,"Info_Erpresser_Choice_Zahlen_15_01");	//���, 10 ������.
		AI_Output(self,other,"Info_Erpresser_Choice_Zahlen_13_02");	//��� ������.
		self.aivar[AIV_HAS_ERPRESSED] = 1;
	}
	else
	{
		AI_Output(other,self,"Info_Erpresser_Choice_Zahlen_15_03");	//�-��... �������, � ���� ������ ��� 10 ������...
		AI_Output(self,other,"Info_Erpresser_Choice_Zahlen_13_04");	//����� �������...
		self.aivar[AIV_HAS_ERPRESSED] = 2;
		Npc_SetTarget(self,other);
		AI_StartState(self,ZS_Attack,1,"");
	};
	AI_StopProcessInfos(self);
};


instance Info_BereitsErpresst(C_Info)
{
	npc = ORG_888_Erpresser;
	nr = 1;
	condition = Info_BereitsErpresst_Condition;
	information = Info_BereitsErpresst_Info;
	permanent = 1;
	important = 1;
};


func int Info_BereitsErpresst_Condition()
{
	if((self.aivar[AIV_HAS_ERPRESSED] == 1) && Npc_IsInState(self,ZS_Talk))
	{
		return TRUE;
	};
	return FALSE;
};

func void Info_BereitsErpresst_Info()
{
	AI_Output(self,other,"Info_BereitsErpresst_Info_13_02");	//�� ��������. ������ ������, ���� � �� ���������.
};


instance Info_BereitsAufsMaul(C_Info)
{
	npc = ORG_888_Erpresser;
	nr = 1;
	condition = Info_BereitsAufsMaul_Condition;
	information = Info_BereitsAufsMaul_Info;
	permanent = 1;
	important = 1;
};


func int Info_BereitsAufsMaul_Condition()
{
	if((self.aivar[AIV_HAS_ERPRESSED] == 2) && (self.aivar[AIV_WASDEFEATEDBYSC] == FALSE) && Npc_IsInState(self,ZS_Talk))
	{
		return TRUE;
	};
	return FALSE;
};

func void Info_BereitsAufsMaul_Info()
{
	AI_Output(self,other,"Info_BereitsAufsMaul_Info_13_02");	//�������, ���� � �� �������� ���� ����� ����!
};


instance Info_Exit(C_Info)
{
	npc = ORG_888_Erpresser;
	nr = 999;
	condition = Info_Exit_Condition;
	information = Info_Exit_Info;
	important = 0;
	permanent = 1;
	description = DIALOG_ENDE;
};


func int Info_Exit_Condition()
{
	return TRUE;
};

func void Info_Exit_Info()
{
	AI_StopProcessInfos(self);
};

