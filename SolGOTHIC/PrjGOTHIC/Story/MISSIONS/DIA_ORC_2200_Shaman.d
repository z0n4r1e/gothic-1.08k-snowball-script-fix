
instance Info_OrcShaman_EXIT(C_Info)
{
	npc = ORC_2200_Shaman;
	nr = 999;
	condition = Info_OrcShaman_EXIT_Condition;
	information = Info_OrcShaman_EXIT_Info;
	important = 0;
	permanent = 1;
	description = DIALOG_ENDE;
};


func int Info_OrcShaman_EXIT_Condition()
{
	return TRUE;
};

func void Info_OrcShaman_EXIT_Info()
{
	AI_StopProcessInfos(self);
};


instance Info_OrcShaman_THX(C_Info)
{
	npc = ORC_2200_Shaman;
	condition = Info_OrcShaman_THX_Condition;
	information = Info_OrcShaman_THX_Info;
	important = 1;
	permanent = 0;
};


func int Info_OrcShaman_THX_Condition()
{
	if(Kapitel == 4)
	{
		return TRUE;
	};
	return FALSE;
};

func void Info_OrcShaman_THX_Info()
{
	AI_Output(self,hero,"Info_OrcShaman_THX_17_01");	//������ ����������� ����������.
	AI_Output(self,hero,"Info_OrcShaman_THX_17_02");	//������ ���� ������ ������� ����.
	AI_Output(self,hero,"Info_OrcShaman_THX_17_03");	//������ ������ - ������ �����.
};


instance Info_OrcShaman_WHO(C_Info)
{
	npc = ORC_2200_Shaman;
	condition = Info_OrcShaman_WHO_Condition;
	information = Info_OrcShaman_WHO_Info;
	important = 0;
	permanent = 0;
	description = "��� ��?";
};


func int Info_OrcShaman_WHO_Condition()
{
	if(Npc_KnowsInfo(hero,Info_OrcShaman_THX))
	{
		return TRUE;
	};
	return FALSE;
};

func void Info_OrcShaman_WHO_Info()
{
	AI_Output(hero,self,"Info_OrcShaman_WHO_15_01");	//��� ��?
	AI_Output(self,hero,"Info_OrcShaman_WHO_17_02");	//��� - �� ���.
	AI_Output(self,hero,"Info_OrcShaman_WHO_17_03");	//���� ����� �����. ���� ����� �������.
};


instance Info_OrcShaman_TONGUE(C_Info)
{
	npc = ORC_2200_Shaman;
	condition = Info_OrcShaman_TONGUE_Condition;
	information = Info_OrcShaman_TONGUE_Info;
	important = 0;
	permanent = 0;
	description = "������ �� ������ ��� ����?";
};


func int Info_OrcShaman_TONGUE_Condition()
{
	if(Npc_KnowsInfo(hero,Info_OrcShaman_THX))
	{
		return TRUE;
	};
	return FALSE;
};

func void Info_OrcShaman_TONGUE_Info()
{
	AI_Output(hero,self,"Info_OrcShaman_TONGUE_15_01");	//������ �� ������ ��� ����?
	AI_Output(self,hero,"Info_OrcShaman_TONGUE_17_02");	//�� ��� ��� ��� ����� � �����.
	AI_Output(self,hero,"Info_OrcShaman_TONGUE_17_03");	//������. ����� ��� ����� - ������.
};


instance Info_OrcShaman_MINE(C_Info)
{
	npc = ORC_2200_Shaman;
	condition = Info_OrcShaman_MINE_Condition;
	information = Info_OrcShaman_MINE_Info;
	important = 0;
	permanent = 0;
	description = "�� ��� ����� � �����?";
};


func int Info_OrcShaman_MINE_Condition()
{
	if(Npc_KnowsInfo(hero,Info_OrcShaman_TONGUE))
	{
		return TRUE;
	};
	return FALSE;
};

func void Info_OrcShaman_MINE_Info()
{
	AI_Output(hero,self,"Info_OrcShaman_MINE_15_01");	//�� ��� ����� � �����? � ����� �����?
	AI_Output(self,hero,"Info_OrcShaman_MINE_17_02");	//����� ��� �������� � ������.
};


instance Info_OrcShaman_WHY(C_Info)
{
	npc = ORC_2200_Shaman;
	condition = Info_OrcShaman_WHY_Condition;
	information = Info_OrcShaman_WHY_Info;
	important = 0;
	permanent = 0;
	description = "������ ���� ������ ������ �� ����?";
};


