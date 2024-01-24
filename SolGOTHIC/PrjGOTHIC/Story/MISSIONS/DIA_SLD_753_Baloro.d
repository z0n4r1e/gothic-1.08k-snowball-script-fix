
var int SLD_753_Baloro_SC_choice;
var int SLD_753_Baloro_SC_wills_wissen;
var int SLD_753_Baloro_SC_besorgt_den_Kram;

instance DIA_SLD_753_Baloro(C_Info)
{
	npc = SLD_753_Baloro;
	condition = DIA_SLD_753_Baloro_Condition;
	information = DIA_SLD_753_Baloro_Intro_Info;
	important = 1;
	permanent = 0;
};


func int DIA_SLD_753_Baloro_Condition()
{
	return TRUE;
};

func void DIA_SLD_753_Baloro_Intro_Info()
{
	AI_Output(self,other,"DIA_SLD_753_Baloro_Intro_08_01");	//��, ��! ��� �� ����?
};


instance DIA_SLD_753_Baloro_Wasmeinstdu(C_Info)
{
	npc = SLD_753_Baloro;
	condition = DIA_SLD_753_Baloro_Wasmeinstdu_Condition;
	information = DIA_SLD_753_Baloro_Wasmeinstdu_Info;
	important = 0;
	permanent = 0;
	description = "������!";
};


func int DIA_SLD_753_Baloro_Wasmeinstdu_Condition()
{
	return TRUE;
};

func void DIA_SLD_753_Baloro_Wasmeinstdu_Info()
{
	AI_Output(other,self,"DIA_SLD_753_Baloro_Wasmeinstdu_Info_15_01");	//������!
	AI_Output(self,other,"DIA_SLD_753_Baloro_Wasmeinstdu_Info_08_02");	//�� ������������ �����, ��� ����� ����� ���-��!
	AI_Output(other,self,"DIA_SLD_753_Baloro_Wasmeinstdu_Info_15_03");	//� ����� ����? ��-���, ����� ����, �� � ����.
	AI_Output(self,other,"DIA_SLD_753_Baloro_Wasmeinstdu_Info_08_04");	//��, �������! ������ ���� - ����� ���� � ����� ������!
};


instance DIA_SLD_753_Baloro_Worumgehts(C_Info)
{
	npc = SLD_753_Baloro;
	condition = DIA_SLD_753_Baloro_Worumgehts_Condition;
	information = DIA_SLD_753_Baloro_Worumgehts_Info;
	important = 0;
	permanent = 0;
	description = "��� �� ������ � ����?";
};


func int DIA_SLD_753_Baloro_Worumgehts_Condition()
{
	if(Npc_KnowsInfo(hero,DIA_SLD_753_Baloro_Wasmeinstdu) && (SLD_753_Baloro_SC_choice == 0))
	{
		return TRUE;
	};
	return FALSE;
};

func void DIA_SLD_753_Baloro_Worumgehts_Info()
{
	AI_Output(other,self,"DIA_SLD_753_Baloro_Worumgehts_Info_15_01");	//��� �� ������ � ����?
	AI_Output(self,other,"DIA_SLD_753_Baloro_Worumgehts_Info_08_01");	//��� ���� �����?
	AI_Output(other,self,"DIA_SLD_753_Baloro_Worumgehts_Info_15_02");	//��� ������ �������� ����, ������� �������� � ������� � �����?
	AI_Output(self,other,"DIA_SLD_753_Baloro_Worumgehts_Info_08_02");	//�� �����! ��� ��� ������!
	AI_Output(self,other,"DIA_SLD_753_Baloro_Worumgehts_Info_08_03");	//� ��� ������ ������, ������� ����� �������� ������ �����. ������� - ����� �� ��� ������� �� ���������!
	AI_Output(self,other,"DIA_SLD_753_Baloro_Worumgehts_Info_08_04");	//� ����� ����� ���� � ��-�������� ������. �������� ��� - � ��� ����� �����. ��� �������?
	Info_ClearChoices(DIA_SLD_753_Baloro_Worumgehts);
	Info_AddChoice(DIA_SLD_753_Baloro_Worumgehts,"��� ��� ����� �������?",DIA_SLD_753_Baloro_Worumgehts_ja);
	Info_AddChoice(DIA_SLD_753_Baloro_Worumgehts,"���, ���! ������! ��� ��� �� �����!",DIA_SLD_753_Baloro_Exit_Info);
};

