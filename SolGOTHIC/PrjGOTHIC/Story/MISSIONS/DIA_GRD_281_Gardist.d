
instance DIA_Grd_281_Exit(C_Info)
{
	npc = GRD_281_Gardist;
	nr = 999;
	condition = DIA_Grd_281_Exit_Condition;
	information = DIA_Grd_281_Exit_Info;
	permanent = 1;
	description = DIALOG_ENDE;
};


func int DIA_Grd_281_Exit_Condition()
{
	return TRUE;
};

func void DIA_Grd_281_Exit_Info()
{
	AI_StopProcessInfos(self);
};


instance DIA_Grd_281_GuardGate(C_Info)
{
	npc = GRD_281_Gardist;
	nr = 1;
	condition = DIA_Grd_281_GuardGate_Condition;
	information = DIA_Grd_281_GuardGate_Info;
	permanent = 1;
	description = "��� ���� ����?";
};


func int DIA_Grd_281_GuardGate_Condition()
{
	if(!C_NpcBelongsToNewCamp(other))
	{
		return TRUE;
	};
	return FALSE;
};

func void DIA_Grd_281_GuardGate_Info()
{
	AI_Output(other,self,"DIA_Grd_281_GuardGate_15_00");	//��� ���� ����?
	AI_Output(self,other,"DIA_Grd_281_GuardGate_07_01");	//������. ����� �� ������ ������ ���� ��� �� �����.
	AI_StopProcessInfos(self);
};