func int Info_OrcShaman_WHY_Condition()
{
	if(Npc_KnowsInfo(hero,Info_OrcShaman_THX))
	{
		return TRUE;
	};
	return FALSE;
};

func void Info_OrcShaman_WHY_Info()
{
	AI_Output(hero,self,"Info_OrcShaman_WHY_15_01");	//������ ���� ������ ������ �� ����?
	AI_Output(self,hero,"Info_OrcShaman_WHY_17_02");	//�� ���� �� �����.
	AI_Output(self,hero,"Info_OrcShaman_WHY_17_03");	//�������� ���� � �������.
	AI_Output(self,hero,"Info_OrcShaman_WHY_17_04");	//������ ������� ������ �������.
};


instance Info_OrcShaman_KRUSHAK(C_Info)
{
	npc = ORC_2200_Shaman;
	condition = Info_OrcShaman_KRUSHAK_Condition;
	information = Info_OrcShaman_KRUSHAK_Info;
	important = 0;
	permanent = 0;
	description = "��� ��� - ������?";
};


func int Info_OrcShaman_KRUSHAK_Condition()
{
	if(Npc_KnowsInfo(hero,Info_OrcShaman_WHY))
	{
		return TRUE;
	};
	return FALSE;
};

func void Info_OrcShaman_KRUSHAK_Info()
{
	AI_Output(hero,self,"Info_OrcShaman_KRUSHAK_15_01");	//��� ��� - ������?
	AI_Output(self,hero,"Info_OrcShaman_KRUSHAK_17_02");	//���� ����� �����.
	AI_Output(hero,self,"Info_OrcShaman_KRUSHAK_15_03");	//�� ������ � ���� '������'?
	AI_Output(self,hero,"Info_OrcShaman_KRUSHAK_17_04");	//��, ���� ������� ������!
};


instance Info_OrcShaman_SLEEPER(C_Info)
{
	npc = ORC_2200_Shaman;
	condition = Info_OrcShaman_SLEEPER_Condition;
	information = Info_OrcShaman_SLEEPER_Info;
	important = 0;
	permanent = 0;
	description = "��� ���� �������� ��� �������?";
};


func int Info_OrcShaman_SLEEPER_Condition()
{
	if(Npc_KnowsInfo(hero,Info_OrcShaman_KRUSHAK))
	{
		return TRUE;
	};
	return FALSE;
};

func void Info_OrcShaman_SLEEPER_Info()
{
	AI_Output(hero,self,"Info_OrcShaman_SLEEPER_15_01");	//��� ���� �������� ��� �������?
	AI_Output(self,hero,"Info_OrcShaman_SLEEPER_17_02");	//���� ���� �������. ����� ��� �����!
	AI_Output(self,hero,"Info_OrcShaman_SLEEPER_17_03");	//���� ��������� �����, ��� �� ���!
	AI_Output(hero,self,"Info_OrcShaman_SLEEPER_15_04");	//�� ������ ������� - ���� �������!
	AI_Output(self,hero,"Info_OrcShaman_SLEEPER_17_05");	//������� �������!
	AI_Output(self,hero,"Info_OrcShaman_SLEEPER_17_06");	//������ �������� ���� ������!
	AI_Output(self,hero,"Info_OrcShaman_SLEEPER_17_07");	//���� ������� ��������� ���� ��� ������ ��� �������!
	AI_Output(hero,self,"Info_OrcShaman_SLEEPER_15_08");	//��������� ���� �������! ��� ��� ���� � ���� �������, ����� �������, ��� ���� � ���� ��������� � ������ �����!
};


instance Info_OrcShaman_CURSE(C_Info)
{
	npc = ORC_2200_Shaman;
	condition = Info_OrcShaman_CURSE_Condition;
	information = Info_OrcShaman_CURSE_Info;
	important = 0;
	permanent = 0;
	description = "��� ��������� � ��������� �����?";
};


func int Info_OrcShaman_CURSE_Condition()
{
	if(Npc_KnowsInfo(hero,Info_OrcShaman_SLEEPER))
	{
		return TRUE;
	};
	return FALSE;
};

