
instance KDF_402_Corristo_Exit(C_Info)
{
	npc = Kdf_402_Corristo;
	nr = 999;
	condition = KDF_402_Corristo_Exit_Condition;
	information = KDF_402_Corristo_Exit_Info;
	important = 0;
	permanent = 1;
	description = DIALOG_ENDE;
};


func int KDF_402_Corristo_Exit_Condition()
{
	return TRUE;
};

func void KDF_402_Corristo_Exit_Info()
{
	AI_StopProcessInfos(self);
};


instance Info_Corristo_Intruder(C_Info)
{
	npc = Kdf_402_Corristo;
	nr = 1;
	condition = Info_Corristo_Intruder_Condition;
	information = Info_Corristo_Intruder_Info;
	permanent = 1;
	important = 1;
};


func int Info_Corristo_Intruder_Condition()
{
	if(Npc_IsInState(self,ZS_Talk) && (!Npc_KnowsInfo(hero,GRD_200_Thorus_WANNABEMAGE) && (CorKalom_BringMCQBalls != LOG_SUCCESS)))
	{
		return 1;
	};
};

func void Info_Corristo_Intruder_Info()
{
	AI_Output(self,other,"Info_Saturas_Intruder_14_00");	//��� �� ����� �������? ���� ����� ������ ������! ��������!
	AI_StopProcessInfos(self);
};


instance KDF_402_Corristo_EXPLAINMAGE(C_Info)
{
	npc = Kdf_402_Corristo;
	condition = KDF_402_Corristo_EXPLAINMAGE_Condition;
	information = KDF_402_Corristo_EXPLAINMAGE_Info;
	important = 0;
	permanent = 0;
	description = "�������� ���, ������ ��� - ���� �����?";
};


func int KDF_402_Corristo_EXPLAINMAGE_Condition()
{
	if(!Npc_KnowsInfo(hero,KDF_402_Corristo_WANNBEKDF) && (Npc_GetTrueGuild(hero) == GIL_STT))
	{
		return TRUE;
	};
};

func void KDF_402_Corristo_EXPLAINMAGE_Info()
{
	AI_Output(other,self,"KDF_402_Corristo_EXPLAINMAGE_Info_15_01");	//�������� ���, ������ ��� - ���� �����?
	AI_Output(self,other,"KDF_402_Corristo_EXPLAINMAGE_Info_14_02");	//�� - ���� ����. �� ������ ������, ������� �� �����.
	AI_Output(self,other,"KDF_402_Corristo_EXPLAINMAGE_Info_14_03");	//���� ����� - ��� ������������ ���. �� ������� �������, ������������ � �������.
	AI_Output(self,other,"KDF_402_Corristo_EXPLAINMAGE_Info_14_04");	//��� ���� - ���� �������� �����, ����, ������� ���������� ���� ����� �����.
};


instance KDF_402_Corristo_WANNBEKDF(C_Info)
{
	npc = Kdf_402_Corristo;
	condition = KDF_402_Corristo_WANNBEKDF_Condition;
	information = KDF_402_Corristo_WANNBEKDF_Info;
	important = 0;
	permanent = 1;
	description = "� ���� �������� � ��� ���������� ����.";
};


func int KDF_402_Corristo_WANNBEKDF_Condition()
{
	if(((CorKalom_BringMCQBalls == LOG_SUCCESS) || Npc_KnowsInfo(hero,GRD_200_Thorus_WANNABEMAGE)) && (Npc_GetTrueGuild(hero) == GIL_STT))
	{
		return TRUE;
	};
};

func void KDF_402_Corristo_WANNBEKDF_Info()
{
	AI_Output(other,self,"KDF_402_Corristo_WANNBEKDF_Info_15_01");	//� ���� �������� � ��� ���������� ����.
	AI_Output(self,other,"KDF_402_Corristo_WANNBEKDF_Info_14_02");	//��� �� ������ ����� ����� ����� ����? �-�...
	if(hero.level < 10)
	{
		AI_Output(self,other,"KDF_402_Corristo_WANNBEKDF_Info_14_04");	//����� ������ ���� ��� ������������. �����������, ����� ������ ����� ������.
		AI_StopProcessInfos(self);
		B_PrintGuildCondition(10);
	}
	else
	{
		AI_Output(self,other,"KDF_402_Corristo_WANNBEKDF_Info_14_03");	//������ ������ �������������� � ���, �� �� ������ ���� � ������ ���� ���� ������ �������. ��� ��������� ���� ���������� �����.
		AI_Output(self,other,"KDF_402_Corristo_WANNBEKDF_Info_14_05");	//��� ���� ����� � ����� �������������� � ���. �� ���� �� ������ ����� �����, � ������ ������ �������� ����. ��� ��� �����, ����� ������ ����� � ���������.
		Corristo_KDFAufnahme = 1;
		KDF_402_Corristo_WANNBEKDF.permanent = 0;
		Info_ClearChoices(KDF_402_Corristo_WANNBEKDF);
		Log_CreateTopic(GE_BecomeFiremage,LOG_NOTE);
		B_LogEntry(GE_BecomeFiremage,"�������� ������ ���, ��� �� ��������� ��� �������������� � ����� ����� ����. �� ������ ����� ��������� ��������.");
	};
};


