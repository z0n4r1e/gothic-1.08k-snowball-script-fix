
instance DIA_Vlk_520_Exit(C_Info)
{
	npc = VLK_520_Buddler;
	nr = 999;
	condition = DIA_Vlk_520_Exit_Condition;
	information = DIA_Vlk_520_Exit_Info;
	permanent = 1;
	description = DIALOG_ENDE;
};


func int DIA_Vlk_520_Exit_Condition()
{
	return TRUE;
};

func void DIA_Vlk_520_Exit_Info()
{
	AI_StopProcessInfos(self);
};


instance DIA_Vlk_520_LeaveMe(C_Info)
{
	npc = VLK_520_Buddler;
	nr = 2;
	condition = DIA_Vlk_520_LeaveMe_Condition;
	information = DIA_Vlk_520_LeaveMe_Info;
	permanent = 1;
	description = "„ем ты занимаешьс€?";
};


func int DIA_Vlk_520_LeaveMe_Condition()
{
	return TRUE;
};

func void DIA_Vlk_520_LeaveMe_Info()
{
	AI_Output(other,self,"DIA_Vlk_520_LeaveMe_15_00");	//„ем ты занимаешьс€?
	AI_Output(self,other,"DIA_Vlk_520_LeaveMe_01_01");	//я просто хочу, чтобы мен€ оставили в покое, так что проваливай!
	AI_StopProcessInfos(self);
};