func void Info_OrcShaman_CURSE_Info()
{
	AI_Output(hero,self,"Info_OrcShaman_CURSE_15_01");	//��� ��������� � ��������� �����?
	AI_Output(self,hero,"Info_OrcShaman_CURSE_17_02");	//������ ������ ������ �������.
	AI_Output(self,hero,"Info_OrcShaman_CURSE_17_03");	//�� ������ ���� ������. ������ ������� ����, ��� ������ ����.
	AI_Output(self,hero,"Info_OrcShaman_CURSE_17_04");	//� ������� ��� ������, ����� ���� �������� ��� ������. ����� � ���, � ������.
	AI_Output(self,hero,"Info_OrcShaman_CURSE_17_05");	//������ � ������� ���� ������ �������. � ������� ���� ���� �������.
	AI_Output(hero,self,"Info_OrcShaman_CURSE_15_06");	//��� ����� �� ����������� �����?
	AI_Output(self,hero,"Info_OrcShaman_CURSE_17_07");	//������ ������� ����. ���������� ����. ��� ����� ����� � �������, � ��, � ������.
};


instance Info_OrcShaman_OUTSIDE(C_Info)
{
	npc = ORC_2200_Shaman;
	condition = Info_OrcShaman_OUTSIDE_Condition;
	information = Info_OrcShaman_OUTSIDE_Info;
	important = 0;
	permanent = 0;
	description = "������� ���������� �� ����������� ���� �� ����������� ������? ";
};


func int Info_OrcShaman_OUTSIDE_Condition()
{
	if(Npc_KnowsInfo(hero,Info_OrcShaman_CURSE))
	{
		return TRUE;
	};
	return FALSE;
};

func void Info_OrcShaman_OUTSIDE_Info()
{
	AI_Output(hero,self,"Info_OrcShaman_OUTSIDE_15_01");	//������� ���������� �� ����������� ���� �� ����������� ������? 
	AI_Output(self,hero,"Info_OrcShaman_OUTSIDE_17_02");	//��� ���������� ����. ������ ����������� �������.
	AI_Output(self,hero,"Info_OrcShaman_OUTSIDE_17_03");	//������ �������� ������ � �� ���������� ������.
	AI_Output(self,hero,"Info_OrcShaman_OUTSIDE_17_04");	//�� ��� �����, ��� ������ - ��� �����. ������� �������, ��� ������ ������.
	AI_Output(self,hero,"Info_OrcShaman_OUTSIDE_17_05");	//������ �� ������ �������. ������ ������� �� ����: �����. ������ ������� �� ����.
};


instance Info_OrcShaman_INTEMPLE(C_Info)
{
	npc = ORC_2200_Shaman;
	condition = Info_OrcShaman_INTEMPLE_Condition;
	information = Info_OrcShaman_INTEMPLE_Info;
	important = 0;
	permanent = 0;
	description = "��� ����� ������� � ��������� ����!";
};


func int Info_OrcShaman_INTEMPLE_Condition()
{
	if(Npc_KnowsInfo(hero,Info_OrcShaman_OUTSIDE))
	{
		return TRUE;
	};
	return FALSE;
};

func void Info_OrcShaman_INTEMPLE_Info()
{
	AI_Output(hero,self,"Info_OrcShaman_INTEMPLE_15_01");	//��� ����� ������� � ��������� ����! �� ������ �������� ���� ����?
	AI_Output(self,hero,"Info_OrcShaman_INTEMPLE_17_02");	//�� ��� ������� ������� ����������. ���������� ���� �� ����.
	AI_Output(self,hero,"Info_OrcShaman_INTEMPLE_17_03");	//�� ���� � ���� ���� ����. �� ��� �� ����� ���� �����.
	AI_Output(hero,self,"Info_OrcShaman_INTEMPLE_15_04");	//�������: �� �������, ��� ���� �� ��������� � ����� �����.
};


instance Info_OrcShaman_MAP(C_Info)
{
	npc = ORC_2200_Shaman;
	condition = Info_OrcShaman_MAP_Condition;
	information = Info_OrcShaman_MAP_Info;
	important = 0;
	permanent = 0;
	description = "�� ������ �������� ��� ����� ����� �� �����?";
};


func int Info_OrcShaman_MAP_Condition()
{
	if(Npc_KnowsInfo(hero,Info_OrcShaman_INTEMPLE) && Npc_HasItems(hero,ItWrWorldmap))
	{
		return TRUE;
	};
	return FALSE;
};