func void DIA_SLD_753_Baloro_Worumgehts_ja()
{
	AI_Output(other,self,"DIA_SLD_753_Baloro_Worumgehts_ja_15_05");	//��� ��� ����� �������?
	AI_Output(self,other,"DIA_SLD_753_Baloro_Worumgehts_ja_08_03");	//��� ����� ������!
	AI_Output(self,other,"DIA_SLD_753_Baloro_Worumgehts_ja_08_04");	//������� ��� 5 �����, 2 ������� �������� ������, 5 ������� ����, 3 ������� �����, 2 ����� ���� � 2 ������ ��������� - ��� � ���, � ��� � �����!
	AI_Output(self,other,"DIA_SLD_753_Baloro_Worumgehts_ja_08_05");	//������ ���, �� �� ���������. � ��� ������� ����, ��� � ���� ������� ����� �������� ������ �����?
	Info_ClearChoices(DIA_SLD_753_Baloro_Worumgehts);
	Info_AddChoice(DIA_SLD_753_Baloro_Worumgehts,"�����! ���������, ��� � ����� ��� ���� �������!",DIA_SLD_753_Baloro_Worumgehts_jaklar);
	Info_AddChoice(DIA_SLD_753_Baloro_Worumgehts,"���, ���! ������! ��� ��� �� �����!",DIA_SLD_753_Baloro_Exit_Info);
};

func void DIA_SLD_753_Baloro_Worumgehts_jaklar()
{
	AI_Output(other,self,"DIA_SLD_753_Baloro_Worumgehts_ja_15_06");	//�����! ���������, ��� � ����� ��� ���� �������!
	AI_Output(self,other,"DIA_SLD_753_Baloro_Worumgehts_ja_08_06");	//�������! �� ����������!
	AI_Output(self,other,"DIA_SLD_753_Baloro_Worumgehts_ja_08_07");	//� �� ������: 5 �����, 2 ������� �������� ������, 5 ������� ����, 3 ������� �����, 2 ����� ���� � 2 ������ ���������! ��������?
	AI_Output(other,self,"DIA_SLD_753_Baloro_Worumgehts_ja_15_07");	//�������!
	SLD_753_Baloro_SC_besorgt_den_Kram = LOG_RUNNING;
	Log_CreateTopic(Baloros_Waffe,LOG_MISSION);
	Log_SetTopicStatus(Baloros_Waffe,LOG_RUNNING);
	B_LogEntry(Baloros_Waffe,"������ ������ ���� ��� �������� ������, ���� � ������� ��� 5 �����, 2 ������� �������� ������, 5 ������� ����, 3 ������� �����, 2 ����� ���� � 2 ����� ���������.");
	AI_StopProcessInfos(self);
};


instance DIA_SLD_753_Baloro_habsnichtdabei(C_Info)
{
	npc = SLD_753_Baloro;
	condition = DIA_SLD_753_Baloro_habsnichtdabei_Condition;
	information = DIA_SLD_753_Baloro_habsnichtdabei_Info;
	important = 0;
	permanent = 1;
	description = "� ��� �� ��� ������! ";
};


func int DIA_SLD_753_Baloro_habsnichtdabei_Condition()
{
	if(SLD_753_Baloro_SC_besorgt_den_Kram == LOG_RUNNING)
	{
		return TRUE;
	};
	return FALSE;
};

func void DIA_SLD_753_Baloro_habsnichtdabei_Info()
{
	AI_Output(other,self,"DIA_SLD_753_Baloro_habsnichtdabei_Info_15_01");	//� ��� �� ��� ������! ��� ����� �����. ��� ���, ��� ���? 
	AI_Output(self,other,"DIA_SLD_753_Baloro_habsnichtdabei_Info_08_01");	//�����, �������� ��������. ��� �����...
	AI_Output(self,other,"DIA_SLD_753_Baloro_habsnichtdabei_Info_08_02");	//5 �����, 2 ������� �������� ������, 5 ������� ����, 3 ������� �����, 2 ����� ���� � 2 ������ ���������. �� ���� ��� ��������?
	AI_Output(other,self,"DIA_SLD_753_Baloro_habsnichtdabei_Info_15_02");	//������! �������! � ���������� ���������!
	AI_StopProcessInfos(self);
};


instance DIA_SLD_753_Baloro_habsdabei(C_Info)
{
	npc = SLD_753_Baloro;
	condition = DIA_SLD_753_Baloro_habsdabei_Condition;
	information = DIA_SLD_753_Baloro_habsdabei_Info;
	important = 0;
	permanent = 0;
	description = "������ � ������ ���, ��� �����! ";
};