instance KDF_402_Corristo_KDFTEST(C_Info)
{
	npc = Kdf_402_Corristo;
	condition = KDF_402_Corristo_KDFTEST_Condition;
	information = KDF_402_Corristo_KDFTEST_Info;
	important = 0;
	permanent = 0;
	description = "� �����. ������� ����.";
};


func int KDF_402_Corristo_KDFTEST_Condition()
{
	if(Corristo_KDFAufnahme == 1)
	{
		return TRUE;
	};
};

func void KDF_402_Corristo_KDFTEST_Info()
{
	AI_Output(other,self,"KDF_402_Corristo_KDFTEST_Info_15_01");	//� �����. ������� ����.
	AI_Output(self,other,"KDF_402_Corristo_KDFTEST_Info_14_02");	//������. �� ����� �������� �� �������, ���?
	Info_ClearChoices(KDF_402_Corristo_KDFTEST);
	Info_AddChoice(KDF_402_Corristo_KDFTEST,"��.",KDF_402_Corristo_KDFTEST_JA);
	Info_AddChoice(KDF_402_Corristo_KDFTEST,"���.",KDF_402_Corristo_KDFTEST_NO);
};

func void KDF_402_Corristo_KDFTEST_JA()
{
	AI_Output(other,self,"KDF_402_Corristo_KDFTEST_JA_Info_15_01");	//��.
	AI_Output(self,other,"KDF_402_Corristo_KDFTEST_JA_Info_14_02");	//�-��...
	AI_Output(self,other,"KDF_402_Corristo_KDFTEST_JA_Info_14_03");	//��� ����� ������ ����?
	Corristo_KDFAufnahme = 2;
	Info_ClearChoices(KDF_402_Corristo_KDFTEST);
	Info_AddChoice(KDF_402_Corristo_KDFTEST,"������.",KDF_402_Corristo_KDFTEST_ADANOS);
	Info_AddChoice(KDF_402_Corristo_KDFTEST,"������",KDF_402_Corristo_KDFTEST_SLEEPER);
	Info_AddChoice(KDF_402_Corristo_KDFTEST,"�����.",KDF_402_Corristo_KDFTEST_INNOS);
	Info_AddChoice(KDF_402_Corristo_KDFTEST,"�����",KDF_402_Corristo_KDFTEST_GOMEZ);
};

func void KDF_402_Corristo_KDFTEST_NO()
{
	AI_Output(other,self,"KDF_402_Corristo_KDFTEST_NO_Info_15_01");	//���.
	AI_Output(self,other,"KDF_402_Corristo_KDFTEST_NO_Info_14_02");	//�-��...
	AI_Output(self,other,"KDF_402_Corristo_KDFTEST_NO_Info_14_03");	//��� �� ����� ����, ������� ���������� �� ����� ���������.
	AI_Output(self,other,"KDF_402_Corristo_KDFTEST_NO_Info_14_04");	//�����, �� ���� ������ �������� ���� ��� �������. ���� ���� ������ ������ ��� ����.
	AI_StopProcessInfos(self);
	Npc_ExchangeRoutine(self,"START");
};

func void KDF_402_Corristo_KDFTEST_ADANOS()
{
	AI_Output(other,self,"KDF_402_Corristo_KDFTEST_ADANOS_Info_15_01");	//������.
	AI_Output(self,other,"KDF_402_Corristo_KDFTEST_ADANOS_Info_14_02");	//�-��...
	AI_Output(self,other,"KDF_402_Corristo_KDFTEST_ADANOS_Info_14_03");	//����� ��������. �����, �� ��� �� ����� �������� ����������.
	AI_StopProcessInfos(self);
	Npc_ExchangeRoutine(self,"START");
};