func void Info_OrcShaman_MAP_Info()
{
	AI_Output(hero,self,"Info_OrcShaman_MAP_15_01");	//�� ������ �������� ��� ����� ����� �� �����?
	AI_Output(self,hero,"Info_OrcShaman_MAP_17_02");	//��� �� ���� ���� ���, ��� ����� ������.
	AI_Output(self,hero,"Info_OrcShaman_MAP_17_03");	//���������� ���� �����, �� ��� ������ �����!
	AI_Output(self,hero,"Info_OrcShaman_MAP_17_04");	//(������ �� �����)
	AI_Output(hero,self,"Info_OrcShaman_MAP_15_05");	//�������! �� ������ �������! �������!
	B_GiveInvItems(hero,self,ItWrWorldmap,1);
	Npc_RemoveInvItem(self,ItWrWorldmap);
	CreateInvItem(self,ItWrWorldmap_Orc);
	B_GiveInvItems(self,hero,ItWrWorldmap_Orc,1);
};


instance Info_OrcShaman_FIGHT(C_Info)
{
	npc = ORC_2200_Shaman;
	condition = Info_OrcShaman_FIGHT_Condition;
	information = Info_OrcShaman_FIGHT_Info;
	important = 0;
	permanent = 0;
	description = "� ������, ����������� ���� �������� � ����!";
};


func int Info_OrcShaman_FIGHT_Condition()
{
	if(Npc_KnowsInfo(hero,Info_OrcShaman_INTEMPLE))
	{
		return TRUE;
	};
	return FALSE;
};

func void Info_OrcShaman_FIGHT_Info()
{
	AI_Output(hero,self,"Info_OrcShaman_FIGHT_15_01");	//� ������, ����������� ���� �������� � ����!
	AI_Output(self,hero,"Info_OrcShaman_FIGHT_17_02");	//���� ������ ����� �������! ������� ���� �������� �����!
	AI_Output(self,hero,"Info_OrcShaman_FIGHT_17_03");	//����������, �� ����! ����� ������! ���������� �����.
	AI_Output(self,hero,"Info_OrcShaman_FIGHT_17_04");	//���� ���� ������ ������� �����. ���������� ��������� � �����!
};


instance Info_OrcShaman_OTHERWAY(C_Info)
{
	npc = ORC_2200_Shaman;
	condition = Info_OrcShaman_OTHERWAY_Condition;
	information = Info_OrcShaman_OTHERWAY_Info;
	important = 0;
	permanent = 0;
	description = "...�� ��� ������������� ����� ������� � ����!";
};


func int Info_OrcShaman_OTHERWAY_Condition()
{
	if(Npc_KnowsInfo(hero,Info_OrcShaman_FIGHT))
	{
		return TRUE;
	};
	return FALSE;
};

func void Info_OrcShaman_OTHERWAY_Info()
{
	AI_Output(hero,self,"Info_OrcShaman_OTHERWAY_15_01");	//�����, �����. �� ��� ������������� ����� ������� � ����!
	AI_Output(self,hero,"Info_OrcShaman_OTHERWAY_17_02");	//�� ��� ����� ����! ���������� ������� ��� ����. 
	AI_Output(hero,self,"Info_OrcShaman_OTHERWAY_15_03");	//��� ����??? ��� ����� ��� ����?
	AI_Output(self,hero,"Info_OrcShaman_OTHERWAY_17_04");	//���� ������ ������. ������ ������� ��� ����!
	AI_Output(self,hero,"Info_OrcShaman_OTHERWAY_17_05");	//���������� ������� ��� ���� � �� �����!
};


instance Info_OrcShaman_ULUMULU(C_Info)
{
	npc = ORC_2200_Shaman;
	condition = Info_OrcShaman_ULUMULU_Condition;
	information = Info_OrcShaman_ULUMULU_Info;
	important = 0;
	permanent = 0;
	description = "��� �� � ������ ��� ��� ����?";
};


func int Info_OrcShaman_ULUMULU_Condition()
{
	if(Npc_KnowsInfo(hero,Info_OrcShaman_OTHERWAY))
	{
		return TRUE;
	};
	return FALSE;
};