func int DIA_SLD_753_Baloro_habsdabei_Condition()
{
	if((SLD_753_Baloro_SC_besorgt_den_Kram == LOG_RUNNING) && Npc_KnowsInfo(hero,DIA_SLD_753_Baloro_Worumgehts) && (SLD_753_Baloro_SC_choice == 0) && (Npc_HasItems(other,ItFoApple) >= 5) && (Npc_HasItems(other,ItFoBooze) >= 2) && (Npc_HasItems(other,ItFoBeer) >= 5) && (Npc_HasItems(other,ItFoLoaf) >= 3) && (Npc_HasItems(other,ItFoCheese) >= 2) && (Npc_HasItems(other,ItFo_wineberrys_01) >= 2))
	{
		return TRUE;
	};
	return FALSE;
};

func void DIA_SLD_753_Baloro_habsdabei_Info()
{
	AI_Output(other,self,"DIA_SLD_753_Baloro_habsdabei_Info_15_01");	//������ � ������ ���, ��� �����! � ��� ���� �����������?
	AI_Output(self,other,"DIA_SLD_753_Baloro_habsdabei_Info_08_01");	//������� ������, ��� �� ������!
	CreateInvItems(other,ItFoApple,14);
	B_GiveInvItems(other,self,ItFoApple,19);
	Npc_RemoveInvItems(other,ItFoBooze,2);
	Npc_RemoveInvItems(other,ItFoBeer,5);
	Npc_RemoveInvItems(other,ItFoLoaf,3);
	Npc_RemoveInvItems(other,ItFoCheese,2);
	Npc_RemoveInvItems(other,ItFo_wineberrys_01,2);
	Npc_RemoveInvItems(self,ItFoApple,14);
	CreateInvItems(self,ItFoBooze,2);
	CreateInvItems(self,ItFoBeer,5);
	CreateInvItems(self,ItFoLoaf,3);
	CreateInvItems(self,ItFoCheese,2);
	CreateInvItems(self,ItFo_wineberrys_01,2);
	AI_Output(other,self,"DIA_SLD_753_Baloro_habsdabei_Info_15_02");	//���, ����� ���, ��� �� ���������!
	AI_Output(self,other,"DIA_SLD_753_Baloro_habsdabei_Info_08_02");	//��, �����!
	AI_Output(other,self,"DIA_SLD_753_Baloro_habsdabei_Info_15_03");	//������ �� �����, ��� ������!
	AI_Output(self,other,"DIA_SLD_753_Baloro_habsdabei_Info_08_03");	//�� �����, ������ �� ����!
	AI_Output(other,self,"DIA_SLD_753_Baloro_habsdabei_Info_15_04");	//���???
	AI_Output(self,other,"DIA_SLD_753_Baloro_habsdabei_Info_08_04");	//�� ���, � � ����� ���� �������, ��� � ���� ���-�� ����� ������? ���� �� ��������� ����, ���� ������ ������ ���� �� ������!
	AI_Output(self,other,"DIA_SLD_753_Baloro_habsdabei_Info_08_05");	//��������� ������, ��� �� ��� ���! ���� ������ ������ �����, ��� ���� �������, ����� �� ����� �� ���������!
	AI_Output(self,other,"DIA_SLD_753_Baloro_habsdabei_Info_08_06");	//�� ��� �� �����. ������ � ��� ���� ��� ��� ������� ���������! ������� �������! ����� ����, �� ��� �����-������ ����������. ��-��-��-��-��-��-��!
	SLD_753_Baloro_SC_besorgt_den_Kram = LOG_SUCCESS;
	B_GiveXP(300);
	B_LogEntry(Baloros_Waffe,"�� ���� ���� ������ �� ����� ����� ��������! �� ������, ������-�� � ����� ���� ����.");
	Log_SetTopicStatus(Baloros_Waffe,LOG_SUCCESS);
	AI_StopProcessInfos(self);
};


instance DIA_SLD_753_Baloro_letztes_Wort(C_Info)
{
	npc = SLD_753_Baloro;
	condition = DIA_SLD_753_Baloro_letztes_Wort_Condition;
	information = DIA_SLD_753_Baloro_letztes_Wort_Info;
	important = 0;
	permanent = 0;
	description = "��, ������! �� �� ������ ��� ���������! ";
};


func int DIA_SLD_753_Baloro_letztes_Wort_Condition()
{
	if(SLD_753_Baloro_SC_besorgt_den_Kram == LOG_SUCCESS)
	{
		return TRUE;
	};
	return FALSE;
};

func void DIA_SLD_753_Baloro_letztes_Wort_Info()
{
	AI_Output(other,self,"DIA_SLD_753_Baloro_letztes_Wort_Info_15_01");	//��, ������! �� �� ������ ��� ���������! 
	AI_Output(self,other,"DIA_SLD_753_Baloro_letztes_Wort_Info_08_01");	//���� ���� ��� �����? ����������! ���, �������� ��� ����-������ �� ����� - ������ �� ���. ����?
	SLD_753_Baloro_SC_wills_wissen = 1;
	AI_StopProcessInfos(self);
};


