
instance DIA_SLD_761_Soeldner_INTRO(C_Info)
{
	npc = SLD_761_Soeldner;
	condition = DIA_SLD_761_Soeldner_INTRO_CONDITION;
	information = DIA_SLD_761_Soeldner_INTRO_INFO;
	important = 1;
	permanent = 0;
};


func int DIA_SLD_761_Soeldner_INTRO_CONDITION()
{
	if(Npc_GetDistToNpc(self,hero) < 300)
	{
		return 1;
	};
	return FALSE;
};

func void DIA_SLD_761_Soeldner_INTRO_INFO()
{
	AI_Output(self,other,"DIA_SLD_761_Soeldner_INTRO_INFO_03_01");	//��� �� ������� �����, � ����� � �����?
};


instance DIA_SLD_761_Soeldner_EXIT_1(C_Info)
{
	nr = 999;
	npc = SLD_761_Soeldner;
	condition = DIA_SLD_761_Soeldner_EXIT_1_CONDITION;
	information = DIA_SLD_761_Soeldner_EXIT_1_INFO;
	important = 0;
	permanent = 0;
	description = "� ���� ��� ���� ����.";
};


func int DIA_SLD_761_Soeldner_EXIT_1_CONDITION()
{
	return 1;
};

func void DIA_SLD_761_Soeldner_EXIT_1_INFO()
{
	AI_Output(other,self,"DIA_SLD_761_Soeldner_EXIT_1_INFO_15_01");	//� ���� ��� ���� ����.
	AI_Output(self,other,"DIA_SLD_761_Soeldner_EXIT_1_INFO_03_02");	//� ���� ��� �������.
	AI_StopProcessInfos(self);
};


instance DIA_SLD_761_Soeldner_EXIT_2(C_Info)
{
	nr = 999;
	npc = SLD_761_Soeldner;
	condition = DIA_SLD_761_Soeldner_EXIT_2_CONDITION;
	information = DIA_SLD_761_Soeldner_EXIT_2_INFO;
	important = 0;
	permanent = 1;
	description = "� ����� �����.";
};


func int DIA_SLD_761_Soeldner_EXIT_2_CONDITION()
{
	if(Npc_KnowsInfo(hero,DIA_SLD_761_Soeldner_EXIT_1))
	{
		return 1;
	};
	return FALSE;
};

func void DIA_SLD_761_Soeldner_EXIT_2_INFO()
{
	AI_Output(other,self,"DIA_SLD_761_Soeldner_EXIT_2_INFO_15_01");	//� ����� �����.
	AI_Output(self,other,"DIA_SLD_761_Soeldner_EXIT_2_INFO_03_02");	//��� � ������.
	AI_StopProcessInfos(self);
};


instance DIA_SLD_761_Soeldner_UMSEHEN(C_Info)
{
	npc = SLD_761_Soeldner;
	condition = DIA_SLD_761_Soeldner_UMSEHEN_CONDITION;
	information = DIA_SLD_761_Soeldner_UMSEHEN_INFO;
	important = 0;
	permanent = 0;
	description = "� ������ ����� ��������� �� ������.";
};


func int DIA_SLD_761_Soeldner_UMSEHEN_CONDITION()
{
	return 1;
};

func void DIA_SLD_761_Soeldner_UMSEHEN_INFO()
{
	AI_Output(other,self,"DIA_SLD_761_Soeldner_UMSEHEN_INFO_15_01");	//� ������ ����� ��������� �� ������.
	AI_Output(self,other,"DIA_SLD_761_Soeldner_UMSEHEN_INFO_03_02");	//�� �� ���� ������ �� ����, ������ ��� ��� ���� � �����, � ���� ����� ���� �� ������!
};


instance DIA_SLD_761_Soeldner_INMINE(C_Info)
{
	npc = SLD_761_Soeldner;
	condition = DIA_SLD_761_Soeldner_INMINE_CONDITION;
	information = DIA_SLD_761_Soeldner_INMINE_INFO;
	important = 0;
	permanent = 0;
	description = "� ������ ����� ������� �����.";
};


func int DIA_SLD_761_Soeldner_INMINE_CONDITION()
{
	return 1;
};

func void DIA_SLD_761_Soeldner_INMINE_INFO()
{
	AI_Output(other,self,"DIA_SLD_761_Soeldner_INMINE_INFO_15_01");	//� ������ ����� ������� �����.
	AI_Output(self,other,"DIA_SLD_761_Soeldner_INMINE_INFO_03_02");	//� �����, �� ��� ������, ��� ����� ������� � �������� ����� ��������� �� �� ���.
};


instance DIA_SLD_761_Soeldner_Bribe(C_Info)
{
	npc = SLD_761_Soeldner;
	condition = DIA_SLD_761_Soeldner_Bribe_CONDITION;
	information = DIA_SLD_761_Soeldner_Bribe_INFO;
	important = 0;
	permanent = 0;
	description = "������, �� ������ �� ������ �������?";
};


func int DIA_SLD_761_Soeldner_Bribe_CONDITION()
{
	if(Npc_KnowsInfo(hero,DIA_SLD_761_Soeldner_INMINE))
	{
		return 1;
	};
	return FALSE;
};

func void DIA_SLD_761_Soeldner_Bribe_INFO()
{
	AI_Output(other,self,"DIA_SLD_761_Soeldner_Bribe_INFO_15_01");	//������, �� ������ �� ������ �������?
	AI_Output(self,other,"DIA_SLD_761_Soeldner_Bribe_INFO_03_02");	//� ��� �� ������ ������?
	AI_Output(self,other,"DIA_SLD_761_Soeldner_Bribe_INFO_03_03");	//�������! ���� �� ��������� ��������� ����, �� ����: �� �� �� ���� �����, ��������!
	AI_Output(other,self,"DIA_SLD_761_Soeldner_Bribe_INFO_15_04");	//���, � ������ �� ���� ���������, � ������ �������...
	AI_Output(other,self,"DIA_SLD_761_Soeldner_Bribe_INFO_15_05");	//�����, ��� ����� ����.
	AI_StopProcessInfos(self);
};