func void Info_OrcShaman_ULUMULU_Info()
{
	AI_Output(hero,self,"Info_OrcShaman_ULUMULU_15_01");	//��� �� � ������ ��� ��� ����?
	AI_Output(self,hero,"Info_OrcShaman_ULUMULU_17_02");	//���������� ������ � ����� �� ����!
	AI_Output(self,hero,"Info_OrcShaman_ULUMULU_17_03");	//���� �� ���� ���� ���������� ��� ����. ���������� ������� ��� ���� � �� �����!
	AI_Output(hero,self,"Info_OrcShaman_ULUMULU_15_04");	//��-��, '�� �����', � �����. ��� ������ ������ �����?
	AI_Output(self,hero,"Info_OrcShaman_ULUMULU_17_05");	//���� �� ���� � �����, � �����. ���� �� ������ � �� �����. ���� ����� ��� �����.
	B_Story_FoundUrShak();
	Info_ClearChoices(Info_OrcShaman_ULUMULU);
	Info_AddChoice(Info_OrcShaman_ULUMULU,"���� ������� � ��������� �����?",Info_OrcShaman_ULUMULU_FM);
	Info_AddChoice(Info_OrcShaman_ULUMULU,"�� ��� ����� � ����������� �����?",Info_OrcShaman_ULUMULU_VM);
	Info_AddChoice(Info_OrcShaman_ULUMULU,"�� ��� � ����� �� ������ �����?",Info_OrcShaman_ULUMULU_AM);
};

func void Info_OrcShaman_ULUMULU_VM()
{
	AI_Output(hero,self,"Info_OrcShaman_ULUMULU_15_08");	//�� ��� ����� � ����������� �����?
	AI_Output(self,hero,"Info_OrcShaman_ULUMULU_17_09");	//�� ��� �� ����� ������ �����.
};

func void Info_OrcShaman_ULUMULU_AM()
{
	AI_Output(hero,self,"Info_OrcShaman_ULUMULU_15_10");	//�� ��� � ����� �� ������ �����?
	AI_Output(self,hero,"Info_OrcShaman_ULUMULU_17_11");	//�� ��� �� ��������!
};

func void Info_OrcShaman_ULUMULU_FM()
{
	AI_Output(hero,self,"Info_OrcShaman_ULUMULU_15_12");	//���� ������� � ��������� �����?
	AI_Output(self,hero,"Info_OrcShaman_ULUMULU_17_13");	//�� ��� ���� ����� � ����� ��� ��������, � ������.
	AI_Output(self,hero,"Info_OrcShaman_ULUMULU_17_14");	//�� ��� ������, ��� ���� �������� �� ���!
	Info_ClearChoices(Info_OrcShaman_ULUMULU);
};


instance Info_OrcShaman_BYEBYE(C_Info)
{
	npc = ORC_2200_Shaman;
	condition = Info_OrcShaman_BYEBYE_Condition;
	information = Info_OrcShaman_BYEBYE_Info;
	important = 0;
	permanent = 0;
	description = "������� ���� �� ������!";
};


func int Info_OrcShaman_BYEBYE_Condition()
{
	if(Npc_KnowsInfo(hero,Info_OrcShaman_ULUMULU))
	{
		return TRUE;
	};
	return FALSE;
};

func void Info_OrcShaman_BYEBYE_Info()
{
	AI_Output(hero,self,"Info_OrcShaman_BYEBYE_15_01");	//������� ���� �� ������!
	AI_Output(self,hero,"Info_OrcShaman_BYEBYE_17_02");	//�� ��� ���������� ����������. ���������� ���� �� ����. ���������� � �� ��� ������ ������!
	AI_Output(self,hero,"Info_OrcShaman_BYEBYE_17_03");	//���� ������� �������. ������� �������� �� ����. �������� ������� ��� �� ������� �������� ������.
	AI_Output(self,hero,"Info_OrcShaman_BYEBYE_17_04");	//��-��� �� ����� ���� �����. �� ��� ������ ����� �����! ���� ������, ����� ����� ������!
	AI_Output(hero,self,"Info_OrcShaman_BYEBYE_15_05");	//����� ���� �� �����!
	B_Story_FriendOfUrShak();
	AI_StopProcessInfos(self);
};


instance Info_OrcShaman_FRIENDLYHELLO(C_Info)
{
	npc = ORC_2200_Shaman;
	condition = Info_OrcShaman_FRIENDLYHELLO_Condition;
	information = Info_OrcShaman_FRIENDLYHELLO_Info;
	important = 0;
	permanent = 0;
	description = "��� ����, �������?";
};


func int Info_OrcShaman_FRIENDLYHELLO_Condition()
{
	if(Npc_KnowsInfo(hero,Info_OrcShaman_BYEBYE) && FriendOfUrShak)
	{
		return TRUE;
	};
	return FALSE;
};

