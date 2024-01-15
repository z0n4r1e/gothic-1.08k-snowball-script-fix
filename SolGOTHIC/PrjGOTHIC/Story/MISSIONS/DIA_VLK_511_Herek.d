
instance DIA_Herek_Exit(C_Info)
{
	npc = VLK_511_Herek;
	nr = 999;
	condition = DIA_Herek_Exit_Condition;
	information = DIA_Herek_Exit_Info;
	permanent = 1;
	description = DIALOG_ENDE;
};


func int DIA_Herek_Exit_Condition()
{
	return 1;
};

func void DIA_Herek_Exit_Info()
{
	AI_StopProcessInfos(self);
};


instance DIA_Herek_Bully(C_Info)
{
	npc = VLK_511_Herek;
	nr = 2;
	condition = DIA_Herek_Bully_Condition;
	information = DIA_Herek_Bully_Info;
	permanent = 0;
	important = 1;
};


func int DIA_Herek_Bully_Condition()
{
	if((Npc_GetDistToNpc(self,other) <= ZivilAnquatschDist) && (Herek_ProtectionBully == TRUE))
	{
		return 1;
	};
};

func void DIA_Herek_Bully_Info()
{
	AI_Output(self,other,"DIA_Herek_Bully_01_00");	//�������-��! � ������, �� ������������ � ���������? 
	AI_Output(other,self,"DIA_Herek_Bully_15_01");	//�� � ��� � ����?
	AI_Output(self,other,"DIA_Herek_Bully_01_02");	//�� ������ ���� ����, ���� ��������� ������� ��� ������ �� ������.
	AI_Output(self,other,"DIA_Herek_Bully_01_03");	//� ��� ������, ��� ��� �������� ������ �� ���� ���� ����.
	AI_Output(self,other,"DIA_Herek_Bully_01_04");	//� ����������, ����� �� �������� ��������� �������� � ���.
	Npc_SetPermAttitude(self,ATT_ANGRY);
	AI_StopProcessInfos(self);
	Npc_SetTarget(self,other);
	AI_StartState(self,ZS_Attack,1,"");
};


instance DIA_Herek_Motz(C_Info)
{
	npc = VLK_511_Herek;
	nr = 2;
	condition = DIA_Herek_Motz_Condition;
	information = DIA_Herek_Motz_Info;
	permanent = 0;
	description = "��� ����?";
};


func int DIA_Herek_Motz_Condition()
{
	if(Herek_ProtectionBully == FALSE)
	{
		return 1;
	};
};

func void DIA_Herek_Motz_Info()
{
	AI_Output(other,self,"DIA_Herek_Motz_15_00");	//��� ����?
	AI_Output(self,other,"DIA_Herek_Motz_01_01");	//� ���� ������ ���� ����� ������ ��� ������ �� ���!
	AI_Output(other,self,"DIA_Herek_Motz_15_02");	//����� ��������?
	AI_Output(self,other,"DIA_Herek_Motz_01_03");	//���� �� ��� �������� �� ����, �� �� ����� ����� �� �����������!
	AI_Output(self,other,"DIA_Herek_Motz_01_04");	//������, ������ � �����? �� ���� ���� � ���� ���������� �������, ��� ���... ��-��-��!
	Npc_SetPermAttitude(self,ATT_ANGRY);
	AI_StopProcessInfos(self);
};


instance DIA_Herek_Anlegen(C_Info)
{
	npc = VLK_511_Herek;
	nr = 2;
	condition = DIA_Herek_Anlegen_Condition;
	information = DIA_Herek_Anlegen_Info;
	permanent = 1;
	description = "������, �� �������� ���� ������ ������.";
};


func int DIA_Herek_Anlegen_Condition()
{
	if(Npc_KnowsInfo(hero,DIA_Herek_Motz) || Npc_KnowsInfo(hero,DIA_Herek_Bully))
	{
		return 1;
	};
};

func void DIA_Herek_Anlegen_Info()
{
	AI_Output(other,self,"DIA_Herek_Anlegen_15_00");	//������, �� �������� ���� ������ ������. ������ �� ���� �� ���������� ����... �-��... ������ �� ���?
	AI_Output(self,other,"DIA_Herek_Anlegen_01_01");	//���� �������? �����, ���� �� ����� ������!
	AI_StopProcessInfos(self);
	Npc_SetTarget(self,other);
	AI_StartState(self,ZS_Attack,1,"");
};