func void KDF_402_Corristo_KDFTEST_SLEEPER()
{
	AI_Output(other,self,"KDF_402_Corristo_KDFTEST_SLEEPER_Info_15_01");	//������.
	AI_Output(self,other,"KDF_402_Corristo_KDFTEST_SLEEPER_Info_14_02");	//�-��...
	AI_Output(self,other,"KDF_402_Corristo_KDFTEST_SLEEPER_Info_14_03");	//������, �� ������ ������� ����� ������� ����� �������� �������. ��������, ����� ����� ���� ����� ��� � ��������.
	AI_StopProcessInfos(self);
	Npc_ExchangeRoutine(self,"START");
};

func void KDF_402_Corristo_KDFTEST_INNOS()
{
	AI_Output(other,self,"KDF_402_Corristo_KDFTEST_INNOS_Info_15_01");	//�����.
	AI_Output(self,other,"KDF_402_Corristo_KDFTEST_INNOS_Info_14_02");	//�-��...
	AI_Output(self,other,"KDF_402_Corristo_KDFTEST_INNOS_Info_14_03");	//��� ���� ������ �����������?
	Corristo_KDFAufnahme = 3;
	Info_ClearChoices(KDF_402_Corristo_KDFTEST);
	Info_AddChoice(KDF_402_Corristo_KDFTEST,"����� �����.",KDF_402_Corristo_KDFTEST_FIGHT);
	Info_AddChoice(KDF_402_Corristo_KDFTEST,"�������� ����� ����� �����.",KDF_402_Corristo_KDFTEST_DEMUT);
	Info_AddChoice(KDF_402_Corristo_KDFTEST,"���������� � �������.",KDF_402_Corristo_KDFTEST_DISZIPLIN);
	Info_AddChoice(KDF_402_Corristo_KDFTEST,"������������ ����� ������.",KDF_402_Corristo_KDFTEST_EHRFURCHT);
};

func void KDF_402_Corristo_KDFTEST_GOMEZ()
{
	AI_Output(other,self,"KDF_402_Corristo_KDFTEST_GOMEZ_Info_15_01");	//�����.
	AI_Output(self,other,"KDF_402_Corristo_KDFTEST_GOMEZ_Info_14_02");	//�-��...
	AI_Output(self,other,"KDF_402_Corristo_KDFTEST_GOMEZ_Info_14_03");	//�����, ������ - ������ ����� ��� ����. �������� � �������!
	AI_StopProcessInfos(self);
	Npc_ExchangeRoutine(self,"START");
};

func void KDF_402_Corristo_KDFTEST_FIGHT()
{
	AI_Output(other,self,"KDF_402_Corristo_KDFTEST_FIGHT_Info_15_01");	//����� �����.
	AI_Output(self,other,"KDF_402_Corristo_KDFTEST_FIGHT_Info_14_02");	//�-��...
	AI_Output(self,other,"KDF_402_Corristo_KDFTEST_FIGHT_Info_14_03");	//�����, ������ - ������ ����� ��� ����. �������� � �������!
	AI_StopProcessInfos(self);
};

func void KDF_402_Corristo_KDFTEST_DEMUT()
{
	AI_Output(other,self,"KDF_402_Corristo_KDFTEST_DEMUT_Info_15_01");	//�������� ����� ����� �����.
	AI_Output(self,other,"KDF_402_Corristo_KDFTEST_DEMUT_Info_14_02");	//�-��...
	AI_Output(self,other,"KDF_402_Corristo_KDFTEST_DEMUT_Info_14_03");	//�� ������� ������ � ���������. � ���� ����� ���� ����������� ���������.
	AI_Output(self,other,"KDF_402_Corristo_KDFTEST_DEMUT_Info_14_04");	//������ �� ���� � ��� �����, ��� �� ��������� ������� ����.
	AI_StopProcessInfos(self);
	Corristo_KDFAufnahme = 4;
	B_Story_Feueraufnahme();
};

func void KDF_402_Corristo_KDFTEST_DISZIPLIN()
{
	AI_Output(other,self,"KDF_402_Corristo_KDFTEST_DISZIPLIN_Info_15_01");	//���������� � �������.
	AI_Output(self,other,"KDF_402_Corristo_KDFTEST_DISZIPLIN_Info_14_02");	//�-��...
	AI_Output(self,other,"KDF_402_Corristo_KDFTEST_DISZIPLIN_Info_14_03");	//�� ������� ������ � ���������. � ���� ����� ���� ����������� ���������.
	AI_Output(self,other,"KDF_402_Corristo_KDFTEST_DISZIPLIN_Info_14_04");	//������ �� ���� � ��� �����, ��� �� ��������� ������� ����.
	Corristo_KDFAufnahme = 4;
	AI_StopProcessInfos(self);
	B_Story_Feueraufnahme();
};