func void Info_OrcShaman_FRIENDLYHELLO_Info()
{
	AI_Output(hero,self,"Info_OrcShaman_FRIENDLYHELLO_15_01");	//��� ����, �������?
	AI_Output(self,hero,"Info_OrcShaman_FRIENDLYHELLO_17_02");	//�� ��� ���� ������!
	AI_Output(self,hero,"Info_OrcShaman_FRIENDLYHELLO_17_03");	//�� ��� ������ ���� ���� ��� ����!
	AI_Output(self,hero,"Info_OrcShaman_FRIENDLYHELLO_17_04");	//����� ���� �� ��� �������� �� ����� ��� ���� �����!
	AI_Output(self,hero,"Info_OrcShaman_FRIENDLYHELLO_17_05");	//���� ������, ����� ����� ������!
	AI_Output(hero,self,"Info_OrcShaman_FRIENDLYHELLO_15_06");	//����� ��������!
	AI_StopProcessInfos(self);
};


instance Info_OrcShaman_ORCCITY(C_Info)
{
	npc = ORC_2200_Shaman;
	condition = Info_OrcShaman_ORCCITY_Condition;
	information = Info_OrcShaman_ORCCITY_Info;
	important = 1;
	permanent = 0;
};


func int Info_OrcShaman_ORCCITY_Condition()
{
	if(Npc_GetDistToWP(hero,"SPAWN_OW_WARAN_ORC_01") < 1000)
	{
		return TRUE;
	};
	return FALSE;
};

func void Info_OrcShaman_ORCCITY_Info()
{
	B_FullStop(hero);
	AI_GotoNpc(hero,self);
	AI_Output(self,hero,"Info_OrcShaman_ORCCITY_17_01");	//�� ��� ������������ �����!
	if(Npc_HasItems(hero,UluMulu))
	{
		AI_Output(self,hero,"Info_OrcShaman_ORCCITY_17_02");	//� ����� ���� ��� ����! ���� �������!
		AI_Output(self,hero,"Info_OrcShaman_ORCCITY_17_03");	//���� �� ������� ����� ��� ���� � ����, ����� ������ �� �����!
	}
	else
	{
		AI_Output(self,hero,"Info_OrcShaman_ORCCITY_17_04");	//� ����� ��� ��� ����! ��������!
		AI_Output(self,hero,"Info_OrcShaman_ORCCITY_17_05");	//���� �� ������ �� �����, ����� �����!
	};
};


instance Info_OrcShaman_YOUHERE(C_Info)
{
	npc = ORC_2200_Shaman;
	condition = Info_OrcShaman_YOUHERE_Condition;
	information = Info_OrcShaman_YOUHERE_Info;
	important = 0;
	permanent = 0;
	description = "��� �� ������� ��� ������ �� ������?";
};


func int Info_OrcShaman_YOUHERE_Condition()
{
	if(Npc_KnowsInfo(hero,Info_OrcShaman_ORCCITY))
	{
		return TRUE;
	};
	return FALSE;
};

func void Info_OrcShaman_YOUHERE_Info()
{
	AI_Output(hero,self,"Info_OrcShaman_YOUHERE_15_01");	//��� �� ������� ��� ������ �� ������?
	AI_Output(self,hero,"Info_OrcShaman_YOUHERE_17_02");	//�� ��� ������� �� ������� ����!
	AI_Output(self,hero,"Info_OrcShaman_YOUHERE_17_03");	//�� ��� ������: ������ ����� ���������!
	AI_Output(self,hero,"Info_OrcShaman_YOUHERE_17_04");	//�� ��� ���� �����. ����� ���������, ����� ������ ���������! 
	AI_Output(hero,self,"Info_OrcShaman_YOUHERE_15_05");	//������ ����� ���������??? �������, �� ������!
	AI_Output(hero,self,"Info_OrcShaman_YOUHERE_15_06");	//���� �� ����, ��� � ��� ����� �� ���� ������, ��� ����� ���������� ������!
};


instance Info_OrcShaman_SEAL(C_Info)
{
	npc = ORC_2200_Shaman;
	condition = Info_OrcShaman_SEAL_Condition;
	information = Info_OrcShaman_SEAL_Info;
	important = 0;
	permanent = 0;
	description = "...�� ������, ��� ������ ���������� ����!";
};


