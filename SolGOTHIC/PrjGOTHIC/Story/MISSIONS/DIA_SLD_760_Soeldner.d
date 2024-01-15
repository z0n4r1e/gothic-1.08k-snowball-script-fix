
instance DIA_SLD_760_Soeldner_INTRO(C_Info)
{
	npc = SLD_760_Soeldner;
	condition = DIA_SLD_760_Soeldner_INTRO_CONDITION;
	information = DIA_SLD_760_Soeldner_INTRO_INFO;
	important = 1;
	permanent = 0;
};


func int DIA_SLD_760_Soeldner_INTRO_CONDITION()
{
	if(Npc_GetDistToNpc(self,hero) < 200)
	{
		return 1;
	};
};

func void DIA_SLD_760_Soeldner_INTRO_INFO()
{
	AI_Output(self,other,"DIA_SLD_760_Soeldner_INTRO_INFO_13_01");	//��� �� ����� ��������? ��� ���, ��������: ������� �������� �� ���� �����!
};


instance DIA_SLD_760_Soeldner_EXIT_1(C_Info)
{
	nr = 999;
	npc = SLD_760_Soeldner;
	condition = DIA_SLD_760_Soeldner_EXIT_1_CONDITION;
	information = DIA_SLD_760_Soeldner_EXIT_1_INFO;
	important = 0;
	permanent = 0;
	description = "� ����� �����.";
};


func int DIA_SLD_760_Soeldner_EXIT_1_CONDITION()
{
	return 1;
};

func void DIA_SLD_760_Soeldner_EXIT_1_INFO()
{
	AI_Output(other,self,"DIA_SLD_760_Soeldner_EXIT_1_INFO_15_01");	//� ����� �����.
	AI_Output(self,other,"DIA_SLD_760_Soeldner_EXIT_1_INFO_13_02");	//���, ��� �� �������� ���� �����.
	AI_StopProcessInfos(self);
};


instance DIA_SLD_760_Soeldner_EXIT_2(C_Info)
{
	nr = 999;
	npc = SLD_760_Soeldner;
	condition = DIA_SLD_760_Soeldner_EXIT_2_CONDITION;
	information = DIA_SLD_760_Soeldner_EXIT_2_INFO;
	important = 0;
	permanent = 1;
	description = "��� ���� ����.";
};


func int DIA_SLD_760_Soeldner_EXIT_2_CONDITION()
{
	if(Npc_KnowsInfo(hero,DIA_SLD_760_Soeldner_EXIT_1))
	{
		return 1;
	};
};

func void DIA_SLD_760_Soeldner_EXIT_2_INFO()
{
	AI_Output(other,self,"DIA_SLD_760_Soeldner_EXIT_2_INFO_15_01");	//��� ���� ����.
	AI_Output(self,other,"DIA_SLD_760_Soeldner_EXIT_2_INFO_13_02");	//�� � ��� ����.
	AI_StopProcessInfos(self);
};


instance DIA_SLD_760_Soeldner_UMSEHEN(C_Info)
{
	npc = SLD_760_Soeldner;
	condition = DIA_SLD_760_Soeldner_UMSEHEN_CONDITION;
	information = DIA_SLD_760_Soeldner_UMSEHEN_INFO;
	important = 0;
	permanent = 0;
	description = "� ������ ����� ������� ����������.";
};


func int DIA_SLD_760_Soeldner_UMSEHEN_CONDITION()
{
	return 1;
};

func void DIA_SLD_760_Soeldner_UMSEHEN_INFO()
{
	AI_Output(other,self,"DIA_SLD_760_Soeldner_UMSEHEN_INFO_15_01");	//� ������ ����� ������� ����������.
	AI_Output(self,other,"DIA_SLD_760_Soeldner_UMSEHEN_INFO_13_02");	//����� ����� ���� ���� � ��������, ��� � ������� �� � ������!
};


instance DIA_SLD_760_Soeldner_INMINE(C_Info)
{
	npc = SLD_760_Soeldner;
	condition = DIA_SLD_760_Soeldner_INMINE_CONDITION;
	information = DIA_SLD_760_Soeldner_INMINE_INFO;
	important = 0;
	permanent = 0;
	description = "� ���� ����� � �����.";
};


func int DIA_SLD_760_Soeldner_INMINE_CONDITION()
{
	return 1;
};

func void DIA_SLD_760_Soeldner_INMINE_INFO()
{
	AI_Output(other,self,"DIA_SLD_760_Soeldner_INMINE_INFO_15_01");	//� ���� ����� � �����.
	AI_Output(self,other,"DIA_SLD_760_Soeldner_INMINE_INFO_13_02");	//� �����? � ������ �� ��������� ���� ��� ������� ���������� �� �����.
	if(!Npc_KnowsInfo(hero,dia_sld_752_okyl_werbistdu))
	{
		AI_Output(other,self,"DIA_SLD_760_Soeldner_INMINE_INFO_15_03");	//��� ����� ���� ����?
	}
	else
	{
		AI_Output(other,self,"DIA_SLD_760_Soeldner_INMINE_INFO_15_08");	//���� - ��� ��� ����� ��� � ������� ������� � � ������� ��������?
	};
	AI_Output(self,other,"DIA_SLD_760_Soeldner_INMINE_INFO_13_04");	//����� �� ������, �������� ����� �������� ��� �����.
	AI_Output(self,other,"DIA_SLD_760_Soeldner_INMINE_INFO_13_05");	//��� ��� � ���� �����, ������: ���� - ����� ������ ��� �� ���� ������. ������� �� ���� ��������� � ����� � �������� ������� ������� �� ����� ���� ����.
	AI_Output(self,other,"DIA_SLD_760_Soeldner_INMINE_INFO_13_06");	//��� ���, �� ����������, �������� �������� � ������.
	AI_Output(self,other,"DIA_SLD_760_Soeldner_INMINE_INFO_13_07");	//� �� ����, ��� �� ������, �� ���� �� � ��� �����-������ �����������, ���� ����� �� �������� � ���, ��� � ���� �������.
};

