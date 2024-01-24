
instance INFO_ORC_17_EXIT(C_Info)
{
	nr = 999;
	condition = info_orc_17_exit_condition;
	information = info_orc_17_exit_info;
	permanent = 1;
	description = DIALOG_ENDE;
};


func int info_orc_17_exit_condition()
{
	return TRUE;
};

func void info_orc_17_exit_info()
{
	AI_StopProcessInfos(self);
};

func void b_assignambientinfos_orc_17(var C_Npc slf)
{
	info_orc_17_exit.npc = Hlp_GetInstanceID(slf);
};