func void KDF_402_Corristo_KDFTEST_EHRFURCHT()
{
	AI_Output(other,self,"KDF_402_Corristo_KDFTEST_EHRFURCHT_Info_15_01");	//������������ ����� ������.
	AI_Output(self,other,"KDF_402_Corristo_KDFTEST_EHRFURCHT_Info_14_02");	//�-��...
	AI_Output(self,other,"KDF_402_Corristo_KDFTEST_EHRFURCHT_Info_14_03");	//�� ������� ������ � ���������. � ���� ����� ���� ����������� ���������.
	AI_Output(self,other,"KDF_402_Corristo_KDFTEST_EHRFURCHT_Info_14_04");	//������ �� ���� � ��� �����, ��� �� ��������� ������� ����.
	Corristo_KDFAufnahme = 4;
	AI_StopProcessInfos(self);
	B_Story_Feueraufnahme();
};


instance KDF_402_Corristo_AUFNAHME(C_Info)
{
	npc = Kdf_402_Corristo;
	condition = KDF_402_Corristo_AUFNAHME_Condition;
	information = KDF_402_Corristo_AUFNAHME_Info;
	important = 1;
	permanent = 0;
};


func int KDF_402_Corristo_AUFNAHME_Condition()
{
	if((Npc_GetDistToWP(hero,"OCC_CHAPEL_UPSTAIRS") < 500) && (Corristo_KDFAufnahme == 4))
	{
		return TRUE;
	};
};

func void KDF_402_Corristo_AUFNAHME_Info()
{
	Corristo_KDFAufnahme = 5;
	B_Story_Feueraufnahme();
	AI_UnequipWeapons(hero);
	AI_SetWalkMode(hero,NPC_WALK);
	AI_GotoNpc(hero,self);
	AI_Output(self,other,"KDF_402_Corristo_AUFNAHME_Info_14_01");	//�� ��� ��������� ����� ������� �� ���������� ������ ��������� ����.
	AI_Output(self,other,"KDF_402_Corristo_AUFNAHME_Info_14_02");	//������� �� ������ ����.
	Snd_Play("howling_01");
	AI_Output(self,other,"KDF_402_Corristo_AUFNAHME_Info_14_03");	//� ������� ������ �����...
	AI_Output(other,self,"KDF_402_Corristo_AUFNAHME_Info_15_04");	//� ������� ������ �����...
	AI_Output(self,other,"KDF_402_Corristo_AUFNAHME_Info_14_05");	//... � ������� ����� ���������� ����...
	AI_Output(other,self,"KDF_402_Corristo_AUFNAHME_Info_15_06");	//... � ������� ����� ���������� ����...
	AI_Output(self,other,"KDF_402_Corristo_AUFNAHME_Info_14_07");	//... ��� ���� ��� � ������ ��� � ����� ��� � ������ ����� ����� � ��������...
	AI_Output(other,self,"KDF_402_Corristo_AUFNAHME_Info_15_08");	//... ��� ���� ��� � ������ ��� � ����� ��� � ������ ����� ����� � ��������...
	AI_Output(self,other,"KDF_402_Corristo_AUFNAHME_Info_14_09");	//... �� ��� ���, ���� ���� ��� �� �������� � ������� ��������� � �� ������� ����� ���� �����.
	AI_Output(other,self,"KDF_402_Corristo_AUFNAHME_Info_15_10");	//... �� ��� ��� ���� ���� ��� �� �������� � ������� ��������� � �� ������� ����� ���� �����.
	AI_StopProcessInfos(self);
};


instance KDF_402_Corristo_ROBE(C_Info)
{
	npc = Kdf_402_Corristo;
	condition = KDF_402_Corristo_ROBE_Condition;
	information = KDF_402_Corristo_ROBE_Info;
	important = 1;
	permanent = 0;
};


func int KDF_402_Corristo_ROBE_Condition()
{
	if(Npc_KnowsInfo(hero,KDF_402_Corristo_AUFNAHME))
	{
		return TRUE;
	};
};

