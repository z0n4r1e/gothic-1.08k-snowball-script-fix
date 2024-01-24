
instance Info_Pacho_EXIT(C_Info)
{
	npc = GRD_224_Pacho;
	nr = 999;
	condition = Info_Pacho_EXIT_Condition;
	information = Info_Pacho_EXIT_Info;
	important = 0;
	permanent = 1;
	description = DIALOG_ENDE;
};


func int Info_Pacho_EXIT_Condition()
{
	return TRUE;
};

func void Info_Pacho_EXIT_Info()
{
	AI_StopProcessInfos(self);
};


instance Info_Pacho_STOP(C_Info)
{
	npc = GRD_224_Pacho;
	condition = Info_Pacho_STOP_Condition;
	information = Info_Pacho_STOP_Info;
	important = 1;
	permanent = 0;
};


func int Info_Pacho_STOP_Condition()
{
	return TRUE;
};

func void Info_Pacho_STOP_Info()
{
	AI_Output(self,hero,"Info_Pacho_STOP_13_01");	//��, ��! 
	AI_Output(hero,self,"Info_Pacho_STOP_15_02");	//���? �?
	AI_Output(self,hero,"Info_Pacho_STOP_13_03");	//���, ���� �������... � ���� ��� � ���� ����������?!
	AI_Output(self,hero,"Info_Pacho_STOP_13_04");	//�� ����� ����� � �� �� ����� ����!
	AI_Output(hero,self,"Info_Pacho_STOP_15_05");	//������ ���?
	AI_Output(self,hero,"Info_Pacho_STOP_13_06");	//����� �����, ��� �� �������.
	AI_Output(self,hero,"Info_Pacho_STOP_13_07");	//������, ��� ������ ����� � ������ �����...
	AI_Output(self,hero,"Info_Pacho_STOP_13_08");	//��� � �������� ���������� �� ���� ������� � ������!
	AI_Output(hero,self,"Info_Pacho_STOP_15_09");	//���
	AI_Output(self,hero,"Info_Pacho_STOP_13_10");	//�� �� ���!
	AI_StopProcessInfos(self);
};

