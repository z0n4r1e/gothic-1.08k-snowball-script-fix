
instance Info_Myxir_EXIT(C_Info)
{
	npc = Kdw_601_Myxir;
	nr = 999;
	condition = Info_Myxir_EXIT_Condition;
	information = Info_Myxir_EXIT_Info;
	important = 0;
	permanent = 1;
	description = DIALOG_ENDE;
};


func int Info_Myxir_EXIT_Condition()
{
	return TRUE;
};

func void Info_Myxir_EXIT_Info()
{
	AI_StopProcessInfos(self);
};