func void KDF_402_Corristo_ROBE_Info()
{
	Snd_Play("MFX_Heal_Cast");
	CreateInvItem(hero,kdf_armor_l);
	CreateInvItem(self,ItAmArrow);
	B_GiveInvItems(self,hero,ItAmArrow,1);
	Npc_RemoveInvItem(hero,ItAmArrow);
	AI_Output(self,other,"KDF_402_Corristo_ROBE_Info_14_01");	//��������� ����� ������, �� ������ ���� ����� � �����.
	AI_Output(self,other,"KDF_402_Corristo_ROBE_Info_14_02");	//���� ��� ������� � ���� ����������� �����.
	AI_StopProcessInfos(self);
	AI_EquipBestArmor(hero);
	AI_UnequipWeapons(hero);
	Npc_SetTrueGuild(hero,GIL_KDF);
	hero.guild = GIL_KDF;
	hero.attribute[ATR_HITPOINTS] = hero.attribute[ATR_HITPOINTS_MAX];
	B_LogEntry(GE_BecomeFiremage,"� ������ �������� � ������ ������ ����. � ����� ������� � ���� ������� ��������� ����� ����� ����!");
	Log_CreateTopic(GE_TeacherOC,LOG_NOTE);
	B_LogEntry(GE_TeacherOC,"�������� ����� ��������� ���� � ����� ����� �����, � ����� ������ � ����������� ����. ��� ����� ����� � ���� ����� ����.");
};


instance KDF_402_Corristo_MANA(C_Info)
{
	npc = Kdf_402_Corristo;
	condition = KDF_402_Corristo_MANA_Condition;
	information = KDF_402_Corristo_MANA_Info;
	important = 0;
	permanent = 1;
	description = "� ���� ��������� ���� ����� �����.";
};


func int KDF_402_Corristo_MANA_Condition()
{
	if(Npc_GetTrueGuild(hero) == GIL_KDF)
	{
		return TRUE;
	};
};

func void KDF_402_Corristo_MANA_Info()
{
	AI_Output(other,self,"KDF_402_Corristo_MANA_Info_15_01");	//� ���� ��������� ���� ����� �����.
	AI_Output(self,other,"KDF_402_Corristo_MANA_Info_14_02");	//� ���� ��������� ���� ����. ��� ������������ �� - ���� ����.
	Info_ClearChoices(KDF_402_Corristo_MANA);
	Info_AddChoice(KDF_402_Corristo_MANA,DIALOG_BACK,KDF_402_Corristo_MANA_BACK);
	Info_AddChoice(KDF_402_Corristo_MANA,B_BuildLearnString(NAME_LearnMana_5,5 * LPCOST_ATTRIBUTE_MANA,0),KDF_402_Corristo_MANA_MAN_5);
	Info_AddChoice(KDF_402_Corristo_MANA,B_BuildLearnString(NAME_LearnMana_1,LPCOST_ATTRIBUTE_MANA,0),KDF_402_Corristo_MANA_MAN_1);
};

func void KDF_402_Corristo_MANA_BACK()
{
	Info_ClearChoices(KDF_402_Corristo_MANA);
};

func void KDF_402_Corristo_MANA_MAN_1()
{
	B_BuyAttributePoints(other,ATR_MANA_MAX,LPCOST_ATTRIBUTE_MANA);
	Info_ClearChoices(KDF_402_Corristo_MANA);
	Info_AddChoice(KDF_402_Corristo_MANA,DIALOG_BACK,KDF_402_Corristo_MANA_BACK);
	Info_AddChoice(KDF_402_Corristo_MANA,B_BuildLearnString(NAME_LearnMana_5,5 * LPCOST_ATTRIBUTE_MANA,0),KDF_402_Corristo_MANA_MAN_5);
	Info_AddChoice(KDF_402_Corristo_MANA,B_BuildLearnString(NAME_LearnMana_1,LPCOST_ATTRIBUTE_MANA,0),KDF_402_Corristo_MANA_MAN_1);
};

func void KDF_402_Corristo_MANA_MAN_5()
{
	B_BuyAttributePoints(other,ATR_MANA_MAX,5 * LPCOST_ATTRIBUTE_MANA);
	Info_ClearChoices(KDF_402_Corristo_MANA);
	Info_AddChoice(KDF_402_Corristo_MANA,DIALOG_BACK,KDF_402_Corristo_MANA_BACK);
	Info_AddChoice(KDF_402_Corristo_MANA,B_BuildLearnString(NAME_LearnMana_5,5 * LPCOST_ATTRIBUTE_MANA,0),KDF_402_Corristo_MANA_MAN_5);
	Info_AddChoice(KDF_402_Corristo_MANA,B_BuildLearnString(NAME_LearnMana_1,LPCOST_ATTRIBUTE_MANA,0),KDF_402_Corristo_MANA_MAN_1);
};


