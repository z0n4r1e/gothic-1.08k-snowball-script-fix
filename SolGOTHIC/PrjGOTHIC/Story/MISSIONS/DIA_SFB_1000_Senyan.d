
instance DIA_Senyan_EXIT(C_Info)
{
	npc = SFB_1000_Senyan;
	nr = 999;
	condition = DIA_Senyan_EXIT_Condition;
	information = DIA_Senyan_EXIT_Info;
	permanent = 1;
	description = DIALOG_ENDE;
};


func int DIA_Senyan_EXIT_Condition()
{
	return 1;
};

func void DIA_Senyan_EXIT_Info()
{
	AI_StopProcessInfos(self);
};


instance DIA_Senyan_Hello(C_Info)
{
	npc = SFB_1000_Senyan;
	nr = 1;
	condition = DIA_Senyan_Hello_Condition;
	information = DIA_Senyan_Hello_Info;
	permanent = 0;
	description = "�� �� ��������� �����, �����?";
};


func int DIA_Senyan_Hello_Condition()
{
	return 1;
};

func void DIA_Senyan_Hello_Info()
{
	AI_Output(other,self,"DIA_Senyan_Hello_15_00");	//�� �� ��������� �����, �����?
	AI_Output(self,other,"DIA_Senyan_Hello_01_01");	//�����. ��� �� �����?
	AI_StopProcessInfos(self);
};


instance DIA_Senyan_JustTalk(C_Info)
{
	npc = SFB_1000_Senyan;
	nr = 1;
	condition = DIA_Senyan_JustTalk_Condition;
	information = DIA_Senyan_JustTalk_Info;
	permanent = 1;
	description = "� ����� �� ���������� � �����.";
};


func int DIA_Senyan_JustTalk_Condition()
{
	if(Npc_KnowsInfo(hero,DIA_Senyan_Hello))
	{
		return 1;
	};
	return FALSE;
};

func void DIA_Senyan_JustTalk_Info()
{
	AI_Output(other,self,"DIA_Senyan_JustTalk_15_00");	//� ����� �� ���������� � �����.
	AI_Output(self,other,"DIA_Senyan_JustTalk_01_01");	//� ����� �� ��� ����, ����� �������������.
	AI_StopProcessInfos(self);
};

