
instance DIA_Grd_215_Torwache_Exit(C_Info)
{
	npc = GRD_215_Torwache;
	nr = 999;
	condition = DIA_Grd_215_Torwache_Exit_Condition;
	information = DIA_Grd_215_Torwache_Exit_Info;
	permanent = 1;
	description = DIALOG_ENDE;
};


func int DIA_Grd_215_Torwache_Exit_Condition()
{
	return 1;
};

func void DIA_Grd_215_Torwache_Exit_Info()
{
	AI_StopProcessInfos(self);
};


instance DIA_Grd_215_Torwache_First(C_Info)
{
	npc = GRD_215_Torwache;
	nr = 2;
	condition = DIA_Grd_215_Torwache_First_Condition;
	information = DIA_Grd_215_Torwache_First_Info;
	permanent = 0;
	important = 1;
};


func int DIA_Grd_215_Torwache_First_Condition()
{
	if(!Npc_KnowsInfo(hero,DIA_Grd_216_First) && (Kapitel < 2))
	{
		return 1;
	};
};

func void DIA_Grd_215_Torwache_First_Info()
{
	AI_Output(self,other,"DIA_Grd_215_Torwache_First_06_00");	//���� ��� �� �������������?
	AI_Output(other,self,"DIA_Grd_215_Torwache_First_15_01");	//� ������.
	AI_Output(self,other,"DIA_Grd_215_Torwache_First_06_02");	//�� ���� �� ����� �������, ���� ���?
	Info_ClearChoices(DIA_Grd_215_Torwache_First);
	Info_AddChoice(DIA_Grd_215_Torwache_First,"������-�� � ���������� �������� ���� ������...",DIA_Grd_215_Torwache_First_Trouble);
	Info_AddChoice(DIA_Grd_215_Torwache_First,"������ ����� ������� �����������.",DIA_Grd_215_Torwache_First_JustLooking);
	if(Npc_KnowsInfo(hero,Info_Diego_Kolonie))
	{
		Info_AddChoice(DIA_Grd_215_Torwache_First,"����� ������, ��� � ������ ����������� � ��� � ������.",DIA_Grd_215_Torwache_First_Diego);
	};
};

func void DIA_Grd_215_Torwache_First_Trouble()
{
	AI_Output(other,self,"DIA_Grd_215_Torwache_First_Trouble_15_00");	//������-�� � ���������� �������� ���� ������...
	AI_Output(self,other,"DIA_Grd_215_Torwache_First_Trouble_06_01");	//��, �� �� �������� ������... �� ����� �������� ������.
	Info_ClearChoices(DIA_Grd_215_Torwache_First);
	AI_StopProcessInfos(self);
	Npc_SetTarget(self,other);
	AI_StartState(self,ZS_Attack,1,"");
};

func void DIA_Grd_215_Torwache_First_JustLooking()
{
	AI_Output(other,self,"DIA_Grd_215_Torwache_First_JustLooking_15_00");	//������ ����� ������� �����������.
	AI_Output(self,other,"DIA_Grd_215_Torwache_First_JustLooking_06_01");	//��� ��������� ���� � ������ ������ ����.
	Info_ClearChoices(DIA_Grd_215_Torwache_First);
	Info_AddChoice(DIA_Grd_215_Torwache_First,"������ �� ����.",DIA_Grd_215_Torwache_First_NoPay);
	Info_AddChoice(DIA_Grd_215_Torwache_First,"�����, ��� ���� ������ ������.",DIA_Grd_215_Torwache_First_Pay);
};

func void DIA_Grd_215_Torwache_First_Diego()
{
	AI_Output(other,self,"DIA_Grd_215_Torwache_First_Diego_15_00");	//����� ������, ��� � ������ ����������� � ��� � ������.
	AI_Output(self,other,"DIA_Grd_215_Torwache_First_Diego_06_01");	//�����, ����� �������.
	Info_ClearChoices(DIA_Grd_215_Torwache_First);
};

func void DIA_Grd_215_Torwache_First_NoPay()
{
	AI_Output(other,self,"DIA_Grd_215_Torwache_First_NoPay_15_00");	//�� � ������ ���.
	AI_Output(self,other,"DIA_Grd_215_Torwache_First_NoPay_06_01");	//����� ����������.
	Info_ClearChoices(DIA_Grd_215_Torwache_First);
};

func void DIA_Grd_215_Torwache_First_Pay()
{
	if(Npc_HasItems(other,ItMiNugget) >= 10)
	{
		AI_Output(other,self,"DIA_Grd_215_Torwache_First_Pay_15_00");	//�����, ��� ���� ������ ������.
		AI_Output(self,other,"DIA_Grd_215_Torwache_First_Pay_06_01");	//�� ������.
		B_GiveInvItems(other,self,ItMiNugget,10);
		CreateInvItems(self,ItMiNugget,10);
	}
	else
	{
		AI_Output(other,self,"DIA_Grd_215_Torwache_First_Pay_NoOre_15_00");	//� ���� � ����� ������� ���.
		AI_Output(self,other,"DIA_Grd_215_Torwache_First_Pay_NoOre_06_01");	//� ���� ������� ���������� - ������ ���� ��� � ������ ������, ��� �� ����� ���������.
	};
	Info_ClearChoices(DIA_Grd_215_Torwache_First);
	AI_StopProcessInfos(self);
};


instance DIA_Grd_215_Torwache_PERM(C_Info)
{
	npc = GRD_215_Torwache;
	nr = 1;
	condition = DIA_Grd_215_Torwache_PERM_Condition;
	information = DIA_Grd_215_Torwache_PERM_Info;
	permanent = 1;
	description = "���� �������?";
};


func int DIA_Grd_215_Torwache_PERM_Condition()
{
	return 1;
};

func void DIA_Grd_215_Torwache_PERM_Info()
{
	AI_Output(other,self,"DIA_Grd_215_Torwache_PERM_15_00");	//���� �������?
	AI_Output(self,other,"DIA_Grd_215_Torwache_PERM_06_01");	//��-�. ���, ��� ������.
};