instance KDF_402_Corristo_EXPLAINCIRCLES(C_Info)
{
	npc = Kdf_402_Corristo;
	condition = KDF_402_Corristo_EXPLAINCIRCLES_Condition;
	information = KDF_402_Corristo_EXPLAINCIRCLES_Info;
	important = 0;
	permanent = 0;
	description = "����������, ������� ���, � ��� ����� ���������� ������?";
};


func int KDF_402_Corristo_EXPLAINCIRCLES_Condition()
{
	if(Npc_GetTrueGuild(hero) == GIL_KDF)
	{
		return TRUE;
	};
};

func void KDF_402_Corristo_EXPLAINCIRCLES_Info()
{
	AI_Output(other,self,"KDF_402_Corristo_EXPLAINCIRCLES_Info_15_01");	//����������, ������� ���, � ��� ����� ���������� ������?
	AI_Output(self,other,"KDF_402_Corristo_EXPLAINCIRCLES_Info_14_02");	//� �������������. ����� ������������� ���� ��������� �����.
	AI_Output(self,other,"KDF_402_Corristo_EXPLAINCIRCLES_Info_14_03");	//��� ���������� ������� ����� ������ � �������, ����������� ��������� ����� �����������.
	AI_Output(self,other,"KDF_402_Corristo_EXPLAINCIRCLES_Info_14_04");	//�� ������ ������ ������ ���� �� �����, ������ ��� ������� �������� � ���������.
	AI_Output(self,other,"KDF_402_Corristo_EXPLAINCIRCLES_Info_14_05");	//����������� ������ ���� �������� � ������� ������ �����, ����� ������� ������ ������.
	AI_Output(self,other,"KDF_402_Corristo_EXPLAINCIRCLES_Info_14_06");	//���� �������� ������ ��� ����� ��������������� ������ ��������������� ������������. �� � ����� ������ ���������� ����� ������ ���� ������.
	AI_Output(self,other,"KDF_402_Corristo_EXPLAINCIRCLES_Info_14_07");	//��� - ����� ����� �����. ��� ������ ����� � �����. ������ �� ������ ����.
	AI_Output(self,other,"KDF_402_Corristo_EXPLAINCIRCLES_Info_14_08");	//��� ���� ����� ������ �� ����, �� ������ ������� ����.
};


instance KDF_402_Corristo_KREIS1(C_Info)
{
	npc = Kdf_402_Corristo;
	condition = KDF_402_Corristo_KREIS1_Condition;
	information = KDF_402_Corristo_KREIS1_Info;
	important = 0;
	permanent = 1;
	description = B_BuildLearnString(NAME_LearnMage_1,LPCOST_TALENT_MAGE_1,0);
};


func int KDF_402_Corristo_KREIS1_Condition()
{
	if((Npc_GetTalentSkill(hero,NPC_TALENT_MAGE) == 0) && Npc_KnowsInfo(hero,KDF_402_Corristo_EXPLAINCIRCLES) && (Npc_GetTrueGuild(hero) == GIL_KDF))
	{
		return TRUE;
	};
};

func void KDF_402_Corristo_KREIS1_Info()
{
	AI_Output(other,self,"KDF_402_Corristo_KREIS1_Info_15_01");	//� ����� �������� � ������ ����.
	if(B_GiveSkill(other,NPC_TALENT_MAGE,1,LPCOST_TALENT_MAGE_1))
	{
		AI_Output(self,other,"KDF_402_Corristo_KREIS1_Info_14_02");	//������� � ������ ����, �� ��������� ������������ ���������� ����.
		AI_Output(self,other,"KDF_402_Corristo_KREIS1_Info_14_03");	//������ ���� �������� ��������� ������� ����������� ����������.
		AI_Output(self,other,"KDF_402_Corristo_KREIS1_Info_14_04");	//����������� ���� ����������� ���������� ����, �� ������� ����������� ����� ����.
		AI_Output(self,other,"KDF_402_Corristo_KREIS1_Info_14_05");	//�� � ������� ��  �������, ������� �� ���� �������� ����������� ���������, ����� ��� ������������ ��������� ���������� ������.
		AI_Output(self,other,"KDF_402_Corristo_KREIS1_Info_14_06");	//������ ���� ���� � ���� ���������� ����, ������� �� ������ ������� � ����� ������.
		AI_Output(self,other,"KDF_402_Corristo_KREIS1_Info_14_07");	//��� ��, ��� � �� �������, � ������, ����� �� ����������� ����, ����������� ���� ����������� ���������� ����.
		AI_Output(self,other,"KDF_402_Corristo_KREIS1_Info_14_08");	//� ������ ����� ������ �� ������ �������� � ����� ��� ������ � ������.
		AI_Output(self,other,"KDF_402_Corristo_KREIS1_Info_14_09");	//��������� �� ����, ��� ���� ����� ������� ����.
		KDF_402_Corristo_KREIS1.permanent = 0;
	};
};