func int Info_OrcShaman_SEAL_Condition()
{
	if(Npc_KnowsInfo(hero,Info_OrcShaman_ORCCITY))
	{
		return TRUE;
	};
	return FALSE;
};

func void Info_OrcShaman_SEAL_Info()
{
	AI_Output(hero,self,"Info_OrcShaman_SEAL_15_01");	//����� �� ����������� � ������� ���, �� ������, ��� ������ ���������� ����!
	AI_Output(self,hero,"Info_OrcShaman_SEAL_17_02");	//������ �� ���� ���������� ���� � ����� ����� ������!
	AI_Output(self,hero,"Info_OrcShaman_SEAL_17_03");	//���� �� ����� ���� ����!
	AI_Output(self,hero,"Info_OrcShaman_SEAL_17_04");	//���� ���������� ����� �������, ������� ������� �����, ��� �� ���!
};


instance Info_OrcShaman_SCROLL(C_Info)
{
	npc = ORC_2200_Shaman;
	condition = Info_OrcShaman_SCROLL_Condition;
	information = Info_OrcShaman_SCROLL_Info;
	important = 0;
	permanent = 0;
	description = "��� ��� ������ ��� �����?";
};


func int Info_OrcShaman_SCROLL_Condition()
{
	if(Npc_KnowsInfo(hero,Info_OrcShaman_SEAL))
	{
		return TRUE;
	};
	return FALSE;
};

func void Info_OrcShaman_SCROLL_Info()
{
	AI_Output(hero,self,"Info_OrcShaman_SCROLL_15_01");	//��� ��� ������ ��� �����?
	AI_Output(self,hero,"Info_OrcShaman_SCROLL_17_02");	//������ ���� � ������ �������, ������� ������� �����, ��� �� ���!
	AI_Output(self,hero,"Info_OrcShaman_SCROLL_17_03");	//�� ���� ������ ������������ ����� ���������!
	AI_Output(self,hero,"Info_OrcShaman_SCROLL_17_04");	//������� �� ���� �� ����������! ��� ���� �� �������, ����� ���� ���������� �����!
	B_LogEntry(CH4_EnterTemple,"� ����� �������� ������ ��-���� ����� ���������� �����. �� ��������� ���, ��� ������� � ��������� ������ ���� � ����� ��� ������ ������������ ����������. ������ ����� ������ ������ ����� ���������� � ����� �������.");
};


instance Info_OrcShaman_IDOL(C_Info)
{
	npc = ORC_2200_Shaman;
	condition = Info_OrcShaman_IDOL_Condition;
	information = Info_OrcShaman_IDOL_Info;
	important = 0;
	permanent = 0;
	description = "���� �����-������ ������ ���� � ����?";
};


func int Info_OrcShaman_IDOL_Condition()
{
	if(Npc_KnowsInfo(hero,Info_OrcShaman_SCROLL) && !OrcCity_Sanctum_OuterGateOpen)
	{
		return TRUE;
	};
	return FALSE;
};

func void Info_OrcShaman_IDOL_Info()
{
	if(Npc_HasItems(hero,ItMi_Stuff_Idol_Sleeper_01))
	{
		AI_Output(self,hero,"Info_OrcShaman_IDOL_17_00");	//���� �����-������ ������ ���� � ����?
		AI_Output(self,hero,"Info_OrcShaman_IDOL_17_03");	//���� ����� ������ �� �������!
		AI_Output(self,hero,"Info_OrcShaman_IDOL_17_04");	//������ ���� ����� ������� ����� �����!
		B_LogEntry(CH4_EnterTemple,"� ���� ����� � ������ ����. ����� ������������ ������ ������� �� ���������� ������ ������� �������. �� ������� ����� � ����.");
	}
	else
	{
		AI_Output(hero,self,"Info_OrcShaman_IDOL_17_00");	//���� �����-������ ������ ���� � ����?
		AI_Output(self,hero,"Info_OrcShaman_IDOL_17_05");	//������ ���� ������ ����� ������ � �������!
		AI_Output(self,hero,"Info_OrcShaman_IDOL_17_06");	//������ ������ ��������� ����� �����!
		B_LogEntry(CH4_EnterTemple,"���� � ������ ���� � ����. �� ��������� ������ ������� ������� ������� ������ �������. ���� � ��������� ���, �� ��� ���� �� ������� ���������� ������� ��-����.");
	};
};