instance DIA_SLD_753_Baloro_SC_wills_wissen(C_Info)
{
	npc = SLD_753_Baloro;
	condition = DIA_SLD_753_Baloro_SC_wills_wissen_Condition;
	information = DIA_SLD_753_Baloro_SC_wills_wissen_Info;
	important = 0;
	permanent = 0;
	description = "������, ��� ���-���� �������� ���� �������!";
};


func int DIA_SLD_753_Baloro_SC_wills_wissen_Condition()
{
	if(SLD_753_Baloro_SC_wills_wissen == 1)
	{
		return TRUE;
	};
	return FALSE;
};

func void DIA_SLD_753_Baloro_Attack()
{
	AI_StopProcessInfos(self);
	Npc_SetTarget(self,hero);
	AI_StartState(self,ZS_Attack,1,"");
};

func void DIA_SLD_753_Baloro_SC_wills_wissen_Info()
{
	AI_Output(other,self,"DIA_SLD_753_Baloro_SC_wills_wissen_Info_15_01");	//������, ��� ���-���� �������� ���� �������!
	AI_Output(self,other,"DIA_SLD_753_Baloro_SC_wills_wissen_Info_08_01");	//�� ������ ������������. � ������ ����������, ������!
	AI_Output(other,self,"DIA_SLD_753_Baloro_SC_wills_wissen_Info_15_02");	//������, �� ���� �� �����!
	AI_Output(self,other,"DIA_SLD_753_Baloro_SC_wills_wissen_Info_08_02");	//�� �����. �� ��� ����������! � � ������������!
	DIA_SLD_753_Baloro_Attack();
};


instance DIA_SLD_753_Baloro_Exit(C_Info)
{
	npc = SLD_753_Baloro;
	nr = 999;
	condition = DIA_SLD_753_Baloro_Exit_Condition;
	information = DIA_SLD_753_Baloro_Exit_Info;
	important = 0;
	permanent = 1;
	description = "������, ��� ������� ��������� � ����� ���!";
};


func int DIA_SLD_753_Baloro_Exit_Condition()
{
	if((SLD_753_Baloro_SC_wills_wissen == 0) && (SLD_753_Baloro_SC_besorgt_den_Kram == 0))
	{
		return TRUE;
	};
	return FALSE;
};

func void DIA_SLD_753_Baloro_Exit_Info()
{
	if(Npc_KnowsInfo(hero,DIA_SLD_753_Baloro_Wasmeinstdu) && (SLD_753_Baloro_SC_choice == 0))
	{
		AI_Output(other,self,"DIA_SLD_753_Baloro_Exit_Info_15_03");	//������, ��� ������� ��������� � ����� ���!
		AI_Output(self,other,"DIA_SLD_753_Baloro_Exit_Info_08_04");	//�, ��� �� ������� �������! ��, ��� ��������!
		SLD_753_Baloro_SC_choice = 1;
	}
	else
	{
		AI_Output(other,self,"DIA_SLD_753_Baloro_Exit_Info_15_03");	//������, ��� ������� ��������� � ����� ���!
		AI_Output(self,other,"DIA_SLD_753_Baloro_Exit_Info_08_04");	//�, ��� �� ������� �������! ��, ��� ��������!
	};
	AI_StopProcessInfos(self);
};


instance DIA_SLD_753_Baloro_Angebotdochannehmen(C_Info)
{
	npc = SLD_753_Baloro;
	condition = DIA_SLD_753_Baloro_Angebotdochannehmen_Condition;
	information = DIA_SLD_753_Baloro_Angebotdochannehmen_Info;
	important = 0;
	permanent = 0;
	description = "...�����, �������� � ������ �����������?";
};


func int DIA_SLD_753_Baloro_Angebotdochannehmen_Condition()
{
	if(SLD_753_Baloro_SC_choice == 1)
	{
		return TRUE;
	};
	return FALSE;
};

func void DIA_SLD_753_Baloro_Angebotdochannehmen_Info()
{
	AI_Output(other,self,"DIA_SLD_753_Baloro_Angebotdochannehmen_Info_15_01");	//������, � ��� �������... �����, �������� � ������ �����������?
	AI_Output(self,other,"DIA_SLD_753_Baloro_Angebotdochannehmen_Info_08_01");	//���, ������ ��� ������� ������. �� ������� ���� ����!
	AI_StopProcessInfos(self);
};