instance KDF_402_Corristo_KREIS2(C_Info)
{
	npc = Kdf_402_Corristo;
	condition = KDF_402_Corristo_KREIS2_Condition;
	information = KDF_402_Corristo_KREIS2_Info;
	important = 0;
	permanent = 1;
	description = B_BuildLearnString(NAME_LearnMage_2,LPCOST_TALENT_MAGE_2,0);
};


func int KDF_402_Corristo_KREIS2_Condition()
{
	if((Npc_GetTalentSkill(hero,NPC_TALENT_MAGE) == 1) && (Npc_GetTrueGuild(hero) == GIL_KDF))
	{
		return TRUE;
	};
};

func void KDF_402_Corristo_KREIS2_Info()
{
	AI_Output(other,self,"KDF_402_Corristo_KREIS2_Info_15_01");	//� ����� �������� �� ������ ����.
	if(B_GiveSkill(other,NPC_TALENT_MAGE,2,LPCOST_TALENT_MAGE_2))
	{
		AI_Output(self,other,"KDF_402_Corristo_KREIS2_Info_14_02");	//�� ��� �������� �������� ����. ������ ����� �������� ���� ��������.
		AI_Output(self,other,"KDF_402_Corristo_KREIS2_Info_14_03");	//������� �� ������ ����, �� ���������� ������ ������ ������ �������� � �������� ��� ������� ������������.
		AI_Output(self,other,"KDF_402_Corristo_KREIS2_Info_14_04");	//�� ��� ���� ����� ������� �������� ������� �����, ���� ��������� ������� ���������.
		AI_Output(self,other,"KDF_402_Corristo_KREIS2_Info_14_05");	//�� ��� ������ � ���, ��� ������ ������������ ����� ���� ���������� ����� ���, �� ���� �� ��� ���, ���� �� ������������ ����������� ���������� ����.
		AI_Output(self,other,"KDF_402_Corristo_KREIS2_Info_14_06");	//�� ������ ��� ������� ���-����, ������� � ���, ���� �� � ���� �����. �� ��������� �����, ������� ��������� � ��������� ����� ������ � ����������.  
		AI_Output(self,other,"KDF_402_Corristo_KREIS2_Info_14_07");	//�� �������� ��� ���������� �� ���� �� �������������.
		AI_Output(self,other,"KDF_402_Corristo_KREIS2_Info_14_08");	//������� ��������� ��������, � �� �������� �������� ���� ���.
		KDF_402_Corristo_KREIS2.permanent = 0;
	};
};


instance KDF_402_Corristo_KREIS3(C_Info)
{
	npc = Kdf_402_Corristo;
	condition = KDF_402_Corristo_KREIS3_Condition;
	information = KDF_402_Corristo_KREIS3_Info;
	important = 0;
	permanent = 1;
	description = B_BuildLearnString(NAME_LearnMage_3,LPCOST_TALENT_MAGE_3,0);
};


func int KDF_402_Corristo_KREIS3_Condition()
{
	if((Npc_GetTalentSkill(hero,NPC_TALENT_MAGE) == 2) && (Npc_GetTrueGuild(hero) == GIL_KDF))
	{
		return TRUE;
	};
};

func void KDF_402_Corristo_KREIS3_Info()
{
	AI_Output(other,self,"KDF_402_Corristo_KREIS3_Info_15_01");	//����� ������ ����������� �������� �����?
	if(B_GiveSkill(other,NPC_TALENT_MAGE,3,LPCOST_TALENT_MAGE_3))
	{
		AI_Output(self,other,"KDF_402_Corristo_KREIS3_Info_14_02");	//������ ���� �������� ����� �� ��������� ������ � ����� ������� ����. ��������� ���, �� ���������� ���� �����.
		AI_Output(self,other,"KDF_402_Corristo_KREIS3_Info_14_03");	//�� ��� ��������� ������������ ���� �� ���� �����. �� �������� ������������ ����.
		AI_Output(self,other,"KDF_402_Corristo_KREIS3_Info_14_04");	//��� ������ �������� ������� ��� ���������� �����. ��������� ���� �������������.
		AI_Output(self,other,"KDF_402_Corristo_KREIS3_Info_14_05");	//�� ������ ������������ �� ��� ���. �� �� ������ ������������ � �������.
		AI_Output(self,other,"KDF_402_Corristo_KREIS3_Info_14_06");	//������ �����, ��������� ���� ���� ��� ���������.
		AI_Output(self,other,"KDF_402_Corristo_KREIS3_Info_14_07");	//����� ���� ����, � ����� �� �������� ���� �������.
		KDF_402_Corristo_KREIS3.permanent = 0;
	};
};


