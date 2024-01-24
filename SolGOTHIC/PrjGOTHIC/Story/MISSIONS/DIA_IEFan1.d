
instance IEFAN1_EXIT(C_Info)
{
	npc = IEFan1;
	nr = 999;
	condition = iefan1_exit_condition;
	information = iefan1_exit_info;
	important = 0;
	permanent = 1;
	description = DIALOG_ENDE;
};


func int iefan1_exit_condition()
{
	return TRUE;
};

func void iefan1_exit_info()
{
	AI_StopProcessInfos(self);
};


instance IEFAN2_EXIT(C_Info)
{
	npc = IEFan2;
	nr = 999;
	condition = iefan2_exit_condition;
	information = iefan2_exit_info;
	important = 0;
	permanent = 1;
	description = DIALOG_ENDE;
};


func int iefan2_exit_condition()
{
	return TRUE;
};

func void iefan2_exit_info()
{
	AI_StopProcessInfos(self);
};


instance IEFAN3_EXIT(C_Info)
{
	npc = IEFan3;
	nr = 999;
	condition = iefan3_exit_condition;
	information = iefan3_exit_info;
	important = 0;
	permanent = 1;
	description = DIALOG_ENDE;
};


func int iefan3_exit_condition()
{
	return TRUE;
};

func void iefan3_exit_info()
{
	AI_StopProcessInfos(self);
};


instance IEFAN4_EXIT(C_Info)
{
	npc = IEFan4;
	nr = 999;
	condition = iefan4_exit_condition;
	information = iefan4_exit_info;
	important = 0;
	permanent = 1;
	description = DIALOG_ENDE;
};


func int iefan4_exit_condition()
{
	return TRUE;
};

func void iefan4_exit_info()
{
	AI_StopProcessInfos(self);
};