instance KDF_402_Corristo_KREIS4(C_Info)
{
	npc = Kdf_402_Corristo;
	condition = KDF_402_Corristo_KREIS4_Condition;
	information = KDF_402_Corristo_KREIS4_Info;
	important = 0;
	permanent = 1;
	description = B_BuildLearnString(NAME_LearnMage_4,LPCOST_TALENT_MAGE_4,0);
};


func int KDF_402_Corristo_KREIS4_Condition()
{
	if((Npc_GetTalentSkill(hero,NPC_TALENT_MAGE) == 3) && (Npc_GetTrueGuild(hero) == GIL_KDF))
	{
		return TRUE;
	};
};

func void KDF_402_Corristo_KREIS4_Info()
{
	AI_Output(other,self,"KDF_402_Corristo_KREIS4_Info_15_01");	//� ����� �������� � ��������� ����.
	if(B_GiveSkill(other,NPC_TALENT_MAGE,4,LPCOST_TALENT_MAGE_4))
	{
		AI_Output(self,other,"KDF_402_Corristo_KREIS4_Info_14_02");	//�� �������� ������ ��� �����. ������ ����� ���� ������� ������� �����.
		AI_Output(self,other,"KDF_402_Corristo_KREIS4_Info_14_03");	//������ ����� ��� - ������. ���������� ������, ������� �� ���������� ����.
		AI_Output(self,other,"KDF_402_Corristo_KREIS4_Info_14_04");	//��� �� ����� ����, ������� �������� � ������. � ������ ��� ���������� ����������� ���������, � ��� �� ���� ������������ � ������ ����� ����.
		AI_Output(self,other,"KDF_402_Corristo_KREIS4_Info_14_05");	//������ �� ��������� ����� ��������, ������� ���� ��������� �������.
		AI_Output(self,other,"KDF_402_Corristo_KREIS4_Info_14_06");	//�� �������� �����, ��� � ���� ���.
		AI_Output(self,other,"KDF_402_Corristo_KREIS4_Info_14_07");	//������ �����, � �� �������� ��� ���� ������ ������.
		KDF_402_Corristo_KREIS4.permanent = 0;
	};
};


instance KDF_402_Corristo_HEAVYARMOR(C_Info)
{
	npc = Kdf_402_Corristo;
	condition = KDF_402_Corristo_HEAVYARMOR_Condition;
	information = KDF_402_Corristo_HEAVYARMOR_Info;
	important = 0;
	permanent = 1;
	description = B_BuildBuyArmorString(NAME_CorristoHighRobe,VALUE_KDF_ARMOR_H);
};


func int KDF_402_Corristo_HEAVYARMOR_Condition()
{
	if(Npc_GetTrueGuild(hero) == GIL_KDF)
	{
		return TRUE;
	};
};

func void KDF_402_Corristo_HEAVYARMOR_Info()
{
	AI_Output(other,self,"KDF_402_Corristo_HEAVYARMOR_Info_15_01");	//�������� ���, � ���� ������ ��������� ������ ����� ����.
	if(Kapitel < 3)
	{
		AI_Output(self,other,"KDF_402_Corristo_WANNBEKDF_Info_14_04");	//����� ������ ���� ��� ������������. �����������, ����� ������ ����� ������.
	}
	else if(Npc_HasItems(hero,ItMiNugget) < VALUE_KDF_ARMOR_H)
	{
		AI_Output(self,other,"KDF_402_Corristo_HEAVYARMOR_Info_14_03");	//��� ����� � ���� ������������ ����.
	}
	else
	{
		AI_Output(self,other,"KDF_402_Corristo_HEAVYARMOR_Info_14_04");	//����� ������. �� ������� ������ ��������� ������ ����� ����.
		CreateInvItem(hero,kdf_armor_h);
		CreateInvItem(self,ItAmArrow);
		B_GiveInvItems(self,hero,ItAmArrow,1);
		Npc_RemoveInvItem(hero,ItAmArrow);
		B_GiveInvItems(hero,self,ItMiNugget,VALUE_KDF_ARMOR_H);
		AI_EquipBestArmor(hero);
		KDF_402_Corristo_HEAVYARMOR.permanent = 0;
	};
};

